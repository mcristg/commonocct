;; (load "~/dev/commonocct/full-load-smokeocct-lib.lisp")

(in-package :occt)

(defvar *occt-library-loaded-p* nil)

(defun full-load-smokeocct-lib()
  (unless *occt-library-loaded-p*
    (setf *occt-library-loaded-p* t)
    
    ;; Module FoundationClasses
    (qt:ensure-smoke :TKernel)
    (qt:ensure-smoke :TKMath)

    ;; Module ModelingData
    (qt:ensure-smoke :TKG2d)
    (qt:ensure-smoke :TKG3d)
    (qt:ensure-smoke :TKGeomBase)
    (qt:ensure-smoke :TKBRep)

    ;; Module ModelingAlgorithms
    (qt:ensure-smoke :TKGeomAlgo)
    (qt:ensure-smoke :TKTopAlgo)
    (qt:ensure-smoke :TKPrim)
    (qt:ensure-smoke :TKShHealing)
    (qt:ensure-smoke :TKBO)
    (qt:ensure-smoke :TKBool)
    (qt:ensure-smoke :TKFeat)
    (qt:ensure-smoke :TKFillet)
    (qt:ensure-smoke :TKHLR)
    (qt:ensure-smoke :TKMesh)
    (qt:ensure-smoke :TKOffset)

    ;; Module Visualization
    (qt:ensure-smoke :TKService)
    (qt:ensure-smoke :TKV3d)
    (qt:ensure-smoke :TKOpenGl)
    (qt:ensure-smoke :TKMeshVS)
    
    ;; Module ApplicationFramework
    (qt:ensure-smoke :TKCDF)
    (qt:ensure-smoke :TKLCAF)
    (qt:ensure-smoke :TKCAF)
    (qt:ensure-smoke :TKVCAF)
    (qt:ensure-smoke :TKBinL)
    (qt:ensure-smoke :TKBin)
    (qt:ensure-smoke :TKTObj)
    (qt:ensure-smoke :TKBinTObj)
    (qt:ensure-smoke :TKStdL)
    (qt:ensure-smoke :TKStd)
    (qt:ensure-smoke :TKXmlL)
    (qt:ensure-smoke :TKXml)
    (qt:ensure-smoke :TKXmlTObj)

    ;; Module DataExchange
    (qt:ensure-smoke :TKDE)
    (qt:ensure-smoke :TKXCAF)
    (qt:ensure-smoke :TKXSBase)
    (qt:ensure-smoke :TKExpress)
    (qt:ensure-smoke :TKDESTEP)
    (qt:ensure-smoke :TKHDESTEP)
    (qt:ensure-smoke :TKBinXCAF)
    (qt:ensure-smoke :TKXmlXCAF)
    (qt:ensure-smoke :TKDEIGES)
    (qt:ensure-smoke :TKRWMesh)
    (qt:ensure-smoke :TKDESTL)
    (qt:ensure-smoke :TKDECascade)
    (qt:ensure-smoke :TKDEVRML)
    ;(qt:ensure-smoke :TKDEGLTF)
    (qt:ensure-smoke :TKDEOBJ)
    (qt:ensure-smoke :TKDEPLY)

    ;; Module Draw
    (qt:ensure-smoke :TKDraw)
    (qt:ensure-smoke :TKTopTest)
    (qt:ensure-smoke :TKViewerTest)
    (qt:ensure-smoke :TKOpenGlTest)
    (qt:ensure-smoke :TKDCAF)
    (qt:ensure-smoke :TKTObjDRAW)
    (qt:ensure-smoke :TKXSDRAW)
    (qt:ensure-smoke :TKQADraw)
    (qt:ensure-smoke :TKXDEDRAW)    

    (qt:ensure-smoke :TKXSDRAWSTEP)
    (qt:ensure-smoke :TKXSDRAWOBJ)
    (qt:ensure-smoke :TKXSDRAWIGES)
    ;(qt:ensure-smoke :TKXSDRAWGLTF)
    (qt:ensure-smoke :TKXSDRAWVRML)
    (qt:ensure-smoke :TKXSDRAWPLY)
    (qt:ensure-smoke :TKXSDRAWSTL)
    
    ;; OpenCASCADE/Qt Visualization
    (qt:ensure-smoke :TKQt3D)))

