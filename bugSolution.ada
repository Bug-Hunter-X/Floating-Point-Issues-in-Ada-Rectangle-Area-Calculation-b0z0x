```ada
function Calculate_Area(Length : Float; Width : Float) return Float is
   Result : constant Float := Length * Width;
begin
  -- Consider using a more robust approach here if higher precision is needed
  -- such as a fixed-point arithmetic library or custom rounding logic.
  return Result; 
end Calculate_Area;

with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
   Length : Float := 10.0;
   Width  : Float := 5.0;
   Area   : Float;
begin
   Area := Calculate_Area(Length, Width);
   Put_Line("Area: " & Float'Image(Area));
end Main;
```