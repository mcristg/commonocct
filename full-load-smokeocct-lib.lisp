;; (load "~/dev/commonocct/full-load-smokeocct-lib.lisp")

(in-package :occt)

(defvar *occt-library-loaded-p* nil)

(defun full-load-smokeocct-lib()
  (unless *occt-library-loaded-p*
    (setf *occt-library-loaded-p* t)
    
    ;; Module FoundationClasses
    (ensure-smoke :TKernel)
    (ensure-smoke :TKMath)

    ;; Module ModelingData
    (ensure-smoke :TKG2d)
    (ensure-smoke :TKG3d)
    (ensure-smoke :TKGeomBase)
    (ensure-smoke :TKBRep)

    ;; Module ModelingAlgorithms
    (ensure-smoke :TKGeomAlgo)
    (ensure-smoke :TKTopAlgo)
    (ensure-smoke :TKPrim)
    (ensure-smoke :TKShHealing)
    (ensure-smoke :TKBO)
    (ensure-smoke :TKBool)
    (ensure-smoke :TKFeat)
    (ensure-smoke :TKFillet)
    (ensure-smoke :TKHLR)
    (ensure-smoke :TKMesh)
    (ensure-smoke :TKOffset)

    ;; Module Visualization
    (ensure-smoke :TKService)
    (ensure-smoke :TKV3d)
    (ensure-smoke :TKOpenGl)
    (ensure-smoke :TKMeshVS)
    
    ;; Module ApplicationFramework
    (ensure-smoke :TKCDF)
    (ensure-smoke :TKLCAF)
    (ensure-smoke :TKCAF)
    (ensure-smoke :TKVCAF)
    (ensure-smoke :TKBinL)
    (ensure-smoke :TKBin)
    (ensure-smoke :TKTObj)
    (ensure-smoke :TKBinTObj)
    (ensure-smoke :TKStdL)
    (ensure-smoke :TKStd)
    (ensure-smoke :TKXmlL)
    (ensure-smoke :TKXml)
    (ensure-smoke :TKXmlTObj)

    ;; Module DataExchange
    (ensure-smoke :TKDE)
    (ensure-smoke :TKXCAF)
    (ensure-smoke :TKXSBase)
    (ensure-smoke :TKExpress)
    (ensure-smoke :TKDESTEP)
    (ensure-smoke :TKHDESTEP)
    (ensure-smoke :TKBinXCAF)
    (ensure-smoke :TKXmlXCAF)
    (ensure-smoke :TKDEIGES)
    (ensure-smoke :TKRWMesh)
    (ensure-smoke :TKDESTL)
    (ensure-smoke :TKDECascade)
    (ensure-smoke :TKDEVRML)
    ;(ensure-smoke :TKDEGLTF)
    (ensure-smoke :TKDEOBJ)
    (ensure-smoke :TKDEPLY)

    ;; Module Draw
    (ensure-smoke :TKDraw)
    (ensure-smoke :TKTopTest)
    (ensure-smoke :TKViewerTest)
    (ensure-smoke :TKOpenGlTest)
    (ensure-smoke :TKDCAF)
    (ensure-smoke :TKTObjDRAW)
    (ensure-smoke :TKXSDRAW)
    (ensure-smoke :TKQADraw)
    (ensure-smoke :TKXDEDRAW)    

    (ensure-smoke :TKXSDRAWSTEP)
    (ensure-smoke :TKXSDRAWOBJ)
    (ensure-smoke :TKXSDRAWIGES)
    ;(ensure-smoke :TKXSDRAWGLTF)
    (ensure-smoke :TKXSDRAWVRML)
    (ensure-smoke :TKXSDRAWPLY)
    (ensure-smoke :TKXSDRAWSTL)))

