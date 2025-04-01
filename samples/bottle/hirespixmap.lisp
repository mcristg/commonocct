(in-package :bottle)
(named-readtables:in-readtable :qt)

(defun hires-pixmap (image format height)
  (let ((icon image))
    (when (string-equal format "SVG")
      ;; re-color accordingly
      (let ((icon-color "#778ca3")) ; blue grey
	(setf icon (serapeum:string-replace-all "currentColor" icon icon-color))
	(setf icon (serapeum:string-replace-all "#000000" icon icon-color))))
    (let ((pixmap (pixmap icon format)))
      (#_setDevicePixelRatio pixmap 2.0)
      (#_scaledToHeight pixmap (* 4 height) (#_Qt::SmoothTransformation))
      pixmap)))
