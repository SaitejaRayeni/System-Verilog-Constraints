///1,2,4,7,11,16...


class first;
  
  rand bit [31:0] data [];
  
  constraint c1{data.size() == 10;
                data[0]==1;
                data[1]==2;
               
                
                foreach(data[i])
                {
                  if(i>1)
                  {
                    data[i]==data[i-1]+i; 
                  }
                }
    
    
  }
  
endclass


module tb();
  first f1;
  
  initial
    begin
      f1 = new();
      if(f1.randomize())
      $display("Value of data=%0p",f1.data); 
      else
        $display("Randomization Failed");
      #100;
      $finish;
    end
  
endmodule
