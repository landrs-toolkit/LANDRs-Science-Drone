---
layout: default
title: Preparation
parent: Build Instructions
has_children: true
nav_order: 1
---

# Preparation for Assembly
{: .no_toc }
There are a number of task that must be complete before assembly can begin. This doc will outline the tasks to complete to make the assembly process efficient.
{: .fs-6 .fw-300 }

## Table of Content:
{: .no_toc .text-delta }

1. TOC
{:toc}

# Carbon Fiber Cutting:

**NOTE: *Cutting carbon fiber produces small particles which can be dangerous for your health. Avoid inhaling these particles!***

The HexaQuad uses custom cut carbon fiber sheets for the central hub plates and standard tubes for the rotorbooms, landing gear and gimbal rails.


**Central Plates:**

The central hub plates require precision cutting with a CNC routing setup. It is best to consult a professional for this unless you have experience.

**Standard Tubes:**

Some of the carbon fiber tubes require cutting to specific lengths as well as drilling holes to assist with connection to 3D printed parts. Fortunately, this is a simple task and can be complete in a basically equiped workshop.

Guidance on cutting the tubes and drilling holes can be found here:

[Cutting Carbon Fiber Tubes](../../GettingStarted/BuildInstructions/CarbonFiberPrep.md){: .btn}

## Carbon Fiber Parts:

| Part Name           | Quad Quantity | Hex Quantity |Dimensions|Cutting Type|
|---------------------|----------|-------------------------|----|---|
|[BatteryPlate](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/BatteryPlate)    | 1    | 1| 3mm thick|CNC|
| [CenterHub Top](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/CenterHubs/TopPlate)  | 1     | 1|3mm thick|CNC|
| [CenterHub Bot](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/CenterHubs/BottomPlate) | 1     | 1|3mm thick|CNC|
|Landing Gear |4   |3   | 25x23x350mm|Hacksaw|
|Rotorbooms |4   |6   | 25x23x500mm|-|
|Gimbal Rails |4   |4   | 12x10x250mm|Hacksaw|


# 3D Printing Preparation:
There are a number of parts that need to be 3D printed, each having a predetermined print orientation and some requiring nut inserts.

## 3D Printed Parts:
The following is a list of parts that need to be printed:

| Part Name           | Quad Quantity | Hex Quantity |
|---------------------|----------|-------------------------|
|[WingNutExtender](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/BatteryPlate)     | 4        | 4|
| [LandingGearTubeCap](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/LandingGear)  | 4        | 3|
| [RotorBoomMounts Top](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/RotorBoomMounts) | 4        | 9|
| [RotorBoomMounts Bot](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/RotorBoomMounts/NutInsert) | 4        | 3|
| [MotorMounts](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/MotorMounts)         | 4        | 6 |
| [TopRail](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/RailMounting)             | 4        | 4 |
| [BottomRail](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/RailMounting)             | 4        | 4 |
| [GPSMount](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/GPSMounts)            | 1        | 1|
| [PDBMount](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/PDBMount)            | 1        | 1 |
| [NiTubeMounting](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/SensorMounts/NiTubeMounting)      | 2        |2  |
| [RC Receiver](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/RadioReceivers)         | 1        | 1 |
| [Telemetry Radio](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/RadioReceivers)     | 1        | 1  |

Consult the print orientation and nut insert guide to assist with how each part should be printed and if the component requires nut inserts.

[Print Orientation and Inserts](../../GettingStarted/BuildInstructions/PrintGuide.md){: .btn}