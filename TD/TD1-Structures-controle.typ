#import "@preview/lovelace:0.3.0": *
#import "TD_Commons.typ": *

#set heading(numbering: none)

#let isCorrection = true

= TD1 - Les structures de contrôle

== Objectifs

- Travailler les instructions conditionnelles.
- Travailler la sélection imbriquée et simple.
- Travailler les instructions de répétition.

== Exercice 1

Une société de location de voitures propose à ses clients le contrat suivant : Un forfait fixe de 65€ si le nombre de kilomètres parcourus est inférieur ou égal à 100. Si le kilométrage du forfait est dépassé, 0,25€   par kilomètre parcouru supplémentaire est ajouté. L’algorithme suivant permet de calculer le prix d’une location pour une distance de $X$ kilomètres.

#pseudocode-list(booktabs:true, title: smallcaps[Algorithme 1 : Calcul prix de location])[
+ *Données* 
+ La valeur saisie de type Entier
+ *Début*
+ Saisir une valeur ;
+ *si* la valeur saisie est inférieure ou égale à 100 *alors*
  + le prix de la location est de 65€
  + Afficher le message pour indiquer que le forfait n’a pas été dépassé ;
+ *sinon*
  + le prix de la location est calculé comme 65+0,25$*$(la valeur saisie - 100)€
  + Afficher message pour indiquer que le forfait a été dépassé ;
+ *fin si*
+ Afficher le prix ;
+ *Fin*
]

#set enum(numbering: "a)")

=== 1.1. Que va afficher cet algorithme si :
  + $X = 30$ ?
  + $X = 110$ ?
  + $X = 100$ ?
  + $X = -20$ ?

#correction(displayCorrection: isCorrection)[
  + $X = 30$ : Le prix de la location est de 65€. Le forfait n’a pas été dépassé.
  + $X = 110$ : Le prix de la location est de 67,5€. Le forfait a été dépassé.
  + $X = 100$ : Le prix de la location est de 65€. Le forfait n’a pas été dépassé.
  + $X = -20$ : Le prix de la location est de 65€. Le forfait n’a pas été dépassé.

  #remarque[ 
  - Faire comprendre à l’étudiant « dans quel cas nous allons tomber » (si ou sinon).  
  - Expliquer « le cas égalité » de la condition dont la valeur X est égale à 100. 
  - Insister dans le fait que dans la vie réelle un tarif ne devrait pas être calculé pour la valeur X=-20.
]
]

=== 1.2. Quelles sont les pré/post-conditions à respecter dans cet algorithme ?

#correction(displayCorrection: isCorrection)[
  - Pré-conditions : 
    - La valeur X doit être un entier.
  - Post-conditions : 
    - Le prix de la location doit être un réel supérieur à 65.
]

== Exercice 2

#correction(displayCorrection: isCorrection)[
  #remarque[C’est la première fois (après le cours) que les étudiants vont voir une structure de répétition. Prenez le temps d’expliquer l’intérêt d’une structure de répétition.
  ]
]

=== 2.1. Ecrire un algorithme qui demande un nombre de départ, et qui ensuite affiche les dix nombres suivants. 
Par exemple, si l’utilisateur entre le nombre 17, le programme affichera les nombres de 18 à 27. Nous considérons que les actions élémentaires de
lecture, affichage, comparaison, stockage, addition de valeurs existent.

#correction(displayCorrection: isCorrection)[
  #pseudocode-list(booktabs:true, title: smallcaps[Algorithme 2 : Affichage des 10 nombres suivants])[
  + *Données* 
  + La valeur saisie de type Entier
  + le compteur de type Entier
  + *Début*
  + Écrire "Saisir une valeur :";
  + Lire la valeur saisie ;
  + Écrire "Les 10 nombres suivants sont :" ;
  + Initialiser le compteur à 1 ;
  + *tant que* _la valeur du compteur est inférieure ou égale à 10_ *faire*
    + Afficher la valeur saisie plus la valeur du compteur ;
    + Incrémenter le compteur de 1 ;
  + *fin tant que*
  + *Fin*
  ]
]

=== 2.2. Quelles sont les information en entrée et en sortie de l'algorithme ? Quels sont les types de données ?

=== 2.3. Indiquez l'initialisation, la progression et la condition d'arrêt dans la structure itérative de l'algorithme.

== Exercice 3

Écrire un algorithme qui demande un nombre compris entre 10 et 20, jusqu'à ce que la réponse convienne. En cas de réponse supérieure à 20, on fera apparaître un message : « Plus petit ! », et inversement, « Plus grand ! » si le nombre est inférieur à 10.

Indiquez l’initialisation, la progression et la condition d’arrêt dans la structure itérative de l’algorithme. 

== Exercice 4

Nous aimerions écrire un algorithme qui sera utilisé par un distributeur automatique de billets afin d’identifier leurs utilisateurs. Un utilisateur est bien identifié s’il tape un code sur le distributeur égal au code qui est sur sa carte bancaire.
On suppose que l’utilisateur peut se tromper lorsqu’il communique son code. Dans la suite, nous supposons que la valeur du code de la carte bancaire est connue par le distributeur.

=== 4.1. Écrire un algorithme qui demande à l’utilisateur de saisir son code  autant de fois que nécessaire de saisir son code jusqu’à ce qu’il soit correct.

=== 4.2. Modifier l’algorithme précédent pour limiter le nombre d’essais maximum (par exemple 3).

En considérant que les informations du distributeur sont stockées dans les trois registres :

- « _codeCarte_ » : stocke la valeur du code réel (correct) de la carte bancaire déjà connue par le distributeur avant le traitement demandé.
- « _codeSaisi_ » : permet de stocker la valeur du code saisi par l’utilisateur.
- « _nbEssais_ » : permet de stocker le nombre d’essais restants.

Les actions élémentaires du distributeur sont :
#table(
  columns: (auto, auto),
  inset: 10pt,
  align: horizon,
  table.header(
    [*Nom de l'action*], [*Description*],
  ),
  [_lireCode_], [Affecter au registre _codeSaisi_ le code saisi par l'utilisateur],
  [_demanderCode_], [Afficher à l'écran le message _"Quel est votre code ?"_],
  [_initialiserNbEssais_], [Affecter au registre _nbEssais_ la valeur 3 (nb essais max.)],
  [_decrementerNbEssais_], [Décrémenter le registre _nbEssais_ de 1],
  [_afficherCodeCorrect_], [Afficher à l'écran le message _"Le code est correct."_],
  [_afficherCodeErrone_], [Afficher à l'écran le message _"Le code est erroné."_],
)

On suppose que le distributeur est capable de comparer soit les valeurs de 2 registres, soit la valeur d’un registre avec une constante et ce à l’aide des opérateurs $>$, $>=$, $<$, $<=$, $=$.

== Pour aller plus loin

Traduire les algorithmes précédents en langage ADA.
