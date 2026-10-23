module demux(
	input enable,
	input [1:0] demult_sel,
	input [3:0] data,

	output is_zero,
	output is_one,
	output is_two,
	output is_three,
	output [3:0] local_lib,
	output [3:0] fire_dept,
	output [3:0] school,
	output [3:0] rib_shack
);

assign is_zero = demult_sel == 0;
assign is_one = demult_sel == 1;
assign is_two = demult_sel == 2;
assign is_three = demult_sel == 3;

assign local_lib = enable ? (is_zero ? data : (4'b0000)) : 4'b0000;
assign fire_dept = enable ? (is_one ? data : (4'b0000)) : 4'b0000;
assign school = enable ? (is_two ? data : (4'b0000)) : 4'b0000;
assign rib_shack = enable ? (is_three ? data : (4'b0000)) : 4'b0000;

endmodule