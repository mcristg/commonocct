(in-package :occt)

;; Message_Gravity.hxx
;; Defines gravity level of messages
;; - Trace: low-level details on algorithm execution (usually for debug purposes)
;; - Info: informative message
;; - Warning: warning message
;; - Alarm: non-critical error
;; - Fail: fatal error
;; enum Message_Gravity

(defconstant +Message_Trace+ 0)
(defconstant +Message_Info+ 1)
(defconstant +Message_Warning+ 2)
(defconstant +Message_Alarm+ 3)
(defconstant +Message_Fail+ 4)

(export '(+Message_Trace+ +Message_Info+ +Message_Warning+ +Message_Alarm+ +Message_Fail+) 'occt)
