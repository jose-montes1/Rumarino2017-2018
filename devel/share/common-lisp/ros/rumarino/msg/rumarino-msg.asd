
(cl:in-package :asdf)

(defsystem "rumarino-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "motors_horizontal" :depends-on ("_package_motors_horizontal"))
    (:file "_package_motors_horizontal" :depends-on ("_package"))
  ))