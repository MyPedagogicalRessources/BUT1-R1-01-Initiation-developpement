with ada.text_io; use ada.text_io;
with ada.integer_text_io; use ada.integer_text_io;

procedure CalculeMentionBac is

    noteSur20 : Integer; -- la note sur 20 de l'étudiant
    mention : String(1..20); -- la mention obtenue par l'étudiant

begin

    put("Entrez la note sur 20 de l'étudiant : ");
    get(noteSur20);

end CalculeMentionBac;

