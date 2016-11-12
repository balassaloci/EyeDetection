// megafunction wizard: %LPM_DIVIDE%VBB%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_DIVIDE 

// ============================================================
// File Name: lpm_divide1.v
// Megafunction Name(s):
// 			LPM_DIVIDE
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 13.0.1 Build 232 06/12/2013 SP 1 SJ Full Version
// ************************************************************

//Copyright (C) 1991-2013 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.

module lpm_divide1 (
	denom,
	numer,
	quotient,
	remain);

	input	[9:0]  denom;
	input	[9:0]  numer;
	output	[9:0]  quotient;
	output	[9:0]  remain;

endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone III"
// Retrieval info: PRIVATE: PRIVATE_LPM_REMAINDERPOSITIVE STRING "TRUE"
// Retrieval info: PRIVATE: PRIVATE_MAXIMIZE_SPEED NUMERIC "-1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: USING_PIPELINE NUMERIC "0"
// Retrieval info: PRIVATE: VERSION_NUMBER NUMERIC "2"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_DREPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_HINT STRING "LPM_REMAINDERPOSITIVE=TRUE"
// Retrieval info: CONSTANT: LPM_NREPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_DIVIDE"
// Retrieval info: CONSTANT: LPM_WIDTHD NUMERIC "10"
// Retrieval info: CONSTANT: LPM_WIDTHN NUMERIC "10"
// Retrieval info: USED_PORT: denom 0 0 10 0 INPUT NODEFVAL "denom[9..0]"
// Retrieval info: USED_PORT: numer 0 0 10 0 INPUT NODEFVAL "numer[9..0]"
// Retrieval info: USED_PORT: quotient 0 0 10 0 OUTPUT NODEFVAL "quotient[9..0]"
// Retrieval info: USED_PORT: remain 0 0 10 0 OUTPUT NODEFVAL "remain[9..0]"
// Retrieval info: CONNECT: @denom 0 0 10 0 denom 0 0 10 0
// Retrieval info: CONNECT: @numer 0 0 10 0 numer 0 0 10 0
// Retrieval info: CONNECT: quotient 0 0 10 0 @quotient 0 0 10 0
// Retrieval info: CONNECT: remain 0 0 10 0 @remain 0 0 10 0
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_divide1.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_divide1.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_divide1.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_divide1.bsf TRUE FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_divide1_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL lpm_divide1_bb.v TRUE
// Retrieval info: LIB_FILE: lpm