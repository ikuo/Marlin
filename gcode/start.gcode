M106 ; Turn on Fan
M104 S202 ; Set Extruder temperature
M140 S60   ; Set Heat Bed temperature
M109 S202 ; Wait for Extruder temperature
M190 S60   ; Wait for Heat Bed temperature
G28 ; Home axes
G92 E0 ; Reset Extruder
G1 Z5.0 F3000

; Approach runs
G1 X0.1    Y20 Z0.3 F5000.0
G1 X0.1 Y200.0 Z0.3 F1500.0 E15
G1 X0.4 Y200.0 Z0.3 F5000.0
G1 X0.4    Y20 Z0.3 F1500.0 E30

G92 E0 ; Reset Extruder
G1 Z5.0 F3000

M420 S1 ; Load last-saved autolevel mesh