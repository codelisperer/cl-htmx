(in-package :asdf-user)
(defsystem "cl-htmx"
  :description "Common Lisp support for HTMX that won't set your hair on fire."
  :version "0.0.1"
  :author "Bob Calco <eternal.recursion@proton.me>"
  :license "MIT"
  :depends-on (#:spinneret
               #:uiop
               #:cl-str
               #:parenscript)
  :serial t
  :components ((:module "src"
                 :pathname "src/"
                 :serial t
                 :components ((:file "package")
                              (:file "core")
                              (:file "htmx")
                              (:file "hyperscript")
                              (:file "javascript")))))
