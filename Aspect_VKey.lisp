(in-package :occt)
;; Define virtual key as integer number to allow extensions.

;; Enumeration defining virtual keys irrelevant to current keyboard layout for simplified hot-keys management logic.
;; enum Aspect_VKeyBasic
(defconstant +Aspect_VKey_UNKNOWN+             0)

;; main latin alphabet keys
(defconstant +Aspect_VKey_A+                   1)
(defconstant +Aspect_VKey_B+                   2)
(defconstant +Aspect_VKey_C+                   3)
(defconstant +Aspect_VKey_D+                   4)
(defconstant +Aspect_VKey_E+                   5)
(defconstant +Aspect_VKey_F+                   6)
(defconstant +Aspect_VKey_G+                   7)
(defconstant +Aspect_VKey_H+                   8)
(defconstant +Aspect_VKey_I+                   9)
(defconstant +Aspect_VKey_J+                  10)
(defconstant +Aspect_VKey_K+                  11)
(defconstant +Aspect_VKey_L+                  12)
(defconstant +Aspect_VKey_M+                  13)
(defconstant +Aspect_VKey_N+                  14)
(defconstant +Aspect_VKey_O+                  15)
(defconstant +Aspect_VKey_P+                  16)
(defconstant +Aspect_VKey_Q+                  17)
(defconstant +Aspect_VKey_R+                  18)
(defconstant +Aspect_VKey_S+                  19)
(defconstant +Aspect_VKey_T+                  20)
(defconstant +Aspect_VKey_U+                  21)
(defconstant +Aspect_VKey_V+                  22)
(defconstant +Aspect_VKey_W+                  23)
(defconstant +Aspect_VKey_X+                  24)
(defconstant +Aspect_VKey_Y+                  25)
(defconstant +Aspect_VKey_Z+                  26)

(defconstant +Aspect_VKey_0+                  27)
(defconstant +Aspect_VKey_1+                  28)
(defconstant +Aspect_VKey_2+                  29)
(defconstant +Aspect_VKey_3+                  30)
(defconstant +Aspect_VKey_4+                  31)
(defconstant +Aspect_VKey_5+                  32)
(defconstant +Aspect_VKey_6+                  33)
(defconstant +Aspect_VKey_7+                  34)
(defconstant +Aspect_VKey_8+                  35)
(defconstant +Aspect_VKey_9+                  36)

(defconstant +Aspect_VKey_F1+                 37)
(defconstant +Aspect_VKey_F2+                 38)
(defconstant +Aspect_VKey_F3+                 39)
(defconstant +Aspect_VKey_F4+                 40)
(defconstant +Aspect_VKey_F5+                 41)
(defconstant +Aspect_VKey_F6+                 42)
(defconstant +Aspect_VKey_F7+                 43)
(defconstant +Aspect_VKey_F8+                 44)
(defconstant +Aspect_VKey_F9+                 45)
(defconstant +Aspect_VKey_F10+                46)
(defconstant +Aspect_VKey_F11+                47)
(defconstant +Aspect_VKey_F12+                48) 

;; standard keys
(defconstant +Aspect_VKey_Up+                 49)
(defconstant +Aspect_VKey_Down+               50)
(defconstant +Aspect_VKey_Left+               51)
(defconstant +Aspect_VKey_Right+              52)
(defconstant +Aspect_VKey_Plus+               53) ; '+'
(defconstant +Aspect_VKey_Minus+              54) ; '-'
(defconstant +Aspect_VKey_Equal+              55) ; '=+'
(defconstant +Aspect_VKey_PageUp+             56)
(defconstant +Aspect_VKey_PageDown+           57)
(defconstant +Aspect_VKey_Home+               58)
(defconstant +Aspect_VKey_End+                59)
(defconstant +Aspect_VKey_Escape+             60)
(defconstant +Aspect_VKey_Back+               61)
(defconstant +Aspect_VKey_Enter+              62)
(defconstant +Aspect_VKey_Backspace+          63)
(defconstant +Aspect_VKey_Space+              64)
(defconstant +Aspect_VKey_Delete+             65)
(defconstant +Aspect_VKey_Tilde+              66)
(defconstant +Aspect_VKey_Tab+                67)
(defconstant +Aspect_VKey_Comma+              68) ; '+'
(defconstant +Aspect_VKey_Period+             69) ; '.'
(defconstant +Aspect_VKey_Semicolon+          70) ; ';:'
(defconstant +Aspect_VKey_Slash+              71) ; '/?'
(defconstant +Aspect_VKey_BracketLeft+        72) ; '[{'
(defconstant +Aspect_VKey_Backslash+          73) ; '\|'
(defconstant +Aspect_VKey_BracketRight+       74) ; ']}'
(defconstant +Aspect_VKey_Apostrophe+         75) ; ''"'
(defconstant +Aspect_VKey_Numlock+            76) ; Num Lock key
(defconstant +Aspect_VKey_Scroll+             77) ; Scroll Lock key

;; numpad keys
(defconstant +Aspect_VKey_Numpad0+            78)
(defconstant +Aspect_VKey_Numpad1+            79)
(defconstant +Aspect_VKey_Numpad2+            80)
(defconstant +Aspect_VKey_Numpad3+            81)
(defconstant +Aspect_VKey_Numpad4+            82)
(defconstant +Aspect_VKey_Numpad5+            83)
(defconstant +Aspect_VKey_Numpad6+            84)
(defconstant +Aspect_VKey_Numpad7+            85)
(defconstant +Aspect_VKey_Numpad8+            86)
(defconstant +Aspect_VKey_Numpad9+            87)
(defconstant +Aspect_VKey_NumpadMultiply+     88) ; numpad '*'
(defconstant +Aspect_VKey_NumpadAdd+          89) ; numpad '+'
(defconstant +Aspect_VKey_NumpadSubtract+     90) ; numpad '-'
(defconstant +Aspect_VKey_NumpadDivide+       91) ; numpad '/'

