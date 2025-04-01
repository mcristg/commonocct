(in-package :occt)

;;BRepBuilderAPI_WireError.hxx

;; Indicates the outcome of wire
;; construction, i.e. whether it is successful or not, as explained below:
;; -      BRepBuilderAPI_WireDone No
;; error occurred. The wire is correctly built.
;; -      BRepBuilderAPI_EmptyWire No
;; initialization of the algorithm. Only an empty constructor was used.
;; -      BRepBuilderAPI_DisconnectedWire
;; The last edge which you attempted to add was not connected to the wire.
;; -      BRepBuilderAPI_NonManifoldWire
;; The wire with some singularity.
;; enum BRepBuilderAPI_WireError

(defconstant +BRepBuilderAPI_WireDone+ 0)
(defconstant +BRepBuilderAPI_EmptyWire+ 1)
(defconstant +BRepBuilderAPI_DisconnectedWire+ 2)
(defconstant +BRepBuilderAPI_NonManifoldWire+ 3)

(export '(+BRepBuilderAPI_WireDone+
          +BRepBuilderAPI_EmptyWire+
          +BRepBuilderAPI_DisconnectedWire+
          +BRepBuilderAPI_NonManifoldWire+) 'occt)

