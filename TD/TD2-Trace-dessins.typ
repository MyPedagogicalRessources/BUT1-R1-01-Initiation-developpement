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

== Exercice 1

Nous proposons maintenant d’utiliser le traceur afin de tracer une croix centrée à l'origine de la surface de travail. Chaque branche de cette croix aura une longueur de 30 unités.

#figure(
  image("figures/TD2/TD3_Fig1.png", width: 35mm)
)

+ Ecrire un algorithme en langage naturel permettant de tracer une telle croix en tenant compte des états initial et final suivants :

  - *Etat initial (pré-condition):*

    On admettra que la direction initiale de tracé est inconnue.

  - *Etat final (post-condition):*

    Le stylet devra être situé à l’origine, en position levée

#correction(displayCorrection: isCorrection)[

Même si l'écriture directe du programme est triviale, il est préférable d'écrire au préalable un algorithme. On peut imaginer pour le 1er niveau d'affinage :

#pseudocode-list(booktabs:true, title: smallcaps[Algorithme 1 : Tracé croix v1])[
+ orienter le stylet vers le Nord ;
+ aller au centre, stylet levé ;
+ tracer la branche Nord ;
+ revenir au centre, stylet levé ;
+ tracer la branche Est ;
+ revenir au centre, stylet levé ;
+ tracer la branche Sud ;
+ revenir au centre, stylet levé ;
+ tracer la branche Ouest ;
+ revenir au centre, stylet levé ;
]

Cet algorithme met en évidence quatre fois la séquence des deux actions :
- tracer une branche (alternativement Nord, Est, Sud et Ouest),
- revenir au centre, stylet levé.
On peut donc écrire une répétition et remplacer les actions de tracé des 4
branches par une seule action générique tracer une branche. Il vient alors :

#pseudocode-list(booktabs:true, title: smallcaps[Algorithme 2 : Tracé croix v2])[
+ orienter le stylet vers le Nord ;
+ aller au centre, stylet levé ;
+ *tant que* il reste une branche à tracer *faire*
  + tracer une branche de la croix;
  + passer à la branche suivante ;
+ fin *tant que* ;
]

Au 2ème niveau d'affinage, l'action complexe tracer une branche s'exprime aussi par une répétition :

#pseudocode-list(booktabs:true)[
+ #comment[tracer une branche de la croix]
+ baisser le stylet ;
+ *tant que* il reste une unité à tracer *faire*
  + tracer une unité ;
+ fin *tant que* ;
+ lever le stylet ;
]


On affine l’action complexe passer à la branche suivante par l’écriture :

#pseudocode-list(booktabs:true)[
+ #comment[passer à la branche suivante]
+ revenir au centre, stylet levé ;
+ pivoter à droite ;
]

On en déduit l'algorithme détaillé de tracé de la croix :

#pseudocode-list(booktabs:true, title: smallcaps[Algorithme 3 : Tracé croix v3])[
+ orienter le stylet vers le Nord ;
+ aller au centre, stylet levé ;
+ *tant que* il reste une branche à tracer *faire*
  + #comment[tracer une branche de la croix]
  + baisser le stylet ;
  + *tant que* il reste une unité à tracer *faire*
    + deplacer le stylet ;
  + fin *tant que* ;
  + lever le stylet ;
  + #comment[passer à la branche suivante]
  + revenir au centre, stylet levé ;
  + pivoter à droite ;
+ fin *tant que* ;
]
]

2. Traduire cet algorithme avec les actions élémentaires du traceur.

#correction(displayCorrection: isCorrection)[

#pseudocode-list(booktabs:true, title: smallcaps[Programme de tracé de la croix])[
+ orienterNord;
+ centrerStylet;
+ initialiserC1 ;
+ *tant que not* ComparerValeursC1Et4 *faire*
  + #comment[tracer une branche de la croix]
  + baisserStylet;
  + initialiserC2 ;
  + *tant que not* ComparerValeursC2Et30 *faire*
    + deplacerStylet;
    + ajouterUnC2 ;
  + fin *tant que* ;
  +leverStylet;
  + #comment[passer à la branche suivante]
  + centrerStylet;
  + pivoterDroite;
  + ajouterUnC1 ;
+ fin *tant que* ;
]

]

]