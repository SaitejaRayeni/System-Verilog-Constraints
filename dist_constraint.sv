//write a constraint for a variable data for which the values range from  0 to 100 should occur 70 % and 101 to 255 is 30%

class dist_cons;
  
  rand logic [7:0] data;
  
  constraint con1 {data dist {[0:100]:/70,[101:255]:/30};
    
  }
  
endclass

module tb();
  initial
    begin
      dist_cons d = new();
      int count_0_100=0;
      int count_101_255=0;
      
      for(int i=0;i<10000;i++)
        begin
          if(d.randomize())
            begin
              if(d.data>=0 && d.data<=100)
                count_0_100++;
              else if(d.data>=101 && d.data<=255)
                count_101_255++;
            end
        end
      $display("values between 0 and 100 : %0d times(%.2f%%)",count_0_100,count_0_100*100.0/10000);
      $display("values between 101 and 255 : %0d times(%.2f%%)",count_101_255,count_101_255*100.0/10000);
    end
  
endmodule
