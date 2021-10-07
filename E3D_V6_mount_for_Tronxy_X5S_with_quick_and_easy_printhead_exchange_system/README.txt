                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


http://www.thingiverse.com/thing:3539528
E3D V6 mount for Tronxy X5S with quick and easy printhead exchange system by thieber is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

After lot of minor trouble with the original Tronxy X5S hotend, I started to do some reading about hotends and realized, that the original hotend is far away from optimal. The common way to solve this, is to get an E3D V6 hotend and install it. When trying to do this on my X5S I discovered that all designs I could find had some deficiencies. The biggest problem was, that most of them had no proper cooling concept. My first attempt was to use the - very good and open source - hotend assembly of the Prusa i3 MK3S and adapt this to the X5S. This was not as easy as expected, because the MK3S is an direct extruder and the X5S uses a bowden system. Also it uses linear profiles instead of smooth rods and it has the x-axis endstop on the left had side of the carriage. So I ended up designing a completely new hotend assembly, just using the general idea of the i3 MK3S hotend, but no the actual design. 

The general idea for cooling is to have an unrestricted airflow from right to left and not from front to back as many designs do, because at the X5S blowing front to back means blowing air against the mounting plate and this will not provide proper cooling.  

I also wanted somehing that is easy to repair, so I also designed a quick swap system  for the hotend, that was easy to swap, but stable in operation. So I came up with a dovetail concept that secures the head by just one, easy the reach M3 screw. It will also allow to remove the complete E3D hotend by opening another 2 screws. Things can probably not become much easier.

The concept was thorougly tested for printability, ease of assembling and proper operation. It took me quite a few prototypes util i reached the current state, but the result was really worth the effort: 

With the original X5S hotend I didn't even manage to get PLA to print perfect, not to mention PETG, whis was *always* a stringy mess. I had retractions of up to 7mm without much effect. My new hotend will produce almost no strings at all with PETG with only 2mm retractions distance, using the same, original extruder and the original bowden system of the X5S.

Required material
------------------------
* the three printed parts (back, cover, mount). You can print them in PLA if you wish (I used a PLA based prototype for quite some time without problems). But in general I would recommend using PETG or ABS for any mechanical par of a 3D printer for its better temperature behaviour and better mechanical endurance. Infill doesn't matter too much, I used 20% and 2 perimeters for back and cover and 80% infill for mount. 
* a printed nozzle fan - I use the nozzle fan of the Prusa i3 MK3. You can find it on [Github](https://github.com/prusa3d/Original-Prusa-i3/blob/MK3/Printed-Parts/stl/nozzle-fan.stl). You can probably use any nozzle fan designed for the Prusa i3 MK3, as the basic mounting points and distances are almost identical. This will probably include the newer 45° fan, though I never ested it.
* 1x E3D V6 hotend (original E3D or china clone, sometimes also called "J-Head hotend")
* 1x 5015 radial fan, min 0,1A
* 1x 40x40x10 axial fan, min 0,12A
* 6x M3 hexnuts
* 3x M3x25 screw (one for attaching printhead to mounting plate, two for connecting front and back shell)
* 2x M3x20 screw (for 5015 fan)
* 4x M3x16 screw (for the 40x40x10 fan)
* 3x M3x8 screw (2 for mounting plate, 1 for nozzle fan printed part)
* cable strips (max 4mm wide)

Assembly
-------------

* remove the original hotend from the x-axis carriage (except for the x-axis endstop, that can stay just where it is). I have cut all the cables leaving the possibilty to attach the remaining cables to some connectors.
* remove the 2 nuts from the x-axis carriage that were used to attach the original CR-10 style hotend.
* insert the hexnut into the mount part. Use some glue to fix the nut if it is not completely fixed.
* screw the mount to the x-axis plate.
* insert all hexnuts in the required places. If they are no press fit, use some glue to fix them im place
* attach the nozzle fan printed part to cover using M3x8 screw
* attach the 5015 fan to cover using 2x M3x20 screw
* remove the power wire of the 5015 fan a bit from its guidance so it can be directed around the gap in the cover part. Mark the connector of the 5015 fan with some permanent marker or a pice of painters tape.
* attach the 40x40x10mm fan to cover using 2x M3x16 screws. Use the fan to fix the cable of the 5015 fan in the nut. The cables of both fans should be collected in the same nut
* prepare the E3DV6 (original or clone) hotend for mouning. Even if the hotend came preassembled (especially if using a clone) you should disassemble it and reassemble the hotend using the instructions from the E3D website [https://wiki.e3d-online.com/E3D-v6_Assembly]. I would recommend using using Thermal Compound for the throat, even if the E3D site declares this as optional. On a chinese clone I would even put a drop of thermal compound between the thermistor and the heating block to make sure, there is good thermal coupling.
* fix the hotend in the housing using he back part and attach the back part with 2x M3x25 screws (M3x20 or M3X30 will also work) Make sure the fan cables are guided out of the nut and are not pinched somewhere.
* fix the cables of the hotend with some cable strips to the back part. The cable should be fixed so well, that the heater cartridge will not be able to slip out of the heater block, even if the screw in the heater block should come loose.
* fix the fan cables to the back part - but leave them loose enough, so you can pull them out with little force when disassembling the whole part again.
* screw the part to the mount plate using another M3X25 screw
* connect the wires. I used a little PCB where I soldered a screw terminal for the hotend and some JST connectors for thermistor and both fans. (best use different connectors to avoid accidentially swapping them and do not use dupont connectors as these can be inserted reversed, swapping polarity of the fans which is no good either.) I attached he PCB to the end of the cable chain, so it is easy to plug in all the components. For this I shortended the cables of all the components and crimped some matching connectors to them. 


Here some additional tips to print without problems (should be general knowledge anyway, but it helped me to have a checklist, and maybe this is helpfult to you as well.):


Checklist against clogging
-----------------------------------
- minimize retract (I have no stringing on my X5S even with PETG at retract of 2mm and 35mm/s)
- Always keep the hotend fan on when printer is powered on (do not use a switched output like fan1 or fan2)
- Use a powerful hotend fan (40mm fan with at least 0,12A - no silent fan!)
- keep printing speed moderate (also for infill) to keep pressure low - high pressure can lead to molen plastic creeping up your throat. A maximum of less than 100mm will cause no problems. 
- Have your bed leveled properly - if there is not enough space betwen nozzle and printbed, molten plastic will be pressed upwards in the throat.
- Avoid keeping the hotend heated up, without extruding material
- keep the bowden as straight as possible. Avoid sharp turns, as it will increase friction. Especially keep the bowden long enough, so it can also reach the edges without to much tension. Keep in mind, that in parts of your print that require lot of retraction, the filament will get a sawtooth pattern by the extruder passing any part of the filament multiple times. That will make it harder to push the filament trough the tube.
- use a silicon sock to keep the nozzle hot enough
- pick the right temperature - too high will lead to premature degeneration of the filament, leaving residues in the nozzle / throat, too low will make it harder to push the filament through and add the risk that minor temperature drops will stop the flow completely.
- After printing keep the printer switched on, until hotend temperature is below 60°C

# Print Settings

Printer: Tronxy X5S
Rafts: Doesn't Matter
Supports: No
Resolution: 0.2mm
Infill: 20% will do