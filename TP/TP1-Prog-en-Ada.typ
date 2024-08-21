#import "@preview/lovelace:0.3.0": *
#import "../TD_TP_Commons.typ": *

#set heading(numbering: none)

= R101- TP1 - Programmation en Ada

#remarque(title: [*Avant de commencer chaque séance TP*])[
  + Ouvrir un terminal et créer un dossier dans votre espace (disque H).
  + Se placer dans le dossier et créer un dossier TP\<_num. du TP_\>.
  + Travailler dans le dossier TP\<_num. du TP_\>.
  + Oubliez les accents dans le langage Ada.
]

== Objectifs

Ce TP vise à aborder la conversion des algorithmes en Ada.

== Exercice 1

Avant de rentrer dans le vif de la programmation Ada, mettre en oeuvre un programme minimal dans le langage pour cerner les différentes étapes à suivre est un passage obligé.

+ Ouvrir un éditeur de texte (pas un traitement de texte) tels que Notepad++ et créer un nouveau fichier.
+ Saisir le code ci-dessous dans votre fichier.


#figure(
  image("figures/Fig1_TP1.png", width: 65mm)
)

3. À quoi servent les deux bibliothèques importées? Identifiez les instructions simples d’entrée et sortie.
+ Enregistrer le fichier avec pour nom “hello.adb”.
+ Compléter ce code en indiquant pour chaque ligne, ce à quoi elle sert.
+ Ouvrir une console (“invite de commandes”).
+ Rendez-vous, dans cette console, dans le répertoire où se trouve le fichier “hello.adb” (cf. commande cd).

#remarque(title: [*Rappel*])[
  Sur windows, pour changer de disque dur, il suffit d’utiliser la commande dans la console "_nom du disque_:" . Voici un exemple : "h:" et valider.
]

8. Exécuter la commande :

```bash
      gnat make hello.adb
```

9. S’il y a des erreurs, vérifier le contenu de votre fichier et reprenez à 2.
+ Lorsqu’aucune erreur n’est pas signalée, observez le contenu du répertoire contenant “hello.adb”. Que constatez-vous ?
+ Exécuter le programme généré en tapant son nom et valider. Si tout fonctionne vous devriez obtenir un joli message sur la console :)
+ Modifier le code du fichier “hello.adb” de façon à ce que le message obtenu affiche, sur une deuxième ligne de la console, vos nom et prénom. Reprendre la commande vue à la question 8 puis exécuter le programme.

Nous allons maintenant passer à un programme un peu plus complet