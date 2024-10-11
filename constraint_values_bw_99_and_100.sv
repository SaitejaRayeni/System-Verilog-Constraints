//Write a constraint to generate random values in between 99 and 100

class values_inbetween_99and100;
  randc int data;
  real out_data; 
  constraint c1{data inside  {[990:1000]}; }
    
  function void post_randomize();
    out_data= data/10.0;
    $display("out_data = %f",out_data);  
  endfunction
  
endclass

module tb();
 values_inbetween_99and100 p1;
 initial
    begin
      p1 = new();
      repeat(15)
        begin
           p1.randomize();
        end  
     end  
endmodule
