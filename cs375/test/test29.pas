program graph1(output);
type complex = record re, im: real end;
     color = (red, white, blue);
     pp = ^ person;
     person = record age:      integer;
                     friend:   pp;
                     location: complex;
                     favorite: color;
                     salary:   real end;
var john: pp;
begin
   john^.age := 19;
   john^.age := 19;
   john^.age := 19;
   john^.age := 19;
   john^.age := 19;
   john^.age := 19
end.
