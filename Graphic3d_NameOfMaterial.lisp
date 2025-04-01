(in-package :occt)

;; Graphic3d_NameOfMaterial.hxx

;; List of named materials (predefined presets).
;; Each preset defines either physical (having natural color) or generic (mutable color) material.
;; enum Graphic3d_NameOfMaterial

(defconstant +Graphic3d_NameOfMaterial_Brass+           0)  ;< Brass        (Physic)
(defconstant +Graphic3d_NameOfMaterial_Bronze+          1)  ;< Bronze       (Physic)
(defconstant +Graphic3d_NameOfMaterial_Copper+          2)  ;< Copper       (Physic)
(defconstant +Graphic3d_NameOfMaterial_Gold+            3)  ;< Gold         (Physic)
(defconstant +Graphic3d_NameOfMaterial_Pewter+          4)  ;< Pewter       (Physic)
(defconstant +Graphic3d_NameOfMaterial_Plastered+       5)  ;< Plastered    (Generic)
(defconstant +Graphic3d_NameOfMaterial_Plastified+      6)  ;< Plastified   (Generic)
(defconstant +Graphic3d_NameOfMaterial_Silver+          7)  ;< Silver       (Physic)
(defconstant +Graphic3d_NameOfMaterial_Steel+           8)  ;< Steel        (Physic)
(defconstant +Graphic3d_NameOfMaterial_Stone+           9)  ;< Stone        (Physic)
(defconstant +Graphic3d_NameOfMaterial_ShinyPlastified+ 10) ;< Shiny Plastified (Generic)
(defconstant +Graphic3d_NameOfMaterial_Satin+           11) ;< Satin        (Generic)
(defconstant +Graphic3d_NameOfMaterial_Metalized+       12) ;< Metalized    (Generic)
(defconstant +Graphic3d_NameOfMaterial_Ionized+         13) ;< Ionized      (Generic)
(defconstant +Graphic3d_NameOfMaterial_Chrome+          14) ;< Chrome       (Physic)
(defconstant +Graphic3d_NameOfMaterial_Aluminum+        15) ;< Aluminum     (Physic)
(defconstant +Graphic3d_NameOfMaterial_Obsidian+        16) ;< Obsidian     (Physic)
(defconstant +Graphic3d_NameOfMaterial_Neon+            17) ;< Neon         (Physic)
(defconstant +Graphic3d_NameOfMaterial_Jade+            18) ;< Jade         (Physic)
(defconstant +Graphic3d_NameOfMaterial_Charcoal+        19) ;< Charcoal     (Physic)
(defconstant +Graphic3d_NameOfMaterial_Water+           20) ;< Water        (Physic)
(defconstant +Graphic3d_NameOfMaterial_Glass+           21) ;< Glass        (Physic)
(defconstant +Graphic3d_NameOfMaterial_Diamond+         22) ;< Diamond      (Physic)
(defconstant +Graphic3d_NameOfMaterial_Transparent+     23) ;< Transparent  (Physic)
(defconstant +Graphic3d_NameOfMaterial_DEFAULT+         24) ;< Default      (Generic);
                                            ;;  normally used as out-of-range value pointing to some application default
(defconstant +Graphic3d_NameOfMaterial_UserDefined+     25) ;< User-defined (Physic);
                                            ;;  used for any material with non-standard definition

  ;; old aliases
