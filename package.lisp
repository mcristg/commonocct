
(defpackage :occt
  (:use :cl)
  (:nicknames :oc)
  (:export #:start-releasable-objects
           #:end-releasable-objects
           #:_new
           #:release-objects
           #:clean-releasable-objects
           
           #:full-load-smokeocct-lib
           
           ;; Aspect_VKey.hxx
           ;; enum Aspect_VKeyBasic
           #:+Aspect_VKey_UNKNOWN+
           ;; main latin alphabet keys
           #:+Aspect_VKey_A+
           #:+Aspect_VKey_B+
           #:+Aspect_VKey_C+
           #:+Aspect_VKey_D+
           #:+Aspect_VKey_E+
           #:+Aspect_VKey_F+
           #:+Aspect_VKey_G+
           #:+Aspect_VKey_H+
           #:+Aspect_VKey_I+
           #:+Aspect_VKey_J+
           #:+Aspect_VKey_K+
           #:+Aspect_VKey_L+
           #:+Aspect_VKey_M+
           #:+Aspect_VKey_N+
           #:+Aspect_VKey_O+ 
           #:+Aspect_VKey_P+
           #:+Aspect_VKey_Q+
           #:+Aspect_VKey_R+
           #:+Aspect_VKey_S+
           #:+Aspect_VKey_T+
           #:+Aspect_VKey_U+
           #:+Aspect_VKey_V+
           #:+Aspect_VKey_W+
           #:+Aspect_VKey_X+
           #:+Aspect_VKey_Y+
           #:+Aspect_VKey_Z+

           #:+Aspect_VKey_0+
           #:+Aspect_VKey_1+
           #:+Aspect_VKey_2+
           #:+Aspect_VKey_3+
           #:+Aspect_VKey_4+
           #:+Aspect_VKey_5+
           #:+Aspect_VKey_6+
           #:+Aspect_VKey_7+
           #:+Aspect_VKey_8+
           #:+Aspect_VKey_9+

           #:+Aspect_VKey_F1+
           #:+Aspect_VKey_F2+
           #:+Aspect_VKey_F3+
           #:+Aspect_VKey_F4+
           #:+Aspect_VKey_F5+
           #:+Aspect_VKey_F6+
           #:+Aspect_VKey_F7+
           #:+Aspect_VKey_F8+
           #:+Aspect_VKey_F9+
           #:+Aspect_VKey_F10+
           #:+Aspect_VKey_F11+
           #:+Aspect_VKey_F12+

           ;; standard keys
           #:+Aspect_VKey_Up+
           #:+Aspect_VKey_Down+
           #:+Aspect_VKey_Left+
           #:+Aspect_VKey_Right+
           #:+Aspect_VKey_Plus+
           #:+Aspect_VKey_Minus+
           #:+Aspect_VKey_Equal+
           #:+Aspect_VKey_PageUp+
           #:+Aspect_VKey_PageDown+
           #:+Aspect_VKey_Home+
           #:+Aspect_VKey_End+
           #:+Aspect_VKey_Escape+
           #:+Aspect_VKey_Back+
           #:+Aspect_VKey_Enter+
           #:+Aspect_VKey_Backspace+
           #:+Aspect_VKey_Space+
           #:+Aspect_VKey_Delete+
           #:+Aspect_VKey_Tilde+ 
           #:+Aspect_VKey_Tab+
           #:+Aspect_VKey_Comma+
           #:+Aspect_VKey_Period+
           #:+Aspect_VKey_Semicolon+
           #:+Aspect_VKey_Slash+
           #:+Aspect_VKey_BracketLeft+
           #:+Aspect_VKey_Backslash+
           #:+Aspect_VKey_BracketRight+
           #:+Aspect_VKey_Apostrophe+
           #:+Aspect_VKey_Numlock+
           #:+Aspect_VKey_Scroll+

           ;; numpad keys
           #:+Aspect_VKey_Numpad0+
           #:+Aspect_VKey_Numpad1+
           #:+Aspect_VKey_Numpad2+
           #:+Aspect_VKey_Numpad3+
           #:+Aspect_VKey_Numpad4+
           #:+Aspect_VKey_Numpad5+
           #:+Aspect_VKey_Numpad6+
           #:+Aspect_VKey_Numpad7+
           #:+Aspect_VKey_Numpad8+
           #:+Aspect_VKey_Numpad9+
           #:+Aspect_VKey_NumpadMultiply+
           #:+Aspect_VKey_NumpadAdd+
           #:+Aspect_VKey_NumpadSubtract+
           #:+Aspect_VKey_NumpadDivide+

           ;; Multimedia keys
           #:+Aspect_VKey_MediaNextTrack+
           #:+Aspect_VKey_MediaPreviousTrack+
           #:+Aspect_VKey_MediaStop+
           #:+Aspect_VKey_MediaPlayPause+
           #:+Aspect_VKey_VolumeMute+
           #:+Aspect_VKey_VolumeDown+
           #:+Aspect_VKey_VolumeUp+
           #:+Aspect_VKey_BrowserBack+
           #:+Aspect_VKey_BrowserForward+
           #:+Aspect_VKey_BrowserRefresh+
           #:+Aspect_VKey_BrowserStop+
           #:+Aspect_VKey_BrowserSearch+
           #:+Aspect_VKey_BrowserFavorites+
           #:+Aspect_VKey_BrowserHome+

           ;; 3d view keys
           #:+Aspect_VKey_ViewTop+
           #:+Aspect_VKey_ViewBottom+
           #:+Aspect_VKey_ViewLeft+
           #:+Aspect_VKey_ViewRight+
           #:+Aspect_VKey_ViewFront+
           #:+Aspect_VKey_ViewBack+
           #:+Aspect_VKey_ViewAxoLeftProj+
           #:+Aspect_VKey_ViewAxoRightProj+
           #:+Aspect_VKey_ViewFitAll+
           #:+Aspect_VKey_ViewRoll90CW+
           #:+Aspect_VKey_ViewRoll90CCW+
           #:+Aspect_VKey_ViewSwitchRotate+

           ;; modifier keys, @sa Aspect_VKey_ModifiersLower and Aspect_VKey_ModifiersUpper below
           #:+Aspect_VKey_Shift+
           #:+Aspect_VKey_Control+
           #:+Aspect_VKey_Alt+
           #:+Aspect_VKey_Menu+
           #:+Aspect_VKey_Meta+

           ;; virtual navigation keys, @sa Aspect_VKey_NavigationKeysLower and Aspect_VKey_NavigationKeysUpper below
           #:+Aspect_VKey_NavInteract+
           #:+Aspect_VKey_NavForward+ 
           #:+Aspect_VKey_NavBackward+
           #:+Aspect_VKey_NavSlideLeft+
           #:+Aspect_VKey_NavSlideRight+
           #:+Aspect_VKey_NavSlideUp+ 
           #:+Aspect_VKey_NavSlideDown+
           #:+Aspect_VKey_NavRollCCW+
           #:+Aspect_VKey_NavRollCW+
           #:+Aspect_VKey_NavLookLeft+
           #:+Aspect_VKey_NavLookRight+
           #:+Aspect_VKey_NavLookUp+
           #:+Aspect_VKey_NavLookDown+
           #:+Aspect_VKey_NavCrouch+
           #:+Aspect_VKey_NavJump+
           #:+Aspect_VKey_NavThrustForward+
           #:+Aspect_VKey_NavThrustBackward+
           #:+Aspect_VKey_NavThrustStop+
           #:+Aspect_VKey_NavSpeedIncrease+
           #:+Aspect_VKey_NavSpeedDecrease+

           ;; Auxiliary ranges.

           #:+Aspect_VKey_Lower+
           #:+Aspect_VKey_ModifiersLower+
           #:+Aspect_VKey_ModifiersUpper+
           #:+Aspect_VKey_NavigationKeysLower+
           #:+Aspect_VKey_NavigationKeysUpper+
           #:+Aspect_VKey_Upper+
           #:+Aspect_VKey_NB+
           #:+Aspect_VKey_MAX+
           
           ;; BinLDrivers_Marker.hxx
           ;; enum BinLDrivers_Marker
           #:+BinLDrivers_ENDATTRLIST+   ; the end of attributes list
           #:+BinLDrivers_ENDLABEL+      ; the end of label

           ;; BOPAlgo_GlueEnum.hxx
           ;;enum BOPAlgo_GlueEnum
           #:+BOPAlgo_GlueOff+   
           #:+BOPAlgo_GlueShift+ 
           #:+BOPAlgo_GlueFull+  

           ;; TDataStd_RealEnum.hxx
           ;; enum TDataStd_RealEnum
           #:+TDataStd_SCALAR+   
           #:+TDataStd_LENGTH+  
           #:+TDataStd_ANGULAR+ 

           ;; TDataXtd_ConstraintEnum.hxx
           ;; enum TDataXtd_ConstraintEnum
           #:+TDataXtd_RADIUS+          
           #:+TDataXtd_DIAMETER+        
           #:+TDataXtd_MINOR_RADIUS+    
           #:+TDataXtd_MAJOR_RADIUS+    
           #:+TDataXtd_TANGENT+         
           #:+TDataXtd_PARALLEL+        
           #:+TDataXtd_PERPENDICULAR+   
           #:+TDataXtd_CONCENTRIC+      
           #:+TDataXtd_COINCIDENT+      
           #:+TDataXtd_DISTANCE+        
           #:+TDataXtd_ANGLE+          
           #:+TDataXtd_EQUAL_RADIUS+   
           #:+TDataXtd_SYMMETRY+       
           #:+TDataXtd_MIDPOINT+       
           #:+TDataXtd_EQUAL_DISTANCE+ 
           #:+TDataXtd_FIX+            
           #:+TDataXtd_RIGID+          
           #:+TDataXtd_FROM+           
           #:+TDataXtd_AXIS+           
           #:+TDataXtd_MATE+           
           #:+TDataXtd_ALIGN_FACES+    
           #:+TDataXtd_ALIGN_AXES+     
           #:+TDataXtd_AXES_ANGLE+     
           #:+TDataXtd_FACES_ANGLE+    
           #:+TDataXtd_ROUND+          
           #:+TDataXtd_OFFSET+         

           ;; TDataXtd_GeometryEnum.hxx
           ;; enum TDataXtd_GeometryEnum
           #:+TDataXtd_ANY_GEOM+ 
           #:+TDataXtd_POINT+    
           #:+TDataXtd_LINE+     
           #:+TDataXtd_CIRCLE+   
           #:+TDataXtd_ELLIPSE+  
           #:+TDataXtd_SPLINE+   
           #:+TDataXtd_PLANE+    
           #:+TDataXtd_CYLINDER+ 

           ;; TopAbs_ShapeEnum.hxx
           ;;enum TopAbs_ShapeEnum
           #:+TopAbs_COMPOUND+  
           #:+TopAbs_COMPSOLID+ 
           #:+TopAbs_SOLID+     
           #:+TopAbs_SHELL+     
           #:+TopAbs_FACE+      
           #:+TopAbs_WIRE+      
           #:+TopAbs_EDGE+      
           #:+TopAbs_VERTEX+    
           #:+TopAbs_SHAPE+     

           ;; TopOpeBRepBuild_LoopEnum.hxx
           ;; enum TopOpeBRepBuild_LoopEnum
           #:+TopOpeBRepBuild_ANYLOOP+  
           #:+TopOpeBRepBuild_BOUNDARY+ 
           #:+TopOpeBRepBuild_BLOCK+    

           ;; StepFEA_EnumeratedDegreeOfFreedom.hxx
           ;; enum StepFEA_EnumeratedDegreeOfFreedom
           #:+StepFEA_XTranslation+ 
           #:+StepFEA_YTranslation+ 
           #:+StepFEA_ZTranslation+ 
           #:+StepFEA_XRotation+    
           #:+StepFEA_YRotation+    
           #:+StepFEA_ZRotation+    
           #:+StepFEA_Warp+         

           ;; Vrml_SFImageNumber.hxx
           ;; enum Vrml_SFImageNumber
           #:+Vrml_NULL+
           #:+Vrml_ONE+ 
           #:+Vrml_TWO+
           #:+Vrml_THREE+
           #:+Vrml_FOUR+))

       

