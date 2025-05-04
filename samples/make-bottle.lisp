;;; https://github.com/Open-Cascade-SAS/OCCT/blob/master/samples/qt/Tutorial/src/MakeBottle.cxx

;; (load "~/dev/commonocct/commonocct/samples/make-bottle.lisp")
;; sbcl --dynamic-space-size 4096

(eval-when (:compile-toplevel :load-toplevel :execute)
(ql:quickload :occt))

(defpackage #:bottle
  (:use #:common-lisp #:qt #:occt))

(in-package #:bottle)

(defun init-occ-qt()
  (ensure-smoke :qtcore)
  (ensure-smoke :qtgui)
  (ensure-smoke :qtwidgets)
  (full-load-smokeocct-lib))

(init-occ-qt)
(named-readtables:in-readtable :qt)

(defun make-bottle (&optional (my-width 50) (my-height 70) (my-thickness 30))
  (start-releasable-objects 'make-bottle)
  (let* (;; Profile : Define Support Points
	 (a-pnt1 (#!_new gp_Pnt (/ (- my-width) 2) 0 0))
         (a-pnt2 (#!_new gp_Pnt (/ (- my-width) 2) (/ (- my-thickness) 4) 0))
         (a-pnt3 (#!_new gp_Pnt 0 (/ (- my-thickness) 2) 0))
         (a-pnt4 (#!_new gp_Pnt (/ my-width 2) (/ (- my-thickness) 4) 0))
         (a-pnt5 (#!_new gp_Pnt (/ my-width 2) 0 0))

	 ;; Profile : Define the Geometry
         (a-arc-of-circle (#_Value (#!_new GC_MakeArcOfCircle a-pnt2 a-pnt3 a-pnt4)))
         (a-segment1 (#_Value (#!_new GC_MakeSegment a-pnt1 a-pnt2)))
         (a-segment2 (#_Value (#!_new GC_MakeSegment a-pnt4 a-pnt5)))

	 ;; Profile : Define the Topology
         (edge1 (#_Edge (#!_new BRepBuilderAPI_MakeEdge a-segment1)))
         (edge2 (#_Edge (#!_new BRepBuilderAPI_MakeEdge a-arc-of-circle)))
         (edge3 (#_Edge (#!_new BRepBuilderAPI_MakeEdge a-segment2)))
         (a-wire (#_Wire (#!_new BRepBuilderAPI_MakeWire edge1 edge2 edge3)))

	 ;; Complete Profile
         (x-axis (#_gp::OX))
         (a-trsf (#!_new gp_Trsf)))
    (#_SetMirror a-trsf x-axis)

    (let ((a-mirrored-wire (#_TopoDS::Wire (#_Shape (#!_new BRepBuilderAPI_Transform a-wire a-trsf))))
          (make-wire (#!_new BRepBuilderAPI_MakeWire)))
      (#_Add make-wire a-wire)
      (#_Add make-wire a-mirrored-wire)

      ;; Body : Prism the Profile
      (let* ((my-body (#_Shape (#!_new BRepPrimAPI_MakePrism
				     (#_Face (#!_new BRepBuilderAPI_MakeFace (#_Wire make-wire)))
				     (#!_new gp_Vec 0 0 my-height))))
	     ;; Body : Apply Fillets
             (mk-fillet  (#!_new BRepFilletAPI_MakeFillet my-body)))
	(let ((explorer (#!_new TopExp_Explorer my-body +TopAbs_EDGE+))
	      (radius (coerce (/ my-thickness 12) 'double-float)))
	  (loop while (#_More explorer)
		do (let ((an-edge (#_TopoDS::Edge (#_Current explorer))))
		     ;; Add edge to fillet algorithm
		     (#_Add mk-fillet radius an-edge)
		     (#_Next explorer))))
	(setq my-body (#_Shape mk-fillet))

        ;; Body : Add the Neck	
	(let* ((neck-location (#!_new gp_Pnt 0 0 my-height))
	       (neck-axis (#_gp::DZ))
	       (neck-ax2 (#!_new gp_Ax2 neck-location neck-axis))
	       (neck-ax3 (#!_new gp_Ax3 neck-ax2))
	       (my-neck-radius (coerce (/ my-thickness 4) 'double-float))
	       (my-neck-height (coerce (/ my-height 10) 'double-float))
	       (mk-cylinder (#!_new BRepPrimAPI_MakeCylinder neck-ax2 my-neck-radius my-neck-height))
	       (my-neck (#_Shape mk-cylinder))
	       (fuse (#!_new BRepAlgoAPI_Fuse my-body my-neck)))
	  (setq my-body (#_Shape fuse))

	  ;; Body : Create a Hollowed Solid
          (let ((faces-to-remove (#!_new Make_TopTools_ListOfShape))
                (a-face-explorer (#!_new TopExp_Explorer my-body +TopAbs_FACE+))
                (z-max -1.0d0)
                (face-to-remove))
            (loop while (#_More a-face-explorer)
		  do (let ((face (#_TopoDS::Face (#_Current a-face-explorer))))
		       ;; Check if <aFace> is the top face of the bottle’s neck
		       (let ((surface (#_handle::get_Geom_Surface (#_BRep_Tool::Surface face))))
			 (when (cffi:pointer-eq (#_DynamicType surface) (#_Geom_Plane::get_type_descriptor))
			   (let ((a-pnt (#_Location (cast "Geom_Plane" surface))))
			     (when (> (#_Z a-pnt) z-max)
			       (setq z-max (#_Z a-pnt)
				     face-to-remove face))))))
		     (#_Next a-face-explorer))
	    (#_Append faces-to-remove face-to-remove)
	    (let ((thick-solid (#!_new BRepOffsetAPI_MakeThickSolid)))
	      (#_MakeThickSolidByJoin thick-solid my-body (#_get faces-to-remove) (/ (- my-thickness) 50.0d0) 1.0d-3)
	      (setq my-body (#_Shape thick-solid))))

          (let* (;; Threading : Create Surfaces
		 (a-cyl1 (#_get_handle (#!_new handle
					     (#_new Geom_CylindricalSurface neck-ax3 (* my-neck-radius 0.99d0)))))
                 (a-cyl2 (#_get_handle (#!_new handle
					     (#_new Geom_CylindricalSurface neck-ax3 (* my-neck-radius 1.05d0)))))

		 ;; Threading : Define 2D Curves
                 (a-pnt (#!_new gp_Pnt2d (* 2 pi) (/ my-neck-height 2)))
                 (a-dir (#!_new gp_Dir2d (* 2 pi) (/ my-neck-height 4)))
                 (an-ax2d (#!_new gp_Ax2d a-pnt a-dir))
                 (a-major (* 2 pi))
                 (a-minor (/ my-neck-height 10.0d0))
                 (an-ellipse1 (#_new Geom2d_Ellipse an-ax2d a-major a-minor))
                 (an-ellipse2 (#_new Geom2d_Ellipse an-ax2d a-major (/ a-minor 4.0d0)))
                 (an-arc1 (#_get_handle (#!_new handle
						(#_new Geom2d_TrimmedCurve
						       (#_get_handle (#!_new handle an-ellipse1))
						       0.0d0
						       pi))))
                 (an-arc2 (#_get_handle (#!_new handle
						(#_new Geom2d_TrimmedCurve
						       (#_get_handle (#!_new handle an-ellipse2))
						       0.0d0
						       pi))))
                 (an-ellipse-pnt1 (#_Value an-ellipse1 0.0d0))
                 (an-ellipse-pnt2 (#_Value an-ellipse1 pi))
                 (a-segment (#!_new GCE2d_MakeSegment an-ellipse-pnt1 an-ellipse-pnt2))

		 ;; Threading : Build Edges and Wires
                 (an-edge1-on-surf1 (#_Edge (#!_new BRepBuilderAPI_MakeEdge an-arc1 a-cyl1)))
                 (an-edge2-on-surf1 (#_Edge (#!_new BRepBuilderAPI_MakeEdge (#_Value a-segment) a-cyl1)))
                 (an-edge1-on-surf2 (#_Edge (#!_new BRepBuilderAPI_MakeEdge an-arc2 a-cyl2)))
                 (an-edge2-on-surf2 (#_Edge (#!_new BRepBuilderAPI_MakeEdge (#_Value a-segment) a-cyl2)))
                 (threading-wire1 (#_Wire (#!_new BRepBuilderAPI_MakeWire an-edge1-on-surf1 an-edge2-on-surf1)))
                 (threading-wire2 (#_Wire (#!_new BRepBuilderAPI_MakeWire an-edge1-on-surf2 an-edge2-on-surf2))))

            (#_BRepLib::BuildCurves3d threading-wire1)
	    (#_BRepLib::BuildCurves3d threading-wire2)
	    
	    ;; Create Threading
	    (let ((a-tool (#!_new BRepOffsetAPI_ThruSections t nil 1.0e-06)))
	      (#_AddWire a-tool threading-wire1)
	      (#_AddWire a-tool threading-wire2)
	      (#_CheckCompatibility a-tool nil)

              (let ((my-threading (#_Shape a-tool))
		    ;; Building the Resulting Compound
		    (a-res (#!_new TopoDS_Compound))
		    (a-builder (#!_new BRep_Builder)))
		(#_MakeCompound a-builder a-res)
		(#_Add a-builder a-res my-body)
		(#_Add a-builder a-res my-threading)
		(end-releasable-objects)
		a-res))))))))
                 
(let ((a-bottle (make-bottle)))
  (with-objects ((aStepWriter (#_new STEPControl_Writer)))
    (#_Transfer aStepWriter a-bottle +STEPControl_AsIs+)
    (#_Write aStepWriter (uiop:native-namestring "~/dev/commonocct/aBottle.stp"))
    (release-objects 'make-bottle)))
