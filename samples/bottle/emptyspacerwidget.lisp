(in-package :bottle)
(named-readtables:in-readtable :qt)

(defmethod initialize-instance :after ((instance empty-spacer-widget) &key (parent nil))
  (if parent
      (new instance parent)
      (new instance))
  (#_setSizePolicy instance (#_QSizePolicy::Expanding) (#_QSizePolicy::Preferred)))
