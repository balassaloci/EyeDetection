
#include "stdio.h"
//#include "ac_int.h"
#include "math.h"
#include <ac_fixed.h>
//#include "shift_class.h"

#define COLOR_WL    10
#define PIXEL_WL    (COLOR_WL*3)

#define COORD_WL    10

#define BLOCK_XW     10      //bits
#define BLOCK_YW     10     //bits
#define BLOCK_WIDTH  50    //dec
#define BLOCK_HEIGHT 50    //dec
#define BLOCK_COUNT  4
#define BLOCKW          (BLOCK_XW + BLOCK_YW)   //20
#define BLOCKSTREAMW    (BLOCKW * BLOCK_COUNT)  //80


#pragma hls_design top

void render_blocks(ac_int<PIXEL_WL, false> * video_in,
                   ac_int<BLOCKSTREAMW, false> * blocks,
                   ac_int<(COORD_WL * 2), false> * vga_xy,
                   ac_int<PIXEL_WL, false> * video_out) {

    ac_int<COLOR_WL, false> i_col[3], o_col[3];   //input pixel
    ac_int<COORD_WL, false> box_x, box_y, vga_x, vga_y;
    
    i_col[0] = (*video_in).slc<COLOR_WL>(COLOR_WL * 2);
    i_col[1] = (*video_in).slc<COLOR_WL>(COLOR_WL * 1);
    i_col[2] = (*video_in).slc<COLOR_WL>(0);
    
    o_col[0] = i_col[0];
    o_col[1] = i_col[1];
    o_col[2] = i_col[2];
    
    vga_x = (*vga_xy).slc<COLOR_WL>(0);
    vga_y = (*vga_xy).slc<COLOR_WL>(COORD_WL);
    
    FRAME: for(int i = 0; i < BLOCK_COUNT; i++) {
        box_x = (*blocks).slc<COLOR_WL>(i * BLOCKW);
        box_y = (*blocks).slc<COLOR_WL>(i * BLOCKW + BLOCK_XW);
        
        //
        //box_x = 200 + (i%3) * 100;
        //box_y = 20 + ((i + 1)%3) * 100;
        //
        
        if (vga_x > box_x && vga_x < box_x + BLOCK_WIDTH &&
            vga_y > box_y && vga_y < box_y + BLOCK_HEIGHT) {
                o_col[0] = 1023;
                o_col[2] = 1023;
            }        
    }
    
    
    *video_out = ((((ac_int<PIXEL_WL, false>)o_col[0]) << 20) | (((ac_int<PIXEL_WL, false>)o_col[1]) << 10) | (ac_int<PIXEL_WL, false>)o_col[2]);


}