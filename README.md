<h2 align="center">Telefone para FiveM</h2>

![Image of gcphone1](https://i.imgur.com/naTiBgI.png)
![Image of gcphone2](https://i.imgur.com/LAicovK.png)
![Image of gcphone3](https://i.imgur.com/imWPohA.png)
![Image of gcphone4](https://i.imgur.com/rzWdDMy.png)
![Image of gcphone5](https://i.imgur.com/9h7eiI8.png)


## Funcionalidades
- Lista de contatos
- Enviar sms
- chamada de voz
- Chamada anônima
- Solicitação bancária
- Aplicativo de bate-papo anônimo
- Aplicativo do Exchange
- Capas / Fundo personalizável
- . . .


## Configuração


### Editar arquivo /html/static/config/config.json
```json
{
  "//": "Nome da rede localizada na barra de telefone",
  "reseau": "ESX-Brasil",

  "//": "Cor básica do telefone",
  "themeColor": "#303f9f",

  "//": "Lista de cores para contatos",
  "colors": [
    "#EF5350",
    "#EC407A",
    "#AB47BC",
    "#7E57C2",
    "#5C6BC0",
    "#42A5F5",
    "#29B6F6",
    "#26C6DA",
    "#26A69A",
    "#66BB6A",
    "#9CCC65",
    "#D4E157",
    "#FFCA28",
    "#FFA726",
    "#FF7043",
    "#8D6E63",
    "#78909C"
  ],

  "//": "Se falso, adicione um '-' no número (### - ####)",
  "useFormatNumberFrance": false,

  "//": "useWebRTCVocal: false => Chamadas com canais GTA",
  "//": "useWebRTCVocal: true  => Chamadas com o WebRTC",
  "useWebRTCVocal": true,

  "//": "Configurando os servidores TURN para usar",
  "RTCConfig": {
    "iceServers": [{
      "urls": ["turn:gannon.ovh"],
      "username": "jojo",
      "credential": "pass"
    }]
  },


  "//": "Lista de papéis de parede disponíveis location => /html/static/img/background",
  "background" : {
    "Calvin & Hobbes": "back001.jpg",
    "Destiny": "back002.jpg",
    "Stormtrooper": "back003.jpg",
    "Custom URL": "URL"
  },
  "//": "Fond d'ecran par default",
  "background_default": {
    "label": "Calvin & Hobbes",
    "value": "back001.jpg"
  },

  "//": "Lista de capas disponíveis, location => /html/static/img/coque",
  "coque": {
    "Sansumg S8": "s8.png",
    "Iphone X": "iphonex.png",
    "Brick Base": "base.png",
    "Transparent": "transparent.png"
  },
  "//": "Capar padrão",
  "coque_default": {
    "label": "Sansumg S8",
    "value": "s8.png"
  },

  "//": "Configuração de Chamada de Serviço (favorito)",
  "serviceCall": [
    {

      "//": "Nome do item",
      "display": "Police",

      "//": "Optionnel: Couleur de puce",
      "backgroundColor": "red",

      "//": "Opcional: Imagem do chip",
      "icon": "/html/static/img/icons_app/bank.png",

      "//": "Lista de ações disponíveis",
      "subMenu": [
        {
          "//": "Título da ação",
          "title": "Envie uma mensagem",

          "//": "Nome do acionador de evento quando em uso",
          "eventName": "esx_addons_gcphone:call",

          "//": "Opcional: Parâmetro 'data' enviado com o evento",
          "type": {
            "number": "police"
          }
        },
        {
          "title": "Ligue para o plantão da PM",
          "eventName": "gcphone:autoCallNumber",
          "type": {
            "number": "911"
          }
        }
      ]
    },
    {
      "display": "Ambulância",
      "backgroundColor": "red",
      "subMenu": [
        {
          "title": "Envie uma mensagem",
          "eventName": "esx_addons_gcphone:call",
          "type": {
            "number": "ambulance"
          }
        }
      ]
    }
  ],

  "//": "Adicionar contato padrão",
  "defaultContacts": [
    { "number": "ambulance" , "display": "AABBUULLAANNCCEE", "icon": "/html/static/img/icons_app/bank.png" },
    { "number": "police" , "display": "Police", "backgroundColor": "blue", "letter": "J" }
  ],

  "//": "Configuration des applications",
  "apps": [
    {
      "//": "Nome do aplicativo",
      "name": "Telefone",

      "//": "Ícones da aplicação",
      "icons": "/html/static/img/icons_app/call.png",

      "//": "Rota do aplicativo, NÃO MODIFICAR",
      "routeName": "appels",

      "//": "Se for verdade, o aplicativo estará disponível na home page",
      "inHomePage": true,

      "//": "Se falso, o aplicativo não é visível",
      "enabled": true
    },
    {
      "name": "Mensagens",
      "icons": "/html/static/img/icons_app/sms.png",
      "routeName": "messages",
      "inHomePage": true,

      "//": "Referência para a loja, para exibir um chip sob o ícone do aplicativo",
      "puceRef": "nbMessagesUnread",
    },
    {
      "name": "Contatos",
      "icons": "/html/static/img/icons_app/contacts.png",
      "routeName": "contacts",
      "inHomePage": true
    },
    {
      "name": "Configurações",
      "icons": "/html/static/img/icons_app/settings.png",
      "routeName": "parametre",
      "inHomePage": true
    },
    {
      "name": "Banco",
      "icons": "/html/static/img/icons_app/bank.png",
      "routeName": "bank",
      "inHomePage": false
    },
    {
      "name": "Bourse",
      "icons": "/html/static/img/icons_app/bourse.png",
      "routeName": "bourse",
      "enabled": true
    },
    {
      "name": "Foto",
      "icons": "/html/static/img/icons_app/photo.png",
      "routeName": "photo"
    },
    {
      "name": "Dark Chat",
      "icons": "/html/static/img/icons_app/tchat.png",
      "routeName": "tchat"
    }
  ],

  "//": "Configuração dos idiomas do telefone",
  "language": {
    "pt_BR": {
      "NAME": "Portugues(BR)",
      "KEY": "VALUE"
    },
    "en_US": {
      "NAME": "English",
      "//": "..."
    },
    "//": "Autre Langue"
  }
}

```
*Não se esqueça de adicionar os novos arquivos no __ressource.lua*


* Você pode editar os sons em \html\static\sound
* As conchas devem estar no formato 1000x500 px, a área da tela é centrada em tamanho 800 * 400
* As aplicações do Banco e do Exchange devem ser configuradas de acordo com seus scripts

### Estações fixas são configuráveis em gcphone/config.lua
```LUA
--[[
  Tenha cuidado para não usar um número que entre em conflito com um jogador
--]]
FixePhone = {
  -- Delegacia de polícia
  ['911'] = { name =  "Delegacia de polícia", coords = { x = 441.2, y = -979.7, z = 30.58 } },

  -- Cabine perto da delegacia de polícia
  ['008-0001'] = { name = "Cabine telefônica", coords = { x = 372.25, y = -965.75, z = 28.58 } },
}
```


## Sobre esx_addons_gcphone
Permite a conexão entre o telefone e as transações esx.

Por favor coloque esx_addons_gcphone & gcphone antes dos trabalhos.
Exemple :
```yml
  # ...

  start mysql-async
  start essentialmode
  start esplugin_mysql
  start es_extended

  start esx_addons_gcphone
  start gcphone

  start esx_mecanojob
  start esx_job2
  start esx_job3
  # ...
```

## License
[GNU v3](https://opensource.org/licenses/gpl-3.0.html)


## Creditos
Jonathan (Gannon) D
