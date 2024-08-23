#let td2(isCorrection: true) = [

#import "@preview/lovelace:0.3.0": *
#import "../TD_TP_Commons.typ": *


= R101- TD2 - Tracé de dessins

== Objectifs

- Travailler l’écriture d’algorithmes par la méthode d’affinages successifs.
- Travailler les structures de contrôle.

== Spécifications du traceur

Soit un traceur défini par :
- une surface de travail,
- cinq compteurs notés c1, c2, c3, c4 et c5,
- un stylet,
- une position centrale notée o (ou origine),
- une orientation (ou points cardinaux),
- et une unité de longueur (u).

Les 6 actions élémentaires du traceur afin de manipuler le stylet sont :

#table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [*Nom de l'action*], [*Description*],
  ),
  [_leverStylet_], [Cette action rompt le contact entre le stylet et la surface de travail ; si le stylet est déjà levé, l'opération est sans effet sur le dessin.],
  [_baisserStylet_], [Cette action établit le contact entre le stylet et la surface de travail ; si le stylet est déjà baissé, l'opération est sans effet sur le dessin.],
  [_centrerStylet_], [Cette action déplace le stylet à la position centrale, sans modification de sa hauteur ; si le stylet est déjà au centre, l'opération est sans effet sur le dessin.],
  [_deplacerStylet_], [Cette action permet de déplacer le stylet d'une unité dans la direction cardinale courante sans modification de sa hauteur.],
  [_pivoterDroite_], [Cette action modifie la direction cardinale courante de 90° dans le sens des aiguilles d'une montre.],
  [_pivoterGauche_], [Cette action modifie la direction cardinale courante de 90° dans le sens inverse des aiguilles d'une montre.],
  [_orienterNord_], [Cette action modifie la direction cardinale courante pour la faire pointer vers le nord.],
)

Concernant la manipulation d’un compteur nommé X, le traceur est capable de :

#table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [*Nom de l'action*], [*Description*],
  ),
  [_initialiser$C_x$_], [Cette action initialise le compteur $C_x$ à 0.],
  [_ajouterUn$C_x$_], [Cette action incrémente le compteur $C_x$ de 1 ($C_x$ devient égal à $C_x + 1$.)],
  [_comparerValeurs$C_x$Et$V$_], [Cette action compare la valeur du compteur $C_x$ à une valeur $V$ donnée.],
)

Voici quelques exemples pour manipuler les compteurs :


- _initialiser$C_1$_ → Le compteur C1 est initialisé vec la valeur 0 ;
- _comparerValeurs$C_1$Et$4$_ → La valeur du compteur $C_1$ st comparée avec 4. Le résultat peut être vrai ou faux.
- _comparerValeurs$C_1$Et$C_2$_ → La valeur du compteur $C_1$ st comparée avec la valeur du compteur $C_2$. Le résultat peut être vrai ou faux.


]