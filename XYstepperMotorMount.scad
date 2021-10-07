module agujerosNEMA(){
    //agujero central
    circle(d=22+1);
    //agujeros montaje
    
    for(v=[0:3]){
      rotate(90*v)
      translate([16,16])
      circle(d=3.1);
    }
    
}

$fn=100;


lonNEMA=42.3;

module monturaCoreXYNEMA(espesor=5,modo=0){
       ajX=8.5;
    if(modo==0){
           difference(){
            linear_extrude(height=espesor)
            difference(){
                
             
                translate([-(lonNEMA/2)+3-ajX,-10+3])
                minkowski(){
                    square([lonNEMA+ajX-6,(lonNEMA+20)-6]);
                    circle(r=3);
                }
                
                translate([0,(lonNEMA/2)+10])
                agujerosNEMA();

                translate([-(lonNEMA/2)-2.5,0])
                for(g=[0:1]){
                    translate([g*15,0])
                    minkowski(){
                        square([0.01,3],center=true);
                        //agujero tornillos m4
                        circle(d=4.25);   
                    }
                }
            }
               //agujeros montaje
            
            translate([0,(lonNEMA/2)+10,espesor/2])
            linear_extrude(height=20)
            for(v=[0:3]){
              rotate(90*v)
              translate([16,16])
              circle(d=7);
            }
            
            translate([10,0,3])
            linear_extrude(height=10)
            minkowski(){
                //sin espejo lado Y
              text(size=9,font = "Simplex:style=Bold","Y",  halign ="center",valign="center");
                circle(d=1);
            }
            
        }
        //rondanas montaje perfil 2020
         translate([-(lonNEMA/2)-2.5,0])
        linear_extrude(height=espesor+1.5)
        difference(){
             
            for(g=[0:1]){
                    translate([g*15,0])
                    minkowski(){
                        square([0.01,3],center=true);
                        //agujero tornillos m4
                        circle(d=4.25+6);   
                    }
                }
            
                for(g=[0:1]){
                    translate([g*15,0])
                    minkowski(){
                        square([0.01,3],center=true);
                        //agujero tornillos m4
                        circle(d=4.25);   
                    }
                }
            
        }
    }else if(modo==1){
        mirror([0,1,0]){
            difference(){
                linear_extrude(height=espesor)
                difference(){
          
                translate([-(lonNEMA/2)+3-ajX,-10+3])
                minkowski(){
                    square([lonNEMA+ajX-6,(lonNEMA+20)-6]);
                    circle(r=3);
                }
                    
                    translate([0,(lonNEMA/2)+10])
                    agujerosNEMA();

                    translate([-(lonNEMA/2)-2.5,0])
                    for(g=[0:1]){
                        translate([g*15,0])
                        minkowski(){
                            square([0.01,3],center=true);
                            //agujero tornillos m4
                            circle(d=4.25);   
                        }
                    }
                }
                   //agujeros montaje
                
                translate([0,(lonNEMA/2)+10,3])
                linear_extrude(height=20)
                for(v=[0:3]){
                  rotate(90*v)
                  translate([16,16])
                  circle(d=7);
                }
                
                translate([10,0,3])
                linear_extrude(height=10)
                minkowski(){     
                 
                  text(size=9,font = "Simplex:style=Bold","X",  halign ="center",valign="center");
                  circle(d=1);
                }
                
            }
            //rondanas montaje perfil 2020
         translate([-(lonNEMA/2)-2.5,0])
        linear_extrude(height=espesor+1.5)
        difference(){
             
            for(g=[0:1]){
                    translate([g*15,0])
                    minkowski(){
                        square([0.01,3],center=true);
                        //agujero tornillos m4
                        circle(d=4.25+6);   
                    }
                }
            
                for(g=[0:1]){
                    translate([g*15,0])
                    minkowski(){
                        square([0.01,3],center=true);
                        //agujero tornillos m4
                        circle(d=4.25);   
                    }
                }
            
        }
        }//fin mirror
    }//fin if
}//fin module

//translate([30,0,0])
//monturaCoreXYNEMA(modo=0);

//translate([-30,0,0])
monturaCoreXYNEMA(espesor=6,modo=0);