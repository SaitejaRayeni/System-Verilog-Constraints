//write a constraint to check 2 bits flip every time addr gets randomized.

class bit_flip;
  rand bit [7:0] addr;
  bit [7:0] prev_addr;
  
  function void pre_randomize();
    prev_addr = addr;
  endfunction

  constraint c1{$countones(prev_addr^addr)== 2; }
endclass

module tb();
  bit_flip b;
  
  initial
    begin
      b = new();
      for(int i=0;i<10;i++)
        begin
         b.randomize();
         $display("addr=%b",b.addr);
        end
    end
  
endmodule
