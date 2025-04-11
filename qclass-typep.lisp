(in-package :occt)
(named-readtables:in-readtable :qt)

(export '(qclass-typep) 'occt)

;(qclass-typep Circ "gp_Circ")
(defun qclass-typep (qclass type-name)
  (if (typep qclass 'qt:qobject)
      (string= (qt:qclass-name (qt::qobject-class qclass)) type-name)
      nil))

