#import "../TD_TP_Commons.typ": *


== R1.01 - Introduction

=== Avant de commencer chaque séance TP

+ Ouvrez un terminal et créez un dossier dans votre espace (disque H).
+ Placez vous dans le dossier et créez un dossier TP\<_num. du TP_\>.
+ Travaillez dans le dossier TP\<_num. du TP_\>.
+ Oubliez les accents dans le langage Typ.

=== Pendant chaque séance de TP

Durant votre travail, à chaque apparition d'une indication de type

#fix[_un message_]

commitez et pushez sur Github votre projet mis à jour avec comme message de commit "fix _un message_".

=== B-A BA Git

Pour utiliser Git, la configuration de votre identité Git doit être opérante. 
Si ce n'est pas le cas, voici un rappel des commandes à exécuter pour effectuer
la configuration.  

```bash
git config --global user.name "mon_user_name"  
git config --global user.email "mon_adresse"
```

où "mon_user_name" est à remplacer par votre nom d'utilisateur GitHub et "mon_adresse" est est à remplacer par votre adresse électronique utilisée pour créer votre compte GitHub. 

Ensuite, pour vérifier votre configuration, vous pouvez utiliser la commande 
```bash 
git config --global -l
```

Pour récupérer le projet en local : 
```bash
git clone https://_adresse_du_dépôt_distant_
```
Pour effectuer un commit et un push sur le dépôt distant (sur Github ou Gitlab), placez vous en local dans le dossier qui contient le projet et exécutez les commandes suivantes :

```bash
git add .  
git commit -m"fix ... ..."  
git push
```

