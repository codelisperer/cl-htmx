(defpackage :htmx
  (:use :cl :spinneret)
  (:local-nicknames (:iop :uiop)
                    (:s   :str))
  (:export *htmx-version*
           *htmx-cdn*
           *hyperscript-version*
           *hyperscript-cdn*
           *bulma-version*
           *bulma-cdn*
           *alpinejs-version*
           *alpinejs-cdn*
           include-scripts
           stylesheet-link
           js-library-script
           bulma-link))

(defpackage :htmx-user
  (:use :cl :spinneret :htmx)
  (:local-nicknames (:iop :uiop)
                    (:s   :str)))
