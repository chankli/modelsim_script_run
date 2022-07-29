//~ `New testbench
`timescale  1ns / 1ps

module tb_counter;

// counter Parameters
parameter PERIOD  = 10;


// counter Inputs
reg   clk                                  = 0 ;

// counter Outputs
wire  [15:0]  count                        ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end

always @( posedge clk ) begin
    $display("count = %4d " , count ) ;
end

counter  u_counter (
    .clk                     ( clk           ),

    .count                   ( count  [15:0] )
);

initial
begin

    wait( count >= 256 ) ;
    $finish ;

end

endmodule
