// Auto-generated. Do not edit!

// (in-package rumarino.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class motors_horizontal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.front_left_motor = null;
      this.front_right_motor = null;
      this.back_left_motor = null;
      this.back_right_motor = null;
    }
    else {
      if (initObj.hasOwnProperty('front_left_motor')) {
        this.front_left_motor = initObj.front_left_motor
      }
      else {
        this.front_left_motor = 0;
      }
      if (initObj.hasOwnProperty('front_right_motor')) {
        this.front_right_motor = initObj.front_right_motor
      }
      else {
        this.front_right_motor = 0;
      }
      if (initObj.hasOwnProperty('back_left_motor')) {
        this.back_left_motor = initObj.back_left_motor
      }
      else {
        this.back_left_motor = 0;
      }
      if (initObj.hasOwnProperty('back_right_motor')) {
        this.back_right_motor = initObj.back_right_motor
      }
      else {
        this.back_right_motor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motors_horizontal
    // Serialize message field [front_left_motor]
    bufferOffset = _serializer.int32(obj.front_left_motor, buffer, bufferOffset);
    // Serialize message field [front_right_motor]
    bufferOffset = _serializer.int32(obj.front_right_motor, buffer, bufferOffset);
    // Serialize message field [back_left_motor]
    bufferOffset = _serializer.int32(obj.back_left_motor, buffer, bufferOffset);
    // Serialize message field [back_right_motor]
    bufferOffset = _serializer.int32(obj.back_right_motor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motors_horizontal
    let len;
    let data = new motors_horizontal(null);
    // Deserialize message field [front_left_motor]
    data.front_left_motor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [front_right_motor]
    data.front_right_motor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [back_left_motor]
    data.back_left_motor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [back_right_motor]
    data.back_right_motor = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rumarino/motors_horizontal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6f978d6a3c4e6fe02042594d0fb08035';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 front_left_motor
    int32 front_right_motor
    int32 back_left_motor
    int32 back_right_motor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motors_horizontal(null);
    if (msg.front_left_motor !== undefined) {
      resolved.front_left_motor = msg.front_left_motor;
    }
    else {
      resolved.front_left_motor = 0
    }

    if (msg.front_right_motor !== undefined) {
      resolved.front_right_motor = msg.front_right_motor;
    }
    else {
      resolved.front_right_motor = 0
    }

    if (msg.back_left_motor !== undefined) {
      resolved.back_left_motor = msg.back_left_motor;
    }
    else {
      resolved.back_left_motor = 0
    }

    if (msg.back_right_motor !== undefined) {
      resolved.back_right_motor = msg.back_right_motor;
    }
    else {
      resolved.back_right_motor = 0
    }

    return resolved;
    }
};

module.exports = motors_horizontal;
