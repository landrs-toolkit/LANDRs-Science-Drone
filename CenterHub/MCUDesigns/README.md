# Modular Chassis Unit (MCU) Designs
This folder constains two seperae designs based on the MCU idea.

Simulation studies were performed on the two proposed center hub designs, one based on a Dodecagon polygon and the other an oblong shape with more surface area in one direction.

SOLIDWORKS (SW) files are included in this Repo for each design and within each zip file are a set of simulations results which can be viewed from within the SW application.

## DoDeca Chassis Unit, Design 1
The DoDeca design is based off a polygon with 12 sides (a dodecagon). 
This number of sides allowed for a satisfying mounting configuration of the rotors booms for both a quad and hex configuration. 
12 sides mean that in either a quad or hex configuration the rotor booms would always be perpendicular to a chassis edge.

This is a simple design and increases in surface area equally in all directions. Weight minimizing cutouts can be added in to imporve weight to strength performance.

## Oblong Chassis Unit, Design 2
The Oblong design is a more rectangular based design where the majority of the surface area is focused along one axis. 
The resulting shape is a chassis plate extending longer in one axis compared to its relative perpendicular axis. An example can be seen in the following figure:
<img src="https://github.com/MBorrageiro/cad-drawings/blob/main/CenterHub/MCUDesigns/OblongDisplay.PNG" width="350" height="400">

# Oblong Double Plate

This design contains a top and bottom plate that "sandwiches" the Rotor-leg mounts for added support and structural strength.
There are new files included for the Assembly file and SOLIDWORK parks:
- CHObDoubleTop: Top plate of the central hub.
- CHDoDeDoubleBot: Bottom plate of the central hub.
- FrameAsmV1: Assembly file with the above two centeral hub plates and landing gear sporting the *version 3* iteration of the Rotor-Leg mount.

## STL Files:
This folder contains STL files of certain assemblie and parts just to serve as a visual representation. It is not the intention for these parts to be 3D printed.

Files:
- FrameAsmV1
- CHObDoubleTop
- CHDoDeDoubleBot
