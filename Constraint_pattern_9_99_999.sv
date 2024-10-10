//Elements in array should be 9,99,999,9999.....

class pattern_9_99_999;
  
rand logic [63:0] data[];
  
constraint c1{data.size() == 10;
              data[0] == 9;
              foreach(data[i])
              {
                if(i>0)
                {
                  data[i] == data[i-1]*10+9;
                }
              }
  
}
                    
function void post_randomize();
 foreach(data[i])
   $display("data[%0d] = %0d",i,data[i]);
endfunction
  
endclass

module tb();
  
  pattern_9_99_999 p1;
  
  initial
    begin
      p1 = new();
      p1.randomize();
    end
endmodule
