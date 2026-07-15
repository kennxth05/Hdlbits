module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    wire[31:0] subv;
    wire[15:0]sum1,sum2;
    wire cout1,cout2;
    
    assign subv = b[31:0]^{32{sub}};
    
    add16 a1(a[15:0],subv[15:0],sub,sum1,cout1);
    add16 a2(a[31:16],subv[31:16],cout1,sum2,cout2);
    
    assign sum = {sum2,sum1};
    

endmodule
