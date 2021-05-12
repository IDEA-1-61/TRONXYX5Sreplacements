
$fn=100;

lon1=40;
altura=10;

espesor=6;
distXtor=26;
distXtor1=22;
distYtor=27.5;
diamTorA=3;
diamCabA=6;
extCuboB=21+6;
radBlo=11.6;

difference(){
    
      hull(){
       difference(){
             union(){
              translate([0,-extCuboB/2,0])
               cube([lon1,lon1+extCuboB,espesor],center=true);
                
                //angulo de 90 para aire
                translate([0,-lon1/2-extCuboB+radBlo,espesor/2])
                intersection(){
                    rotate([0,90,0])
                    cylinder(r=radBlo,h=lon1,center=true);
                    translate([0,-250,250])
                    cube([500,500,500],center=true);
                }
                
                
               //cubo conducto aire
                translate([0,-lon1/2-extCuboB+(extCuboB-radBlo)/2+radBlo,espesor/2+radBlo/2])
               cube([lon1,extCuboB-radBlo,radBlo],center=true);
            }
             
            
           
            //recorte redondo
            translate([0,-extCuboB-1,0])
            difference(){
              cube([500,500,500],center=true);
                cylinder(d=lon1,h=1000,center=true);
                translate([0,500,0])
                 cube([1000,1000,1000],center=true);
            }
            
            //recorte plano punta
             translate([0,-500-extCuboB-19.5,0])
                 cube([1000,1000,1000],center=true);
            
       }
       
   }//fin hull
    
    //recortes tronillos
    translate([distXtor/2,-distYtor/2,0])
    cylinder(d=diamTorA,h=100,center=true);

    translate([-distXtor/2,-distYtor/2,0])
    cylinder(d=diamTorA,h=100,center=true);

    translate([distXtor1/2,distYtor/2,0])
    cylinder(d=diamTorA,h=100,center=true);

    translate([-distXtor1/2,distYtor/2,0])
    cylinder(d=diamTorA,h=100,center=true);
    
      //recortes cabezastronillos
    translate([distXtor/2,-distYtor/2,0])
    cylinder(d=diamCabA,h=100);

    translate([-distXtor/2,-distYtor/2,0])
    cylinder(d=diamCabA,h=100);

    translate([distXtor1/2,distYtor/2,0])
    cylinder(d=diamCabA,h=100);

    translate([-distXtor1/2,distYtor/2,0])
    cylinder(d=diamCabA,h=100);
    
    //corte cubo arriba
    translate([0,0,espesor/2])
    cube([distXtor1,lon1-espesor*1.1,espesor],center=true);
    
    //corte cubo abajo
    translate([0,-lon1/4+espesor/2+0.3,espesor/2])
    cube([distXtor+(espesor/2),lon1/2,espesor],center=true);
    
    //corte cilindro grande
    translate([0,0,-espesor/4])
     cylinder(d=30,h=100);
     
     //recorte pija 1
     translate([34.5/2,distYtor/2+0.5,0])
    cylinder(d=2,h=100,center=true);

     //recorte pija 2
    translate([-34.5/2,distYtor/2+0.5,0])
    cylinder(d=2,h=100,center=true);
    
    //recorte cubo conducto aire
    translate([0,-lon1/2-extCuboB+(extCuboB-radBlo)/2+radBlo,espesor/2+5])
       cube([30.5,(extCuboB-radBlo),10],center=true);
       
       //extra incongruencia gemoetrica
        translate([0,-lon1/2-extCuboB+(extCuboB-radBlo)/2+radBlo+1,espesor/2+5])
       cube([30.5,(extCuboB-radBlo),10],center=true);
       
       med=30.5;
      
     
    
    ////angulo de 90 para aire
        //translate([0,-lon1+(extCuboB/2),espesor/2])
         translate([0,-lon1/2-extCuboB+radBlo,espesor/2])
        intersection(){
            rotate([0,90,0])
            cylinder(r=10,h=30.5,center=true);
            

            difference(){
                translate([0,-med/2,med/2])
                cube([med,med,med],center=true);
                
                
                translate([-med/6,-med,0])
                rotate([0,-45-90,0])
                cube([med,med,med]);
                
                mirror([1,0,0]){
                    translate([-med/6,-med,0])
                rotate([0,-45-90,0])
                cube([med,med,med]);
                }
                
            }
        }
        
        //agujero aire
       
        //translate([0,-lon1+(extCuboB/2)-med/6-2,0])
        translate([0, -lon1/2-extCuboB+radBlo-med/6-med/12,0])
        cube([med/3,med/6,espesor],center=true);
        
       
        //recorte apoyo
              translate([-50,-20
,espesor/2])
               cube([100,100,100]);
        
        
}

