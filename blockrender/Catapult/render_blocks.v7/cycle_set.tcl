
# Loop constraints
directive set /render_blocks/core/main CSTEPS_FROM {{. == 2}}

# IO operation constraints
directive set /render_blocks/core/main/io_read(video_in:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/io_read(vga_xy:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:io_read(blocks:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/io_write(video_out:rsc.d) CSTEPS_FROM {{.. == 1}}

# Real operation constraints
directive set /render_blocks/core/main/FRAME:if:acc CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME-1:if:acc CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#4 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME-1:if:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME-2:if:acc CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME-2:if:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#11 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME-3:if:acc CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#12 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#13 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME-3:if:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#14 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#15 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME-4:if:acc CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#16 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:if:acc#17 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME-4:if:acc#2 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:or#6 CSTEPS_FROM {{.. == 1}}
directive set /render_blocks/core/main/FRAME:or#7 CSTEPS_FROM {{.. == 1}}
