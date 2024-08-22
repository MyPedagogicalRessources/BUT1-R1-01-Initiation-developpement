with ada.text_io; use ada.text_io;
with ada.integer_text_io; use ada.integer_text_io;

procedure CalculeTarifCalendriers is

    nombreCalendriers : Integer;
    prixTotal : Integer;

begin
    
      put("Combien de calendriers souhaitez-vous ? ");
      get(nombreCalendriers);
      if (nombreCalendriers < 75) then
        prixTotal := nombreCalendriers;
      else
        prixTotal := nombreCalendriers - 10; -- application de la réduction
        prixTotal := prixTotal + 3; -- forfait de prise en charge
      end if;
      prixTotal := prixTotal + 4; -- frais de port
      put("Le prix total est de ");
      put(prixTotal);
      put(" euros.");
    
end CalculeTarifCalendriers;