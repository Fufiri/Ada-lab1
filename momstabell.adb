with Ada.Float_Text_Io; use Ada.Float_Text_Io;
with Ada.Text_Io; use Ada.Text_Io;

Procedure momstabell is

   Minpris: Float;
   Maxpris: Float;
   Moms: Float;
   Steg: Float;
   F: Float; -- momsprocent
   
Begin
   --  Put("Första pris: ");
   --  loop
   --     Get(Minpris);
   --     exit when Minpris > 0.0;
   --     Put("Priset kan inte vara 0 eller lägre, försök igen: ");
      
   --  end loop;
   
   
   
   Put("Första pris: ");
   Get(Minpris);
   while Minpris <= 0.0 loop
      Put("Priset kan inte vara 0 eller lägre, försök igen: ");
      Get(Minpris);
   end loop;
   
   Put("Sista pris: ");
   Get(Maxpris);
   while Maxpris <= Minpris loop
      Put("Maxpriset måste vara högre än sista priset, försök igen: ");
      Get(Maxpris);
   end loop;
   
   Put("Steg: ");
   Get(Steg);
   while Steg <= 0.0 loop
      Put("Steget måste vara mer än 0, försök igen: ");
      Get(Steg);
   end loop;
   
   Put("Momsprocent: ");
   Get(Moms);
   while (Moms <= 0.0) or (Moms > 100.0) loop
      Put("Momsen måste vara mer än 0 men mindre än 100, försök igen: ");
      Get(Moms);
   end loop;
   New_Line;
   
   Put("=== Momstabell ===");
   New_Line;
   Put("Pris utan moms Moms Pris med moms");
   New_Line;
   
   while Minpris < Maxpris or Minpris = Maxpris loop
   F := Minpris*(Moms/100.0);
   Put(Minpris, 6, 2, 0);
   Put(F, 7, 2, 0);
   Put(Minpris+F, 7, 2, 0);
   New_Line;
   Minpris := (Minpris + Steg);
   end loop;
   
End momstabell;
