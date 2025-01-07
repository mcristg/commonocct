(in-package :occt)

;; Aspect_VKeyFlags.hxx
;; Key modifier, for combining with general key from Aspect_VKey.
;; typedef unsigned int Aspect_VKeyFlags;

;; Key modifier, for combining with general key from Aspect_VKey.

(defconstant +Aspect_VKeyFlags_NONE+ 0)
;; reserve first 8 bits to combine value with Aspect_VKey
(defconstant +Aspect_VKeyFlags_SHIFT+ (ash 1 8))  ;; Aspect_VKey_Shift
(defconstant +Aspect_VKeyFlags_CTRL+  (ash 1 9))  ;; Aspect_VKey_Control
(defconstant +Aspect_VKeyFlags_ALT+   (ash 1 10)) ;; Aspect_VKey_Alt
(defconstant +Aspect_VKeyFlags_MENU+  (ash 1 11)) ;; Aspect_VKey_Menu
(defconstant +Aspect_VKeyFlags_META+  (ash 1 12)) ;; Aspect_VKey_Meta

(defconstant +Aspect_VKeyFlags_ALL+ (logior +Aspect_VKeyFlags_SHIFT+ 
                                            +Aspect_VKeyFlags_CTRL+ 
                                            +Aspect_VKeyFlags_ALT+
                                            +Aspect_VKeyFlags_MENU+
                                            +Aspect_VKeyFlags_META+))


;; Mouse buttons, for combining with Aspect_VKey and Aspect_VKeyFlags.
;; typedef unsigned int Aspect_VKeyMouse;

;; Mouse button bitmask

(defconstant +Aspect_VKeyMouse_NONE+ 0) ;; no buttons

(defconstant +Aspect_VKeyMouse_LeftButton+   (ash 1 13)) ;; mouse left   button
(defconstant +Aspect_VKeyMouse_MiddleButton+ (ash 1 14)) ;; mouse middle button (scroll)
(defconstant +Aspect_VKeyMouse_RightButton+  (ash 1 15)) ;; mouse right  button

(defconstant +Aspect_VKeyMouse_MainButtons+ (logior +Aspect_VKeyMouse_LeftButton+
                                                    +Aspect_VKeyMouse_MiddleButton+
                                                    +Aspect_VKeyMouse_RightButton+))

(export '(+Aspect_VKeyFlags_NONE+ 
          +Aspect_VKeyFlags_SHIFT+
          +Aspect_VKeyFlags_CTRL+
          +Aspect_VKeyFlags_ALT+
          +Aspect_VKeyFlags_MENU+
          +Aspect_VKeyFlags_META+
          +Aspect_VKeyFlags_ALL+
          +Aspect_VKeyMouse_NONE+
          +Aspect_VKeyMouse_LeftButton+
          +Aspect_VKeyMouse_MiddleButton+
          +Aspect_VKeyMouse_RightButton+
          +Aspect_VKeyMouse_MainButtons+) 'occt)
