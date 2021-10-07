set SCADFILE=Nameplate.scad
"C:\Program Files\OpenSCAD\openscad.exe" -Draised=true -D "nameplatetext = """%1"" -o Nameplate_r_%1.stl %SCADFILE%
"C:\Program Files\OpenSCAD\openscad.exe" -Draised=false -D "nameplatetext = """%1"" -o Nameplate_s_%1.stl %SCADFILE%
