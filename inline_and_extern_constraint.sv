//Extern Constraint and Inline constraint example

class extern_constraint;
  rand bit [7:0] data;
  extern constraint c1;  
endclass

constraint extern_constraint::c1{ soft data inside {[10:20]};}

module tb;
  extern_constraint e1;
  initial
    begin
      e1 = new();
      for(int i=0;i<10;i++)
        begin
          e1.randomize() with {data inside {[5:7]};};
          $display("value of data=%0d",e1.data);
        end
      #10 $finish;
    end  
endmodule
