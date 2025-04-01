(in-package :bottle)
(named-readtables:in-readtable :qt)

(defmethod initialize-instance :after ((instance custom-tool-button) &key (parent nil))
  (if parent
      (new instance parent)
      (new instance))
  (#_setPopupMode instance (#_QToolButton::MenuButtonPopup))
  (connect instance (QSIGNAL "triggered(QAction*)") instance (QSLOT "setDefaultAction(QAction*)")))
