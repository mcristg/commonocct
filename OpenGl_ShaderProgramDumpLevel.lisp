(in-package :occt)

;; OpenGl_ShaderProgramDumpLevel.hxx
;; enum OpenGl_ShaderProgramDumpLevel

(defconstant +OpenGl_ShaderProgramDumpLevel_Off+ 0)   ; Disable shader programs source code dump.
(defconstant +OpenGl_ShaderProgramDumpLevel_Short+ 1) ; Shader programs source code dump in short format (except common declarations).
(defconstant +OpenGl_ShaderProgramDumpLevel_Full+ 2)  ; Shader programs source code dump in full format.

(export '(+OpenGl_ShaderProgramDumpLevel_Off+
          +OpenGl_ShaderProgramDumpLevel_Short+
          +OpenGl_ShaderProgramDumpLevel_Full+) 'occt)
