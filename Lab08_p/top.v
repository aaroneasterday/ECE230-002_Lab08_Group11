module top(
	input [15:0]sw,
	input btnL, btnD, btnU, btnR, btnC,
	output [15:0]led
);

wire [1:0] concat_mux;
wire [1:0] concat_demux;
wire [3:0] data_connection;

assign concat_mux = {btnU, btnL};
assign concat_demux = {btnR, btnD};


mux assign_mux(
	.ceo(sw[3:0]),
	.you(sw[7:4]),
	.fred(sw[11:8]),
	.jill(sw[15:12]),
	.mult_sel(concat_mux),
	.enable(btnC),
	.data(data_connection)
);


demux assign_demux(
	.data(data_connection),
	.enable(btnC),
	.demult_sel(concat_demux),
	.local_lib(led[3:0]),
	.fire_dept(led[7:4]),
	.school(led[11:8]),
	.rib_shack(led[15:12])
);

endmodule