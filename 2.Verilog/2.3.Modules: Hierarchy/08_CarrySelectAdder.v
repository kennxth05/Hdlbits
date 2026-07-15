module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);
    wire [15:0] sum1,sum2,sum3;
    wire cout,cout1,cout2;
    
    add16 a1(a[15:0],b[16:0],0,sum1,cout);
    add16 a2(a[31:16],b[31:16],0,sum2,cout1);
    add16 a3(a[31:16],b[31:16],1,sum3,cout2);
    
    always@(*)begin
        case(cout)
            0:sum[31:16]=sum2;
            1:sum[31:16]=sum3;
        endcase
    end
    assign sum[15:0] =sum1;
    

endmodule
