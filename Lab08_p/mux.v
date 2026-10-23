module mux(
	input [3:0] ceo,
	input [3:0] you,
	input [3:0] jill,
	input [3:0] fred, 
	input enable,
	input [1:0] mult_sel,

	output is_zero, is_one, is_two, is_three,
	output [3:0] data
);

assign is_zero = mult_sel == 0;
assign is_one = mult_sel == 1;
assign is_two = mult_sel == 2;
assign is_three = mult_sel == 3;

assign data = enable ? (is_zero ceo : (is_one ? you : (is_two ? fred : jill))) : 4'b0000;

endmodule