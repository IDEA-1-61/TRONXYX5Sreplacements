/*[Nameplate Settings]*/
//in mm
thickness=1; //[0.1:5]
//text to appear on nameplate
nameplatetext="E04M";
//check if text is raised or sunken
raised = false;

module nameplate() {
  totalwidth=49.75;
  indentpos=41.5;
  totalheight=20;
  holeradius=1.75;

  //font = "DIN Schablonierschrift";
  font = raised ? "Arial" : "Allerta Stencil";

  difference() {
    cube(size=[totalwidth, totalheight, thickness]);
    
    rotate([0,0,45]) 
      cube(size=[2.828, 2.828, thickness*3], center=true);
    
    translate([totalwidth,0,0]) 
      rotate([0,0,45]) 
      cube(size=[2.828, 2.828, thickness*3], center=true);

    translate([4.875, 4.5, 0]) 
      cylinder(r=holeradius, thickness*3, center=true, $fn=100);
    
    translate([24.875, 4.5, 0]) 
      cylinder(r=holeradius, thickness*3, center=true, $fn=100);
    
    translate([44.875, 4.5, 0]) 
      cylinder(r=holeradius, thickness*3, center=true, $fn=100);
    
    translate([indentpos, 11.5, -thickness/2]) cube([20, 20, thickness*2]);

    if (!raised) {
      translate([indentpos/2, 14, -thickness/2])
        rotate([0,0,180])
        linear_extrude(height = thickness*2) {
           text(
             nameplatetext, 
             font = font, size = 9, valign="center", halign="center"
           );
        }
     }
  }


  if (raised) {
    translate([indentpos/2, 14, 0])
    rotate([0,0,180])
    linear_extrude(height = thickness*2) {
       text(
         nameplatetext, 
         font = font, size = 9, valign="center", halign="center"
       );
    }
  }
}

nameplate();

