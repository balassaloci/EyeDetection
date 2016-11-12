
# Loop constraints
directive set /is_pixel_match/core/main CSTEPS_FROM {{. == 2}}

# IO operation constraints
directive set /is_pixel_match/core/main/io_read(video_in:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/io_read(box_xy:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/io_read(vga_xy:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/if#2:if:io_write(counter:rsc.d)#1 CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/if#2:if:io_write(o_x:rsc.d)#1 CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/io_write(do_calc:rsc.d)#1 CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/io_write(video_out:rsc.d) CSTEPS_FROM {{.. == 1}}

# Real operation constraints
directive set /is_pixel_match/core/main/acc CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/acc#1 CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/if#2:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/if#2:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/if#2:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/if#2:acc#4 CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/if:acc CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/mux CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/if#1:acc CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/mux#1 CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/if#2:acc CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/if#2:if:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/if#2:and#3 CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/and CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/equal CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/aif#5:equal CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/mux#2 CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/mux#3 CSTEPS_FROM {{.. == 1}}
directive set /is_pixel_match/core/main/mux#4 CSTEPS_FROM {{.. == 1}}
