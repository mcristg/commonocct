(in-package :occt)

;; AIS_SelectionScheme.hxx
;; Sets selection schemes for interactive contexts.
;; enum AIS_SelectionScheme

(defconstant +AIS_SelectionScheme_UNKNOWN+ -1)     ;;< undefined scheme
(defconstant +AIS_SelectionScheme_Replace+ 0)      ;;< clears current selection and select detected objects
(defconstant +AIS_SelectionScheme_Add+ 1)          ;;< adds detected object to current selection
(defconstant +AIS_SelectionScheme_Remove+ 2)       ;;< removes detected object from the current selection
(defconstant +AIS_SelectionScheme_XOR+ 3)          ;;< performs XOR for detected objects, other selected not touched
(defconstant +AIS_SelectionScheme_Clear+ 4)        ;;< clears current selection
(defconstant +AIS_SelectionScheme_ReplaceExtra+ 5) ;;< replace with one difference: if result of replace is an empty,
                                                   ;;< and current selection contains detected element, it will be selected
(export '(+AIS_SelectionScheme_UNKNOWN+
          +AIS_SelectionScheme_Replace+
          +AIS_SelectionScheme_Add+
          +AIS_SelectionScheme_Remove+
          +AIS_SelectionScheme_XOR+
          +AIS_SelectionScheme_Clear+
          +AIS_SelectionScheme_ReplaceExtra+) 'occt)
