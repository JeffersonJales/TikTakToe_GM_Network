{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "RoomGame",
  "isDnd": false,
  "volume": 1.0,
  "parentRoom": null,
  "views": [
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
    {"inherit":false,"visible":false,"xview":0,"yview":0,"wview":1366,"hview":768,"xport":0,"yport":0,"wport":1366,"hport":768,"hborder":32,"vborder":32,"hspeed":-1,"vspeed":-1,"objectId":null,},
  ],
  "layers": [
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"System","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5AC36B60","properties":[],"isDnd":false,"objectId":{"name":"obj_tictactoe_controller","path":"objects/obj_tictactoe_controller/obj_tictactoe_controller.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":1.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":-16.0,"y":-16.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_game_text_title","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"string_text","path":"objects/obj_text/obj_text.yy",},"objectId":{"name":"obj_text","path":"objects/obj_text/obj_text.yy",},"value":"\"Jogando como: \"",},
          ],"isDnd":false,"objectId":{"name":"obj_text","path":"objects/obj_text/obj_text.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":11.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":192.0,"y":32.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_game_text_state","properties":[],"isDnd":false,"objectId":{"name":"obj_text","path":"objects/obj_text/obj_text.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":11.0,"scaleY":1.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":192.0,"y":64.0,},
      ],"visible":true,"depth":0,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instance_board_mark","instances":[],"visible":true,"depth":100,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRAssetLayer","resourceVersion":"1.0","name":"Asset_board_line","assets":[
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_578F362E","spriteId":{"name":"spr_pixel","path":"sprites/spr_pixel/spr_pixel.yy",},"headPosition":0.0,"rotation":0.0,"scaleX":16.0,"scaleY":224.0,"animationSpeed":1.0,"colour":4278190080,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":144.0,"y":96.0,},
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_5AA89159","spriteId":{"name":"spr_pixel","path":"sprites/spr_pixel/spr_pixel.yy",},"headPosition":0.0,"rotation":0.0,"scaleX":16.0,"scaleY":224.0,"animationSpeed":1.0,"colour":4278190080,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":224.0,"y":96.0,},
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_2FD5FBC4","spriteId":{"name":"spr_pixel","path":"sprites/spr_pixel/spr_pixel.yy",},"headPosition":0.0,"rotation":0.0,"scaleX":224.0,"scaleY":16.0,"animationSpeed":1.0,"colour":4278190080,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":80.0,"y":160.0,},
        {"resourceType":"GMRSpriteGraphic","resourceVersion":"1.0","name":"graphic_1F7AFDAC","spriteId":{"name":"spr_pixel","path":"sprites/spr_pixel/spr_pixel.yy",},"headPosition":0.0,"rotation":0.0,"scaleX":224.0,"scaleY":16.0,"animationSpeed":1.0,"colour":4278190080,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":80.0,"y":240.0,},
      ],"visible":true,"depth":200,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRInstanceLayer","resourceVersion":"1.0","name":"Instance_board","instances":[
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_3F0BC0C0","properties":[],"isDnd":false,"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":2.0,"scaleY":2.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":112.0,"y":128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_76992D17","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"position_x","path":"objects/obj_button_board/obj_button_board.yy",},"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"value":"1",},
          ],"isDnd":false,"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":2.0,"scaleY":2.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":192.0,"y":128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_71DF9941","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"position_x","path":"objects/obj_button_board/obj_button_board.yy",},"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"value":"2",},
          ],"isDnd":false,"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":2.0,"scaleY":2.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":272.0,"y":128.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_19218FC7","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"position_y","path":"objects/obj_button_board/obj_button_board.yy",},"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"value":"1",},
          ],"isDnd":false,"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":2.0,"scaleY":2.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":112.0,"y":208.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_5CFAF0C2","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"position_y","path":"objects/obj_button_board/obj_button_board.yy",},"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"value":"1",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"position_x","path":"objects/obj_button_board/obj_button_board.yy",},"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"value":"1",},
          ],"isDnd":false,"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":2.0,"scaleY":2.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":192.0,"y":208.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_661D6761","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"position_y","path":"objects/obj_button_board/obj_button_board.yy",},"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"value":"1",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"position_x","path":"objects/obj_button_board/obj_button_board.yy",},"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"value":"2",},
          ],"isDnd":false,"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":2.0,"scaleY":2.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":272.0,"y":208.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6CD47494","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"position_y","path":"objects/obj_button_board/obj_button_board.yy",},"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"value":"2",},
          ],"isDnd":false,"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":2.0,"scaleY":2.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":112.0,"y":288.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_6AA344AC","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"position_y","path":"objects/obj_button_board/obj_button_board.yy",},"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"value":"2",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"position_x","path":"objects/obj_button_board/obj_button_board.yy",},"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"value":"1",},
          ],"isDnd":false,"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":2.0,"scaleY":2.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":192.0,"y":288.0,},
        {"resourceType":"GMRInstance","resourceVersion":"1.0","name":"inst_746CEF8C","properties":[
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"position_y","path":"objects/obj_button_board/obj_button_board.yy",},"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"value":"2",},
            {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"position_x","path":"objects/obj_button_board/obj_button_board.yy",},"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"value":"2",},
          ],"isDnd":false,"objectId":{"name":"obj_button_board","path":"objects/obj_button_board/obj_button_board.yy",},"inheritCode":false,"hasCreationCode":false,"colour":4294967295,"rotation":0.0,"scaleX":2.0,"scaleY":2.0,"imageIndex":0,"imageSpeed":1.0,"inheritedItemId":null,"frozen":false,"ignore":false,"inheritItemSettings":false,"x":272.0,"y":288.0,},
      ],"visible":true,"depth":300,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
    {"resourceType":"GMRBackgroundLayer","resourceVersion":"1.0","name":"Background","spriteId":null,"colour":4286544896,"x":0,"y":0,"htiled":false,"vtiled":false,"hspeed":0.0,"vspeed":0.0,"stretch":false,"animationFPS":15.0,"animationSpeedType":0,"userdefinedAnimFPS":false,"visible":true,"depth":400,"userdefinedDepth":false,"inheritLayerDepth":false,"inheritLayerSettings":false,"gridX":16,"gridY":16,"layers":[],"hierarchyFrozen":false,"effectEnabled":true,"effectType":null,"properties":[],},
  ],
  "inheritLayers": false,
  "creationCodeFile": "",
  "inheritCode": false,
  "instanceCreationOrder": [
    {"name":"inst_3F0BC0C0","path":"rooms/RoomGame/RoomGame.yy",},
    {"name":"inst_76992D17","path":"rooms/RoomGame/RoomGame.yy",},
    {"name":"inst_71DF9941","path":"rooms/RoomGame/RoomGame.yy",},
    {"name":"inst_19218FC7","path":"rooms/RoomGame/RoomGame.yy",},
    {"name":"inst_5CFAF0C2","path":"rooms/RoomGame/RoomGame.yy",},
    {"name":"inst_661D6761","path":"rooms/RoomGame/RoomGame.yy",},
    {"name":"inst_6CD47494","path":"rooms/RoomGame/RoomGame.yy",},
    {"name":"inst_6AA344AC","path":"rooms/RoomGame/RoomGame.yy",},
    {"name":"inst_746CEF8C","path":"rooms/RoomGame/RoomGame.yy",},
    {"name":"inst_5AC36B60","path":"rooms/RoomGame/RoomGame.yy",},
    {"name":"inst_game_text_title","path":"rooms/RoomGame/RoomGame.yy",},
    {"name":"inst_game_text_state","path":"rooms/RoomGame/RoomGame.yy",},
  ],
  "inheritCreationOrder": false,
  "sequenceId": null,
  "roomSettings": {
    "inheritRoomSettings": false,
    "Width": 400,
    "Height": 400,
    "persistent": false,
  },
  "viewSettings": {
    "inheritViewSettings": false,
    "enableViews": false,
    "clearViewBackground": false,
    "clearDisplayBuffer": true,
  },
  "physicsSettings": {
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1,
  },
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy",
  },
}