`timescale 1ns/1ps

module pwm_tb;
    reg clk;
    reg btn_left;
    reg btn_right;
    reg rst;
    wire pwm_out;

    pwm uut (
        .clk(clk),
        .btn_left(btn_left),
        .btn_right(btn_right),
        .rst(rst),
        .pwm_out(pwm_out)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    task pulse_button(input reg button);
        begin
            button = 1;
            #20;
            button = 0;
            #20;
        end
    endtask

    initial begin
        $dumpfile("pwm_tb.vcd");
        $dumpvars(0, pwm_tb);
        
        rst = 1;
        btn_left = 0;
        btn_right = 0;
        #50 rst = 0;

        pulse_button(btn_left);
        #200;
        
        pulse_button(btn_right);
        #200;
        
        pulse_button(btn_right);
        pulse_button(btn_right);
        #200;

        rst = 1;
        #50 rst = 0;
        #200;

        $finish;
    end
endmodule
