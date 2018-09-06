#IMPORTANT:

* Seul le Git Master est autorisé à push sur la branche principale (master)!
* Vous devez donc commiter sur une branche personnel afin de ne pas assister à une atomisation de notre repo.
* Je sauvegarderai le repo sur un repo secondaire tout les soirs de la semaine.

## Rappel

### Melissa et Bertrand:

* git branch nombDeLaBranche : crée une nouvelle branche (nouvelle version du projet)
* git checkout nomDeLaBranche : bascule sur la branche nomDeLaBranche 
* master est la branche principale vous ne dever pas push dessus juste pull
* vos branches respectives sont branchMelissa et branchBertrand
* pour basculer dessus, dans votre terminal:

#### La premiére fois:
* git branch nombDeLaBranche (donc branchMelissa et branchBertrand): va créer la branche en local

#### Ensuite:
* git checkout nomDeLaBranche : pour basculer dessus ou revenir sur master
* git status
* git add .
* git commit -m "votre commentaire"
* git push


### Julien:

* Creer une branche sur github: Onglet branche
* Creer une branche en local: git branch nomDeLaBrancheCreerSurGithub
* git merge nomDeLaBranche : rattache ma branche au master de la branche principale (master) ==> nécessite de résoudre les conflits !   