# IMPORTANT:


## Rappel

* Seul le Git Master est autorisé à push sur la branche principale (master)!
* Vous devez donc commiter sur une branche personnel afin de ne pas assister à une atomisation de notre repo.
* Je sauvegarderai le repo sur un repo secondaire tout les soirs de la semaine.


### Melissa et Bertrand:

#### Initialisation de votre branche en local:
* cloner votre branche dans le dossier de votre choix (different du dossier contenant vos pull de master)
* cd Project-E-Sport-Arena
* git branch nombDeLaBranche (branchMelissa et branchBertrand): va créer la branche en local
* lors du premier push il y aura une erreur:
    * cc la ligne git push --set-upstream origin nomDeLaBranche


#### Ensuite:
* git checkout nomDeLaBranche : pour basculer dessus ou revenir sur master
* git status
* git add .
* git commit -m "votre commentaire"
* git push


### Julien:

#### Rattacher une branche à master
* git merge nomDeLaBranche : rattache ma branche au master de la branche principale à faire en étant sur master ==> nécessite de résoudre les conflits !   