(defconstant +Graphic3d_NOM_BRASS+         +Graphic3d_NameOfMaterial_Brass+)
(defconstant +Graphic3d_NOM_BRONZE+        +Graphic3d_NameOfMaterial_Bronze+)
(defconstant +Graphic3d_NOM_COPPER+        +Graphic3d_NameOfMaterial_Copper+)
(defconstant +Graphic3d_NOM_GOLD+          +Graphic3d_NameOfMaterial_Gold+)
(defconstant +Graphic3d_NOM_PEWTER+        +Graphic3d_NameOfMaterial_Pewter+)
(defconstant +Graphic3d_NOM_PLASTER+       +Graphic3d_NameOfMaterial_Plastered+)
(defconstant +Graphic3d_NOM_PLASTIC+       +Graphic3d_NameOfMaterial_Plastified+)
(defconstant +Graphic3d_NOM_SILVER+        +Graphic3d_NameOfMaterial_Silver+)
(defconstant +Graphic3d_NOM_STEEL+         +Graphic3d_NameOfMaterial_Steel+)
(defconstant +Graphic3d_NOM_STONE+         +Graphic3d_NameOfMaterial_Stone+)
(defconstant +Graphic3d_NOM_SHINY_PLASTIC+ +Graphic3d_NameOfMaterial_ShinyPlastified+)
(defconstant +Graphic3d_NOM_SATIN+         +Graphic3d_NameOfMaterial_Satin+)
(defconstant +Graphic3d_NOM_METALIZED+     +Graphic3d_NameOfMaterial_Metalized+)
(defconstant +Graphic3d_NOM_NEON_GNC+      +Graphic3d_NameOfMaterial_Ionized+)
(defconstant +Graphic3d_NOM_CHROME+        +Graphic3d_NameOfMaterial_Chrome+)
(defconstant +Graphic3d_NOM_ALUMINIUM+     +Graphic3d_NameOfMaterial_Aluminum+)
(defconstant +Graphic3d_NOM_OBSIDIAN+      +Graphic3d_NameOfMaterial_Obsidian+)
(defconstant +Graphic3d_NOM_NEON_PHC+      +Graphic3d_NameOfMaterial_Neon+)
(defconstant +Graphic3d_NOM_JADE+          +Graphic3d_NameOfMaterial_Jade+)
(defconstant +Graphic3d_NOM_CHARCOAL+      +Graphic3d_NameOfMaterial_Charcoal+)
(defconstant +Graphic3d_NOM_WATER+         +Graphic3d_NameOfMaterial_Water+)
(defconstant +Graphic3d_NOM_GLASS+         +Graphic3d_NameOfMaterial_Glass+)
(defconstant +Graphic3d_NOM_DIAMOND+       +Graphic3d_NameOfMaterial_Diamond+)
(defconstant +Graphic3d_NOM_TRANSPARENT+   +Graphic3d_NameOfMaterial_Transparent+)
(defconstant +Graphic3d_NOM_DEFAULT+       +Graphic3d_NameOfMaterial_DEFAULT+)
(defconstant +Graphic3d_NOM_UserDefined+   +Graphic3d_NameOfMaterial_UserDefined+)

(export '(+Graphic3d_NameOfMaterial_Brass+
          +Graphic3d_NameOfMaterial_Bronze+
          +Graphic3d_NameOfMaterial_Copper+
          +Graphic3d_NameOfMaterial_Gold+ 
          +Graphic3d_NameOfMaterial_Pewter+
          +Graphic3d_NameOfMaterial_Plastered+
          +Graphic3d_NameOfMaterial_Plastified+
          +Graphic3d_NameOfMaterial_Silver+
          +Graphic3d_NameOfMaterial_Steel+
          +Graphic3d_NameOfMaterial_Stone+
          +Graphic3d_NameOfMaterial_ShinyPlastified+
          +Graphic3d_NameOfMaterial_Satin+
          +Graphic3d_NameOfMaterial_Metalized+
          +Graphic3d_NameOfMaterial_Ionized+
          +Graphic3d_NameOfMaterial_Chrome+
          +Graphic3d_NameOfMaterial_Aluminum+
          +Graphic3d_NameOfMaterial_Obsidian+
          +Graphic3d_NameOfMaterial_Neon+
          +Graphic3d_NameOfMaterial_Jade+
          +Graphic3d_NameOfMaterial_Charcoal+
          +Graphic3d_NameOfMaterial_Water+
          +Graphic3d_NameOfMaterial_Glass+
          +Graphic3d_NameOfMaterial_Diamond+
          +Graphic3d_NameOfMaterial_Transparent+
          +Graphic3d_NameOfMaterial_DEFAULT+
          +Graphic3d_NameOfMaterial_UserDefined+

          +Graphic3d_NOM_BRASS+
          +Graphic3d_NOM_BRONZE+
          +Graphic3d_NOM_COPPER+
          +Graphic3d_NOM_GOLD+
          +Graphic3d_NOM_PEWTER+
          +Graphic3d_NOM_PLASTER+
          +Graphic3d_NOM_PLASTIC+
          +Graphic3d_NOM_SILVER+
          +Graphic3d_NOM_STEEL+
          +Graphic3d_NOM_STONE+
          +Graphic3d_NOM_SHINY_PLASTIC+
          +Graphic3d_NOM_SATIN+
          +Graphic3d_NOM_METALIZED+
          +Graphic3d_NOM_NEON_GNC+
          +Graphic3d_NOM_CHROME+
          +Graphic3d_NOM_ALUMINIUM+
          +Graphic3d_NOM_OBSIDIAN+
          +Graphic3d_NOM_NEON_PHC+
          +Graphic3d_NOM_JADE+
          +Graphic3d_NOM_CHARCOAL+
          +Graphic3d_NOM_WATER+
          +Graphic3d_NOM_GLASS+
          +Graphic3d_NOM_DIAMOND+
          +Graphic3d_NOM_TRANSPARENT+
          +Graphic3d_NOM_DEFAULT+
          +Graphic3d_NOM_UserDefined+) 'occt)