;; Multimedia keys
(defconstant +Aspect_VKey_MediaNextTrack+     92)
(defconstant +Aspect_VKey_MediaPreviousTrack+ 93)
(defconstant +Aspect_VKey_MediaStop+          94)
(defconstant +Aspect_VKey_MediaPlayPause+     95)
(defconstant +Aspect_VKey_VolumeMute+         96)
(defconstant +Aspect_VKey_VolumeDown+         97)
(defconstant +Aspect_VKey_VolumeUp+           98)
(defconstant +Aspect_VKey_BrowserBack+        99)
(defconstant +Aspect_VKey_BrowserForward+    100)
(defconstant +Aspect_VKey_BrowserRefresh+    101)
(defconstant +Aspect_VKey_BrowserStop+       102)
(defconstant +Aspect_VKey_BrowserSearch+     103)
(defconstant +Aspect_VKey_BrowserFavorites+  104)
(defconstant +Aspect_VKey_BrowserHome+       105)

;; 3d view keys
(defconstant +Aspect_VKey_ViewTop+           106)
(defconstant +Aspect_VKey_ViewBottom+        107)
(defconstant +Aspect_VKey_ViewLeft+          108)
(defconstant +Aspect_VKey_ViewRight+         109)
(defconstant +Aspect_VKey_ViewFront+         110)
(defconstant +Aspect_VKey_ViewBack+          111)
(defconstant +Aspect_VKey_ViewAxoLeftProj+   112)
(defconstant +Aspect_VKey_ViewAxoRightProj+  113)
(defconstant +Aspect_VKey_ViewFitAll+        114)
(defconstant +Aspect_VKey_ViewRoll90CW+      115)
(defconstant +Aspect_VKey_ViewRoll90CCW+     116)
(defconstant +Aspect_VKey_ViewSwitchRotate+  117) 

;; modifier keys, @sa Aspect_VKey_ModifiersLower and Aspect_VKey_ModifiersUpper below
(defconstant +Aspect_VKey_Shift+             118)
(defconstant +Aspect_VKey_Control+           119)
(defconstant +Aspect_VKey_Alt+               120)
(defconstant +Aspect_VKey_Menu+              121)
(defconstant +Aspect_VKey_Meta+              122)

;; virtual navigation keys, @sa Aspect_VKey_NavigationKeysLower and Aspect_VKey_NavigationKeysUpper below
(defconstant +Aspect_VKey_NavInteract+       123) ; interact
(defconstant +Aspect_VKey_NavForward+        124) ; go forward
(defconstant +Aspect_VKey_NavBackward+       125) ; go backward
(defconstant +Aspect_VKey_NavSlideLeft+      126) ; sidewalk+ left
(defconstant +Aspect_VKey_NavSlideRight+     127) ; sidewalk+ right
(defconstant +Aspect_VKey_NavSlideUp+        128) ; lift up
(defconstant +Aspect_VKey_NavSlideDown+      129) ; fall down
(defconstant +Aspect_VKey_NavRollCCW+        130) ; bank left  (roll counter-clockwise)
(defconstant +Aspect_VKey_NavRollCW+         131) ; bank right (roll clockwise)
(defconstant +Aspect_VKey_NavLookLeft+       132) ; look left  (yaw counter-clockwise)
(defconstant +Aspect_VKey_NavLookRight+      134) ; look right (yaw clockwise)
(defconstant +Aspect_VKey_NavLookUp+         135) ; look up    (pitch clockwise)
(defconstant +Aspect_VKey_NavLookDown+       136) ; look down  (pitch counter-clockwise)
(defconstant +Aspect_VKey_NavCrouch+         137) ; crouch walking
(defconstant +Aspect_VKey_NavJump+           138) ; jump
(defconstant +Aspect_VKey_NavThrustForward+  139) ; increase continuous velocity in forward  direction
(defconstant +Aspect_VKey_NavThrustBackward+ 140) ; increase continuous velocity in reversed direction
(defconstant +Aspect_VKey_NavThrustStop+     141) ; reset continuous velocity
(defconstant +Aspect_VKey_NavSpeedIncrease+  142) ; increase navigation speed
(defconstant +Aspect_VKey_NavSpeedDecrease+  143) ; decrease navigation speed

;; Auxiliary ranges.
(defconstant +Aspect_VKey_Lower+               0)
(defconstant +Aspect_VKey_ModifiersLower+      +Aspect_VKey_Shift+)
(defconstant +Aspect_VKey_ModifiersUpper+      +Aspect_VKey_Meta+)
(defconstant +Aspect_VKey_NavigationKeysLower+ +Aspect_VKey_NavInteract+)
(defconstant +Aspect_VKey_NavigationKeysUpper+ +Aspect_VKey_NavSpeedDecrease+)
(defconstant +Aspect_VKey_Upper+               +Aspect_VKey_NavSpeedDecrease+)
(defconstant +Aspect_VKey_NB+                  (+  (- +Aspect_VKey_Upper+ +Aspect_VKey_Lower+) 1))
(defconstant +Aspect_VKey_MAX+                 255)

