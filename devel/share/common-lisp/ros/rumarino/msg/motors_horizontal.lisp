; Auto-generated. Do not edit!


(cl:in-package rumarino-msg)


;//! \htmlinclude motors_horizontal.msg.html

(cl:defclass <motors_horizontal> (roslisp-msg-protocol:ros-message)
  ((front_left_motor
    :reader front_left_motor
    :initarg :front_left_motor
    :type cl:integer
    :initform 0)
   (front_right_motor
    :reader front_right_motor
    :initarg :front_right_motor
    :type cl:integer
    :initform 0)
   (back_left_motor
    :reader back_left_motor
    :initarg :back_left_motor
    :type cl:integer
    :initform 0)
   (back_right_motor
    :reader back_right_motor
    :initarg :back_right_motor
    :type cl:integer
    :initform 0))
)

(cl:defclass motors_horizontal (<motors_horizontal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motors_horizontal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motors_horizontal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rumarino-msg:<motors_horizontal> is deprecated: use rumarino-msg:motors_horizontal instead.")))

(cl:ensure-generic-function 'front_left_motor-val :lambda-list '(m))
(cl:defmethod front_left_motor-val ((m <motors_horizontal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rumarino-msg:front_left_motor-val is deprecated.  Use rumarino-msg:front_left_motor instead.")
  (front_left_motor m))

(cl:ensure-generic-function 'front_right_motor-val :lambda-list '(m))
(cl:defmethod front_right_motor-val ((m <motors_horizontal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rumarino-msg:front_right_motor-val is deprecated.  Use rumarino-msg:front_right_motor instead.")
  (front_right_motor m))

(cl:ensure-generic-function 'back_left_motor-val :lambda-list '(m))
(cl:defmethod back_left_motor-val ((m <motors_horizontal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rumarino-msg:back_left_motor-val is deprecated.  Use rumarino-msg:back_left_motor instead.")
  (back_left_motor m))

(cl:ensure-generic-function 'back_right_motor-val :lambda-list '(m))
(cl:defmethod back_right_motor-val ((m <motors_horizontal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rumarino-msg:back_right_motor-val is deprecated.  Use rumarino-msg:back_right_motor instead.")
  (back_right_motor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motors_horizontal>) ostream)
  "Serializes a message object of type '<motors_horizontal>"
  (cl:let* ((signed (cl:slot-value msg 'front_left_motor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'front_right_motor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'back_left_motor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'back_right_motor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motors_horizontal>) istream)
  "Deserializes a message object of type '<motors_horizontal>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_left_motor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'front_right_motor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back_left_motor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'back_right_motor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motors_horizontal>)))
  "Returns string type for a message object of type '<motors_horizontal>"
  "rumarino/motors_horizontal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motors_horizontal)))
  "Returns string type for a message object of type 'motors_horizontal"
  "rumarino/motors_horizontal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motors_horizontal>)))
  "Returns md5sum for a message object of type '<motors_horizontal>"
  "6f978d6a3c4e6fe02042594d0fb08035")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motors_horizontal)))
  "Returns md5sum for a message object of type 'motors_horizontal"
  "6f978d6a3c4e6fe02042594d0fb08035")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motors_horizontal>)))
  "Returns full string definition for message of type '<motors_horizontal>"
  (cl:format cl:nil "int32 front_left_motor~%int32 front_right_motor~%int32 back_left_motor~%int32 back_right_motor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motors_horizontal)))
  "Returns full string definition for message of type 'motors_horizontal"
  (cl:format cl:nil "int32 front_left_motor~%int32 front_right_motor~%int32 back_left_motor~%int32 back_right_motor~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motors_horizontal>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motors_horizontal>))
  "Converts a ROS message object to a list"
  (cl:list 'motors_horizontal
    (cl:cons ':front_left_motor (front_left_motor msg))
    (cl:cons ':front_right_motor (front_right_motor msg))
    (cl:cons ':back_left_motor (back_left_motor msg))
    (cl:cons ':back_right_motor (back_right_motor msg))
))
