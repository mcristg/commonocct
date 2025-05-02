(in-package :bottle)
(named-readtables:in-readtable :qt)

(defun about (instance)
  (declare (ignore instance))
  (with-objects ((about (#_new QMessageBox)))
    (#_setText about "commonOCCT")
    (#_setInformativeText about "Compiled with Qt 5.15.15 and OpenCASCADE 7.9.0<br><br>
                        Bottle is a demo application about commonQt and OpenCASCADE.<br><br>
                        Lucide icons are licensed under the
                        <a href=\"https://github.com/lucide-icons/lucide/blob/master/LICENSE\">ISC License</a><br>
                        SVG Repo icons are licensed under the
                        <a href=\"https://www.svgrepo.com/page/licensing/\">SVG Repo License</a><br><br>
                        The program is provided AS IS with NO WARRANTY OF ANY KIND, INCLUDING THE
                        WARRANTY OF DESIGN, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.")
    (#_setStandardButtons about (#_QMessageBox::Close))
    (#_setWindowTitle about "About commonOCCT")
    (#_exec about)))

(defun set-shape-attributes (handle-shape color)
  (#_SetColor (#_get handle-shape) (#!_new Quantity_Color color))
  (let* ((handle-atrib (#_Attributes (#_get handle-shape)))
         (handle-line (#_FaceBoundaryAspect (#_handle_Standard_Transient::get_Prs3d_Drawer handle-atrib))))
    (#_SetColor (#_handle_Standard_Transient::get_Prs3d_LineAspect handle-line) (#!_new Quantity_Color +Quantity_NOC_BLACK+))
    (#_SetWidth (#_handle_Standard_Transient::get_Prs3d_LineAspect handle-line) 2.0d0)
    (#_SetFaceBoundaryDraw (#_handle_Standard_Transient::get_Prs3d_Drawer handle-atrib) t)
    (#_SetFaceBoundaryAspect (#_handle_Standard_Transient::get_Prs3d_Drawer handle-atrib) handle-line)
    (#_SetAttributes (#_get handle-shape) handle-atrib)))

(defun add-bottle (instance)
  (when (not (found-bottle instance))
    (setf (found-bottle instance) t)
    (let ((handle-ais-bottle (#!_new handle_Standard_Transient (#_new AIS_Shape (make-bottle)))))
      (#_SetMaterial (#_handle_Standard_Transient::get_AIS_InteractiveContext (#_getContext (occ-view instance)))
		     (#_get_handle handle-ais-bottle)
		     (#!_new Graphic3d_MaterialAspect +Graphic3d_NameOfMaterial_Gold+) t)
      (#_Display (#_handle_Standard_Transient::get_AIS_InteractiveContext (#_getContext (occ-view instance)))
		 (#_get_handle handle-ais-bottle) t)
      (#_fitAll (occ-view instance)))))
    
(defun add-action-to-tool-bar (instance icon-text image format tool-tip-text)
  (let ((icon-height (#_height (#_iconSize (tool-bar instance))))
        (action (#_new QAction icon-text instance)))
    (#_setToolTip action tool-tip-text)
    (#_setIcon action (#_new QIcon (hires-pixmap image format icon-height)))
    (#_addAction (tool-bar instance) action)
    action))

(defun populate-tool-bar (instance)
  (#_setToolButtonStyle (tool-bar instance) (#_Qt::ToolButtonFollowStyle))
  (let ((icon-height (#_height (#_iconSize (tool-bar instance))))
        (menu (#_new QMenu)))
    ;; add orbit, select, zoom, pan, rotate in QMenu to custom QToolButton
    (#_setContentsMargins menu 0 0 0 0)

    (let ((orbit-action (#_new QAction "Orbit" instance)))
      (#_setIcon orbit-action (#_new QIcon (hires-pixmap *orbit-svg* "SVG" icon-height)))
      (#_addAction menu orbit-action)
      (connect orbit-action (QSIGNAL "triggered()") (occ-view instance) (QSLOT "orbit()"))

      (let ((tool-button (make-instance 'custom-tool-button :parent instance)))
	(#_setMenu tool-button menu)
	(#_setDefaultAction tool-button orbit-action)
	(#_addWidget (tool-bar instance) tool-button)))
    
    (let ((select-action (#_new QAction "Select" instance)))
      (#_setIcon select-action (#_new QIcon (hires-pixmap *mouse-pointer-svg* "SVG" icon-height)))
      (#_addAction menu select-action)
      (connect select-action (QSIGNAL "triggered()") (occ-view instance) (QSLOT "select()")))
       
    (let ((zoom-action (#_new QAction "Zoom" instance)))
      (#_setIcon zoom-action (#_new QIcon (hires-pixmap *zoom-in-svg* "SVG" icon-height)))
      (#_addAction menu zoom-action)
      (connect zoom-action (QSIGNAL "triggered()") (occ-view instance) (QSLOT "zoom()")))
       
    (let ((pan-action (#_new QAction "Pan" instance)))
      (#_setIcon pan-action (#_new QIcon (hires-pixmap *move-svg* "SVG" icon-height)))
      (#_addAction menu pan-action)
      (connect pan-action (QSIGNAL "triggered()") (occ-view instance) (QSLOT "pan()")))

    (let ((rotate-action (#_new QAction "Rotate" instance)))
      (#_setIcon rotate-action (#_new QIcon (hires-pixmap *rotate-ccw-svg* "SVG" icon-height)))
      (#_addAction menu rotate-action)
      (connect rotate-action (QSIGNAL "triggered()") (occ-view instance) (QSLOT "rotation()")))

    ;; add reset view action
    (#_addSeparator (tool-bar instance))
    (let ((reset (add-action-to-tool-bar instance "Reset View" *reset-svg* "SVG" "Reset view")))
      (connect reset (QSIGNAL "triggered()") (occ-view instance) (QSLOT "reset()")))
      
    ;; add primitives
    (#_addSeparator (tool-bar instance))
    (let ((bottle-action (add-action-to-tool-bar instance "Bottle" *bottle-svg* "SVG" "Add bottle")))
      (connect bottle-action (QSIGNAL "triggered()") instance (QSLOT "addBottle()")))
    
    ;; add about action
    (let ((about (add-action-to-tool-bar instance "About" *info-svg* "SVG" "About OCCT make-bottle"))
          ;; add spacer widget to toolBar
          (empty (make-instance 'empty-spacer-widget :parent instance)))
      (connect about (QSIGNAL "triggered()") instance (QSLOT "about()"))
      (#_insertWidget (tool-bar instance) about empty))))

(defmethod initialize-instance :after ((instance occ-widget) &key (parent nil))
  (if parent
      (new instance parent)
      (new instance))

  ;; add toolBar
  (let ((layout (#_new QVBoxLayout instance)))
    (#_setSpacing layout 0)
    (#_setContentsMargins layout 3 3 3 3)
    (setf (tool-bar instance) (#_new QToolBar))
    (#_addWidget layout (tool-bar instance))
    (setf (occ-view instance) (#_new  occView instance))
    (#_addWidget layout (occ-view instance))

    (#_setLayout instance layout)
    (populate-tool-bar instance)

    ;; show and force size update to redraw occt window
    (#_show instance)
    (with-objects ((siz (#_new QSize 800 600)))
      (#_setMinimumSize instance siz))
    (#_setWindowTitle instance (#_QObject::tr "CommonQt with OpenCASCADE demo - commonOCCT"))))

(defun main ()
  (let ((qapp (make-qapplication)))
    (let ((window (make-instance 'occ-widget)))
      (#_show window)
      (unwind-protect
	   (#_exec qapp)
	(#_hide window))))
  (clean-releasable-objects))
