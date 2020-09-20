M104 S{material_print_temperature_layer_0} ; Set Extruder temperature
M140 S{material_bed_temperature_layer_0} ; Set Heat Bed temperature
; Home axes
G28 X Y
G28 Z

M420 S1 ; Load last-saved autolevel mesh
G92 E0 ; Reset Extruder
G1 Z5.0 F3000
M109 S{material_print_temperature_layer_0} ; Wait for Extruder temperature
M190 S{material_bed_temperature_layer_0} ; Wait for Heat Bed temperature

; Approach runs
G1 X0.1    Y20 Z0.3 F5000.0
G1 X0.1 Y200.0 Z0.3 F1500.0 E15
G1 X0.4 Y200.0 Z0.3 F5000.0
G1 X0.4    Y20 Z0.3 F1500.0 E30

G92 E0 ; Reset Extruder
G1 Z5.0 F3000