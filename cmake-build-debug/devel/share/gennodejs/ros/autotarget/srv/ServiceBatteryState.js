// Auto-generated. Do not edit!

// (in-package autotarget.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ServiceBatteryStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.voltage = null;
      this.current = null;
      this.charge = null;
      this.percentage = null;
      this.power_supply_status = null;
      this.power_supply_health = null;
      this.present = null;
    }
    else {
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0.0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = 0.0;
      }
      if (initObj.hasOwnProperty('charge')) {
        this.charge = initObj.charge
      }
      else {
        this.charge = 0.0;
      }
      if (initObj.hasOwnProperty('percentage')) {
        this.percentage = initObj.percentage
      }
      else {
        this.percentage = 0.0;
      }
      if (initObj.hasOwnProperty('power_supply_status')) {
        this.power_supply_status = initObj.power_supply_status
      }
      else {
        this.power_supply_status = 0;
      }
      if (initObj.hasOwnProperty('power_supply_health')) {
        this.power_supply_health = initObj.power_supply_health
      }
      else {
        this.power_supply_health = 0;
      }
      if (initObj.hasOwnProperty('present')) {
        this.present = initObj.present
      }
      else {
        this.present = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceBatteryStateRequest
    // Serialize message field [voltage]
    bufferOffset = _serializer.float32(obj.voltage, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _serializer.float32(obj.current, buffer, bufferOffset);
    // Serialize message field [charge]
    bufferOffset = _serializer.float32(obj.charge, buffer, bufferOffset);
    // Serialize message field [percentage]
    bufferOffset = _serializer.float32(obj.percentage, buffer, bufferOffset);
    // Serialize message field [power_supply_status]
    bufferOffset = _serializer.uint8(obj.power_supply_status, buffer, bufferOffset);
    // Serialize message field [power_supply_health]
    bufferOffset = _serializer.uint8(obj.power_supply_health, buffer, bufferOffset);
    // Serialize message field [present]
    bufferOffset = _serializer.bool(obj.present, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceBatteryStateRequest
    let len;
    let data = new ServiceBatteryStateRequest(null);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [charge]
    data.charge = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [percentage]
    data.percentage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [power_supply_status]
    data.power_supply_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [power_supply_health]
    data.power_supply_health = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [present]
    data.present = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autotarget/ServiceBatteryStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd361214efaf77e62acf31c50752d6deb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 voltage
    float32 current
    float32 charge
    #float32 capacity
    #float32 design_capacity
    float32 percentage
    uint8 power_supply_status
    uint8 power_supply_health
    #uint8 power_supply_technology
    bool present
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceBatteryStateRequest(null);
    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0.0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = 0.0
    }

    if (msg.charge !== undefined) {
      resolved.charge = msg.charge;
    }
    else {
      resolved.charge = 0.0
    }

    if (msg.percentage !== undefined) {
      resolved.percentage = msg.percentage;
    }
    else {
      resolved.percentage = 0.0
    }

    if (msg.power_supply_status !== undefined) {
      resolved.power_supply_status = msg.power_supply_status;
    }
    else {
      resolved.power_supply_status = 0
    }

    if (msg.power_supply_health !== undefined) {
      resolved.power_supply_health = msg.power_supply_health;
    }
    else {
      resolved.power_supply_health = 0
    }

    if (msg.present !== undefined) {
      resolved.present = msg.present;
    }
    else {
      resolved.present = false
    }

    return resolved;
    }
};

class ServiceBatteryStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServiceBatteryStateResponse
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServiceBatteryStateResponse
    let len;
    let data = new ServiceBatteryStateResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'autotarget/ServiceBatteryStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '001fde3cab9e313a150416ff09c08ee4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServiceBatteryStateResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ServiceBatteryStateRequest,
  Response: ServiceBatteryStateResponse,
  md5sum() { return 'c7ce01d96b454c3c8b489965fb260778'; },
  datatype() { return 'autotarget/ServiceBatteryState'; }
};
