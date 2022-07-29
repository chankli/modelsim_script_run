

module counter(

    input             clk  ,
    output [15:0]     count 
);
reg [15:0] cnt = 0 ;

always @( posedge clk ) begin
    cnt <= cnt + 1 ;
end

assign count = cnt ;

endmodule
