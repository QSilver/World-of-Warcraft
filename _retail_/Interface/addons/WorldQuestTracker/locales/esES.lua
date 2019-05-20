local L = LibStub("AceLocale-3.0"):NewLocale("WorldQuestTrackerAddon", "esES") 
if not L then return end 

L["S_APOWER_AVAILABLE"] = "Disponible"
L["S_APOWER_NEXTLEVEL"] = "Siguiente nivel"
L["S_DECREASESIZE"] = "Disminuir el Tamaño"
L["S_ENABLED"] = "Habilitado"
L["S_ERROR_NOTIMELEFT"] = "Esta misión no tiene tiempo restante."
L["S_ERROR_NOTLOADEDYET"] = "Esta misión no está cargada todavía, por favor espera unos segundos."
L["S_FACTION_TOOLTIP_SELECT"] = "Click: Selecciona esta facción"
L["S_FACTION_TOOLTIP_TRACK"] = "Shift + Click: Seguimiento de las misiones de esta facción"
L["S_FLYMAP_SHOWTRACKEDONLY"] = "Sólo en rastreo"
L["S_FLYMAP_SHOWTRACKEDONLY_DESC"] = "Mostrar sólo misiones en rastreo"
L["S_FLYMAP_SHOWWORLDQUESTS"] = "Muestra misiones del mundo"
L["S_GROUPFINDER_ACTIONS_CANCEL_APPLICATIONS"] = "clic para cancelar aplicaciones..."
L["S_GROUPFINDER_ACTIONS_CANCELING"] = "cancelando..."
L["S_GROUPFINDER_ACTIONS_CREATE"] = "grupo no encontrado?, clic para comenzar uno"
L["S_GROUPFINDER_ACTIONS_CREATE_DIRECT"] = "crear grupo"
L["S_GROUPFINDER_ACTIONS_LEAVEASK"] = "Salir del grupo?"
L["S_GROUPFINDER_ACTIONS_LEAVINGIN"] = "Saliendo del grupo en (click para salir inmediatamente):"
L["S_GROUPFINDER_ACTIONS_RETRYSEARCH"] = "reintentar búsqueda"
L["S_GROUPFINDER_ACTIONS_SEARCH"] = "click para empezar a buscar grupos"
L["S_GROUPFINDER_ACTIONS_SEARCH_RARENPC"] = "buscar un grupo para matar este raro"
L["S_GROUPFINDER_ACTIONS_SEARCH_TOOLTIP"] = "Unirse a un grupo haciendo esta misión"
L["S_GROUPFINDER_ACTIONS_SEARCHING"] = "buscando..."
L["S_GROUPFINDER_ACTIONS_SEARCHMORE"] = "Click para buscar a más miembros para el grupo"
L["S_GROUPFINDER_ACTIONS_SEARCHOTHER"] = "¿Salir y buscar un grupo diferente?"
L["S_GROUPFINDER_ACTIONS_UNAPPLY1"] = "Click para desapuntarse para que podamos crear un grupo nuevo"
L["S_GROUPFINDER_ACTIONS_UNLIST"] = "Click para quitar tu grupo actual"
L["S_GROUPFINDER_ACTIONS_UNLISTING"] = "delistando..."
L["S_GROUPFINDER_ACTIONS_WAITING"] = "esperando..."
L["S_GROUPFINDER_AUTOOPEN_RARENPC_TARGETED"] = "Auto abrir al seleccionar un monstruo raro"
L["S_GROUPFINDER_ENABLED"] = "Auto Abrir en una Nueva Misión"
L["S_GROUPFINDER_LEAVEOPTIONS"] = "Salir de las Opciones de Grupo"
L["S_GROUPFINDER_LEAVEOPTIONS_AFTERX"] = "Salir después de X Segundos"
L["S_GROUPFINDER_LEAVEOPTIONS_ASKX"] = "No Auto Salir, Solo Preguntar durante X Segundos"
L["S_GROUPFINDER_LEAVEOPTIONS_DONTLEAVE"] = "No Mostrar Panel de Salida"
L["S_GROUPFINDER_LEAVEOPTIONS_IMMEDIATELY"] = "Salir Inmediatamente al Completar Misión"
L["S_GROUPFINDER_NOPVP"] = "Evitar Servidores PVP"
L["S_GROUPFINDER_OT_ENABLED"] = "Mostrar botones en el Objetivo del Rastreador"
L["S_GROUPFINDER_QUEUEBUSY"] = "Ya estás en cola."
L["S_GROUPFINDER_QUEUEBUSY2"] = "no se pudo mostrar la ventana del buscador de grupos; ya estás en un grupo o en una cola."
L["S_GROUPFINDER_RESULTS_APPLYING"] = "Quedan %d grupos restantes, haz click de nuevo"
L["S_GROUPFINDER_RESULTS_APPLYING1"] = "Queda 1 grupo para unirse, haz click nuevamente"
L["S_GROUPFINDER_RESULTS_FOUND"] = [=[se encontraron %d grupos
click para unirse]=]
L["S_GROUPFINDER_RESULTS_FOUND1"] = [=[encontrado 1 grupo
clic para empezar a unirse]=]
L["S_GROUPFINDER_RESULTS_UNAPPLY"] = "%d invitaciones pendientes..."
L["S_GROUPFINDER_RIGHTCLICKCLOSE"] = "Clic derecho para cerrar"
L["S_GROUPFINDER_SECONDS"] = "Segundos"
L["S_GROUPFINDER_TITLE"] = "Buscador de Grupo"
L["S_GROUPFINDER_TUTORIAL1"] = "¡Haz misiones de mundo más rápido uniéndote a un grupo que esté haciendo la misma misión!"
L["S_INCREASESIZE"] = "Incrementar el Tamaño"
L["S_MAPBAR_FILTER"] = "Filtro"
L["S_MAPBAR_FILTERMENU_FACTIONOBJECTIVES"] = "Objetivos de Facción"
L["S_MAPBAR_FILTERMENU_FACTIONOBJECTIVES_DESC"] = "Mostrar misiones de Facción incluso si han sido filtradas."
L["S_MAPBAR_OPTIONS"] = "Opciones"
L["S_MAPBAR_OPTIONSMENU_ARROWSPEED"] = "Velocidad de actualización de la flecha"
L["S_MAPBAR_OPTIONSMENU_ARROWSPEED_HIGH"] = "Rápido"
L["S_MAPBAR_OPTIONSMENU_ARROWSPEED_MEDIUM"] = "Medio"
L["S_MAPBAR_OPTIONSMENU_ARROWSPEED_REALTIME"] = "Tiempo real"
L["S_MAPBAR_OPTIONSMENU_ARROWSPEED_SLOW"] = "Lento"
L["S_MAPBAR_OPTIONSMENU_EQUIPMENTICONS"] = "Iconos de equipo"
L["S_MAPBAR_OPTIONSMENU_QUESTTRACKER"] = "Habilitar Rastreador de misiones"
L["S_MAPBAR_OPTIONSMENU_REFRESH"] = "Refrescar"
L["S_MAPBAR_OPTIONSMENU_SOUNDENABLED"] = "Habilitar sonido"
L["S_MAPBAR_OPTIONSMENU_STATUSBAR_ONDISABLE"] = "Usar '/wqt statusbar' o la opción del addon en la parte inferior del menú de opciones para restaurar la barra de estado"
L["S_MAPBAR_OPTIONSMENU_STATUSBAR_VISIBILITY"] = "Mostrar barra de estado"
L["S_MAPBAR_OPTIONSMENU_STATUSBARANCHOR"] = "Anclar en la parte superior"
L["S_MAPBAR_OPTIONSMENU_TOMTOM_WPPERSISTENT"] = "Punto de destino persistente"
L["S_MAPBAR_OPTIONSMENU_TRACKER_CURRENTZONE"] = "Sólo zona actual"
L["S_MAPBAR_OPTIONSMENU_TRACKER_SCALE"] = "Escala del rastreador: %s"
L["S_MAPBAR_OPTIONSMENU_TRACKERCONFIG"] = "Configuración del rastreador"
L["S_MAPBAR_OPTIONSMENU_TRACKERMOVABLE_AUTO"] = "Posición automática"
L["S_MAPBAR_OPTIONSMENU_TRACKERMOVABLE_CUSTOM"] = "Posición personalizada"
L["S_MAPBAR_OPTIONSMENU_TRACKERMOVABLE_LOCKED"] = "Bloqueado"
L["S_MAPBAR_OPTIONSMENU_UNTRACKQUESTS"] = "Dejar de rastrear todas las misiones"
L["S_MAPBAR_OPTIONSMENU_WORLDMAPCONFIG"] = "Configuración del mapa del mundo"
L["S_MAPBAR_OPTIONSMENU_YARDSDISTANCE"] = "Mostrar distancia en yardas"
L["S_MAPBAR_OPTIONSMENU_ZONE_QUESTSUMMARY"] = "Mostrar Sumario de Misiones"
L["S_MAPBAR_OPTIONSMENU_ZONEMAPCONFIG"] = "Configuración del mapa de la zona"
L["S_MAPBAR_RESOURCES_TOOLTIP_TRACKALL"] = "Pulsar para rastrear todas: |cFFFFFFFF%s|r misiones."
L["S_MAPBAR_SORTORDER"] = "Ordenación"
L["S_MAPBAR_SORTORDER_TIMELEFTPRIORITY_FADE"] = "Sombrear misiones"
L["S_MAPBAR_SORTORDER_TIMELEFTPRIORITY_OPTION"] = "Menos de %d horas"
L["S_MAPBAR_SORTORDER_TIMELEFTPRIORITY_SHOWTEXT"] = "Texto de tiempo restante"
L["S_MAPBAR_SORTORDER_TIMELEFTPRIORITY_SORTBYTIME"] = "Ordenado por tiempo"
L["S_MAPBAR_SORTORDER_TIMELEFTPRIORITY_TITLE"] = "Tiempo restante"
L["S_MAPBAR_SUMMARYMENU_ACCOUNTWIDE"] = "Compartido a la cuenta"
--[[Translation missing --]]
--[[ L["S_OPTIONS_ACCESSIBILITY"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_ACCESSIBILITY_EXTRATRACKERMARK"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_ACCESSIBILITY_SHOWBOUNTYRING"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_ANIMATIONS"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_MAPFRAME_ALIGN"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_MAPFRAME_ERROR_SCALING_DISABLED"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_MAPFRAME_SCALE"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_MAPFRAME_SCALE_ENABLED"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_QUESTBLACKLIST"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_RESET"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_SHOWFACTIONS"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_TIMELEFT_NOPRIORITY"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_TRACKER_RESETPOSITION"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_WORLD_ANCHOR_LEFT"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_WORLD_ANCHOR_RIGHT"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_WORLD_DECREASEICONSPERROW"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_WORLD_INCREASEICONSPERROW"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_WORLD_ORGANIZE_BYMAP"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_WORLD_ORGANIZE_BYTYPE"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_OPTIONS_ZONE_SHOWONLYTRACKED"] = ""--]] 
L["S_OVERALL"] = "Total"
L["S_PARTY"] = "Grupo"
L["S_PARTY_DESC1"] = "Las misiones con una estrella azul significa que todos los miembros del grupo tienen esa misión."
L["S_PARTY_DESC2"] = "Si se muestra una estrella roja, un miembro del grupo no es elegible para las misiones de mundo o no tiene WQT instalado aún."
L["S_PARTY_PLAYERSWITH"] = "Jugadores en el grupo con WQT:"
L["S_PARTY_PLAYERSWITHOUT"] = "Jugadores en el grupo sin WQT:"
L["S_QUESTSCOMPLETED"] = "Misiones completadas"
L["S_QUESTTYPE_ARTIFACTPOWER"] = "Poder de artefacto"
L["S_QUESTTYPE_DUNGEON"] = "Mazmorra"
L["S_QUESTTYPE_EQUIPMENT"] = "Equipo"
L["S_QUESTTYPE_GOLD"] = "Oro"
L["S_QUESTTYPE_PETBATTLE"] = "Duelo de mascotas"
L["S_QUESTTYPE_PROFESSION"] = "Profesión"
L["S_QUESTTYPE_PVP"] = "JcJ"
L["S_QUESTTYPE_RESOURCE"] = "Recursos"
L["S_QUESTTYPE_TRADESKILL"] = "Habilidad de comercio"
L["S_RAREFINDER_ADDFROMPREMADE"] = "Añadir Raros Encontrados en Grupos Creados"
L["S_RAREFINDER_NPC_NOTREGISTERED"] = "Raro no existente en la Base de Datos"
L["S_RAREFINDER_OPTIONS_ENGLISHSEARCH"] = "Buscar siempre en inglés"
L["S_RAREFINDER_OPTIONS_SHOWICONS"] = "Mostrar Iconos para Raros Activos"
L["S_RAREFINDER_SOUND_ALWAYSPLAY"] = "Sonar Incluso Cuando los Efectos de Sonido Están Desactivados"
L["S_RAREFINDER_SOUND_ENABLED"] = "Lanzar sonido por monstruo raro en minimapa"
L["S_RAREFINDER_SOUNDWARNING"] = "sonido emitido debido a que hay un raro en el minimapa, puedes deshabilitar este sonido dentro del submenú opciones > buscador de raros."
L["S_RAREFINDER_TITLE"] = "Buscador de Raros"
L["S_RAREFINDER_TOOLTIP_REMOVE"] = "Eliminar"
L["S_RAREFINDER_TOOLTIP_SEACHREALM"] = "Buscar en otros reinos"
L["S_RAREFINDER_TOOLTIP_SPOTTEDBY"] = "Visto Por"
L["S_RAREFINDER_TOOLTIP_TIMEAGO"] = "minutos atrás"
L["S_SUMMARYPANEL_EXPIRED"] = "AGOTADO"
L["S_SUMMARYPANEL_LAST15DAYS"] = "Últimos 15 días"
L["S_SUMMARYPANEL_LIFETIMESTATISTICS_ACCOUNT"] = "Estadísticas históricas de la cuenta"
L["S_SUMMARYPANEL_LIFETIMESTATISTICS_CHARACTER"] = "Estadísticas históricas del personaje"
L["S_SUMMARYPANEL_OTHERCHARACTERS"] = "Otros personajes"
L["S_TUTORIAL_AMOUNT"] = "Indica la cantidad a recibir"
L["S_TUTORIAL_CLICKTOTRACK"] = "Pulsa para rastrear una misión."
L["S_TUTORIAL_PARTY"] = "Estando en grupo, ¡una estrella azul indica las misiones que todos los miembros del grupo tienen!"
L["S_TUTORIAL_TIMELEFT"] = "Indica el tiempo restante (+4 horas, +90 minutos, +30 minutos, menos de 30 minutos)"
--[[Translation missing --]]
--[[ L["S_TUTORIAL_WORLDBUTTONS"] = ""--]] 
L["S_TUTORIAL_WORLDMAPBUTTON"] = "Este botón te lleva al mapa de las Islas Abruptas."
L["S_UNKNOWNQUEST"] = "Misión desconocida"
--[[Translation missing --]]
--[[ L["S_WORLDBUTTONS_SHOW_NONE"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_WORLDBUTTONS_SHOW_TYPE"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_WORLDBUTTONS_SHOW_ZONE"] = ""--]] 
--[[Translation missing --]]
--[[ L["S_WORLDBUTTONS_TOGGLE_QUESTS"] = ""--]] 
L["S_WORLDMAP_QUESTLOCATIONS"] = "Mostrar las Localizaciones de las Misiones"
L["S_WORLDMAP_QUESTSUMMARY"] = "Mostrar el Sumario de Misiones"
L["S_WORLDMAP_TOOGLEQUESTS"] = "Alternar Misiones"
--[[Translation missing --]]
--[[ L["S_WORLDMAP_TOOLTIP_TRACKALL"] = ""--]] 
L["S_WORLDQUESTS"] = "Misiones del mundo"
