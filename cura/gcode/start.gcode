M501 ; Reset with params on EEPROM
M104 S{material_print_temperature_layer_0} ; Set Extruder temperature
M140 S{material_bed_temperature_layer_0} ; Set Heat Bed temperature
; Home axes
G28

M420 S1 ; Load last-saved autolevel mesh
G92 E0 ; Reset Extruder
G1 Z30.0 F3000
M109 S{material_print_temperature_layer_0} ; Wait for Extruder temperature
M190 S{material_bed_temperature_layer_0} ; Wait for Heat Bed temperature

M42 I1 P5 S255 ; Start Controller Fan

G1 Z5.0 F3000
G92 E0 ; Reset Extruder