# esx_gcphone
[FR] GcPhone en ESX avec appelle et VDK_CALL !! Vous mettez ceci dans vos tenue de vos jobs ESX comme exemple (Vous mettez sa quand vous avez la jobs dans les appelles urgences du gcphone) : "(Important de le mettre dans la tenue civil) TriggerServerEvent("player:serviceOff", "police")" ET "(Dans vos tenue de service) TriggerServerEvent("player:serviceOn", "police"). Vous pouvez aussi en rajoutez ou en modifier les jobs qui sont dans le gcphone en allant dans le config.json et dans main.lua, tout en bas du main.lua, il y aura, exemple : Vous avez appellé la Police

 **IMPORTANT** :

 "INSERT INTO items VALUES ('109', 'phone', 'telephone', '-1', '0', '1');"

 "INSERT INTO shops (id, name, item, price) VALUES 
 (98, 'TwentyFourSeven', 'phone', 175), 
 (99, 'RobsLiquor', 'phone', 175), 
 (100,   'LTDgasoline', 'phone', 175);"

**Installation** :

 1- Mettez votre vdk_call et gcphone dans le dossier ressource
 2- Dans votre server.cfg, vous mettez :
 start vdk_call
 start gcphone
 3- Mettez votre sql et la requête sql
 4- Enjoy!
 
 **Screenshot** :
 
 ![screenshot](https://cdn.discordapp.com/attachments/452024430659371009/460122339976282142/appel.PNG)
 ![screenshot](https://media.discordapp.net/attachments/452024430659371009/460122372561960960/bank.PNG)
 ![screenshot](https://cdn.discordapp.com/attachments/452024430659371009/460122419831767040/chat.PNG)
 ![screenshot](https://cdn.discordapp.com/attachments/452024430659371009/460122455898456064/historique.PNG)
 ![screenshot](https://cdn.discordapp.com/attachments/452024430659371009/460122499150118922/home.PNG)
 ![screenshot](https://cdn.discordapp.com/attachments/452024430659371009/460122543001698335/parametre.PNG)
 ![screenshot](https://cdn.discordapp.com/attachments/452024430659371009/460122583569006592/phone.PNG)
 ![screenshot](https://cdn.discordapp.com/attachments/452024430659371009/460122633850060810/supprime.PNG)
 ![screenshot](https://cdn.discordapp.com/attachments/452024430659371009/460122668302336001/urgence.PNG)
 
Je remercie fortement Gannon pour le partage du nouveau Gcphone et grâce à mon ancien gcphone j'ai réussi à le transférer en ESX facilement!
