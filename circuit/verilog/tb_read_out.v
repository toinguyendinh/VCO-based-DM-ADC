`timescale 1ns/1ps
module tb_read_out;
    reg [4:0] vco;
    reg clk, rst_n;
    wire [2:0] out_qz;
    reg [4:0] adc_mem [0:39999];
    integer j;
    integer nCase=40000;

    initial begin
        clk = 1;
        rst_n = 0;
        vco = 0;
    end

    always #0.25 clk = ~clk;
    read_out dut(
        .vco(vco),
        .clk(clk),
        .rst_n(rst_n),
        .out_qz(out_qz));
    initial begin
        $dumpfile("test_ro.vcd");
        $dumpvars(0, tb_read_out);
    end
    initial begin
        $readmemb("out_adc_final.txt",adc_mem);
    end
    initial begin
        #(200*20) rst_n = 1;
        for (j = 0; j<nCase; j++) begin
            #10 vco = adc_mem[j];
        end
        $finish();
    end

endmodule
