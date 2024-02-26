---
layout: default
title: Getting Flying
nav_order: 2
has_children: false
description: "A guide to configure the flight controller and prepare for the first flights."
permalink: /docs/GettingStarted/GettingFlying
---

# Flight Controller Configuration:
Having completed the assembly of the HexaQuad into the desired operating configuration, configuration of the flight controller can begin.
{: .fs-6 .fw-300 }

The configuration of the flight controller is not unique to the HexaQuad and thus the reader will most often be referred to the [Arducopter
Documentation](https://ardupilot.org/copter/docs/initial-setup.html).

*Outline of steps:*
1. Introduction to Arducopter's first time setup
2. Flashing the flight controller with the HexaQuad pretuned parameter files
3. Overview of Arducopter manadatory hardware configuration.

## Arducopter's First Time Setup
Arducopter is an open source autopilot software which is installed onto the flight controller to interpret the sensor signals and thus assist with flying the drone.

The basic order of operations will first require the user to download a ground control station (GCS) to connect to the flight controller and flash the required firmware. The suggested GCS is [MissionPlanner](https://ardupilot.org/planner/index.html#home), however, other GCS like QGroundControl are also suitable. The GCS will serve two main functions when working with the drone, firstly, acting as a telemetry link to control and view the state of the drone during flight, and secondly, as a portal to configure the parameters and settings of the drone as well as to review log files from flights.

It is suggested to step through the detail [Arducopter
Documentation](https://ardupilot.org/copter/docs/initial-setup.html). to flash the autopilot software onto the flight controller and complete the basic setup. These steps will not be restated here.

## Using LANDRs Tune Parameter files
When flying a drone for the first time it is likely be unstable or show erratic behaviour. The reason for this is because the autopilot has a set of control parameters which allow the controller to produce stable and responsive flight. In order to achieve this, the drone would under go a tuning process to determine a suitbale set of control parameters, known as PID values. Arducopter has a detailed section on [Tuning](https://ardupilot.org/copter/docs/common-tuning.html) you drone.

In the case of the HexaQuad, we have gone through this tuning process already and have provided two parameter files for the Hex and Quad versions, *however note, this was without any payload attached*. These parameter files will serve as a starting point for your drone as you can simply upload these parameter files to the autopilot and begin flying. It is important to note, you may want to go through the tuning process with your version of the HexaQuad to tailor the PID values to your specific build as there might be variations in weight. This is especially important if you attach relatively heavy sensors which will alter the flight characteristics of the drone. The tuning process is not too complex and can be understood by going through Arducopters [Tuning](https://ardupilot.org/copter/docs/common-tuning.html) documentation. The autotune is especially helpful and was the process used to achieve HexaQuad's tune parameters.

[HexaQuad Parameter Files](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/GettingStarted/GettingFlying){: .btn}

*Note: the parameter file contains all the settings of the drone ranging from frame type to battery capacity and voltage. Its imperative you review these values and that they match **your** setup.*

## Hardware Calibration
Prior to flying and as part of the configuration process there are a number of systems that need to be calibrated. Arducopter outlines these [Mandatory Calibration](https://ardupilot.org/copter/docs/configuring-hardware.html) steps in their documentation and it is critical to become familiar with these process to ensure correct operation of the drone.

GCS generally have tools built in that assist with the mandatory calibration of the hardware systems with step by step instructions. However, some processes like the ESC calibration is more rudimentary and is somewhat dependent on the model of ESC. Thus it is suggested to meticulously step through the mandatory hardware calibration documentation and complete all the steps as they are flight critical. 
