#import "@preview/lovelace:0.3.0": *

#set heading(numbering: none)

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

=== 1.2. Quelles sont les pré/post-conditions à respecter dans cet algorithme ?

== Exercice 2

=== 2.1. Ecrire un algorithme qui demande un nombre de d´epart, et qui ensuite affiche les dix nombres suivants. 
Par exemple, si l’utilisateur entre le nombre 17, le programme affichera les nombres de 18 à 27. Nous considérons que les actions élémentaires de
lecture, affichage, comparaison, stockage, addition de valeurs existent.

=== 2.2. Quelles sont les information en entrée et en sortie de l'algorithme ? Quels sont les types de données ?

=== 2.3. Indiquez l'initialisation, la progression et la condition d'arrêt dans la structure itérative de l'algorithme.

== Exercice 3

Écrire un algorithme qui demande un nombre compris entre 10 et 20, jusqu'à ce que la réponse convienne. En cas de réponse supérieure à 20, on fera apparaître un message : « Plus petit ! », et inversement, « Plus grand ! » si le nombre est inférieur à 10.

Indiquez l’initialisation, la progression et la condition d’arrêt dans la structure itérative de l’algorithme. 

== Exercice 4

