
//111 222 444 777 11_11_11


class pattern_111_222_444_777_111111;
  rand int data [];
  // int incr = 1;
  constraint c2{
    data.size() == 30; 
  }
  constraint c1{
                foreach(data[i])
                {
                  data[i] == 1+((i/3)*((i/3)+1)/2);
                  data[i]<300;
                } 
               }
endclass
                  
module tb();
  pattern_111_222_444_777_111111 p1;
  
  initial
    begin
      p1 = new();
      p1.randomize();
      $display("data = %0p",p1.data);
    end
  
endmodule
                        
                        
