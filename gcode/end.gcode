M106 ; Turn on Fan in case turned off by main G-code
G4 ; Wait
M220 S100 ; Reset Speed factor override percentage to default (100%)
M221 S100 ; Reset Extrude factor override percentage to default (100%)
G91 ; Set coordinates to relative
G1 F1800 E-3 ; Retract filament 3 mm to prevent oozing
G1 F3000 Z10 ; Move Z Axis up 10 mm to allow filament ooze freely
G90 ; Set coordinates to absolute
G1 X0 Y220 F1000 ; Move Heat Bed to the front for easy print removal
M104 S0 ; Turn off Extruder temperature
M140 S0 ; Turn off Heat Bed

M84 ; Disable stepper motors

M109 R50 ; Wait for Extruder to cool down
M107 ; Turn off Fan