(in-package :asdf-user)
(defsystem "cl-htmx"
  :description "Common Lisp support for HTMX that won't set your hair on fire (unless you want it to)."
  :version "0.0.1"
  :author "Bob Calco <eternal.recursion@proton.me>"
  :license "MIT"
  :depends-on (#:spinneret
               #:spinneret/ps
               #:uiop
               #:str
               #:parenscript)
  :serial t
  :components ((:module "src"
                 :pathname "src/"
                 :serial t
                 :components ((:file "package")
                              (:file "core")
                              (:file "javascript")
                              (:file "hyperscript")
                              (:file "htmx")))))
