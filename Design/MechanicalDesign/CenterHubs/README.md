# Modular Chassis Unit (MCU) Designs
This folder contains the part and CNC routing files for the Top and Bottom plates of the centeral hub.

Simulation studies were performed on the centeral hub designs listed below. The simulation studies were instrumental in determining which set of plates would best suit the applications of the multirotor.

## DoDeca Chassis Unit, Design 1
The DoDeca design is based off a polygon with 12 sides (a dodecagon). 
This number of sides allowed for a satisfying mounting configuration of the rotors booms for both a quad and hex configuration. 
12 sides mean that in either a quad or hex configuration the rotor booms would always be perpendicular to a chassis edge.

This is a simple design and increases in surface area equally in all directions. Weight minimizing cutouts can be added in to imporve weight to strength performance.

## Oblong Chassis Unit, Design 2
The Oblong design is a more rectangular based design where the majority of the surface area is focused along one axis. 
The resulting shape is a chassis plate extending longer in one axis compared to its relative perpendicular axis. An example can be seen in the following figure:
<img src="https://github.com/MBorrageiro/cad-drawings/blob/main/CenterHub/MCUDesigns/OblongDisplay.PNG" width="350" height="400">

## Double Plate Unit, Design 3
<a href="https://github.com/landrs-toolkit/LANDRs-Science-Drone/blob/main/Design/MechanicalDesign/CenterHubs">
         <img alt="3DPrintBanner" src="https://img.shields.io/badge/Accepted%20Design-03/27/2022-FFA500">
 </a>


The following ietration builds on the ideas in the previous versions. This design contains a top and bottom plate that "sandwiches" the Rotor-leg mounts for added support and structural strength. The bottom plate has various cutouts to accommodate the reconfiguration between Hex and Quad, leading to the interchangable HexaQuad.

**CHObDoubleTop:** 
- Top plate of the central hub.

**CHDoDeDoubleBot:** 
- Bottom plate of the central hub.

### Version 1.2

The files for version 1.2 can be found in the following folders:
- [TopPlate](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/CenterHubs/TopPlate)
- [BottomPlate](https://github.com/landrs-toolkit/LANDRs-Science-Drone/tree/main/Design/MechanicalDesign/CenterHubs/BottomPlate)

Each folder contains an editable 3D SOLIDWORKS file and a non-editable DXF file used for CNC cutting/routing of the plates.

### Visual Representation Only:
[This folder](https://github.com/MBorrageiro/cad-drawings/tree/main/CenterHub/MCUDesigns/STLs) contains STL files of certain assemblies and parts just to serve as a visual representation. It is not the intention for these parts to be 3D printed.
