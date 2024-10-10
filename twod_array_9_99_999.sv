//constraint for 2 dimensional array and the pattern is
//9
//9,9
//9,9,9
//9,9,9,9

class twod_array_9_99_999;
  
  
rand logic [3:0] data[][];

constraint c1{data.size == 10;
              foreach(data[i])
              {
                data[i].size() == i+1;
              }
                
              foreach(data[i,j])
              {
                data[i][j] == 9; 
              }
  
  
}
  
endclass


module tb();
  
twod_array_9_99_999 p1;
  
initial
  begin
    p1 = new();
    p1.randomize();
    foreach(p1.data[i,j])
      begin
        $write("%0d",p1.data[i][j]);
        if(i==j)
        $display("");
      end 
   end
  
endmodule
