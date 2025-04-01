(in-package :bottle)
(named-readtables:in-readtable :qt)

(defclass occ-widget()
  ((occ-view :accessor occ-view)
   (tool-bar :accessor tool-bar)
   (found-bottle :initform nil :accessor found-bottle))
  (:metaclass qt-class)
  (:qt-superclass "QWidget")
  (:slots
   ("void about()" about)
   ("void addBottle()" add-bottle)))

(defclass custom-tool-button()
  ()
  (:metaclass qt-class)
  (:qt-superclass "QToolButton"))

(defclass empty-spacer-widget()
  ()
  (:metaclass qt-class)
  (:qt-superclass "QWidget"))
