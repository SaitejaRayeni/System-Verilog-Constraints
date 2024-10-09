//In a 3-dimensional array, the diagonal element of a 5x5x5 matrix should be 5, and the remaining elements should be 0.


class diagonal_5;
  rand logic [3:0] data[][][];
  
  constraint c1{data.size() == 5;
                ////////////////////////
                foreach(data[i])
                {
                  data[i].size == 5;
                  foreach(data[i,j])
                  {
                    data[i][j].size() == 5 ;
                  }
                }
                  
             /////////////////////// 
                foreach(data[i])
                {
                  foreach(data[j])
                  {
                    foreach(data[k])
                    {
                      //if(i<=j && j<=k )
                        if(i==j && j==k && k==i)
                      {
                        data[i][j][k] == 5; 
                      }
                      else 
                      {
                        data[i][j][k] == 0; 
                      }
                    }
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
    for(int i=0;i<p1.data.size();i++)
        begin
          for(int j=0;j<p1.data.size();j++)
            begin
              for(int k=0;k<p1.data.size();k++)
                begin
                  $display("data [%0d]\t[%0d]\t[%0d] \t=\t  %0d",i,j,k,p1.data[i][j][k]);
                end
             end
          $display("\n");
        end
    end
endmodule
                  
