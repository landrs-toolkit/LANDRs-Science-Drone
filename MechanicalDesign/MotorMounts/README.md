# 3D Printed Motor Mounts
The Science Drone is making use of 3D printed motor mounts. Motor mounts can often be complex shapes and thus make the manufacturing process somewhat difficult and long. 3D printing fixes this problem and shortens the manufacturing process.

There was a concern of strength of the 3D printed materials. Thus a Tensile loading test was performed on two materials to investigate if either would be sufficient for the purpose. Both materials proved suitable interms of strength however, concerns of temperature and melting points of the materials was raised. PETG has a higher melting point compared to PLA and this was factor was used to design which material to use.

The Motor Mount went through three significant design iterations and are listed below.
The folder contains 3D `.STL` files for printing and `.SLDPRT` SOLIDWORKS editable part files

## MotorMount Print (MMPrint):
-  A simple design with a single securing point to mount the motor to the rotor boom.

**Design Concerns:**
1.   The mount had to be aligned to the end of the rotor boom and then also leveled. 
2.   If the single securing point came undone or failed, then the motor would certainly fall off and cause more damage.

These issues were revised in iteration 2.

## MMPrintV1.2:
- Iteration 2 saw the addition of an end stopper plate to help align the motor mount with the end of the rotor boom. 
- There was also an additional securing point for redundancy but also to further secure the motor mount to the rotor boom.

**Design Concerns:**
1. The design of the securing point was a point subject to high strain when loaded to fasten the mount to the rotor boom. Due to the sharp corner and contant width, this resulted in a high stress point and broke under loading.
2. The tolerance of the rotorboom hole was upped by 0.3mm to account for the error in 3D printing. [ID change: 25mm->25.3mm]

## MMPrintV1.3 (*Accepted Design (06/17/2022)*):
- Iteration 3 introduced more tolerance in the diameters to account for 3D printing error. 
- A Fillet was added to the design to distribute the stress more evenly along the securing point.
- The thickness of the mount was increased by 1mm as a precaution and avoid another iteration.
- Added a angled slot to accommodate the motor wires. This allows the wires to go further into the rotor boom instead of being exteranl to the boom.

**Design Concerns:**
1. The bottom of the motor shaft seems to be touching the top of the motor mount, adding friction and making it more difficult to turn the motor. [Proposed to add a cut out for clearance]
