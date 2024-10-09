//Generate a constraint to generate random elements in cyclic manner without using randc or unique in a dynamic array

class rand_cyclic;
  rand bit [3:0] data[];

  constraint data_c {
    data.size() == 16;
    foreach (data[i]) {
      foreach (data[j]) {
        if(i != j)
          data[i] != data[j]; 
      }
    }
  }
endclass

module top;
  rand_cyclic r = new();

  initial 
    begin
      repeat (10) 
        begin
          r.randomize();
          $display("r=%p", r);
        end
      $finish;
   end
endmodule
