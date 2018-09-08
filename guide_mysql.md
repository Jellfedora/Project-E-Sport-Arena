#Creer un utilisateur tout client:

## -- test peut se connecter à partir de n'importe quel hôte:
* CREATE USER 'test'@'%' IDENTIFIED BY 'testmdp';

## -- Accorder les droits à cet utilisateur:
* GRANT ALL PRIVILEGES ON * . * TO 'test'@'%';

## -- Pour que les changements prennent effet, appliquez immédiatement les privilèges en tapant la commande suivante:
* FLUSH PRIVILEGES;