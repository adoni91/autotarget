
"use strict";

let ServiceFlightState = require('./ServiceFlightState.js')
let ServiceCompassHDG = require('./ServiceCompassHDG.js')
let ServiceNavSatFix = require('./ServiceNavSatFix.js')
let ServiceBatteryState = require('./ServiceBatteryState.js')
let ServiceRelativeAltitude = require('./ServiceRelativeAltitude.js')

module.exports = {
  ServiceFlightState: ServiceFlightState,
  ServiceCompassHDG: ServiceCompassHDG,
  ServiceNavSatFix: ServiceNavSatFix,
  ServiceBatteryState: ServiceBatteryState,
  ServiceRelativeAltitude: ServiceRelativeAltitude,
};
