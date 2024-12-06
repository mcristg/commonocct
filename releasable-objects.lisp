(in-package :occt)

(defvar *releasable-objects-table* (make-hash-table :test 'eql))
(defvar *current-key* 'anonymous)

(defmacro start-releasable-objects (key)
  `(setf *current-key* ,key))

(defmacro end-releasable-objects ()
  `(setf *current-key* 'anonimous))

(defun add-releasable-object (obj)
  (let ((list (gethash *current-key* *releasable-objects-table*)))
    (setf list (append list (list obj)))
    (setf (gethash *current-key* *releasable-objects-table*) list)))

(defmacro _new (instance &rest args)
  (if (not (stringp instance))
      (error "The instance argument must be a string.")
      `(let ((new ((lambda () (optimized-new ,instance ,@args)))))
	 (add-releasable-object new)
         new)))

(defun release-objects (key)
  (let ((list (gethash key *releasable-objects-table*)))
    (dolist (obj list)
      (when (not (or (typep obj 'null-qobject) (qobject-deleted obj)))
	(optimized-delete obj)
	(remhash key *releasable-objects-table*)))))

(defun clean-releasable-objects ()
  (with-hash-table-iterator (iter *releasable-objects-table*)
    (loop
      (multiple-value-bind (entry-p key value)
	  (iter)
	(if entry-p
	    (dolist (obj value)
	      (when (not (or (typep obj 'null-qobject) (qobject-deleted obj)))
		(optimized-delete obj)
		(remhash key *releasable-objects-table*)))
	    (return))))))

(defmacro qt::_new (instance &rest args)
  (if (not (stringp instance))
      (error "The instance argument must be a string.")
      `(let ((new ((lambda () (optimized-new ,instance ,@args)))))
	 (add-releasable-object new)
         new)))
