//Constraint, 5 consecutive ones in a 32 bit variable, for each random order of generation should be different but 5 consecutive ones.

class consecutive_5_ones;
  
  rand bit [31:0] data;
  rand int pos;
  
  constraint c1{$countones(data) == 5;
                pos inside{[0:27]};
                data==(32'h1F<<pos);
    
  }
  
endclass
 
                  
module tb;
  consecutive_5_ones p1;
  
  initial
    begin
      p1 = new();
      for(int i=0;i<10;i++)
        begin
          p1.randomize();
          $display("data = %b",p1.data);
        end
    end
  
endmodule
                  
                  
