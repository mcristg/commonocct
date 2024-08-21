(in-package :occt)

;; Graphic3d_DiagnosticInfo.hxx
;; Diagnostic info categories bit flags.
;; enum Graphic3d_DiagnosticInfo

(defconstant +Graphic3d_DiagnosticInfo_Device+ #x001)         ;; device / vendor / version information
(defconstant +Graphic3d_DiagnosticInfo_FrameBuffer+ #x002)    ;; framebuffer information
(defconstant +Graphic3d_DiagnosticInfo_Limits+ #x004)         ;; hardware limits
(defconstant +Graphic3d_DiagnosticInfo_Memory+ #x008)         ;; memory counters
(defconstant +Graphic3d_DiagnosticInfo_NativePlatform+ #x010) ;; native platform API information (e.g. WGL / GLX / EGL)
(defconstant +Graphic3d_DiagnosticInfo_Extensions+ #x020)     ;; vendor extension list (usually very long)
;; groups
(defconstant +Graphic3d_DiagnosticInfo_Short+ (logior +Graphic3d_DiagnosticInfo_Device+
						      +Graphic3d_DiagnosticInfo_FrameBuffer+
						      +Graphic3d_DiagnosticInfo_Limits+))        ;; minimal information
(defconstant +Graphic3d_DiagnosticInfo_Basic+ (logior +Graphic3d_DiagnosticInfo_Short+
						      +Graphic3d_DiagnosticInfo_NativePlatform+
						      +Graphic3d_DiagnosticInfo_Memory+))        ;; basic information, without extension list
(defconstant +Graphic3d_DiagnosticInfo_Complete+ (logior +Graphic3d_DiagnosticInfo_Basic+
							 +Graphic3d_DiagnosticInfo_Extensions+)) ;; complete information, including extension list

(export '(+Graphic3d_DiagnosticInfo_Device+
          +Graphic3d_DiagnosticInfo_FrameBuffer+
          +Graphic3d_DiagnosticInfo_Limits+
          +Graphic3d_DiagnosticInfo_Memory+
          +Graphic3d_DiagnosticInfo_NativePlatform+
          +Graphic3d_DiagnosticInfo_Extensions+
          +Graphic3d_DiagnosticInfo_Short+
          +Graphic3d_DiagnosticInfo_Basic+
          +Graphic3d_DiagnosticInfo_Complete+) 'occt)
