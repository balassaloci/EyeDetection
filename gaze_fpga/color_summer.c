//
// Code intended to sum the locations for pixels with 
// given color (within a certain range) in an area
//

#include "stdio.h"
//#include "ac_int.h"
#include "math.h"
#include <ac_fixed.h>
#include "shift_class.h"

#define COLOR_WL    10
#define PIXEL_WL    (COLOR_WL*3)

#define COORD_WL    10
#define TRESHOLD    100

#define BOXW        100
#define BOXH        50

#define NUM_PIXELS        1
#define KERNEL_WIDTH      5


//void get_v(ac_int<PIXEL_WL, false> * video_in, ac_int<COLOR_WL, false> * max );


#pragma hls_design top

void is_pixel_match(ac_int<PIXEL_WL, false> * video_in,
                    ac_int<PIXEL_WL, false> * video_out,
                    ac_int<(COORD_WL * 2), false> * box_xy,
                    ac_int<(COORD_WL * 2), false> * vga_xy,
                    ac_int<8, false> * o_x,
                    ac_int<2, false> * counter,
                    ac_int<2, false> * do_calc,
                    ac_int<8, false> * treshold,
                    ac_int<(COORD_WL * 2), false> * box_br) {
    
    ac_int<COLOR_WL, false> i_col[3], luma, o_red, o_green, o_blue;   //input pixel
    ac_int<COORD_WL, false> box_x, box_y, vga_x, vga_y; // mouse and screen coordinates
    ac_int<COORD_WL, false> box_r, box_b; // mouse and screen coordinates
    
    //Extracting RGB channels
    i_col[0] = (*video_in).slc<COLOR_WL>(COLOR_WL * 2);
    i_col[1] = (*video_in).slc<COLOR_WL>(COLOR_WL * 1);
    i_col[2] = (*video_in).slc<COLOR_WL>(0);
    
    //Extracting coordinates
    // extract mouse X-Y coordinates
    box_x = (*box_xy).slc<COORD_WL>(0);
    box_y = 1023-(*box_xy).slc<COORD_WL>(10);
    
    box_r = box_x + 100; //(*box_br).slc<COORD_WL>(0);
    box_b = box_y + 50; //1023-(*box_br).slc<COORD_WL>(10);

    // extract VGA pixel X-Y coordinates
    vga_x = (*vga_xy).slc<COORD_WL>(0);
    vga_y = (*vga_xy).slc<COORD_WL>(10);
    
    //Computing V (max) channel
    luma = i_col[0];
    if (i_col[1] > luma) luma = i_col[1];
    if (i_col[2] > luma) luma = i_col[2];
    //
    
    *do_calc = 0;
    if (vga_x > box_x && vga_x < box_r &&
        vga_y > box_y && vga_y < box_b) {
            
        if (luma <= TRESHOLD) {
            o_red = 1023;
            o_green = 1023;
            o_blue = 1023;
            *o_x = vga_x - box_x;
            *counter = 1;
        } else {
            o_red = 0;
            o_green = 0;
            o_blue = 0;
            *o_x = 0;
            *counter = 0;
        }
    } else {
        o_red = i_col[0];
        o_green = i_col[1];
        o_blue = i_col[2];
        *o_x = 0;
        *counter = 0;
    }
    
    //Clock signal for processing the data / emptying the accumulators    
    if (vga_x == box_r && 
        vga_y == box_b) {
        *do_calc = 1;
    }    
    
    *video_out = ((((ac_int<PIXEL_WL, false>)o_red) << 20) | (((ac_int<PIXEL_WL, false>)o_green) << 10) | (ac_int<PIXEL_WL, false>)o_blue);
}



