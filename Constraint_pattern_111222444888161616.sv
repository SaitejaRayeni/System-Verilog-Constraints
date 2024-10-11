//111 222 444 888 161616

class pattern_111_222_444;
  rand bit [15:0] data [];
  
  constraint c1{data.size() == 30;
                
                data[0] == 1;
                data[1] == 1;
                data[2] == 1;
                
                foreach(data[i])
                {
                  if(i>2)
                  {
                    if(i%3==0)
                    {
                      data[i] == data[i-3]*2;
                    }
                      else if(i%3 == 1)
                      {
                        data[i] == data[i-3]*2;
                      }
                        else if(i%3 == 2)
                    {
                      data[i] == data[i-3]*2;
                    }
                  }
                }
               }
  
endclass
                        
                        
module tb;
  pattern_111_222_444 p1;
  
  initial
    begin
      p1 = new();
      p1.randomize();
      foreach(p1.data[i])
         $display("data[%0d]=%0d",i,p1.data[i]);
    end
  
endmodule
                        
            
