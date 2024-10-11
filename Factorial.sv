//Factorial of a number

class factorial;
  
  rand bit [3:0] data;
  bit [31:0] data_out;
  
  constraint c1{data inside {[2:7]};}
  
  function  factorial_check(input bit [3:0] data_1,output bit [31:0] result);
     result=1; 
    for(int i=data_1;i>1;i--)
      begin
        result = result*i;
      end   
  endfunction  
endclass

module tb();
  factorial p1;
  
  initial
    begin
      p1 = new();
      for(int i =0;i<5;i++)
       begin 
        p1.randomize();
        p1.factorial_check(p1.data,p1.data_out);
        $display("data = %0d,data_out = %0d",p1.data,p1.data_out);
       end
    end
  
endmodule
