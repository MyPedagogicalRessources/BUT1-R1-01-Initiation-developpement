with ada.text_io; use ada.text_io;
with ada.integer_text_io; use ada.integer_text_io;

procedure CalculeMentionBac is

    noteSur20 : Integer; -- la note sur 20 de l'étudiant

begin

    put("Entrez la note sur 20 de l'étudiant : ");
    get(noteSur20);

    -- Interrompre le programme si la note n'est pas comprise entre 0 et 20
    if (noteSur20 < 0 or noteSur20 > 20) then
        put("La note doit être comprise entre 0 et 20.");
        return;
    end if;

    -- Calcul de la mention obtenue par l'étudiant
    if (noteSur20 < 10) then
        put_line("Insuffisant");
    else
        if (noteSur20 < 12) then
            put_line("Passable");
        else
            if (noteSur20 < 14) then
                put_line("Assez bien");
            else
                if (noteSur20 < 16) then
                    put_line("Bien");
                else -- noteSur20 >= 16
                    put_line("Très bien");
                end if;
            end if;
        end if;
    end if;

end CalculeMentionBac;
