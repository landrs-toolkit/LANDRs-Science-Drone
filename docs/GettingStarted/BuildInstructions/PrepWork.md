---
layout: default
title: Preparation
parent: Build Instructions
nav_order: 1
---

# Preparation for Assembly:
{: .no_toc }
There are a few small tasks that should be complete before assembling the HexaQuad. These are split into preparing the carbon fiber tubes and printing all the 3D parts required.
{: .fs-6 .fw-300 }

## Table of Content:
{: .no_toc .text-delta }

1. TOC
{:toc}


# Carbon Fiber Tube Preparation:
We need to prepare carbon fiber tubes for use in the landing gear and for the gimbal rails. This involves cutting the tubes to the correct lengths and drilling holes to thread bolts.

**Required Tools:**

| Tool | Description |
|:------------|:----------|
|Drill press |To make straight holes in the carbon fiber tubes|
|M3 Drill bit |Drill bit for an M3 hole, no tapping required|
|Hole guide |Assists with making holes directly opposite each other|
|Hacksaw |To cut the tubes to length|
|Tape |Any kind, assists with making a straight cut|
|Measuring  |Tape measure and vernier caliper|
|Pencil  |To mark components for cutting|

**Materials:**

| Item | Quantity | Dimensions (IDxODxLen) |
|:------------|:------------|:----------|
| Landing Gear Legs |3 (*Hex*) or 4 (*Quad*) | 23x25x500mm|
| Gimbal Rails |2 | 10x12x500mm|

## Landing Gear Legs:
At the end of this task you will have carbon fiber tubes which can be used in the landing gear.

To Do:
- Cut the standard lengths of carbon fiber tube to be 350mm
- Drill holes on either end of the tube to secure it to the foot and rotorboom mount.

### Legs Cutting:
Use: 23x25x500mm Carbon Fiber Tubes

Final result: 3-4x (23x25x350mm)

**Note: take care when cutting carbon fiber, as the small particles should not be inhaled!**

1. Measure and mark a 350mm length on the carbon fiber tube.

<img alt="CFTube" src="../../Images/BuildInstructions/LandingGear/CFTube.png" width=600>

2. Using the tape, cut a piece long enough to go around the circumference of the tube. 
    - Carefully allign the tape with the mark, wrapping the tape around the tube. 
    - When wrapping the tape around the tube, make sure the edges line up and there is no overhang.
3. Using the Hacksaw, cut along the tape edge alligned with the 350mm mark.
4. Repeat steps 1-3 for the total number of landing gear legs you require. (*3 for Hex and 4 for Quad*)

### Drilling Holes:

There are two holes to be drilled on each landing gear leg. The holes are located on either end of the tube.

1. From the end of the tube measure 10mm towards the center of the tube and mark with a pencil.
2. Using the hole guide, located the mark in the eye of the guide.
3. Secure the guide and tube so that they cannot move. Then allign the mark with the drill bit on the drill press.
4. Make the hole using the drill press and M3 bit. 
5. On the opposite end of the tube, measure 20mm in and mark with a pencil.
6. Steps 2-3 can then be repeated for the mark located 20mm in from the end.
7. All the steps above can then be repeated for all the landing gear legs.


## Gimbal Rails
### Rails Cutting
Use: 10x12x500mm Carbon Fiber Tubes

Final result: 4x (10x12x250mm) 

**Note: take care when cutting carbon fiber, as the small particles should not be inhaled!**

The process is the same as outlined for the cutting of the landing gear legs. The only difference is the final length should be **250mm**.

# 3D Printing Preparation:
There are a number of parts that require 3D print each having a predetermined print orientation and some requiring nut inserts.

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