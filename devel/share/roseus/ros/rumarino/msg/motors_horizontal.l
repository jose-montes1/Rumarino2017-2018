;; Auto-generated. Do not edit!


(when (boundp 'rumarino::motors_horizontal)
  (if (not (find-package "RUMARINO"))
    (make-package "RUMARINO"))
  (shadow 'motors_horizontal (find-package "RUMARINO")))
(unless (find-package "RUMARINO::MOTORS_HORIZONTAL")
  (make-package "RUMARINO::MOTORS_HORIZONTAL"))

(in-package "ROS")
;;//! \htmlinclude motors_horizontal.msg.html


(defclass rumarino::motors_horizontal
  :super ros::object
  :slots (_front_left_motor _front_right_motor _back_left_motor _back_right_motor ))

(defmethod rumarino::motors_horizontal
  (:init
   (&key
    ((:front_left_motor __front_left_motor) 0)
    ((:front_right_motor __front_right_motor) 0)
    ((:back_left_motor __back_left_motor) 0)
    ((:back_right_motor __back_right_motor) 0)
    )
   (send-super :init)
   (setq _front_left_motor (round __front_left_motor))
   (setq _front_right_motor (round __front_right_motor))
   (setq _back_left_motor (round __back_left_motor))
   (setq _back_right_motor (round __back_right_motor))
   self)
  (:front_left_motor
   (&optional __front_left_motor)
   (if __front_left_motor (setq _front_left_motor __front_left_motor)) _front_left_motor)
  (:front_right_motor
   (&optional __front_right_motor)
   (if __front_right_motor (setq _front_right_motor __front_right_motor)) _front_right_motor)
  (:back_left_motor
   (&optional __back_left_motor)
   (if __back_left_motor (setq _back_left_motor __back_left_motor)) _back_left_motor)
  (:back_right_motor
   (&optional __back_right_motor)
   (if __back_right_motor (setq _back_right_motor __back_right_motor)) _back_right_motor)
  (:serialization-length
   ()
   (+
    ;; int32 _front_left_motor
    4
    ;; int32 _front_right_motor
    4
    ;; int32 _back_left_motor
    4
    ;; int32 _back_right_motor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _front_left_motor
       (write-long _front_left_motor s)
     ;; int32 _front_right_motor
       (write-long _front_right_motor s)
     ;; int32 _back_left_motor
       (write-long _back_left_motor s)
     ;; int32 _back_right_motor
       (write-long _back_right_motor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _front_left_motor
     (setq _front_left_motor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _front_right_motor
     (setq _front_right_motor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _back_left_motor
     (setq _back_left_motor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _back_right_motor
     (setq _back_right_motor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rumarino::motors_horizontal :md5sum-) "6f978d6a3c4e6fe02042594d0fb08035")
(setf (get rumarino::motors_horizontal :datatype-) "rumarino/motors_horizontal")
(setf (get rumarino::motors_horizontal :definition-)
      "int32 front_left_motor
int32 front_right_motor
int32 back_left_motor
int32 back_right_motor

")



(provide :rumarino/motors_horizontal "6f978d6a3c4e6fe02042594d0fb08035")


