flangeLength = flangeHoleCenterOffset - baseDiskDiameter/2 + flangeWidth/2;

mastWidth = pivotPointDiameter;
mastRoundingDiameter = mastWidth * 1.2;

pivotSlotDiameter = pivotPointDiameter+partGap*2;
pivotSlotWidth = mastWidth+partGap;

cageLength = pivotSlotWidth+cageThickness+6;//5.2+2+4
cageWidth = pivotSlotWidth+cageThickness*2;

clipWidth = cageWidth + partGap;

cageSlotHeight = clipHeight + partGap*2;
cageSlotWidth = clipThickness + partGap*2;

mastPocketOverallWidth = mastWidth + mastPocketThickness*2;

//Build the assembly
gpsMast();

module gpsMast() {
	union() {
		if (bShowBase)
			base();
		if (bShowMast)
			mast();
		if (bShowPlatform)
			platform();
		if (bShowLockingClip)
			lockingClip();
	}
}

module platform() {
	union() {
		// The platform body
		difference() {
			union() {
				translate([0,0,mastLength])
					cylinder(d2=platformDiameter, d1=mastWidth, h=platformHeight/2, $fn=smoothness);
				translate([0,0,mastLength+platformHeight/2])
					cylinder(d=platformDiameter, h=platformHeight/2, $fn=smoothness);
				//translate([0,0,mastLength-mastWidth*2+1])
				//	cylinder(d2=mastWidth*2, d1=0, h=mastWidth*2);
			}
			// Remove the 4 lightening holes
			for(index = [0 : numLighteningHoles-1])
				rotate([0,0,(360/numLighteningHoles)*index])
					translate([platformDiameter/3,0, mastLength])
						cylinder(d=platformDiameter/5, h=platformHeight, $fn=smoothness);
		}
		// Add the pocket for attaching to the mast
		difference() {
			rotate([0,0,45])
				translate([-mastPocketOverallWidth/2, -mastPocketOverallWidth/2, 	mastLength-mastPocketOverallWidth+platformHeight/2])
					cube(mastPocketOverallWidth,mastPocketOverallWidth,mastPocketOverallWidth);
			rotate([0,0,45])
				translate([-mastWidth/2, -mastWidth/2, mastLength-mastWidth-platformHeight/2+mastPocketThickness])
					#cube(mastWidth,mastWidth, mastWidth);
		}
	}
}

module lockingClip() {
  rotate(45,0,0)
    translate([cageSlotWidth-partGap,-clipWidth/2,baseHeight*2+cageSlotVertOffset+partGap])
      difference() {
        union() {
          // Body of clip
          cube([clipThickness, clipWidth, clipHeight]);
          // End Stop of clip
          translate([-clipThickness/2,clipWidth,-clipThickness/2])
            cube([clipThickness*2, clipThickness, clipHeight+clipThickness]);
          // Latch of clip
          rotate([0,270,0])
            translate([-clipHeight/4+clipHeight/2,-clipHeight/2,-clipHeight/1.7])
              prism(clipHeight/2, clipHeight/2, clipHeight/2);
        }
        // Remove material to make the clip movable
        translate([0,-1, clipHeight/4])
          cube([clipThickness/2, clipWidth+1, clipHeight/2]);
        translate([0,-1, clipHeight/2+clipHeight/4])
          cube([clipThickness, clipWidth+1, partGap]);
          translate([0,-1, clipHeight/2-clipHeight/4-partGap])
            cube([clipThickness, clipWidth+1, partGap]);
      }
}

module mast() {
	//translate([-mastPivotHeight/2,-mastPivotWidth/2,baseHeight+mastVerticalOffset+partGap])
	rotate([0,0,45])
    union() {
      // The mast itself
      intersection(){
          translate([-mastWidth/2,-mastWidth/2,mastWidth/2])
  		      cube([mastWidth, mastWidth, mastLength-mastWidth/2]);
          translate([0,0,mastLength/2])
            cylinder(d=mastRoundingDiameter, h=mastLength, center=true, $fn=smoothness);
      }
      // The pivot point
      rotate([90,0,0])
        translate([0,mastWidth/2,-baseDiskDiameter/2])
          cylinder(d=mastWidth, h=baseDiskDiameter, $fn=smoothness);
    }
}

module base() {
  difference() {
  	union() {
  		// Base Disc
  		cylinder(d=baseDiskDiameter, h=baseHeight*2, $fn=smoothness);

      // Mounting Flanges
  		baseMountFlanges();

      // Locking cage
      rotate([0,0,135])
        union() {
          //  Back
          translate([-cageWidth/2,pivotSlotWidth/2,baseHeight*2])
            cube([cageWidth, cageThickness, cageHeight]);
          //  Side
          rotate([0,0,90])
            translate([-cageLength/2-cageThickness/2-2,pivotSlotWidth/2,baseHeight*2])
              difference() {
                cube([cageLength, cageThickness, cageHeight]);
                rotate([0,0,90])
                  translate([0,-cageWidth+mastWidth+partGap-2,cageSlotVertOffset])
                    cube([cageThickness+.2, cageSlotWidth, cageSlotHeight]);
              }
          //  Side
          rotate([0,0,90])
            translate([-cageLength/2-cageThickness/2-2,-cageWidth/2,baseHeight*2])
              difference() {
                cube([cageLength, cageThickness, cageHeight]);
                rotate([0,0,90])
                  translate([0,-cageWidth+mastWidth+partGap-2,cageSlotVertOffset])
                    cube([cageThickness+.2, cageSlotWidth, cageSlotHeight]);
              }
        }
  	}

    //Slot for mast
    rotate([0,0,45])
      translate([-pivotSlotWidth/2, -pivotSlotWidth/2, 0])
        cube([baseDiskDiameter*0.75, pivotSlotWidth, baseHeight*2]);

    // Slot for pivot
    rotate([0,0,45])
      translate([0,baseDiskDiameter/2+partGap,(pivotSlotDiameter)/2])
        rotate([90,0,0])
          cylinder(d=pivotSlotDiameter, h=baseDiskDiameter+partGap*2, $fn=smoothness);
    rotate([0,0,45])
      translate([-(pivotSlotDiameter)/2,baseDiskDiameter/2+partGap,-(pivotSlotDiameter)/2])
        rotate([90,0,0])
          cube([pivotSlotDiameter, pivotSlotDiameter, baseDiskDiameter+partGap*2]);
  }
}

module baseMountFlanges() {
	for(index = [0 : numMountingFlanges-1])
		rotate([0,0,-90+(360/numMountingFlanges*index)+(numMountingFlanges % 2 ? ((360/numMountingFlanges)/2) : 0)])
			baseMountFlange();
}

module baseMountFlange() {
		translate([baseDiskDiameter/2-flangeWidth/2, -flangeWidth/2, 0])
			difference() {
				union() {
					cube([flangeLength, flangeWidth, baseHeight]);
					translate([flangeLength,flangeWidth/2,0])
						cylinder(d=flangeWidth, h=baseHeight, $fn=smoothness);
				}
				translate([flangeLength,flangeWidth/2,0])
					cylinder(d=flangeHoleDiameter, h=baseHeight, $fn=smoothness);
			}
}

module prism(l, w, h){
      polyhedron(
              points=[[0,0,0], [l,0,0], [l,w,0], [0,w,0], [0,w,h], [l,w,h]],
              faces=[[0,1,2,3],[5,4,3,2],[0,4,5,1],[0,3,4],[5,2,1]]
              );
}
