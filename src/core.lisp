(in-package :htmx)

;; HTMX JS artifacts need to be added to a rendered HTML page
(defparameter *htmx-version* "2.0.1")
(defparameter *htmx-cdn*
  (str:concat "https://unpkg.com/htmx.org@" *htmx-version*))

;; Hyperscript, when used, also requires inclusion in a rendered HTML page.
(defparameter *hyperscript-version* "0.9.12")
(defparameter *hyperscript-cdn*
  (str:concat "https://unpkg.com/hyperscript.org@" *hyperscript-version*))

;; By default we support Bulma because it's super simple and easy. But you
;; can use whatever CSS framework you want. 
(defparameter *bulma-version* "1.0.2")
(defparameter *bulma-cdn*
  (str:concat "https://cdn.jsdelivr.net/npm/bulma@" *bulma-version* "/css/bulma.min.css"))

(defparameter *alpinejs-version* "3.x.x")
(defparameter *alpinejs-cdn* 
  (str:concat "https://cdn.jsdelivr.net/npm/alpinejs@" *alpinejs-version* "/dist/cdn.min.js"))

(defparameter *react-version* "0.14.3")
(defparameter *react-cdn*
  (str:concat "https://fb.me/react-" *react-version* ".min.js"))

(defun stylesheet-link (path-or-url)
  (with-html (:link :rel "stylesheet" :href path-or-url)))

(defun bulma-link ()
  (stylesheet-link *bulma-cdn*))

(defun js-library-script (path-or-url)
  (with-html (:script :src path-or-url)))

(defun include-scripts (&key include-bulma? include-alpinejs?)
  (with-html (js-library-script *htmx-cdn*)
             (js-library-script *hyperscript-cdn*)
             (if include-alpinejs? (js-library-script *alpinejs-cdn*))
             (if include-bulma? (bulma-link))))




