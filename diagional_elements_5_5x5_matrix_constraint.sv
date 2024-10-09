//Generate an SV constraint for a 5x5 matrix such that the diagonal elements must be equal to 5 and the remaining elements must be 0.

//50000
//05000
//00500
//00050
//00005

class diagonal_elements_5;
  rand logic [3:0] data[][];
  
  constraint c1{data.size() == 5;
                foreach(data[i])
                {
                  data[i].size == 5;
                }
                foreach(data[i,j])
                {
                  if(i==j)
                  {
                    data[i][j] == 5; 
                  }
                  else
                  {
                    data[i][j] == 0; 
                  }
                }
    
  }
  
endclass
         
module tb();
  diagonal_5 p1;
  
  initial
    begin
      p1 = new();
      p1.randomize();
  
      foreach(p1.data[i,j])
        begin
           $write("%0d",p1.data[i][j]);
            if(j==4)
             $display("");
        end 
    end
endmodule
                  
