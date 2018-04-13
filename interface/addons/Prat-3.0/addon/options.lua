---------------------------------------------------------------------------------
--
-- Prat - A framework for World of Warcraft chat mods
--
-- Copyright (C) 2006-2011  Prat Development Team
--
-- This program is free software; you can redistribute it and/or
-- modify it under the terms of the GNU General Public License
-- as published by the Free Software Foundation; either version 2
-- of the License, or (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to:
--
-- Free Software Foundation, Inc.,
-- 51 Franklin Street, Fifth Floor,
-- Boston, MA  02110-1301, USA.
--
--
-------------------------------------------------------------------------------



--[[ BEGIN STANDARD HEADER ]] --

-- Imports
local _G = _G
local LibStub = LibStub
local tonumber = tonumber
local tostring = tostring
local pairs = pairs
local type = type
local Prat = select(2, ...)
local setmetatable = setmetatable
local tinsert = tinsert

-- Isolate the environment
setfenv(1, select(2, ...))

--[[ END STANDARD HEADER ]] --

local PL = Prat.Localizations


--[===[@debug@
PL:AddLocale(nil, "enUS", {
  prat = "Prat",
  ["display_name"] = "Display Settings",
  ["display_desc"] = "Chat Frame Control and Look",
  ["formatting_name"] = "Chat Formatting",
  ["formatting_desc"] = "Change the way the lines look and feel",
  ["extras_name"] = "Extra Stuff",
  ["extras_desc"] = "Msc. Modules",
  ["modulecontrol_name"] = "Module Control",
  ["modulecontrol_desc"] = "Control the loading and enabling of Prat's modules.",
  ["reload_required"] = "This option change may not take full effect until you %s your UI.",
  load_no = "Don't Load",
  load_disabled = "Disabled",
  load_enabled = "Enabled",
  load_desc = "Control the load behavior for this module.",
  load_disabledonrestart = "Disabled (reload)",
  load_enabledonrestart = "Enabled (reload)",
})
--@end-debug@]===]

-- These Localizations are auto-generated. To help with localization
-- please go to http://www.wowace.com/projects/prat-3-0/localization/


  --@non-debug@
do
    local L

L=
{
	["display_desc"] = "Chat Frame Control and Look",
	["display_name"] = "Display Settings",
	["extras_desc"] = "Msc. Modules",
	["extras_name"] = "Extra Stuff",
	["formatting_desc"] = "Change the way the lines look and feel",
	["formatting_name"] = "Chat Formatting",
	["load_desc"] = "Control the load behavior for this module.",
	["load_disabled"] = "Disabled",
	["load_disabledonrestart"] = "Disabled (reload)",
	["load_enabled"] = "Enabled",
	["load_enabledonrestart"] = "Enabled (reload)",
	["load_no"] = "Don't Load",
	["modulecontrol_desc"] = "Control the loading and enabling of Prat's modules.",
	["modulecontrol_name"] = "Module Control",
	["prat"] = "Prat",
	["reload_required"] = "This option change may not take full effect until you %s your UI.",
	["AddonMsgs/Addon message options."] = "Addon message options.",
	["AddonMsgs/AddonMsgs"] = "AddonMsgs",
	["AddonMsgs/show_desc"] = "Toggle showing hidden addon messages in each chat window.",
	["AddonMsgs/show_name"] = "Show Addon Messages",
	["AddonMsgs/show_perframedesc"] = "Toggle showing hidden addon messages on and off.",
	["AddonMsgs/show_perframename"] = "ChatFrame%d AddonMsgsShow",
	["Alias/ - list all aliases; supply <keyword> to search for matching aliases (cmd aliases: /listallaliases)"] = " - list all aliases; supply <keyword> to search for matching aliases (cmd aliases: /listallaliases)",
	["Alias/%s() called with blank string!"] = "%s() called with blank string!",
	["Alias/%s() called with nil argument!"] = "%s() called with nil argument!",
	["Alias//%s aliased to \"/%s\""] = "/%s aliased to \"/%s\"",
	["Alias//%s aliased to: /%s"] = "/%s aliased to: /%s",
	["Alias/<alias> - remove the alias <alias> (cmd aliases: /delalias, /remalias)"] = "<alias> - remove the alias <alias> (cmd aliases: /delalias, /remalias)",
	["Alias/<command>[ <value>] - alias <command> to be executed as <value>, or return the value of the currently defined alias for <command> if <command> has not been assigned a value. eg: \"/alias /examplehello /say hello there\" - typing \"/examplehello\" will now cause your character to say \"hello there\"; \"/alias examplehello\" - s \"/examplehello is aliased to /say hello there\" (cmd aliases: /addalias)"] = "<command>[ <value>] - alias <command> to be executed as <value>, or return the value of the currently defined alias for <command> if <command> has not been assigned a value. eg: \"/alias /examplehello /say hello there\" - typing \"/examplehello\" will now cause your character to say \"hello there\"; \"/alias examplehello\" - s \"/examplehello is aliased to /say hello there\" (cmd aliases: /addalias)",
	["Alias/<keyword> - finds all aliases matching <keyword> (cmd aliases: /findalias)"] = "<keyword> - finds all aliases matching <keyword> (cmd aliases: /findalias)",
	["Alias/add"] = "add",
	["Alias/add an alias"] = "add an alias",
	["Alias/alias \"/%s\" does not exist"] = "alias \"/%s\" does not exist",
	["Alias/dealiasing command /%s to /%s"] = "dealiasing command /%s to /%s",
	["Alias/deleting alias \"/%s\" (previously aliased as \"/%s\")"] = "deleting alias \"/%s\" (previously aliased as \"/%s\")",
	["Alias/Display extra information in the chat frame when commands are dealiased"] = "Display extra information in the chat frame when commands are dealiased",
	["Alias/Don't overwrite existing aliases when using /addalias"] = "Don't overwrite existing aliases when using /addalias",
	["Alias/Expand aliases as you are typing"] = "Expand aliases as you are typing",
	["Alias/find aliases matching a given search term"] = "find aliases matching a given search term",
	["Alias/findaliases"] = "findaliases",
	["Alias/infinite loop detected for alias /%s - ignoring"] = "infinite loop detected for alias /%s - ignoring",
	["Alias/inline"] = "inline",
	["Alias/list all aliases"] = "list all aliases",
	["Alias/listaliases"] = "listaliases",
	["Alias/matching aliases found: %d"] = "matching aliases found: %d",
	["Alias/module_desc"] = "Adds the command /alias, which can be used to alias slash commands in a similar way to the Unix alias command.",
	["Alias/module_name"] = "Alias",
	["Alias/No aliases have been defined"] = "No aliases have been defined",
	["Alias/noclobber"] = "noclobber",
	["Alias/noclobber set - skipping new alias: /%s already expands to /%s"] = "noclobber set - skipping new alias: /%s already expands to /%s",
	["Alias/Options"] = "Options",
	["Alias/Options for altering the behaviour of Alias"] = "Options for altering the behaviour of Alias",
	["Alias/overwriting existing alias \"/%s\" (was aliased to \"/%s\")"] = "overwriting existing alias \"/%s\" (was aliased to \"/%s\")",
	["Alias/refusing to alias \"/%s\" to anything in the interests of Not Buggering Everything Up"] = "refusing to alias \"/%s\" to anything in the interests of Not Buggering Everything Up",
	["Alias/remove an alias"] = "remove an alias",
	["Alias/There is no alias current defined for \"%s\""] = "There is no alias current defined for \"%s\"",
	["Alias/total aliases: %d"] = "total aliases: %d",
	["Alias/tried to show value for alias \"%s\" but undefined in module.Aliases!"] = "tried to show value for alias \"%s\" but undefined in module.Aliases!",
	["Alias/unalias"] = "unalias",
	["Alias/verbose"] = "verbose",
	["Alias/warnUser() called with nil argument!"] = "warnUser() called with nil argument!",
	["Alias/warnUser() called with zero length string!"] = "warnUser() called with zero length string!",
	["AltNames/%d alts found for %s: %s"] = "%d alts found for %s: %s",
	["AltNames/%s alts imported from LOKWhoIsWho"] = "%s alts imported from LOKWhoIsWho",
	["AltNames/%s total alts linked to mains"] = "%s total alts linked to mains",
	["AltNames/(.-)'s? [Aa]lt"] = "%f[%a\\192-\\255]([%a\\192-\\255]+)%f[^%a\\128-\\255]'s [Aa]lt",
	["AltNames/([^%s%p%d%c%z]+)'s alt"] = "%f[%a\\192-\\255]([%a\\192-\\255]+)%f[^%a\\128-\\255]'s [Aa]lt",
	["AltNames/.*[Aa]lts?$"] = ".*[Aa]lts?$",
	["AltNames/<alt name> (eg, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)"] = "<alt name> (eg, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)",
	["AltNames/<main> (eg /altnames listalts Fin)"] = "<main> (eg /altnames listalts Fin)",
	["AltNames/<search term> (eg, /altnames find fin)"] = "<search term> (eg, /altnames find fin)",
	["AltNames/Alt"] = "Alt",
	["AltNames/alt"] = "alt",
	["AltNames/alt name exists: %s -> %s; not overwriting as set in preferences"] = "alt name exists: %s -> %s; not overwriting as set in preferences",
	["AltNames/AltNames"] = "AltNames",
	["AltNames/Alts:"] = "Alts:",
	["AltNames/autoguildalts_desc"] = "Automatically run the import from guild roster command silently",
	["AltNames/autoguildalts_name"] = "Auto Import Guild Alts",
	["AltNames/Be quiet"] = "Be quiet",
	["AltNames/character removed: %s"] = "character removed: %s",
	["AltNames/Class colour"] = "Class colour",
	["AltNames/Clear all"] = "Clear all",
	["AltNames/Clear all links between alts and main names."] = "Clear all links between alts and main names.",
	["AltNames/Colour"] = "Colour",
	["AltNames/Delete a character's link to another character as their main."] = "Delete a character's link to another character as their main.",
	["AltNames/Delete alt"] = "Delete alt",
	["AltNames/Disabled"] = "Disabled",
	["AltNames/Display a player's alts in the tooltip"] = "Display a player's alts in the tooltip",
	["AltNames/Display a player's main name in the tooltip"] = "Display a player's main name in the tooltip",
	["AltNames/Display main names in the same colour as that of the alt's class (taking the data from the PlayerNames module if it is enabled)"] = "Display main names in the same colour as that of the alt's class (taking the data from the PlayerNames module if it is enabled)",
	["AltNames/Display main names in the same colour as that of the main's class (taking the data from the PlayerNames module if it is enabled)"] = "Display main names in the same colour as that of the main's class (taking the data from the PlayerNames module if it is enabled)",
	["AltNames/Don't overwrite existing alt <-> main links when importing or adding new alts."] = "Don't overwrite existing alt <-> main links when importing or adding new alts.",
	["AltNames/Don't overwrite existing links"] = "Don't overwrite existing links",
	["AltNames/don't use"] = "don't use",
	["AltNames/Don't use data from the PlayerNames module at all"] = "Don't use data from the PlayerNames module at all",
	["AltNames/ERROR: some function sent a blank message!"] = "ERROR: some function sent a blank message!",
	["AltNames/Find characters"] = "Find characters",
	["AltNames/Fix alts"] = "Fix alts",
	["AltNames/Fix corrupted entries in your list of alt names."] = "Fix corrupted entries in your list of alt names.",
	["AltNames/Found alt: %s => main: %s"] = "Found alt: %s => main: %s",
	["AltNames/guild member alts found and imported: %s"] = "guild member alts found and imported: %s",
	["AltNames/Import from Guild Greet database"] = "Import from Guild Greet database",
	["AltNames/Import from guild roster"] = "Import from guild roster",
	["AltNames/Import options"] = "Import options",
	["AltNames/Imports alt names from a Guild Greet database, if present"] = "Imports alt names from a Guild Greet database, if present",
	["AltNames/Imports alt names from the guild roster by checking for members with the rank \"alt\" or \"alts\", or guild / officer notes like \"<name>'s alt\""] = "Imports alt names from the guild roster by checking for members with the rank \"alt\" or \"alts\", or guild / officer notes like \"<name>'s alt\"",
	["AltNames/Imports data from LOKWhoIsWho, if present (drop your SavedVariablesLOKWhoIsWho.lua in the Prat directory to be able to use this)."] = "Imports data from LOKWhoIsWho, if present (drop your SavedVariablesLOKWhoIsWho.lua in the Prat directory to be able to use this).",
	["AltNames/Left"] = "Left",
	["AltNames/link <alt name> <main name> (eg, /altnames link Fin Finjathealtoffin)"] = "link <alt name> <main name> (eg, /altnames link Fin Finjathealtoffin)",
	["AltNames/Link alt"] = "Link alt",
	["AltNames/Link someone's alt character with the name of their main."] = "Link someone's alt character with the name of their main.",
	["AltNames/linked alt %s => %s"] = "linked alt %s => %s",
	["AltNames/List all"] = "List all",
	["AltNames/List all links between alts and their main names."] = "List all links between alts and their main names.",
	["AltNames/List alts"] = "List alts",
	["AltNames/List alts for a given character"] = "List alts for a given character",
	["AltNames/LOKWhoIsWho data not found"] = "LOKWhoIsWho data not found",
	["AltNames/LOKWhoIsWho import"] = "LOKWhoIsWho import",
	["AltNames/LOKWhoIsWho lua file not found, sorry."] = "LOKWhoIsWho lua file not found, sorry.",
	["AltNames/Main"] = "Main",
	["AltNames/main"] = "main",
	["AltNames/Main name position"] = "Main name position",
	["AltNames/Main:"] = "Main:",
	["AltNames/mainpos_desc"] = "Where to display a character's main name when on their alt.",
	["AltNames/mainpos_name"] = "Main name position",
	["AltNames/module_desc"] = "Allows people's alt characters to be linked to their mains, which can then be displayed next to their names when found in chat messages (default=off).",
	["AltNames/no alts found for character "] = "no alts found for character ",
	["AltNames/no alts or mains found matching \"%s\""] = "no alts or mains found matching \"%s\"",
	["AltNames/No arg string given to :addAlt()"] = "No arg string given to :addAlt()",
	["AltNames/no characters called \"%s\" found; nothing deleted"] = "no characters called \"%s\" found; nothing deleted",
	["AltNames/No Guild Greet database found"] = "No Guild Greet database found",
	["AltNames/No main name supplied to link %s to"] = "No main name supplied to link %s to",
	["AltNames/no matches found"] = "no matches found",
	["AltNames/quiet"] = "Be quiet",
	["AltNames/quiet_desc"] = "Whether to report to the chat frame or not.",
	["AltNames/quiet_name"] = "quiet_name",
	["AltNames/Right"] = "Right",
	["AltNames/Search the list of linked characters for matching main or alt names."] = "Search the list of linked characters for matching main or alt names.",
	["AltNames/searched for: %s - total matches: %s"] = "searched for: %s - total matches: %s",
	["AltNames/Show alts in tooltip"] = "Show alts in tooltip",
	["AltNames/Show main in tooltip"] = "Show main in tooltip",
	["AltNames/Start"] = "Start",
	["AltNames/The colour of an alt's main name that will be displayed"] = "The colour of an alt's main name that will be displayed",
	["AltNames/Use class colour (from the PlayerNames module)"] = "Use class colour (from the PlayerNames module)",
	["AltNames/use class colour of alt"] = "use class colour of alt",
	["AltNames/use class colour of main"] = "use class colour of main",
	["AltNames/Use LibAlts Data"] = "Use LibAlts Data",
	["AltNames/Use the data available via the shared alt information library."] = "Use the data available via the shared alt information library.",
	["AltNames/Various ways to import a main's alts from other addons"] = "Various ways to import a main's alts from other addons",
	["AltNames/warning: alt %s already linked to %s"] = "warning: alt %s already linked to %s",
	["AltNames/Where to display a character's main name when on their alt."] = "Where to display a character's main name when on their alt.",
	["AltNames/Whether to report to the chat frame or not."] = "Whether to report to the chat frame or not.",
	["AltNames/You are not in a guild"] = "You are not in a guild",
	["AltNames/You have not yet linked any alts with their mains."] = "You have not yet linked any alts with their mains.",
	["Bubbles/color_desc"] = "Color the chat bubble border the same as the chat type.",
	["Bubbles/color_name"] = "Color Bubbles",
	["Bubbles/font_desc"] = "Use the same font you are using on the chatframe",
	["Bubbles/font_name"] = "Use Chat Font",
	["Bubbles/fontsize_desc"] = "Set the chat bubble font size",
	["Bubbles/fontsize_name"] = "Font Size",
	["Bubbles/format_desc"] = "Apply Prat's formatting to the chat bubble text.",
	["Bubbles/format_name"] = "Format Text",
	["Bubbles/icons_desc"] = "Show raid icons in the chat bubbles.",
	["Bubbles/icons_name"] = "Show Raid Icons",
	["Bubbles/module_desc"] = "Chat bubble related customizations",
	["Bubbles/module_name"] = "Bubbles",
	["Bubbles/shorten_desc"] = "Shorten the chat bubbles down to a single line each. Mouse over the bubble to expand the text.",
	["Bubbles/shorten_name"] = "Shorten Bubbles",
	["Bubbles/transparent_desc"] = "Hide background and border textures from chat bubbles. (/reload required to undo this option)",
	["Bubbles/transparent_name"] = "Transparent Bubbles",
	["Buttons/alpha_desc"] = "Sets alpha of chat menu and arrows for all chat windows.",
	["Buttons/alpha_name"] = "Set Alpha",
	["Buttons/Buttons"] = "Buttons",
	["Buttons/Chat window button options."] = "Chat window button options.",
	["Buttons/chatmenu_desc"] = "Toggles chat menu on and off.",
	["Buttons/chatmenu_name"] = "Show Chat Menu",
	["Buttons/Default"] = "Default",
	["Buttons/Right, Inside Frame"] = "Right, Inside Frame",
	["Buttons/Right, Outside Frame"] = "Right, Outside Frame",
	["Buttons/scrollReminder_desc"] = "Show reminder button when not at the bottom of a chat window.",
	["Buttons/scrollReminder_name"] = "Show ScrollDown Reminder",
	["Buttons/Set Position"] = "Set Position",
	["Buttons/Sets position of chat menu and arrows for all chat windows."] = "Sets position of chat menu and arrows for all chat windows.",
	["Buttons/Show Arrows"] = "Show Arrows",
	["Buttons/Show Chat%d Arrows"] = "Show Chat%d Arrows",
	["Buttons/showbnet_desc"] = "Show Social Menu",
	["Buttons/showbnet_name"] = "Show Social Menu",
	["Buttons/showmenu_desc"] = "Show Chat Menu",
	["Buttons/showmenu_name"] = "Show Menu",
	["Buttons/showminimize_desc"] = "Show Minimize Button",
	["Buttons/showminimize_name"] = "Show Minimize Button",
	["Buttons/Toggle showing chat arrows for each chat window."] = "Toggle showing chat arrows for each chat window.",
	["Buttons/Toggles navigation arrows on and off."] = "Toggles navigation arrows on and off.",
	["ChannelColorMemory/(%w+)%s?(.*)"] = "(%S+)%s?(.*)",
	["ChannelColorMemory/ChannelColorMemory"] = "ChannelColorMemory",
	["ChannelColorMemory/Remembers the colors of each channel name."] = "Remembers the colors of each channel name.",
	["ChannelNames/%s settings."] = "%s settings.",
	["ChannelNames/<string>"] = "<string>",
	["ChannelNames/Add Channel Abbreviation"] = "Add Channel Abbreviation",
	["ChannelNames/addnick_desc"] = "Adds an abbreviated channel name. Prefix the name with '#' to include the channel number. (e.g. '#Trade').",
	["ChannelNames/Blank"] = "Blank",
	["ChannelNames/chanlink_desc"] = "Make the channel a clickable link which opens chat to that channel.",
	["ChannelNames/chanlink_name"] = "Create Channel Link",
	["ChannelNames/Channel %d"] = "Channel %d",
	["ChannelNames/Channel name abbreviation options."] = "Channel name abbreviation options.",
	["ChannelNames/ChannelNames"] = "ChannelNames",
	["ChannelNames/channelnick_desc"] = "Channel Abbreviations",
	["ChannelNames/channelnick_name"] = "Channel Abbreviations",
	["ChannelNames/Clear Channel Abbreviation"] = "Clear Channel Abbreviation",
	["ChannelNames/Clears an abbreviated channel name."] = "Clears an abbreviated channel name.",
	["ChannelNames/colon_desc"] = "Toggle adding colon after channel replacement.",
	["ChannelNames/colon_name"] = "Show Colon",
	["ChannelNames/Dont display the channel/chat type name"] = "Dont display the channel/chat type name",
	["ChannelNames/otheropts_desc"] = "Additional channel formating options, and channel link controls.",
	["ChannelNames/otheropts_name"] = "Other Options",
	["ChannelNames/Remove Channel Abbreviation"] = "Remove Channel Abbreviation",
	["ChannelNames/Removes an an abbreviated channel name."] = "Removes an an abbreviated channel name.",
	["ChannelNames/Replace"] = "Replace",
	["ChannelNames/Set"] = "Set",
	["ChannelNames/space_desc"] = "Toggle adding space after channel replacement.",
	["ChannelNames/space_name"] = "Show Space",
	["ChannelNames/Toggle replacing this channel."] = "Toggle replacing this channel.",
	["ChannelNames/Use a custom replacement for the chat %s text."] = "Use a custom replacement for the chat %s text.",
	["ChannelSticky/Channel"] = "Channel",
	["ChannelSticky/ChannelSticky"] = "ChannelSticky",
	["ChannelSticky/Chat channel sticky options."] = "Chat channel sticky options.",
	["ChannelSticky/ChatType"] = "ChatType",
	["ChannelSticky/Per chat type options."] = "Per chat type options.",
	["ChannelSticky/smartgroup_desc"] = "Adds a /smart or /smrt command which automatically picks the correct type of chat, RAID, PARTY, or INSTANCE_CHAT",
	["ChannelSticky/smartgroup_name"] = "Smart Groups",
	["ChannelSticky/Sticky %s"] = "Sticky %s",
	["ChannelSticky/Sticky Per Chat Frame"] = "Sticky Per Chat Frame",
	["ChannelSticky/Toggle remembering the chat type last used per chat frame."] = "Toggle remembering the chat type last used per chat frame.",
	["ChannelSticky/Toggles sticky on and off for %s."] = "Toggles sticky on and off for %s.",
	["ChatLink/gem_desc"] = "Enable GEM Compatiblity Mode",
	["ChatLink/gem_name"] = "GEM Compatibility",
	["ChatLink/module_desc"] = "Chat channel item link options.",
	["ChatLink/module_info"] = "This module allows you to link items into non-trade chat channels ie. General, or private channels such as your class channel. To users without an addon capable of decoding it, it will look like spam, so be courteous",
	["ChatLink/module_name"] = "ChannelLinks",
	["ChatLink/Trade"] = "Trade",
	["ChatLog/A module to automaticaly enable chat and combat logging."] = "A module to automaticaly enable chat and combat logging.",
	["ChatLog/Chat log recorded to <WoW Installation>\\Logs\\WoWChatLog.txt only upon logout."] = "Chat log recorded to <WoW Installation>\\Logs\\WoWChatLog.txt only upon logout.",
	["ChatLog/Chat Log: Disabled"] = "Chat Log: Disabled",
	["ChatLog/Chat Log: Enabled"] = "Chat Log: Enabled",
	["ChatLog/ChatLog"] = "ChatLog",
	["ChatLog/Combat log recorded to <WoW Installation>\\Logs\\WoWCombatLog.txt only upon logout."] = "Combat log recorded to <WoW Installation>\\Logs\\WoWCombatLog.txt only upon logout.",
	["ChatLog/Combat Log: Disabled"] = "Combat Log: Disabled",
	["ChatLog/Combat Log: Enabled"] = "Combat Log: Enabled",
	["ChatLog/quiet_desc"] = "Dont display any messages when this mod is enabled, or when it changes the log settings.",
	["ChatLog/quiet_name"] = "Suppress Feedback Messages",
	["ChatLog/Toggle Chat Log"] = "Toggle Chat Log",
	["ChatLog/Toggle chat log on and off."] = "Toggle chat log on and off.",
	["ChatLog/Toggle Combat Log"] = "Toggle Combat Log",
	["ChatLog/Toggle combat log on and off."] = "Toggle combat log on and off.",
	["ChatTabs/Active Alpha"] = "Active Alpha",
	["ChatTabs/All"] = "All",
	["ChatTabs/Always"] = "Always",
	["ChatTabs/Chat window tab options."] = "Chat window tab options.",
	["ChatTabs/Default"] = "Default",
	["ChatTabs/disableflash_desc"] = "Disable flashing of the chat tabs.",
	["ChatTabs/disableflash_name"] = "Disable Flashing",
	["ChatTabs/Hidden"] = "Hidden",
	["ChatTabs/Individual"] = "Individual",
	["ChatTabs/Not Active Alpha"] = "Not Active Alpha",
	["ChatTabs/preventdrag_desc"] = "Prevent dragging chat tabs with mouse",
	["ChatTabs/preventdrag_name"] = "Prevent Dragging",
	["ChatTabs/Set ChatFrame%d Display Mode"] = "Set ChatFrame%d Display Mode",
	["ChatTabs/Set Display Mode"] = "Set Display Mode",
	["ChatTabs/Set tab display mode for each chat window."] = "Set tab display mode for each chat window. Checked (on), Unchecked (off), Greyed Check (default)",
	["ChatTabs/Set tab display to always, hidden or the Blizzard default."] = "Set tab display to always, hidden or the Blizzard default.",
	["ChatTabs/Sets alpha of chat tab for active chat frame."] = "Sets alpha of chat tab for active chat frame.",
	["ChatTabs/Sets alpha of chat tab for not active chat frame."] = "Sets alpha of chat tab for not active chat frame.",
	["ChatTabs/Tabs"] = "Tabs",
	["Clear/Adds clear text slash commands (/clear)(/cls)(/clearall)(/clsall)."] = "Adds clear text slash commands (/clear)(/cls)(/clearall)(/clsall).",
	["Clear/Clear"] = "Clear",
	["Clear/Clearall"] = "Clearall",
	["Clear/Clears all chat frames."] = "Clears all chat frames.",
	["Clear/Clears the current chat frame."] = "Clears the current chat frame.",
	["CopyChat/ Text"] = " Text",
	["CopyChat/BBCode"] = "BBCode",
	["CopyChat/BOTTOMLEFT"] = "Bottom, Left",
	["CopyChat/BOTTOMRIGHT"] = "Bottom, Right",
	["CopyChat/buttonpos_desc"] = "Where on the chatframe to show the copy button",
	["CopyChat/buttonpos_name"] = "Button Location",
	["CopyChat/ChatFrame"] = "ChatFrame",
	["CopyChat/Copy all of the text in the selected chat frame into an edit box"] = "Copy all of the text in the selected chat frame into an edit box",
	["CopyChat/Copy Text"] = "Copy Text",
	["CopyChat/Copy Text Format"] = "Copy Text Format",
	["CopyChat/Copy text from the active chat window."] = "Copy text from the active chat window.",
	["CopyChat/Copy To Editbox"] = "Copy To Editbox",
	["CopyChat/CopyChat"] = "CopyChat",
	["CopyChat/HTML"] = "HTML",
	["CopyChat/Message From : %s"] = "Message From : %s",
	["CopyChat/Plain"] = "Plain",
	["CopyChat/Should the copied text be plain, or formatted so you can see the colors."] = "Should the copied text be plain, or formatted so you can see the colors.",
	["CopyChat/showbutton_desc"] = "Show a button on the chatframe",
	["CopyChat/showbutton_name"] = "Copy Button",
	["CopyChat/TOPLEFT"] = "Top, Left",
	["CopyChat/TOPRIGHT"] = "Top, Right",
	["CopyChat/Wowace.com Forums"] = "Wowace.com Forums",
	["CustomFilters/<string>"] = "<string>",
	["CustomFilters/Add a pattern to search for."] = "Add a pattern to search for.",
	["CustomFilters/Add Pattern"] = "Add Pattern",
	["CustomFilters/Block Message"] = "Block Message",
	["CustomFilters/Channel Data"] = "Channel Data",
	["CustomFilters/Channel to send output text to."] = "Channel to send output text to.",
	["CustomFilters/Enabled"] = "Enabled",
	["CustomFilters/Extra data for WHISPER (target) and CHANNEL (channel name or num)"] = "Extra data for WHISPER (target) and CHANNEL (channel name or num)",
	["CustomFilters/Filter Name"] = "Filter Name",
	["CustomFilters/Forward"] = "Forward",
	["CustomFilters/Forward the message to a chat channel."] = "Forward the message to a chat channel.",
	["CustomFilters/Forward the message to a custom chat channel."] = "Output to a private chat channel",
	["CustomFilters/ForwardCustom"] = "ForwardCustom",
	["CustomFilters/ForwardMessage"] = "ForwardMessage",
	["CustomFilters/ForwardMessageCustom"] = "Private Channel",
	["CustomFilters/Hilight Color"] = "Hilight Color",
	["CustomFilters/Hilight Match Text"] = "Hilight Match Text",
	["CustomFilters/Inbound"] = "Inbound",
	["CustomFilters/inchannels_desc"] = "Search in certain channels",
	["CustomFilters/inchannels_name"] = "Search Channels",
	["CustomFilters/Is this pattern enabled for use?"] = "Is this pattern enabled for use?",
	["CustomFilters/Match Options"] = "Match Options",
	["CustomFilters/module_desc"] = "Module to support custom filters.",
	["CustomFilters/module_name"] = "CustomFilters",
	["CustomFilters/Only output the message portion of the chat text, leave out the channel, and playername etc."] = "Only output the message portion of the chat text, leave out the channel, and playername etc.",
	["CustomFilters/Outbound"] = "Outbound",
	["CustomFilters/Output Channel"] = "Output Channel",
	["CustomFilters/Output Message Only"] = "Output Message Only",
	["CustomFilters/Pattern Info"] = "Pattern Info",
	["CustomFilters/Pattern Options"] = "Pattern Options",
	["CustomFilters/Play a sound when this message is output to the chatframe"] = "Play a sound when this message is output to the chatframe",
	["CustomFilters/Play Sound"] = "Play Sound",
	["CustomFilters/Prevent the message from being displayed"] = "Prevent the message from being displayed",
	["CustomFilters/Remove an existing pattern."] = "Remove an existing pattern.",
	["CustomFilters/Remove Pattern"] = "Remove Pattern",
	["CustomFilters/Replacement Text"] = "Replacement Text",
	["CustomFilters/Search Format String"] = "Search Format String",
	["CustomFilters/Search Pattern"] = "Search Pattern",
	["CustomFilters/Secondary Output"] = "Secondary Output",
	["CustomFilters/Send to a secondary output"] = "Send to a secondary output",
	["CustomFilters/Supplied pattern is a format string instead of a pattern"] = "Supplied pattern is a format string instead of a pattern",
	["CustomFilters/Your name for this filter"] = "Your name for this filter",
	["Editbox/Attach edit box to..."] = "Attach edit box to...",
	["Editbox/Attach to..."] = "Attach to...",
	["Editbox/Background color"] = "Background color",
	["Editbox/Background Inset"] = "Background Inset",
	["Editbox/Background texture"] = "Background texture",
	["Editbox/Border color"] = "Border color",
	["Editbox/Border texture"] = "Border texture",
	["Editbox/Bottom"] = "Bottom",
	["Editbox/Color border by channel"] = "Color border by channel",
	["Editbox/currently_broken_alt_behavior"] = [=[Arrow key behaviour broken in current WoW client,

Use ALT-UP and ALT-DOWN instead of just UP DOWN to access history]=],
	["Editbox/Edge Size"] = "Edge Size",
	["Editbox/Editbox"] = "Editbox",
	["Editbox/Editbox options."] = "Editbox options.",
	["Editbox/Font"] = "Font",
	["Editbox/Free-floating"] = "Free-floating",
	["Editbox/Free-floating, Locked"] = "Free-floating, Locked",
	["Editbox/Requires the Alt key to be held down to move the cursor in chat"] = "Requires the Alt key to be held down to move the cursor in chat",
	["Editbox/Select the font to use for the edit box"] = "Select the font to use for the edit box",
	["Editbox/Sets the frame's border color to the color of your currently active channel"] = "Sets the frame's border color to the color of your currently active channel",
	["Editbox/Tile Size"] = "Tile Size",
	["Editbox/Top"] = "Top",
	["Editbox/Use Alt key for cursor movement"] = "Use Alt key for cursor movement",
	["EventNames/allevents_desc"] = "Enable Prat processing for all chat events.",
	["EventNames/allevents_name"] = "Process all events",
	["EventNames/Chat window event name options."] = "Chat window event name options.",
	["EventNames/EventNames"] = "EventNames",
	["EventNames/Show"] = "Show",
	["EventNames/Show events on chatframes"] = "Show events on chatframes",
	["EventNames/show_desc"] = "Toggle showing event names in each window.",
	["EventNames/show_name"] = "Show Event Names",
	["Fading/duration_desc"] = "Set the number of seconds to wait before before fading text of chat windows.",
	["Fading/duration_name"] = "Set Fading Delay (Seconds)",
	["Fading/module_desc"] = "Chat window text fading options.",
	["Fading/module_name"] = "Fading",
	["Fading/textfade_desc"] = "Toggle enabling text fading for each chat window.",
	["Fading/textfade_name"] = "Enable Fading",
	["Filtering/A module to provide basic chat filtering."] = "A module to provide basic chat filtering.",
	["Filtering/afkdnd_desc"] = "Throttle AFK and DND messages.",
	["Filtering/afkdnd_name"] = "Throttle AFK and DND messages.",
	["Filtering/bgjoin_desc"] = "Filter out channel Battleground leave/join spam",
	["Filtering/bgjoin_name"] = "Filter BG Leave/Join",
	["Filtering/Filtering"] = "Filtering",
	["Filtering/leavejoin_desc"] = "Filter out channel leave/join spam",
	["Filtering/leavejoin_name"] = "Filter Channel Leave/Join",
	["Filtering/notices_desc"] = "Filter out other custom channel notification messages, e.g. moderator changes.",
	["Filtering/notices_name"] = "Filter Channel Notices",
	["Filtering/tradespam_desc"] = "Throttle messages to prevent the same message from being repeated multiple times",
	["Filtering/tradespam_name"] = "Throttle Spam",
	["Font/Auto Restore Font Size"] = "Auto Restore Font Size",
	["Font/Chat window font options."] = "Chat window font options.",
	["Font/Font"] = "Font",
	["Font/monochrome_desc"] = "Toggles monochrome coloring of the font.",
	["Font/monochrome_name"] = "Toggle Monochrome",
	["Font/None"] = "None",
	["Font/Outline"] = "Outline",
	["Font/outlinemode_desc"] = "Sets mode for the outline around the font.",
	["Font/outlinemode_name"] = "Set Outline Mode",
	["Font/rememberfont_desc"] = "Remember your font choice and restore it at startup.",
	["Font/rememberfont_name"] = "Remember Font",
	["Font/Set ChatFrame%d Font Size"] = "Set ChatFrame%d Font Size",
	["Font/Set Font Face"] = "Set Font Face",
	["Font/Set Font Size"] = "Set Font Size",
	["Font/Set Separately"] = "Set Separately",
	["Font/Set text font size for each chat window."] = "Set text font size for each chat window.",
	["Font/Set text font size."] = "Set text font size.",
	["Font/Set the text font face for all chat windows."] = "Set the text font face for all chat windows.",
	["Font/shadowcolor_desc"] = "Set the color of the shadow effect.",
	["Font/shadowcolor_name"] = "Set Shadow Color",
	["Font/Thick Outline"] = "Thick Outline",
	["Font/Toggle setting options separately for each chat window."] = "Toggle setting options separately for each chat window.",
	["Font/Workaround a Blizzard bug which changes the font size when you open a system menu."] = "Workaround a Blizzard bug which changes the font size when you open a system menu.",
	["Frames/Chat window frame parameter options"] = "Chat window frame parameter options",
	["Frames/framealpha_desc"] = "Conrols the transparency of the chatframe when you hover over it with your mouse.",
	["Frames/framealpha_name"] = "Set Chatframe Alpha",
	["Frames/Frames"] = "Frames",
	["Frames/mainchatonload_desc"] = "Automatically select the first chat frame and make it active on load.",
	["Frames/mainchatonload_name"] = "Force Main Chat Frame On Load",
	["Frames/maxchatheight_desc"] = "Sets the maximum height for all chat windows.",
	["Frames/maxchatheight_name"] = "Set Maximum Height",
	["Frames/maxchatwidth_desc"] = "Sets the maximum width for all chat windows.",
	["Frames/maxchatwidth_name"] = "Set Maximum Width",
	["Frames/minchatheight_desc"] = "Sets the minimum height for all chat windows.",
	["Frames/minchatheight_name"] = "Set Minimum Height",
	["Frames/minchatwidth_desc"] = "Sets the minimum width for all chat windows.",
	["Frames/minchatwidth_name"] = "Set Minimum Width",
	["Frames/rememberframepositions_desc"] = "Remember the chatframe positions, and restore them on load",
	["Frames/rememberframepositions_name"] = "Remember Positions",
	["Frames/removeclamp_desc"] = "Allow the chatframe to be moved flush with the edge of the screen",
	["Frames/removeclamp_name"] = "Zero Clamp Size",
	["History/Chat history options."] = "Chat history options.",
	["History/Color GMOTD"] = "Color GMOTD",
	["History/Colors the GMOTD label"] = "Colors the GMOTD label",
	["History/delaygmotd_desc"] = "Delay GMOTD until after all the startup spam",
	["History/delaygmotd_name"] = "Delay GMOTD",
	["History/divider"] = "========== End of Scrollback ==========",
	["History/History"] = "History",
	["History/Maximum number of lines of command history to save."] = "Maximum number of lines of command history to save.",
	["History/Save Command History"] = "Save Command History",
	["History/Saves command history between sessions (for use with alt+up arrow or just the up arrow)"] = "Saves command history between sessions (for use with alt+up arrow or just the up arrow)",
	["History/Scrollback"] = "Scrollback",
	["History/Scrollback Options"] = "Scrollback Options",
	["History/scrollbacklen_desc"] = "Number of chatlines to save in the scrollback buffer.",
	["History/scrollbacklen_name"] = "Scrollback Length",
	["History/Set Chat Lines"] = "Set Chat Lines",
	["History/Set Command History"] = "Set Command History",
	["History/Set the number of lines of chat history for each window."] = "Set the number of lines of chat history for each window.",
	["History/Store the chat lines between sessions"] = "Store the chat lines between sessions",
	["KeyBindings/Channel %d"] = "Channel %d",
	["KeyBindings/Copy Selected Chat Frame"] = "Copy Selected Chat Frame",
	["KeyBindings/Guild Channel"] = "Guild Channel",
	["KeyBindings/Instance Channel"] = "Instance Channel",
	["KeyBindings/Next Chat Tab"] = "Next Chat Tab",
	["KeyBindings/Officer Channel"] = "Officer Channel",
	["KeyBindings/Party Channel"] = "Party Channel",
	["KeyBindings/Prat CopyChat"] = "Prat CopyChat",
	["KeyBindings/Prat Keybindings"] = "Prat Keybindings",
	["KeyBindings/Prat TellTarget"] = "Prat TellTarget",
	["KeyBindings/Raid Channel"] = "Raid Channel",
	["KeyBindings/Raid Warning Channel"] = "Raid Warning Channel",
	["KeyBindings/Say"] = "Say",
	["KeyBindings/Smart Group Channel"] = "Smart Group Channel",
	["KeyBindings/TellTarget"] = "TellTarget",
	["KeyBindings/Whisper"] = "Whisper",
	["KeyBindings/Yell"] = "Yell",
	["OriginalButtons/alpha_desc"] = "Sets alpha of chat menu and arrows for all chat windows.",
	["OriginalButtons/alpha_name"] = "Set Alpha",
	["OriginalButtons/buttonframe_desc"] = "Toggles the button frame menu on and off.",
	["OriginalButtons/buttonframe_name"] = "Show Button Frame",
	["OriginalButtons/ChannelNames"] = "ChannelNames",
	["OriginalButtons/Chat window button options."] = "Chat window button options.",
	["OriginalButtons/chatmenu_desc"] = "Toggles chat menu on and off.",
	["OriginalButtons/chatmenu_name"] = "Show Chat Menu",
	["OriginalButtons/Default"] = "Default",
	["OriginalButtons/Original Buttons"] = "Original Buttons",
	["OriginalButtons/reflow_desc"] = "Chatframe text should flow around the buttons not under them.",
	["OriginalButtons/reflow_name"] = "Text Flows Around",
	["OriginalButtons/reminder_desc"] = "Show reminder button when not at the bottom of a chat window.",
	["OriginalButtons/reminder_name"] = "Show ScrollDown Reminder",
	["OriginalButtons/Right, Inside Frame"] = "Right, Inside Frame",
	["OriginalButtons/Right, Outside Frame"] = "Right, Outside Frame",
	["OriginalButtons/Set Position"] = "Set Position",
	["OriginalButtons/Sets position of chat menu and arrows for all chat windows."] = "Sets position of chat menu and arrows for all chat windows.",
	["OriginalButtons/Show Arrows"] = "Show Arrows",
	["OriginalButtons/Show Chat%d Arrows"] = "Show Chat%d Arrows",
	["OriginalButtons/Toggle showing chat arrows for each chat window."] = "Toggle showing chat arrows for each chat window.",
	["OriginalButtons/Toggles navigation arrows on and off."] = "Toggles navigation arrows on and off.",
	["OriginalEditbox/Autohide"] = "Autohide",
	["OriginalEditbox/BACKGROUND"] = "BACKGROUND",
	["OriginalEditbox/Bar colour"] = "Bar colour",
	["OriginalEditbox/Border colour"] = "Border colour",
	["OriginalEditbox/Border width"] = "Border width",
	["OriginalEditbox/Bottom"] = "Bottom",
	["OriginalEditbox/Click the edit box to open it up for editing. Only available if Autohide is disabled."] = "Click the edit box to open it up for editing. Only available if Autohide is disabled.",
	["OriginalEditbox/Clickable"] = "Clickable",
	["OriginalEditbox/DIALOG"] = "DIALOG",
	["OriginalEditbox/Editbox options."] = "Editbox options.",
	["OriginalEditbox/Enable Arrowkeys"] = "Enable Arrowkeys",
	["OriginalEditbox/Enable using arrowkeys in editbox without the alt key."] = "Enable using arrowkeys in editbox without the alt key.",
	["OriginalEditbox/Hide Border"] = "Hide Border",
	["OriginalEditbox/Hide the border around the edit box."] = "Hide the border around the edit box.",
	["OriginalEditbox/Hide the edit box after you have pressed enter."] = "Hide the edit box after you have pressed enter.",
	["OriginalEditbox/HIGH"] = "HIGH",
	["OriginalEditbox/Lock editbox position if undocked."] = "Lock editbox position if undocked.",
	["OriginalEditbox/Lock Position"] = "Lock Position",
	["OriginalEditbox/LOW"] = "LOW",
	["OriginalEditbox/MEDIUM"] = "MEDIUM",
	["OriginalEditbox/OriginalEditbox"] = "OriginalEditbox",
	["OriginalEditbox/Padding"] = "Padding",
	["OriginalEditbox/Set Alpha"] = "Set Alpha",
	["OriginalEditbox/Set Position"] = "Set Position",
	["OriginalEditbox/Set Strata"] = "Set Strata",
	["OriginalEditbox/Set the alpha of the editbox."] = "Set the alpha of the editbox.",
	["OriginalEditbox/Set the amount of padding inside the edit box"] = "Set the amount of padding inside the edit box",
	["OriginalEditbox/Set the edit box background colour"] = "Set the edit box background colour",
	["OriginalEditbox/Set the edit box border colour"] = "Set the edit box border colour",
	["OriginalEditbox/Set the frame strata of the editbox."] = "Set the frame strata of the editbox.",
	["OriginalEditbox/Set the position of the editbox."] = "Set the position of the editbox.",
	["OriginalEditbox/Set the texture of the chat edit box"] = "Set the texture of the chat edit box",
	["OriginalEditbox/Set the width of the edit box's border"] = "Set the width of the edit box's border",
	["OriginalEditbox/Set the width of the editbox."] = "Set the width of the editbox.",
	["OriginalEditbox/Set Width (NB: only enabled if the editbox is undocked)"] = "Set Width (NB: only enabled if the editbox is undocked)",
	["OriginalEditbox/Texture"] = "Texture",
	["OriginalEditbox/Top"] = "Top",
	["OriginalEditbox/Undocked"] = "Undocked",
	["Paragraph/adjustlinks_desc"] = "Adjust links to restore clickability on centered or right-aligned text.",
	["Paragraph/adjustlinks_name"] = "Fix placement of player/item links",
	["Paragraph/Center"] = "Center",
	["Paragraph/Chat window paragraph options."] = "Chat window paragraph options.",
	["Paragraph/justification_desc"] = "Set horizontal alignment for each chat window",
	["Paragraph/justification_name"] = "Set Alignment",
	["Paragraph/Left"] = "Left",
	["Paragraph/Line Spacing"] = "Line Spacing",
	["Paragraph/Paragraph"] = "Paragraph",
	["Paragraph/Right"] = "Right",
	["Paragraph/Set the line spacing for all chat windows."] = "Set the line spacing for all chat windows.",
	["PlayerNames/Actively Query Player Info"] = "Actively Query Player Info",
	["PlayerNames/Angled"] = "Angled",
	["PlayerNames/Brackets"] = "Brackets",
	["PlayerNames/Brackets Common Color"] = "Brackets Common Color",
	["PlayerNames/Brackets Use Common Color"] = "Brackets Use Common Color",
	["PlayerNames/Class"] = "Class",
	["PlayerNames/Color by Level Difference"] = "Color by Level Difference",
	["PlayerNames/coloreverywhere_desc"] = "Color player names if they appear in the text of the chat message",
	["PlayerNames/coloreverywhere_name"] = "Color Names Everywhere",
	["PlayerNames/Enable Alt-Invite"] = "Enable Alt-Invite",
	["PlayerNames/Enable Invite Links"] = "Enable Invite Links",
	["PlayerNames/Enable TabComplete"] = "Enable TabComplete",
	["PlayerNames/hoverhilight_desc"] = "Hilight chat lines from a specific player when hovering over thier playerlink",
	["PlayerNames/hoverhilight_name"] = "Hover Hilighting",
	["PlayerNames/How to color other player's level."] = "How to color other player's level.",
	["PlayerNames/How to color player's name."] = "How to color player's name.",
	["PlayerNames/Keep Info"] = "Keep Info",
	["PlayerNames/Keep Lots Of Info"] = "Keep Lots Of Info",
	["PlayerNames/Keep player information between session for all players except cross-server players"] = "Keep player information between session for all players except cross-server players",
	["PlayerNames/Keep player information between session, but limit it to friends and guild members."] = "Keep player information between session, but limit it to friends and guild members.",
	["PlayerNames/Let TasteTheNaimbow set the common color for unknown player names."] = "Let TasteTheNaimbow set the common color for unknown player names.",
	["PlayerNames/Level Color Mode"] = "Level Color Mode",
	["PlayerNames/linkifycommon_desc"] = "Linkify Common Messages",
	["PlayerNames/linkifycommon_name"] = "Linkify Common Messages",
	["PlayerNames/No additional coloring"] = "No additional coloring",
	["PlayerNames/None"] = "None",
	["PlayerNames/Player Color Mode"] = "Player Color Mode",
	["PlayerNames/Player name formating options."] = "Player name formating options.",
	["PlayerNames/PlayerNames"] = "PlayerNames",
	["PlayerNames/Prat_Playernames: Stored Player Data Cleared"] = "Prat_Playernames: Stored Player Data Cleared",
	["PlayerNames/Query the server for all player names we do not know. Note: This happpens pretty slowly, and this data is not saved."] = "Query the server for all player names we do not know. Note: This happpens pretty slowly, and this data is not saved.",
	["PlayerNames/Random"] = "Random",
	["PlayerNames/realidcolor_desc"] = "RealID Name Coloring",
	["PlayerNames/realidcolor_name"] = "RealID Coloring",
	["PlayerNames/Reset Settings"] = "Reset Settings",
	["PlayerNames/Restore default settings, and delete stored character data."] = "Restore default settings, and delete stored character data.",
	["PlayerNames/Set common color of unknown player names."] = "Set common color of unknown player names.",
	["PlayerNames/Sets common color of brackets to use around player names."] = "Sets common color of brackets to use around player names.",
	["PlayerNames/Sets style of brackets to use around player names."] = "Sets style of brackets to use around player names.",
	["PlayerNames/Show Group"] = "Show Group",
	["PlayerNames/Show Level"] = "Show Level",
	["PlayerNames/Show Raid Target Icon"] = "Show Raid Target Icon",
	["PlayerNames/Square"] = "Square",
	["PlayerNames/Tab completion : "] = "Tab completion : ",
	["PlayerNames/tabcomplete_name"] = "Possible Names",
	["PlayerNames/Toggle group invites by alt-clicking hyperlinked keywords like 'invite'."] = "Toggle group invites by alt-clicking hyperlinked keywords like 'invite'.",
	["PlayerNames/Toggle group invites by alt-clicking on player name."] = "Toggle group invites by alt-clicking on player name.",
	["PlayerNames/Toggle level showing."] = "Toggle level showing.",
	["PlayerNames/Toggle raid group showing."] = "Toggle raid group showing.",
	["PlayerNames/Toggle showing the raid target icon which is currently on the player."] = "Toggle showing the raid target icon which is currently on the player.",
	["PlayerNames/Toggle tab completion of player names."] = "Toggle tab completion of player names.",
	["PlayerNames/Toggle using a common color for brackets around player names."] = "Toggle using a common color for brackets around player names.",
	["PlayerNames/Toggle using a common color for unknown player names."] = "Toggle using a common color for unknown player names.",
	["PlayerNames/Too many matches (%d possible)"] = "Too many matches (%d possible)",
	["PlayerNames/Unknown Common Color"] = "Unknown Common Color",
	["PlayerNames/Unknown Common Color From TasteTheNaimbow"] = "Unknown Common Color From TasteTheNaimbow",
	["PlayerNames/Unknown Use Common Color"] = "Unknown Use Common Color",
	["PlayerNames/Use Channel Color"] = "Use Channel Color",
	["PlayerNames/Use Player Color"] = "Use Player Color",
	["PlayerNames/Use toon name for RealID"] = "Use toon name for RealID",
	["PopupMessage/Add Nickname"] = "Add Nickname",
	["PopupMessage/Adds an alternate name to show in popups."] = "Adds an alternate name to show in popups.",
	["PopupMessage/Clear Nickname"] = "Clear Nickname",
	["PopupMessage/Clears alternate name to show in popups."] = "Clears alternate name to show in popups.",
	["PopupMessage/framealpha_desc"] = "Set the alpha value of the popup frame when fully faded in.",
	["PopupMessage/framealpha_name"] = "Popup Frame Alpha",
	["PopupMessage/Popup"] = "Popup",
	["PopupMessage/PopupMessage"] = "PopupMessage",
	["PopupMessage/Remove Nickname"] = "Remove Nickname",
	["PopupMessage/Removes an alternate name to show in popups."] = "Removes an alternate name to show in popups.",
	["PopupMessage/Set Separately"] = "Set Separately",
	["PopupMessage/Show All Popups"] = "Show All Popups",
	["PopupMessage/Show Popups"] = "Show Popups",
	["PopupMessage/Show Popups for all chat windows."] = "Show Popups for all chat windows.",
	["PopupMessage/Show Popups for each window."] = "Show Popups for each window.",
	["PopupMessage/show_desc"] = "Show Popups for each window.",
	["PopupMessage/show_name"] = "Show Popups",
	["PopupMessage/show_perframedesc"] = "Toggles showing popups on and off.",
	["PopupMessage/show_perframename"] = "Show ChatFrame%d Popups",
	["PopupMessage/showall_desc"] = "Show Popups for all chat windows.",
	["PopupMessage/showall_name"] = "Show All Popups",
	["PopupMessage/Shows messages in a popup window."] = "Shows messages in a popup window.",
	["PopupMessage/Shows messages with your name in a popup."] = "Shows messages with your name in a popup.",
	["PopupMessage/Toggle setting options separately for each chat window."] = "Toggle setting options separately for each chat window.",
	["Scroll/Bottom"] = "Bottom to top",
	["Scroll/Chat window scrolling options."] = "Chat window scrolling options.",
	["Scroll/Control whether text is added to the frame at the top or the bottom."] = "Control whether text is added to the frame at the top or the bottom.",
	["Scroll/lowdown_desc"] = "Toggle auto jumping to the bottom for each chat window.",
	["Scroll/lowdown_name"] = "Enable TheLowDown",
	["Scroll/modified_speed"] = "Set Shift+MouseWheel Speed",
	["Scroll/modified_speed_desc"] = "Set number of lines mousewheel will scroll when shift is pressed.",
	["Scroll/mousewheel_desc"] = "Toggle mousewheel support for each chat window.",
	["Scroll/mousewheel_name"] = "Enable MouseWheel",
	["Scroll/Scroll"] = "Scroll",
	["Scroll/Set Ctrl+MouseWheel Speed"] = "Set Ctrl+MouseWheel Speed",
	["Scroll/Set MouseWheel Speed"] = "Set MouseWheel Speed",
	["Scroll/Set number of lines mousewheel will scroll when ctrl is pressed."] = "Set number of lines mousewheel will scroll when ctrl is pressed.",
	["Scroll/Set number of lines mousewheel will scroll."] = "Set number of lines mousewheel will scroll.",
	["Scroll/Set TheLowDown Delay"] = "Set TheLowDown Delay",
	["Scroll/Set time to wait before jumping to the bottom of chat windows."] = "Set time to wait before jumping to the bottom of chat windows.",
	["Scroll/Text scroll direction"] = "Text scroll direction",
	["Scroll/Top"] = "Top to bottom",
	["Scrollback/divider"] = "========== End of Scrollback ==========",
	["Scrollback/Scrollback"] = "Scrollback",
	["Scrollback/Store the chat lines between sessions"] = "Store the chat lines between sessions",
	["Search/err_notfound"] = "Not Found",
	["Search/err_tooshort"] = "Search term is too short",
	["Search/find_results"] = "Find Results:",
	["Search/module_desc"] = "Adds the ability to search the chatframes.",
	["Search/module_info"] = [=[This module adds the /find and /findall commands to search the chat history

Usage:

 /find <text> 

 /findall <text>]=],
	["Search/module_name"] = "Search",
	["ServerNames/autoabbreviate_desc"] = "Shorten the server name to 3 letters",
	["ServerNames/autoabbreviate_name"] = "Auto-abbreviate",
	["ServerNames/colon_desc"] = "Toggle adding colon after server replacement.",
	["ServerNames/colon_name"] = "Show Colon",
	["ServerNames/randomclr_desc"] = "Use a random color for each server.",
	["ServerNames/randomclr_name"] = "Random Colors",
	["ServerNames/Server name abbreviation options."] = "Server name abbreviation options.",
	["ServerNames/ServerNames"] = "ServerNames",
	["Sounds/A module to play sounds on certain chat messages."] = "A module to play sounds on certain chat messages.",
	["Sounds/Add a custom channel"] = "Add a custom channel",
	["Sounds/bn_whisper_desc"] = "Sound for %s Battle.Net whisper messages",
	["Sounds/bn_whisper_name"] = "Battle.Net Whisper",
	["Sounds/Custom Channels"] = "Custom Channels",
	["Sounds/group_lead_desc"] = "Sound for %s raid leader, party leader or dungeon guide messages",
	["Sounds/group_lead_name"] = "Group Leader",
	["Sounds/guild_desc"] = "Sound for %s guild messages",
	["Sounds/guild_name"] = "Guild",
	["Sounds/incoming"] = "incoming",
	["Sounds/Incoming Sounds"] = "Incoming Sounds",
	["Sounds/officer_desc"] = "Sound for %s officer channel messages",
	["Sounds/officer_name"] = "Officer",
	["Sounds/outgoing"] = "outgoing",
	["Sounds/Outgoing Sounds"] = "Outgoing Sounds",
	["Sounds/party_desc"] = "Sound for %s party messages",
	["Sounds/party_name"] = "Party",
	["Sounds/Play a sound for a certain channel name (can be a substring)"] = "Play a sound for a certain channel name (can be a substring)",
	["Sounds/raid_desc"] = "Sound for %s raid or battleground group/leader messages",
	["Sounds/raid_name"] = "Raid",
	["Sounds/Remove a custom channel"] = "Remove a custom channel",
	["Sounds/Reset settings"] = "Reset settings",
	["Sounds/Restore default settings and resets custom channel list"] = "Restore default settings and resets custom channel list",
	["Sounds/Sound selection for incoming chat messages"] = "Sound selection for incoming chat messages",
	["Sounds/Sound selection for outgoing (from you) chat messages"] = "Sound selection for outgoing (from you) chat messages",
	["Sounds/Sounds"] = "Sounds",
	["Sounds/whisper_desc"] = "Sound for %s whisper messages",
	["Sounds/whisper_name"] = "Whisper",
	["Substitutions/%d total user defined substitutions"] = "%d total user defined substitutions",
	["Substitutions/|cffff0000warning:|r subtitution \"%s\" already defined as \"%s\", overwriting"] = "|cffff0000warning:|r subtitution \"%s\" already defined as \"%s\", overwriting",
	["Substitutions/<noguild>"] = "<noguild>",
	["Substitutions/<notarget>"] = "<notarget>",
	["Substitutions/A module to provide basic chat substitutions."] = "A module to provide basic chat substitutions.",
	["Substitutions/Are you sure - this will delete all user defined substitutions and reset defaults?"] = "Are you sure - this will delete all user defined substitutions and reset defaults?",
	["Substitutions/Are you sure?"] = "Are you sure?",
	["Substitutions/can't find substitution index for a substitution named '%s'"] = "can't find substitution index for a substitution named '%s'",
	["Substitutions/current-prompt"] = [=[Current value: '%s' 
Click to paste into the chat.]=],
	["Substitutions/defined %s: expands to => %s"] = "defined %s: expands to => %s",
	["Substitutions/Delete all"] = "Delete all",
	["Substitutions/Delete substitution"] = "Delete substitution",
	["Substitutions/Deletes a user defined substitution"] = "Deletes a user defined substitution",
	["Substitutions/Deletes all user defined substitutions"] = "Deletes all user defined substitutions",
	["Substitutions/female"] = "female",
	["Substitutions/her"] = "her",
	["Substitutions/hers"] = "hers",
	["Substitutions/him"] = "him",
	["Substitutions/his"] = "his",
	["Substitutions/it"] = "it",
	["Substitutions/its"] = "its",
	["Substitutions/List of available substitutions"] = "List of available substitutions",
	["Substitutions/List of available substitutions defined by this module. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "List of available substitutions defined by this module. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)",
	["Substitutions/List substitutions"] = "List substitutions",
	["Substitutions/Lists all current subtitutions in the default chat frame"] = "Lists all current subtitutions in the default chat frame",
	["Substitutions/male"] = "male",
	["Substitutions/MapLoc"] = "MapLoc",
	["Substitutions/MapPos"] = "MapPos",
	["Substitutions/MapXPos"] = "MapXPos",
	["Substitutions/MapYPos"] = "MapYPos",
	["Substitutions/MapZone"] = "MapZone",
	["Substitutions/module:buildUserSubsIndex(): warning: module patterns not defined!"] = "module:buildUserSubsIndex(): warning: module patterns not defined!",
	["Substitutions/MouseoverTargetName"] = "MouseoverTargetName",
	["Substitutions/NO MATCHFUNC FOUND"] = "NO MATCHFUNC FOUND",
	["Substitutions/no substitution name given"] = "no substitution name given",
	["Substitutions/no substitution name supplied for deletion"] = "no substitution name supplied for deletion",
	["Substitutions/no user defined subs found"] = "no user defined subs found",
	["Substitutions/no value given for subtitution \"%s\""] = "no value given for subtitution \"%s\"",
	["Substitutions/Options for setting and removing user defined substitutions. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "Options for setting and removing user defined substitutions. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)",
	["Substitutions/PlayerAverageItemLevel"] = "PlayerAverageItemLevel",
	["Substitutions/PlayerCurrentMana"] = "PlayerCurrentMana",
	["Substitutions/PlayerHealthDeficit"] = "PlayerHealthDeficit",
	["Substitutions/PlayerHP"] = "PlayerHP",
	["Substitutions/PlayerManaDeficit"] = "PlayerManaDeficit",
	["Substitutions/PlayerMaxHP"] = "PlayerMaxHP",
	["Substitutions/PlayerMaxMana"] = "PlayerMaxMana",
	["Substitutions/PlayerName"] = "PlayerName",
	["Substitutions/PlayerPercentHP"] = "PlayerPercentHP",
	["Substitutions/PlayerPercentMana"] = "PlayerPercentMana",
	["Substitutions/RandNum"] = "RandNum",
	["Substitutions/removing user defined substitution \"%s\"; previously expanded to => \"%s\""] = "removing user defined substitution \"%s\"; previously expanded to => \"%s\"",
	["Substitutions/Set substitution"] = "Set substitution",
	["Substitutions/Set the value of a user defined substitution (NB: this may be the same as an existing default substitution; to reset it to the default, just remove the user created definition)."] = "Set the value of a user defined substitution (NB: this may be the same as an existing default substitution; to reset it to the default, just remove the user created definition).",
	["Substitutions/subname -- NOTE: sub name without the prefix '%'"] = "subname -- NOTE: sub name without the prefix '%'",
	["Substitutions/subname = text after expansion -- NOTE: sub name without the prefix \"%\""] = "subname = text after expansion -- NOTE: sub name without the prefix \"%\"",
	["Substitutions/substitution: %s defined as => %s"] = "substitution: %s defined as => %s",
	["Substitutions/Substitutions"] = "Substitutions",
	["Substitutions/TargetClass"] = "TargetClass",
	["Substitutions/TargetGender"] = "TargetGender",
	["Substitutions/TargetGuild"] = "TargetGuild",
	["Substitutions/TargetHealth"] = "TargetHealth",
	["Substitutions/TargetHealthDeficit"] = "TargetHealthDeficit",
	["Substitutions/TargetIcon"] = "TargetIcon",
	["Substitutions/TargetLevel"] = "TargetLevel",
	["Substitutions/TargetManaDeficit"] = "TargetManaDeficit",
	["Substitutions/TargetName"] = "TargetName",
	["Substitutions/TargetPercentHP"] = "TargetPercentHP",
	["Substitutions/TargetPossesive"] = "TargetPossesive",
	["Substitutions/TargetPronoun"] = "TargetPronoun",
	["Substitutions/TargetRace"] = "TargetRace",
	["Substitutions/TargetTargetName"] = "TargetTargetName",
	["Substitutions/unknown sex"] = "unknown sex",
	["Substitutions/user defined substition \"%s\" not found"] = "user defined substition \"%s\" not found",
	["Substitutions/User defined substitutions"] = "User defined substitutions",
	["Substitutions/user substitutions index (usersubs_idx) doesn't exist! oh dear."] = "user substitutions index (usersubs_idx) doesn't exist! oh dear.",
	["Substitutions/usersub_"] = "usersub_",
	["TellTarget//tt"] = "/tt",
	["TellTarget/Adds telltarget slash command (/tt)."] = "Adds telltarget slash command (/tt).",
	["TellTarget/No target selected."] = "No target selected.",
	["TellTarget/NoTarget"] = "NoTarget",
	["TellTarget/Target does not exist."] = "Target does not exist.",
	["TellTarget/Target is not a player."] = "Target is not a player.",
	["TellTarget/TellTarget"] = "TellTarget",
	["Timestamps/Chat window timestamp options."] = "Chat window timestamp options.",
	["Timestamps/colortimestamp_desc"] = "Toggle coloring the timestamp on and off.",
	["Timestamps/colortimestamp_name"] = "Color Timestamp",
	["Timestamps/Format All Timestamps"] = "Format All Timestamps",
	["Timestamps/HH:MM (12-hour)"] = "HH:MM (12-hour)",
	["Timestamps/HH:MM (24-hour)"] = "HH:MM (24-hour)",
	["Timestamps/HH:MM:SS (12-hour)"] = "HH:MM:SS (12-hour)",
	["Timestamps/HH:MM:SS (24-hour)"] = "HH:MM:SS (24-hour)",
	["Timestamps/HH:MM:SS AM (12-hour)"] = "HH:MM:SS AM (12-hour)",
	["Timestamps/localtime_desc"] = "Toggle using local time on and off.",
	["Timestamps/localtime_name"] = "Use Local Time",
	["Timestamps/MM:SS"] = "MM:SS",
	["Timestamps/Post-Timestamp"] = "Post-Timestamp",
	["Timestamps/Pre-Timestamp"] = "Pre-Timestamp",
	["Timestamps/Set the timestamp format"] = "Set the timestamp format",
	["Timestamps/Set Timestamp Color"] = "Set Timestamp Color",
	["Timestamps/Sets the color of the timestamp."] = "Sets the color of the timestamp.",
	["Timestamps/Show Timestamp"] = "Show Timestamp",
	["Timestamps/show_desc"] = "Toggle showing timestamp on and off for each window.",
	["Timestamps/show_name"] = "Show Timestamp",
	["Timestamps/space_desc"] = "Toggle adding space after timestamp on and off.",
	["Timestamps/space_name"] = "Show Space",
	["Timestamps/Timestamps"] = "Timestamps",
	["Timestamps/Toggle showing timestamp for each window."] = "Toggle showing timestamp for each window.",
	["Timestamps/twocolumn_desc"] = "Place the timestamps in a separate column so the text does not wrap underneath them",
	["Timestamps/twocolumn_name"] = "2 Column Chat",
	["UrlCopy/Change the color of the URL."] = "Change the color of the URL.",
	["UrlCopy/Color URL"] = "Color URL",
	["UrlCopy/Set Color"] = "Set Color",
	["UrlCopy/Show Brackets"] = "Show Brackets",
	["UrlCopy/Toggle"] = "Toggle",
	["UrlCopy/Toggle showing brackets on and off."] = "Toggle showing brackets on and off.",
	["UrlCopy/Toggle the module on and off."] = "Toggle the module on and off.",
	["UrlCopy/Toggle the URL color on and off."] = "Toggle the URL color on and off.",
	["UrlCopy/URL formating options."] = "URL formating options.",
	["UrlCopy/UrlCopy"] = "UrlCopy",
	["UrlCopy/Use Popup"] = "Use Popup",
	["UrlCopy/Use popup window to show URL."] = "Use popup window to show URL."
}

PL:AddLocale(nil, "enUS",L)


L=
{
	["display_desc"] = "Comportement et apparence de la fenêtre de discussion.",
	["display_name"] = "Options d'affichage",
	["extras_desc"] = "Modules divers",
	["extras_name"] = "Suppléments",
	["formatting_desc"] = "Apparence des lignes et du texte",
	["formatting_name"] = "Formatage du texte",
	["load_desc"] = "Contrôle le comportement de chargement de ce module.",
	["load_disabled"] = "Désactivé",
	["load_disabledonrestart"] = "Désactivé (recharger)",
	["load_enabled"] = "Activé",
	["load_enabledonrestart"] = "Activé (recharger)",
	["load_no"] = "Ne pas charger",
	["modulecontrol_desc"] = "Contrôler le chargement et l'activation des modules de Prat",
	["modulecontrol_name"] = "Contrôle des modules",
	["prat"] = "Prat",
	["reload_required"] = "Le nouveau paramètre de cette option ne prendra pas effet intégralement tant que vous n'aurez pas %s votre interface.",
	--Translation missing 
	-- ["AddonMsgs/Addon message options."] = "",
	--Translation missing 
	-- ["AddonMsgs/AddonMsgs"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_desc"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_name"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_perframedesc"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_perframename"] = "",
	["Alias/ - list all aliases; supply <keyword> to search for matching aliases (cmd aliases: /listallaliases)"] = "- liste tous les alias ; fournissez un <mot clé> pour trouver une correspondance d'alias (cmd alias: /listallaliases)",
	["Alias/%s() called with blank string!"] = "%s() appelé avec un argument vide !",
	["Alias/%s() called with nil argument!"] = "%s() appelé sans argument !",
	["Alias//%s aliased to \"/%s\""] = "/%s défini comme alias de \"/%s\"",
	["Alias//%s aliased to: /%s"] = "/%s défini comme alias de : /%s",
	["Alias/<alias> - remove the alias <alias> (cmd aliases: /delalias, /remalias)"] = "<alias> - Enlever l'alias <alias> (cmd des alias: /delalias, /remalias)",
	["Alias/<command>[ <value>] - alias <command> to be executed as <value>, or return the value of the currently defined alias for <command> if <command> has not been assigned a value. eg: \"/alias /examplehello /say hello there\" - typing \"/examplehello\" will now cause your character to say \"hello there\"; \"/alias examplehello\" - s \"/examplehello is aliased to /say hello there\" (cmd aliases: /addalias)"] = "<commande>[ <valeur> ] - Créé un alias <commande> exécuté comme <valeur>. si <commande> n'a pas de valeur assigné, retourne la valeur de l'alias actuellement définit pour <commande>. Ex: \"/alias /examplebonjour /dire Bonjour à tous\" - Taper \"/exemplebonjour\" fera alors dire \"Bonjour à tous\" à votre personnage; \"/alias examplehello\" fera dire \"/examplebonjour est un alias pour /dire Bonjour à tous\" (cmd des alias : /addalias)",
	["Alias/<keyword> - finds all aliases matching <keyword> (cmd aliases: /findalias)"] = "<motclé> - Trouve tout les alias avec <motclé> (cmd des alias /findalias)",
	["Alias/add"] = "ajouter",
	["Alias/add an alias"] = "ajouter un alias",
	["Alias/alias \"/%s\" does not exist"] = "l'alias \"/%s\" n'existe pas",
	["Alias/dealiasing command /%s to /%s"] = "Enlever l'alias de la commande /%s vers /%s",
	["Alias/deleting alias \"/%s\" (previously aliased as \"/%s\")"] = "Supprimer l'alias \"/%s\" (Précédemment l'alias de \"/%s\")",
	["Alias/Display extra information in the chat frame when commands are dealiased"] = "Afficher des informations supplémentaires dans le chat quand des alias de commandes sont supprimés",
	["Alias/Don't overwrite existing aliases when using /addalias"] = "Ne pas écraser les alias existant avec /addalias",
	["Alias/Expand aliases as you are typing"] = "Agrandir les alias au fur et à mesure que vous tapez ",
	["Alias/find aliases matching a given search term"] = "Trouver des alias correspondant à un terme recherché",
	["Alias/findaliases"] = "TrouverAlias",
	["Alias/infinite loop detected for alias /%s - ignoring"] = "Boucle infinie détectée pour l'alias /%s - ignorée",
	["Alias/inline"] = "en ligne",
	["Alias/list all aliases"] = "Lister tout les alias",
	["Alias/listaliases"] = "ListerAlias",
	["Alias/matching aliases found: %d"] = "Alias correspondant trouvés: %d",
	["Alias/module_desc"] = "Ajoute la commande /alias qui peut être utilisé pour créer des alias de commandes slash de façon similaire aux commandes d'alias d'UNIX",
	["Alias/module_name"] = "Alias",
	["Alias/No aliases have been defined"] = "Aucun alias n'a été défini",
	["Alias/noclobber"] = "NePasÉcraser",
	["Alias/noclobber set - skipping new alias: /%s already expands to /%s"] = "NePasÉcraser défini - Passer le nouvel alias: /%s déjà étendu à /%s",
	["Alias/Options"] = "Options",
	["Alias/Options for altering the behaviour of Alias"] = "Options pour modifier le comportement des alias",
	["Alias/overwriting existing alias \"/%s\" (was aliased to \"/%s\")"] = "Écraser l'alias existant \"/%s\" (Était l'alias de \"/%s\")  ",
	["Alias/refusing to alias \"/%s\" to anything in the interests of Not Buggering Everything Up"] = "Refuser à l'alias \"/%s\" de faire quoi que ce soit dans l'intérêt de ne pas tout bugger par dessus",
	["Alias/remove an alias"] = "Supprimer un alias",
	["Alias/There is no alias current defined for \"%s\""] = "Il n'y a pas d'alias actuellement défini pour \"%s\"",
	["Alias/total aliases: %d"] = "Alias totaux : %d",
	["Alias/tried to show value for alias \"%s\" but undefined in module.Aliases!"] = "A tenté de montrer la valeur de l'alias \"%s\" mais il était indéfini dans le module Alias!",
	["Alias/unalias"] = "Enlever l'alias",
	["Alias/verbose"] = "détaillé",
	["Alias/warnUser() called with nil argument!"] = "warnUser() appelé avec un argument nul !",
	["Alias/warnUser() called with zero length string!"] = "warnUser() appelé avec un chaine de longueur zéro !",
	--Translation missing 
	-- ["AltNames/%d alts found for %s: %s"] = "",
	--Translation missing 
	-- ["AltNames/%s alts imported from LOKWhoIsWho"] = "",
	--Translation missing 
	-- ["AltNames/%s total alts linked to mains"] = "",
	--Translation missing 
	-- ["AltNames/(.-)'s? [Aa]lt"] = "",
	--Translation missing 
	-- ["AltNames/([^%s%p%d%c%z]+)'s alt"] = "",
	--Translation missing 
	-- ["AltNames/.*[Aa]lts?$"] = "",
	--Translation missing 
	-- ["AltNames/<alt name> (eg, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)"] = "",
	--Translation missing 
	-- ["AltNames/<main> (eg /altnames listalts Fin)"] = "",
	--Translation missing 
	-- ["AltNames/<search term> (eg, /altnames find fin)"] = "",
	--Translation missing 
	-- ["AltNames/Alt"] = "",
	--Translation missing 
	-- ["AltNames/alt"] = "",
	--Translation missing 
	-- ["AltNames/alt name exists: %s -> %s; not overwriting as set in preferences"] = "",
	--Translation missing 
	-- ["AltNames/AltNames"] = "",
	--Translation missing 
	-- ["AltNames/Alts:"] = "",
	--Translation missing 
	-- ["AltNames/autoguildalts_desc"] = "",
	--Translation missing 
	-- ["AltNames/autoguildalts_name"] = "",
	--Translation missing 
	-- ["AltNames/Be quiet"] = "",
	--Translation missing 
	-- ["AltNames/character removed: %s"] = "",
	--Translation missing 
	-- ["AltNames/Class colour"] = "",
	--Translation missing 
	-- ["AltNames/Clear all"] = "",
	--Translation missing 
	-- ["AltNames/Clear all links between alts and main names."] = "",
	--Translation missing 
	-- ["AltNames/Colour"] = "",
	--Translation missing 
	-- ["AltNames/Delete a character's link to another character as their main."] = "",
	--Translation missing 
	-- ["AltNames/Delete alt"] = "",
	--Translation missing 
	-- ["AltNames/Disabled"] = "",
	--Translation missing 
	-- ["AltNames/Display a player's alts in the tooltip"] = "",
	["AltNames/Display a player's main name in the tooltip"] = "Affiche le nom principale d'un joueur dans la tooltip",
	--Translation missing 
	-- ["AltNames/Display main names in the same colour as that of the alt's class (taking the data from the PlayerNames module if it is enabled)"] = "",
	--Translation missing 
	-- ["AltNames/Display main names in the same colour as that of the main's class (taking the data from the PlayerNames module if it is enabled)"] = "",
	["AltNames/Don't overwrite existing alt <-> main links when importing or adding new alts."] = "Ne pas écraser les liens principal <-> Alternatif lors d'un import ou d'un ajout de nouveaux personnages Alternatifs",
	["AltNames/Don't overwrite existing links"] = "Ne pas écraser les liens existant",
	--Translation missing 
	-- ["AltNames/don't use"] = "",
	["AltNames/Don't use data from the PlayerNames module at all"] = "Ne pas utiliser les donnée du module \"PlayerNames\" du tout",
	["AltNames/ERROR: some function sent a blank message!"] = "ERREUR: une fonction a envoyé un message blanc !",
	["AltNames/Find characters"] = "Trouver des personnages",
	["AltNames/Fix alts"] = "Réparer les personnages secondaires",
	["AltNames/Fix corrupted entries in your list of alt names."] = "Réparer les entrées corrompues dans votre liste de noms alternatifs.",
	--Translation missing 
	-- ["AltNames/Found alt: %s => main: %s"] = "",
	--Translation missing 
	-- ["AltNames/guild member alts found and imported: %s"] = "",
	--Translation missing 
	-- ["AltNames/Import from Guild Greet database"] = "",
	--Translation missing 
	-- ["AltNames/Import from guild roster"] = "",
	--Translation missing 
	-- ["AltNames/Import options"] = "",
	--Translation missing 
	-- ["AltNames/Imports alt names from a Guild Greet database, if present"] = "",
	--Translation missing 
	-- ["AltNames/Imports alt names from the guild roster by checking for members with the rank \"alt\" or \"alts\", or guild / officer notes like \"<name>'s alt\""] = "",
	--Translation missing 
	-- ["AltNames/Imports data from LOKWhoIsWho, if present (drop your SavedVariablesLOKWhoIsWho.lua in the Prat directory to be able to use this)."] = "",
	--Translation missing 
	-- ["AltNames/Left"] = "",
	--Translation missing 
	-- ["AltNames/link <alt name> <main name> (eg, /altnames link Fin Finjathealtoffin)"] = "",
	--Translation missing 
	-- ["AltNames/Link alt"] = "",
	--Translation missing 
	-- ["AltNames/Link someone's alt character with the name of their main."] = "",
	--Translation missing 
	-- ["AltNames/linked alt %s => %s"] = "",
	--Translation missing 
	-- ["AltNames/List all"] = "",
	--Translation missing 
	-- ["AltNames/List all links between alts and their main names."] = "",
	--Translation missing 
	-- ["AltNames/List alts"] = "",
	--Translation missing 
	-- ["AltNames/List alts for a given character"] = "",
	--Translation missing 
	-- ["AltNames/LOKWhoIsWho data not found"] = "",
	--Translation missing 
	-- ["AltNames/LOKWhoIsWho import"] = "",
	--Translation missing 
	-- ["AltNames/LOKWhoIsWho lua file not found, sorry."] = "",
	--Translation missing 
	-- ["AltNames/Main"] = "",
	--Translation missing 
	-- ["AltNames/main"] = "",
	--Translation missing 
	-- ["AltNames/Main name position"] = "",
	--Translation missing 
	-- ["AltNames/Main:"] = "",
	--Translation missing 
	-- ["AltNames/mainpos_desc"] = "",
	--Translation missing 
	-- ["AltNames/mainpos_name"] = "",
	--Translation missing 
	-- ["AltNames/module_desc"] = "",
	--Translation missing 
	-- ["AltNames/no alts found for character "] = "",
	--Translation missing 
	-- ["AltNames/no alts or mains found matching \"%s\""] = "",
	--Translation missing 
	-- ["AltNames/No arg string given to :addAlt()"] = "",
	--Translation missing 
	-- ["AltNames/no characters called \"%s\" found; nothing deleted"] = "",
	--Translation missing 
	-- ["AltNames/No Guild Greet database found"] = "",
	--Translation missing 
	-- ["AltNames/No main name supplied to link %s to"] = "",
	--Translation missing 
	-- ["AltNames/no matches found"] = "",
	--Translation missing 
	-- ["AltNames/quiet"] = "",
	--Translation missing 
	-- ["AltNames/quiet_desc"] = "",
	--Translation missing 
	-- ["AltNames/quiet_name"] = "",
	["AltNames/Right"] = "Droite",
	--Translation missing 
	-- ["AltNames/Search the list of linked characters for matching main or alt names."] = "",
	--Translation missing 
	-- ["AltNames/searched for: %s - total matches: %s"] = "",
	--Translation missing 
	-- ["AltNames/Show alts in tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Show main in tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Start"] = "",
	--Translation missing 
	-- ["AltNames/The colour of an alt's main name that will be displayed"] = "",
	--Translation missing 
	-- ["AltNames/Use class colour (from the PlayerNames module)"] = "",
	--Translation missing 
	-- ["AltNames/use class colour of alt"] = "",
	--Translation missing 
	-- ["AltNames/use class colour of main"] = "",
	--Translation missing 
	-- ["AltNames/Use LibAlts Data"] = "",
	--Translation missing 
	-- ["AltNames/Use the data available via the shared alt information library."] = "",
	--Translation missing 
	-- ["AltNames/Various ways to import a main's alts from other addons"] = "",
	--Translation missing 
	-- ["AltNames/warning: alt %s already linked to %s"] = "",
	--Translation missing 
	-- ["AltNames/Where to display a character's main name when on their alt."] = "",
	--Translation missing 
	-- ["AltNames/Whether to report to the chat frame or not."] = "",
	--Translation missing 
	-- ["AltNames/You are not in a guild"] = "",
	--Translation missing 
	-- ["AltNames/You have not yet linked any alts with their mains."] = "",
	["Bubbles/color_desc"] = "Colorie la bordure de la bulle en fonction du type de discussion.",
	["Bubbles/color_name"] = "Colorier les bulles",
	["Bubbles/font_desc"] = "Utiliser la même police que celle de la fenêtre de discussion.",
	["Bubbles/font_name"] = "Police du chat",
	["Bubbles/fontsize_desc"] = "Définit la taille du texte dans les bulles.",
	["Bubbles/fontsize_name"] = "Taille du texte",
	["Bubbles/format_desc"] = "Appliquer le formatage de Prat aux textes dans les bulles.",
	["Bubbles/format_name"] = "Formater le texte",
	["Bubbles/icons_desc"] = "Montrer les icônes de raid dans les bulles.",
	["Bubbles/icons_name"] = "Montrer les icônes de raid",
	["Bubbles/module_desc"] = "Options des bulles de chat .",
	["Bubbles/module_name"] = "Bulles",
	["Bubbles/shorten_desc"] = "Raccourci le texte des bulles à une seule ligne. Mettre la souris sur la bulle pour étendre la bulle et voir le texte en entier.",
	["Bubbles/shorten_name"] = "Raccourcir les bulles",
	--Translation missing 
	-- ["Bubbles/transparent_desc"] = "",
	--Translation missing 
	-- ["Bubbles/transparent_name"] = "",
	["Buttons/alpha_desc"] = "Définit la transparence du menu du chat et des flèches pour toutes les fenêtres de discussion.",
	["Buttons/alpha_name"] = "Définir la transparence",
	["Buttons/Buttons"] = "Boutons",
	["Buttons/Chat window button options."] = "Options des boutons de la fenêtre de discussion.",
	["Buttons/chatmenu_desc"] = "Activer et désactiver le menu du tchat",
	["Buttons/chatmenu_name"] = "Montrer le menu du chat",
	["Buttons/Default"] = "Défaut",
	["Buttons/Right, Inside Frame"] = "Droite, dans le cadre",
	["Buttons/Right, Outside Frame"] = "Droite, en dehors du cadre",
	["Buttons/scrollReminder_desc"] = "Montrer le bouton de rappel lorsque vous n'êtes pas à la fin de la fenêtre de discussion.",
	["Buttons/scrollReminder_name"] = "Montrer le rappel",
	["Buttons/Set Position"] = "Définir la position",
	["Buttons/Sets position of chat menu and arrows for all chat windows."] = "Définir la position du menu et des flèches de toutes les fenêtres de discussion.",
	["Buttons/Show Arrows"] = "Montrer les flèches",
	["Buttons/Show Chat%d Arrows"] = "Afficher les boutons fléchés du chat",
	["Buttons/showbnet_desc"] = "Montrer le menu Social.",
	["Buttons/showbnet_name"] = "Montrer le menu Social",
	["Buttons/showmenu_desc"] = "Montrer le menu de la fenêtre de discussion.",
	["Buttons/showmenu_name"] = "Montrer le menu",
	["Buttons/showminimize_desc"] = "Montrer le bouton pour minimiser la discussion.",
	["Buttons/showminimize_name"] = "Montrer Minimiser",
	["Buttons/Toggle showing chat arrows for each chat window."] = "Activer l'affichage des flèches pour chaque fenêtre de discussion.",
	["Buttons/Toggles navigation arrows on and off."] = "Activer et désactiver les flèches de navigations",
	--Translation missing 
	-- ["ChannelColorMemory/(%w+)%s?(.*)"] = "",
	["ChannelColorMemory/ChannelColorMemory"] = "Couleur Canal",
	["ChannelColorMemory/Remembers the colors of each channel name."] = "Mémorise la couleur de chaque nom de canal.",
	["ChannelNames/%s settings."] = "Options pour %s .",
	["ChannelNames/<string>"] = "<chaîne>",
	["ChannelNames/Add Channel Abbreviation"] = "Ajouter une abréviation",
	["ChannelNames/addnick_desc"] = "Ajoute une abréviation pour le nom de ce canal. Préfixer le nom avec '#' permet d'inclure le numéro du canal. (Exemple : '#Commerce')",
	--Translation missing 
	-- ["ChannelNames/Blank"] = "",
	--Translation missing 
	-- ["ChannelNames/chanlink_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/chanlink_name"] = "",
	["ChannelNames/Channel %d"] = "Canal %d",
	["ChannelNames/Channel name abbreviation options."] = "Options d'abréviations des noms de canaux.",
	["ChannelNames/ChannelNames"] = "Noms des canaux",
	["ChannelNames/channelnick_desc"] = "Abréviations des noms des canaux.",
	["ChannelNames/channelnick_name"] = "Abréviations",
	--Translation missing 
	-- ["ChannelNames/Clear Channel Abbreviation"] = "",
	--Translation missing 
	-- ["ChannelNames/Clears an abbreviated channel name."] = "",
	--Translation missing 
	-- ["ChannelNames/colon_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/colon_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Dont display the channel/chat type name"] = "",
	["ChannelNames/otheropts_desc"] = "Options supplémentaires du formatage des noms de canaux.",
	["ChannelNames/otheropts_name"] = "Autres options",
	--Translation missing 
	-- ["ChannelNames/Remove Channel Abbreviation"] = "",
	--Translation missing 
	-- ["ChannelNames/Removes an an abbreviated channel name."] = "",
	["ChannelNames/Replace"] = "Remplacer",
	--Translation missing 
	-- ["ChannelNames/Set"] = "",
	--Translation missing 
	-- ["ChannelNames/space_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/space_name"] = "",
	["ChannelNames/Toggle replacing this channel."] = "Active/Désactive le texte de remplacement pour ce canal.",
	["ChannelNames/Use a custom replacement for the chat %s text."] = "Utiliser un texte de remplacement pour le canal %s.",
	--Translation missing 
	-- ["ChannelSticky/Channel"] = "",
	--Translation missing 
	-- ["ChannelSticky/ChannelSticky"] = "",
	--Translation missing 
	-- ["ChannelSticky/Chat channel sticky options."] = "",
	--Translation missing 
	-- ["ChannelSticky/ChatType"] = "",
	--Translation missing 
	-- ["ChannelSticky/Per chat type options."] = "",
	["ChannelSticky/smartgroup_desc"] = "Ajouter une commande /gr qui sélectionne automatiquement le bon type de chat : raid, groupe, champ de bataille",
	["ChannelSticky/smartgroup_name"] = "Groupes intelligents",
	--Translation missing 
	-- ["ChannelSticky/Sticky %s"] = "",
	--Translation missing 
	-- ["ChannelSticky/Sticky Per Chat Frame"] = "",
	--Translation missing 
	-- ["ChannelSticky/Toggle remembering the chat type last used per chat frame."] = "",
	--Translation missing 
	-- ["ChannelSticky/Toggles sticky on and off for %s."] = "",
	--Translation missing 
	-- ["ChatLink/gem_desc"] = "",
	--Translation missing 
	-- ["ChatLink/gem_name"] = "",
	--Translation missing 
	-- ["ChatLink/module_desc"] = "",
	--Translation missing 
	-- ["ChatLink/module_info"] = "",
	--Translation missing 
	-- ["ChatLink/module_name"] = "",
	--Translation missing 
	-- ["ChatLink/Trade"] = "",
	["ChatLog/A module to automaticaly enable chat and combat logging."] = "Un module pour activer automatiquement la journalisation du chat et des combats",
	["ChatLog/Chat log recorded to <WoW Installation>\\Logs\\WoWChatLog.txt only upon logout."] = "Journalisation du chat enregistré dans <WoW Installation>\\Logs\\WoWChatLog.txt jusqu'à la prochaine déconnexion",
	["ChatLog/Chat Log: Disabled"] = "Journalisation Chat : Désactivé",
	["ChatLog/Chat Log: Enabled"] = "Journalisation Chat : Activé",
	["ChatLog/ChatLog"] = "ChatLog",
	["ChatLog/Combat log recorded to <WoW Installation>\\Logs\\WoWCombatLog.txt only upon logout."] = "Journalisation des combats enregistré dans <WoW Installation>\\Logs\\WoWChatLog.txt jusqu'à la prochaine déconnexion",
	["ChatLog/Combat Log: Disabled"] = "Journalisation des combats : Désactivé",
	["ChatLog/Combat Log: Enabled"] = "Journalisation des combats : Activé",
	["ChatLog/quiet_desc"] = "N'afficher aucun messages quand ce mod est activé ou quand il change les paramètres de journalisation",
	["ChatLog/quiet_name"] = "Supprimer les messages de feedback",
	["ChatLog/Toggle Chat Log"] = "Activer la journalisation du chat",
	["ChatLog/Toggle chat log on and off."] = "Activer/Désactiver la journalisation du chat",
	["ChatLog/Toggle Combat Log"] = "Activer la journalisation des combat",
	["ChatLog/Toggle combat log on and off."] = "Activer/Désactiver la journalisation des combats",
	["ChatTabs/Active Alpha"] = "Transparence",
	["ChatTabs/All"] = "Tout",
	["ChatTabs/Always"] = "Toujours",
	["ChatTabs/Chat window tab options."] = "Options des onglets des fenêtres de discussion.",
	["ChatTabs/Default"] = "Défaut",
	["ChatTabs/disableflash_desc"] = "Désactiver le clignotement des onglets.",
	["ChatTabs/disableflash_name"] = "Pas de clignotement",
	["ChatTabs/Hidden"] = "Caché",
	["ChatTabs/Individual"] = "Individuel",
	["ChatTabs/Not Active Alpha"] = "Transparence inactive",
	["ChatTabs/preventdrag_desc"] = "Empêcher le déplacement des onglets avec la souris",
	["ChatTabs/preventdrag_name"] = "Verrouiller",
	["ChatTabs/Set ChatFrame%d Display Mode"] = "Définir le mode d'affichage de la fenêtre de discussion %d",
	["ChatTabs/Set Display Mode"] = "Mode d'affichage",
	["ChatTabs/Set tab display mode for each chat window."] = "Définir le mode d'affichage des onglets pour chaque fenêtre de chat. Coché (On), Décoché (Off) Coché en gris (Défaut)",
	["ChatTabs/Set tab display to always, hidden or the Blizzard default."] = "Définir l'affichage des onglets sur toujours, caché ou par défaut Blizzard",
	["ChatTabs/Sets alpha of chat tab for active chat frame."] = "Définit la transparence de l'onglet pour les fenêtres de discussion actives.",
	["ChatTabs/Sets alpha of chat tab for not active chat frame."] = "Définit la transparence de l'onglet pour les fenêtres de discussion inactives.",
	["ChatTabs/Tabs"] = "Onglets",
	["Clear/Adds clear text slash commands (/clear)(/cls)(/clearall)(/clsall)."] = "Ajoute les commandes slash de nettoyage du texte (/clear)(/cls)(/clearall)(/clsall).",
	["Clear/Clear"] = "Effacer",
	["Clear/Clearall"] = "EffacerTout",
	["Clear/Clears all chat frames."] = "Efface toutes les fenêtres de discussion.",
	["Clear/Clears the current chat frame."] = "Efface la fenêtre de discussion actuelle.",
	["CopyChat/ Text"] = "Texte",
	["CopyChat/BBCode"] = "BBCode",
	--Translation missing 
	-- ["CopyChat/BOTTOMLEFT"] = "",
	--Translation missing 
	-- ["CopyChat/BOTTOMRIGHT"] = "",
	--Translation missing 
	-- ["CopyChat/buttonpos_desc"] = "",
	--Translation missing 
	-- ["CopyChat/buttonpos_name"] = "",
	--Translation missing 
	-- ["CopyChat/ChatFrame"] = "",
	["CopyChat/Copy all of the text in the selected chat frame into an edit box"] = "Copier tout le texte de la fenêtre de discussion sélectionnée dans une boîte d'édition.",
	["CopyChat/Copy Text"] = "Copier le texte",
	["CopyChat/Copy Text Format"] = "Format du texte copié",
	["CopyChat/Copy text from the active chat window."] = "Copier le texte à partir de la fenêtre de discussion active.",
	--Translation missing 
	-- ["CopyChat/Copy To Editbox"] = "",
	["CopyChat/CopyChat"] = "Copier",
	["CopyChat/HTML"] = "HTML",
	["CopyChat/Message From : %s"] = "Message de : %s",
	["CopyChat/Plain"] = "Texte seul",
	["CopyChat/Should the copied text be plain, or formatted so you can see the colors."] = "Le texte copié doit-il être seul, ou formaté de tel manière à voir les couleurs.",
	["CopyChat/showbutton_desc"] = "Montrer un bouton sur la fenêtre de discussion.",
	["CopyChat/showbutton_name"] = "Bouton de copie",
	--Translation missing 
	-- ["CopyChat/TOPLEFT"] = "",
	--Translation missing 
	-- ["CopyChat/TOPRIGHT"] = "",
	["CopyChat/Wowace.com Forums"] = "Forums wowace.com",
	--Translation missing 
	-- ["CustomFilters/<string>"] = "",
	--Translation missing 
	-- ["CustomFilters/Add a pattern to search for."] = "",
	--Translation missing 
	-- ["CustomFilters/Add Pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Block Message"] = "",
	--Translation missing 
	-- ["CustomFilters/Channel Data"] = "",
	--Translation missing 
	-- ["CustomFilters/Channel to send output text to."] = "",
	["CustomFilters/Enabled"] = "Activé",
	--Translation missing 
	-- ["CustomFilters/Extra data for WHISPER (target) and CHANNEL (channel name or num)"] = "",
	--Translation missing 
	-- ["CustomFilters/Filter Name"] = "",
	--Translation missing 
	-- ["CustomFilters/Forward"] = "",
	--Translation missing 
	-- ["CustomFilters/Forward the message to a chat channel."] = "",
	--Translation missing 
	-- ["CustomFilters/Forward the message to a custom chat channel."] = "",
	--Translation missing 
	-- ["CustomFilters/ForwardCustom"] = "",
	--Translation missing 
	-- ["CustomFilters/ForwardMessage"] = "",
	--Translation missing 
	-- ["CustomFilters/ForwardMessageCustom"] = "",
	--Translation missing 
	-- ["CustomFilters/Hilight Color"] = "",
	--Translation missing 
	-- ["CustomFilters/Hilight Match Text"] = "",
	--Translation missing 
	-- ["CustomFilters/Inbound"] = "",
	--Translation missing 
	-- ["CustomFilters/inchannels_desc"] = "",
	--Translation missing 
	-- ["CustomFilters/inchannels_name"] = "",
	--Translation missing 
	-- ["CustomFilters/Is this pattern enabled for use?"] = "",
	--Translation missing 
	-- ["CustomFilters/Match Options"] = "",
	--Translation missing 
	-- ["CustomFilters/module_desc"] = "",
	--Translation missing 
	-- ["CustomFilters/module_name"] = "",
	--Translation missing 
	-- ["CustomFilters/Only output the message portion of the chat text, leave out the channel, and playername etc."] = "",
	--Translation missing 
	-- ["CustomFilters/Outbound"] = "",
	--Translation missing 
	-- ["CustomFilters/Output Channel"] = "",
	--Translation missing 
	-- ["CustomFilters/Output Message Only"] = "",
	--Translation missing 
	-- ["CustomFilters/Pattern Info"] = "",
	--Translation missing 
	-- ["CustomFilters/Pattern Options"] = "",
	--Translation missing 
	-- ["CustomFilters/Play a sound when this message is output to the chatframe"] = "",
	--Translation missing 
	-- ["CustomFilters/Play Sound"] = "",
	--Translation missing 
	-- ["CustomFilters/Prevent the message from being displayed"] = "",
	--Translation missing 
	-- ["CustomFilters/Remove an existing pattern."] = "",
	--Translation missing 
	-- ["CustomFilters/Remove Pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Replacement Text"] = "",
	--Translation missing 
	-- ["CustomFilters/Search Format String"] = "",
	--Translation missing 
	-- ["CustomFilters/Search Pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Secondary Output"] = "",
	--Translation missing 
	-- ["CustomFilters/Send to a secondary output"] = "",
	--Translation missing 
	-- ["CustomFilters/Supplied pattern is a format string instead of a pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Your name for this filter"] = "",
	["Editbox/Attach edit box to..."] = "Définit la position de la boîte d'édition.",
	["Editbox/Attach to..."] = "Position",
	["Editbox/Background color"] = "Couleur du fond",
	["Editbox/Background Inset"] = "Marge du fond",
	["Editbox/Background texture"] = "Texture du fond",
	["Editbox/Border color"] = "Couleur de la bordure",
	["Editbox/Border texture"] = "Texture de la bordure",
	["Editbox/Bottom"] = "Bas",
	["Editbox/Color border by channel"] = "Colorier avec le canal",
	--Translation missing 
	-- ["Editbox/currently_broken_alt_behavior"] = "",
	["Editbox/Edge Size"] = "Taille de la bordure",
	["Editbox/Editbox"] = "Boite d'édition",
	["Editbox/Editbox options."] = "Options de la boite d'édition.",
	["Editbox/Font"] = "Police d'écriture",
	["Editbox/Free-floating"] = "Flottante",
	["Editbox/Free-floating, Locked"] = "Flottante, verrouillée",
	["Editbox/Requires the Alt key to be held down to move the cursor in chat"] = "Requiert de maintenir la touche Alt enfoncée pour déplacer le curseur lorsque vous écrivez un message.",
	["Editbox/Select the font to use for the edit box"] = "Définit la police du texte dans la boîte d'édition.",
	["Editbox/Sets the frame's border color to the color of your currently active channel"] = "Définit la couleur de la bordure avec la couleur du canal actif.",
	["Editbox/Tile Size"] = "Taille du fond",
	["Editbox/Top"] = "Haut",
	["Editbox/Use Alt key for cursor movement"] = "Curseur avec Alt",
	--Translation missing 
	-- ["EventNames/allevents_desc"] = "",
	--Translation missing 
	-- ["EventNames/allevents_name"] = "",
	["EventNames/Chat window event name options."] = "Options des évènements de la fenêtre de chat",
	["EventNames/EventNames"] = "Nom des évènements",
	["EventNames/Show"] = "Montrer",
	["EventNames/Show events on chatframes"] = "Montrer les évènements dans le cadre du chat",
	["EventNames/show_desc"] = "Activer l'affichage des noms d'évènements dans chaque fenêtre",
	["EventNames/show_name"] = "Montrer les noms d'évènements",
	["Fading/duration_desc"] = "Définir le nombre de secondes à attendre avant la disparition du texte de la fenêtre de chat",
	["Fading/duration_name"] = "Délai avant fondu (secondes)",
	["Fading/module_desc"] = "Option des délais de disparition.",
	["Fading/module_name"] = "Fondu",
	["Fading/textfade_desc"] = "Activé le fondu pour chaque fenêtre de discussions.",
	["Fading/textfade_name"] = "Activé le fondu",
	["Filtering/A module to provide basic chat filtering."] = "Un module pour fournir un filtrage basique",
	--Translation missing 
	-- ["Filtering/afkdnd_desc"] = "",
	--Translation missing 
	-- ["Filtering/afkdnd_name"] = "",
	["Filtering/bgjoin_desc"] = "Filtrer les messages du canal Champ de bataille: \"quitte/rejoint\"",
	["Filtering/bgjoin_name"] = "Filtrer BG quitte/rejoint",
	["Filtering/Filtering"] = "Filtrage",
	["Filtering/leavejoin_desc"] = "Filtrer les messages: \"quitte/rejoint le canal\"",
	["Filtering/leavejoin_name"] = "Filtre Rejoindre/Quitte",
	--Translation missing 
	-- ["Filtering/notices_desc"] = "",
	["Filtering/notices_name"] = "Notifications de filtrage",
	--Translation missing 
	-- ["Filtering/tradespam_desc"] = "",
	--Translation missing 
	-- ["Filtering/tradespam_name"] = "",
	["Font/Auto Restore Font Size"] = "Restauration automatique de la taille du texte",
	["Font/Chat window font options."] = "Options de formatage du texte.",
	["Font/Font"] = "Police",
	["Font/monochrome_desc"] = "Activer/Désactiver la monochromie de la police.",
	["Font/monochrome_name"] = "Monochromie",
	["Font/None"] = "Aucun",
	["Font/Outline"] = "Contour",
	["Font/outlinemode_desc"] = "Définit le contour autour de la police.",
	["Font/outlinemode_name"] = "Contour de la police",
	["Font/rememberfont_desc"] = "Se souvenir de la police du texte et la restaurer au chargement.",
	["Font/rememberfont_name"] = "Mémoriser la police",
	["Font/Set ChatFrame%d Font Size"] = "Définit la taille de la police de la fenêtre de discussion %d",
	["Font/Set Font Face"] = "Police d'écriture",
	["Font/Set Font Size"] = "Taille de la police",
	["Font/Set Separately"] = "Configurer séparément",
	["Font/Set text font size for each chat window."] = "Définir la taille du texte de chaque fenêtre.",
	["Font/Set text font size."] = "Définit la taille du texte.",
	["Font/Set the text font face for all chat windows."] = "Définit la police du texte pour toutes les fenêtres de discussions.",
	["Font/shadowcolor_desc"] = "Définit la couleur de l'ombre.",
	["Font/shadowcolor_name"] = "Couleur de l'ombre",
	["Font/Thick Outline"] = "Contour épais",
	["Font/Toggle setting options separately for each chat window."] = "Activer/Désactiver les options séparées pour chaque fenêtre.",
	["Font/Workaround a Blizzard bug which changes the font size when you open a system menu."] = "Contourner un bug de Blizzard qui change la taille de la police quand on ouvre un menu système.",
	["Frames/Chat window frame parameter options"] = "Options de la fenêtre de discussion",
	["Frames/framealpha_desc"] = "Définit la transparence de la fenêtre de discussion quand la souris passe par dessus.",
	["Frames/framealpha_name"] = "Transparence",
	["Frames/Frames"] = "Fenêtre",
	["Frames/mainchatonload_desc"] = "Sélectionne automatiquement la première fenêtre de discussion et la rend active lors du chargement.",
	--Translation missing 
	-- ["Frames/mainchatonload_name"] = "",
	["Frames/maxchatheight_desc"] = "Définit la hauteur maximale pour toutes les fenêtres de discussion.",
	["Frames/maxchatheight_name"] = "Hauteur maximale",
	["Frames/maxchatwidth_desc"] = "Définit la largeur maximale pour toutes les fenêtres de discussion.",
	["Frames/maxchatwidth_name"] = "Largeur maximale",
	["Frames/minchatheight_desc"] = "Définit la hauteur minimum pour toutes les fenêtres de discussion.",
	["Frames/minchatheight_name"] = "Hauteur minimum",
	["Frames/minchatwidth_desc"] = "Définit la largeur minimum pour toutes les fenêtres de discussion.",
	["Frames/minchatwidth_name"] = "Largeur minimum",
	--Translation missing 
	-- ["Frames/rememberframepositions_desc"] = "",
	--Translation missing 
	-- ["Frames/rememberframepositions_name"] = "",
	--Translation missing 
	-- ["Frames/removeclamp_desc"] = "",
	--Translation missing 
	-- ["Frames/removeclamp_name"] = "",
	["History/Chat history options."] = "Option de l'historique.",
	--Translation missing 
	-- ["History/Color GMOTD"] = "",
	--Translation missing 
	-- ["History/Colors the GMOTD label"] = "",
	["History/delaygmotd_desc"] = "Afficher le message du jour de la guilde après tous les autres messages lors de la connexion.",
	--Translation missing 
	-- ["History/delaygmotd_name"] = "",
	["History/divider"] = "========== Fin de l'historique ==========",
	["History/History"] = "Historique",
	["History/Maximum number of lines of command history to save."] = "Nombre maximum de lignes de commande à sauvegarder dans l'historique.",
	["History/Save Command History"] = "Historique de commandes",
	["History/Saves command history between sessions (for use with alt+up arrow or just the up arrow)"] = "Sauvegarde l'historique des commandes entre les sessions (à utiliser avec alt+haut ou juste haut)",
	--Translation missing 
	-- ["History/Scrollback"] = "",
	--Translation missing 
	-- ["History/Scrollback Options"] = "",
	["History/scrollbacklen_desc"] = "Nombre de lignes de discussions à sauvegarder dans l'historique.",
	["History/scrollbacklen_name"] = "Taille de l'historique",
	["History/Set Chat Lines"] = "Historique de discussions",
	["History/Set Command History"] = "Historique de commandes",
	["History/Set the number of lines of chat history for each window."] = "Définit le nombre de lignes dans l'historique pour chaque fenêtre.",
	["History/Store the chat lines between sessions"] = "Sauvegarder l'historique des discussions entre les sessions.",
	["KeyBindings/Channel %d"] = "Canal %d",
	["KeyBindings/Copy Selected Chat Frame"] = "Copier la fenêtre de chat sélectionné",
	["KeyBindings/Guild Channel"] = "Canal de Guilde",
	["KeyBindings/Instance Channel"] = "Canal d'Instance",
	--Translation missing 
	-- ["KeyBindings/Next Chat Tab"] = "",
	["KeyBindings/Officer Channel"] = "Canal Officier",
	["KeyBindings/Party Channel"] = "Canal de Groupe",
	["KeyBindings/Prat CopyChat"] = "Prat Copier-le-Chat",
	["KeyBindings/Prat Keybindings"] = "Prat Association-de-touche",
	["KeyBindings/Prat TellTarget"] = "Prat Dire-à-la-cible",
	["KeyBindings/Raid Channel"] = "Canal Raid",
	["KeyBindings/Raid Warning Channel"] = "Canal Avertissement",
	["KeyBindings/Say"] = "Dire",
	--Translation missing 
	-- ["KeyBindings/Smart Group Channel"] = "",
	["KeyBindings/TellTarget"] = "Chuchoter à la cible",
	["KeyBindings/Whisper"] = "Chuchoter",
	["KeyBindings/Yell"] = "Crier",
	["OriginalButtons/alpha_desc"] = "Définir l'alpha du menu du chat et des flèches pour toutes les fenêtres.",
	["OriginalButtons/alpha_name"] = "Définir l'alpha",
	--Translation missing 
	-- ["OriginalButtons/buttonframe_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/buttonframe_name"] = "",
	["OriginalButtons/ChannelNames"] = "Noms-des-Canaux",
	["OriginalButtons/Chat window button options."] = "Bouton d'options de la fenêtre de chat.",
	["OriginalButtons/chatmenu_desc"] = "Activer et désactiver le menu du chat",
	["OriginalButtons/chatmenu_name"] = "Afficher le menu de chat",
	["OriginalButtons/Default"] = "Défaut",
	["OriginalButtons/Original Buttons"] = "Boutons d'origine",
	--Translation missing 
	-- ["OriginalButtons/reflow_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/reflow_name"] = "",
	["OriginalButtons/reminder_desc"] = "Montrer une icône de rappel lorsque vous n'êtes pas en bas de la fenêtre de chat",
	["OriginalButtons/reminder_name"] = "Montrer un rappel pour le défilement vers le bas",
	["OriginalButtons/Right, Inside Frame"] = "Droite, Dans le cadre",
	["OriginalButtons/Right, Outside Frame"] = "Droite, En dehors du cadre",
	["OriginalButtons/Set Position"] = "Définir la position",
	["OriginalButtons/Sets position of chat menu and arrows for all chat windows."] = "Définir la position du menu de chat et des flèches pour toute les fenêtres.",
	["OriginalButtons/Show Arrows"] = "Afficher les flèches",
	["OriginalButtons/Show Chat%d Arrows"] = "Montrer les flèches du Chat%d",
	["OriginalButtons/Toggle showing chat arrows for each chat window."] = "Activer les flèches de chat pour chaque fenêtre de chat",
	["OriginalButtons/Toggles navigation arrows on and off."] = "Activer et désactiver les flèches de navigation",
	--Translation missing 
	-- ["OriginalEditbox/Autohide"] = "",
	--Translation missing 
	-- ["OriginalEditbox/BACKGROUND"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Bar colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Border colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Border width"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Bottom"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Click the edit box to open it up for editing. Only available if Autohide is disabled."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Clickable"] = "",
	--Translation missing 
	-- ["OriginalEditbox/DIALOG"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Editbox options."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Enable Arrowkeys"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Enable using arrowkeys in editbox without the alt key."] = "",
	["OriginalEditbox/Hide Border"] = "Cacher la bordure",
	["OriginalEditbox/Hide the border around the edit box."] = "Cacher la bordure autour de l'invite de discussion.",
	["OriginalEditbox/Hide the edit box after you have pressed enter."] = "Cacher l'invite de discussion après avoir fait Entrée.",
	["OriginalEditbox/HIGH"] = "HAUT",
	--Translation missing 
	-- ["OriginalEditbox/Lock editbox position if undocked."] = "",
	["OriginalEditbox/Lock Position"] = "Verrouiller la position",
	["OriginalEditbox/LOW"] = "BAS",
	["OriginalEditbox/MEDIUM"] = "MILIEU",
	--Translation missing 
	-- ["OriginalEditbox/OriginalEditbox"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Padding"] = "",
	["OriginalEditbox/Set Alpha"] = "Définir la transparance",
	["OriginalEditbox/Set Position"] = "Définir la position",
	["OriginalEditbox/Set Strata"] = "Définir la couche",
	["OriginalEditbox/Set the alpha of the editbox."] = "Définit la transparence de la boite d'édition",
	["OriginalEditbox/Set the amount of padding inside the edit box"] = "Définir la quantité d'espacement à l'intérieur de la boite d'édition",
	["OriginalEditbox/Set the edit box background colour"] = "Définir la couleur de fond de la boite d'édition",
	["OriginalEditbox/Set the edit box border colour"] = "Définir la couleur de la bordure de la boite d'édition",
	--Translation missing 
	-- ["OriginalEditbox/Set the frame strata of the editbox."] = "",
	["OriginalEditbox/Set the position of the editbox."] = "Définir la position de l'invite de discussion.",
	["OriginalEditbox/Set the texture of the chat edit box"] = "Définir la texture de l'invite de discussion",
	["OriginalEditbox/Set the width of the edit box's border"] = "Définir la largeur de la bordure de l'invite de discussion",
	["OriginalEditbox/Set the width of the editbox."] = "Définir la largeur de l'invite de discussion.",
	--Translation missing 
	-- ["OriginalEditbox/Set Width (NB: only enabled if the editbox is undocked)"] = "",
	["OriginalEditbox/Texture"] = "Texture",
	["OriginalEditbox/Top"] = "Haut",
	--Translation missing 
	-- ["OriginalEditbox/Undocked"] = "",
	["Paragraph/adjustlinks_desc"] = "Ajuster les liens pour pouvoir cliquer dessus si ils sont centrés ou alignés à droite.",
	["Paragraph/adjustlinks_name"] = "Répare la position des liens des joueurs/objets",
	["Paragraph/Center"] = "Centrer",
	["Paragraph/Chat window paragraph options."] = "Options de paragraphe.",
	["Paragraph/justification_desc"] = "Défiinr l'alignement horizontale pour chaque fenêtre de chat",
	["Paragraph/justification_name"] = "Définir l'alignement",
	["Paragraph/Left"] = "Gauche",
	["Paragraph/Line Spacing"] = "Espacement des lignes",
	["Paragraph/Paragraph"] = "Paragraphe",
	["Paragraph/Right"] = "Droite",
	["Paragraph/Set the line spacing for all chat windows."] = "Définit l'espacement des lignes pour toutes les fenêtres de discussions.",
	["PlayerNames/Actively Query Player Info"] = "Interroger activement les joueurs",
	["PlayerNames/Angled"] = "Chevrons",
	["PlayerNames/Brackets"] = "Crochets",
	["PlayerNames/Brackets Common Color"] = "Couleur des crochets",
	["PlayerNames/Brackets Use Common Color"] = "Couleur des crochets",
	["PlayerNames/Class"] = "Classe du joueur",
	["PlayerNames/Color by Level Difference"] = "Différence de niveau",
	["PlayerNames/coloreverywhere_desc"] = "Colorier le nom des joueurs si ils apparaissent dans le texte des messages.",
	["PlayerNames/coloreverywhere_name"] = "Couleur partout",
	["PlayerNames/Enable Alt-Invite"] = "Invitation avec Alt",
	["PlayerNames/Enable Invite Links"] = "Liens d'invitation",
	["PlayerNames/Enable TabComplete"] = "Complétion avec Tab",
	["PlayerNames/hoverhilight_desc"] = "Mettre en surbrillance les lignes de chat d'un joueur spécifique quand la souris survole un lien vers ce joueur",
	["PlayerNames/hoverhilight_name"] = "Surbrillance de noms survolés",
	["PlayerNames/How to color other player's level."] = "Définit la couleur du niveau des autres joueurs.",
	["PlayerNames/How to color player's name."] = "Définit la couleur du nom des joueurs.",
	["PlayerNames/Keep Info"] = "Garder les info.",
	["PlayerNames/Keep Lots Of Info"] = "Garder beaucoup d'info.",
	["PlayerNames/Keep player information between session for all players except cross-server players"] = "Garder les informations sur tous les joueurs entre les sessions sauf pour les joueurs inter-serveurs.",
	["PlayerNames/Keep player information between session, but limit it to friends and guild members."] = "Garder les informations sur les joueurs entre les sessions, mais seulement pour les amis et membres de la guilde.",
	["PlayerNames/Let TasteTheNaimbow set the common color for unknown player names."] = "Laisser TasteTheNaimbow définir la couleur des joueurs inconnus.",
	["PlayerNames/Level Color Mode"] = "Couleur des niveaux",
	--Translation missing 
	-- ["PlayerNames/linkifycommon_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/linkifycommon_name"] = "",
	["PlayerNames/No additional coloring"] = "Pas de couleur",
	["PlayerNames/None"] = "Aucun",
	["PlayerNames/Player Color Mode"] = "Couleur des joueurs",
	["PlayerNames/Player name formating options."] = "Options de formatage pour les noms des joueurs.",
	["PlayerNames/PlayerNames"] = "Nom des joueurs",
	["PlayerNames/Prat_Playernames: Stored Player Data Cleared"] = "Prat_Playernames: Informations des joueurs réinitialisées.",
	["PlayerNames/Query the server for all player names we do not know. Note: This happpens pretty slowly, and this data is not saved."] = "Interroge le serveur pour tous les noms de joueurs que nous ne connaissons pas. Note : Cela peut être très lent, et les informations ne sont pas sauvegardées.",
	["PlayerNames/Random"] = "Aléatoire",
	["PlayerNames/realidcolor_desc"] = "Couleur des noms RealID.",
	["PlayerNames/realidcolor_name"] = "Couleur RealID",
	["PlayerNames/Reset Settings"] = "Réinitialiser",
	["PlayerNames/Restore default settings, and delete stored character data."] = "Remets les options par défaut, et supprime toutes les informations enregistrées sur les joueurs.",
	["PlayerNames/Set common color of unknown player names."] = "Définit la couleur pour les noms de joueurs inconnus.",
	["PlayerNames/Sets common color of brackets to use around player names."] = "Définit la couleur des crochets autour du noms des joueurs.",
	["PlayerNames/Sets style of brackets to use around player names."] = "Définit le style des crochets autour du nom des joueurs.",
	["PlayerNames/Show Group"] = "Montrer le groupe",
	["PlayerNames/Show Level"] = "Montrer le niveau",
	["PlayerNames/Show Raid Target Icon"] = "Montrer l'icône de raid",
	["PlayerNames/Square"] = "Crochets",
	["PlayerNames/Tab completion : "] = "Auto-complétion :",
	["PlayerNames/tabcomplete_name"] = "Noms possibles",
	["PlayerNames/Toggle group invites by alt-clicking hyperlinked keywords like 'invite'."] = "Active/Désactive l'invitation de groupe en faisant Alt+clic sur des mots-clé hyperliens comme 'inviter'.",
	["PlayerNames/Toggle group invites by alt-clicking on player name."] = "Active/Désactive l'invitation de groupe en faisant Alt+clic sur le nom d'un joueur.",
	["PlayerNames/Toggle level showing."] = "Active/Désactive l'affichage du niveau.",
	["PlayerNames/Toggle raid group showing."] = "Active/Désactive l'affichage du groupe de raid.",
	["PlayerNames/Toggle showing the raid target icon which is currently on the player."] = "Active/Désactive l'affichage de l'icône de raid qui est sur le joueur.",
	["PlayerNames/Toggle tab completion of player names."] = "Active/Désactive l'auto-complétion du nom des joueurs.",
	["PlayerNames/Toggle using a common color for brackets around player names."] = "Active/Désactive l'utilisation d'une couleur commune pour les crochets autour du nom des joueurs.",
	["PlayerNames/Toggle using a common color for unknown player names."] = "Active/Désactive l'utilisation d'une couleur commune pour les joueurs inconnus.",
	["PlayerNames/Too many matches (%d possible)"] = "Trop de résultats (%d possibles)",
	["PlayerNames/Unknown Common Color"] = "Couleur pour inconnu",
	--Translation missing 
	-- ["PlayerNames/Unknown Common Color From TasteTheNaimbow"] = "",
	["PlayerNames/Unknown Use Common Color"] = "Couleur pour inconnu",
	["PlayerNames/Use Channel Color"] = "Couleur du canal",
	["PlayerNames/Use Player Color"] = "Couleur du joueur",
	--Translation missing 
	-- ["PlayerNames/Use toon name for RealID"] = "",
	["PopupMessage/Add Nickname"] = "Ajouter un surnom",
	--Translation missing 
	-- ["PopupMessage/Adds an alternate name to show in popups."] = "",
	["PopupMessage/Clear Nickname"] = "Efface le surnom",
	--Translation missing 
	-- ["PopupMessage/Clears alternate name to show in popups."] = "",
	["PopupMessage/framealpha_desc"] = "Régler la transparence de la popup lorsqu'elle disparait.",
	["PopupMessage/framealpha_name"] = "Transparence des popups",
	["PopupMessage/Popup"] = "Popup",
	["PopupMessage/PopupMessage"] = "Message popup",
	["PopupMessage/Remove Nickname"] = "Retirer un surnom",
	--Translation missing 
	-- ["PopupMessage/Removes an alternate name to show in popups."] = "",
	["PopupMessage/Set Separately"] = "Afficher séparément",
	["PopupMessage/Show All Popups"] = "Afficher toutes les popups",
	["PopupMessage/Show Popups"] = "Afficher les popups",
	["PopupMessage/Show Popups for all chat windows."] = "Afficher les popups pour toutes les fenêtres de discussion.",
	["PopupMessage/Show Popups for each window."] = "Afficher les popups pour chaque fenêtre.",
	["PopupMessage/show_desc"] = "Afficher les popups pour chaque fenêtre.",
	["PopupMessage/show_name"] = "Afficher les popups",
	["PopupMessage/show_perframedesc"] = "Active ou désactive l'affichage des popups.",
	["PopupMessage/show_perframename"] = "Afficher les popups de la fenêtre de discussion %d",
	["PopupMessage/showall_desc"] = "Afficher les popups pour toutes les fenêtres de discussion.",
	["PopupMessage/showall_name"] = "Afficher toutes les popups",
	["PopupMessage/Shows messages in a popup window."] = "Afficher les messages dans une fenêtre popup.",
	["PopupMessage/Shows messages with your name in a popup."] = "Afficher les messages avec votre nom dans une popup.",
	["PopupMessage/Toggle setting options separately for each chat window."] = "Activer des préférences différentes pour chaque fenêtre de discussion.",
	["Scroll/Bottom"] = "Bas vers le haut",
	["Scroll/Chat window scrolling options."] = "Options de défilement.",
	["Scroll/Control whether text is added to the frame at the top or the bottom."] = "Définit si le texte est ajouté en bas ou en haut de la fenêtre.",
	--Translation missing 
	-- ["Scroll/lowdown_desc"] = "",
	--Translation missing 
	-- ["Scroll/lowdown_name"] = "",
	--Translation missing 
	-- ["Scroll/modified_speed"] = "",
	--Translation missing 
	-- ["Scroll/modified_speed_desc"] = "",
	["Scroll/mousewheel_desc"] = "Active/Désactive le support de la molette pour chaque fenêtre.",
	["Scroll/mousewheel_name"] = "Activer la molette",
	["Scroll/Scroll"] = "Défilement",
	["Scroll/Set Ctrl+MouseWheel Speed"] = "Vitesse Ctrl+Molette",
	["Scroll/Set MouseWheel Speed"] = "Vitesse Molette",
	["Scroll/Set number of lines mousewheel will scroll when ctrl is pressed."] = "Définit le nombre de lignes qui défilent lorsque Ctrl est enfoncé.",
	["Scroll/Set number of lines mousewheel will scroll."] = "Définit le nombre de lignes qui défilent lors d'un coup de molette avec la souris.",
	--Translation missing 
	-- ["Scroll/Set TheLowDown Delay"] = "",
	["Scroll/Set time to wait before jumping to the bottom of chat windows."] = "Régler le temps d'attente avant de sauter au bas de la fenêtre de chat.",
	["Scroll/Text scroll direction"] = "Direction du texte",
	["Scroll/Top"] = "Haut en bas",
	["Scrollback/divider"] = "========== Fin de l'historique ==========",
	--Translation missing 
	-- ["Scrollback/Scrollback"] = "",
	["Scrollback/Store the chat lines between sessions"] = "Sauvegarder l'historique des discussions entre les sessions.",
	--Translation missing 
	-- ["Search/err_notfound"] = "",
	--Translation missing 
	-- ["Search/err_tooshort"] = "",
	--Translation missing 
	-- ["Search/find_results"] = "",
	--Translation missing 
	-- ["Search/module_desc"] = "",
	--Translation missing 
	-- ["Search/module_info"] = "",
	--Translation missing 
	-- ["Search/module_name"] = "",
	["ServerNames/autoabbreviate_desc"] = "Raccourcir le nom des serveurs à 3 lettres.",
	["ServerNames/autoabbreviate_name"] = "Abréviation",
	--Translation missing 
	-- ["ServerNames/colon_desc"] = "",
	--Translation missing 
	-- ["ServerNames/colon_name"] = "",
	["ServerNames/randomclr_desc"] = "Utiliser une couleur aléatoire pour chaque serveur.",
	["ServerNames/randomclr_name"] = "Couleurs aléatoires",
	["ServerNames/Server name abbreviation options."] = "Options d'abréviation des noms de serveur.",
	["ServerNames/ServerNames"] = "Noms de serveur",
	["Sounds/A module to play sounds on certain chat messages."] = "Un module pour jouer un son sur certains évènements de messages.",
	["Sounds/Add a custom channel"] = "Ajouter un canal",
	["Sounds/bn_whisper_desc"] = "Son pour les messages Battle.Net %s",
	["Sounds/bn_whisper_name"] = "Chuchotement Battle.Net",
	["Sounds/Custom Channels"] = "Canaux personnalisés",
	["Sounds/group_lead_desc"] = "Son pour les messages des leaders de raid, de groupe, ou des maîtres de donjon %s",
	["Sounds/group_lead_name"] = "Chef de groupe",
	["Sounds/guild_desc"] = "Son pour les messages de guilde %s",
	["Sounds/guild_name"] = "Guilde",
	["Sounds/incoming"] = "entrants",
	["Sounds/Incoming Sounds"] = "Sons entrants",
	["Sounds/officer_desc"] = "Son pour les messages d'officier %s",
	["Sounds/officer_name"] = "Officier",
	["Sounds/outgoing"] = "sortants",
	["Sounds/Outgoing Sounds"] = "Sons sortants",
	["Sounds/party_desc"] = "Son pour les messages de groupe %s",
	["Sounds/party_name"] = "Groupe",
	["Sounds/Play a sound for a certain channel name (can be a substring)"] = "Jouer un son pour un certain nom de canal (peut être une sous chaîne)",
	["Sounds/raid_desc"] = "Son pour les messages de raid/CdB %s",
	["Sounds/raid_name"] = "Raid",
	["Sounds/Remove a custom channel"] = "Supprimer un canal personnalisé",
	["Sounds/Reset settings"] = "Réinitialiser les options",
	["Sounds/Restore default settings and resets custom channel list"] = "Restaurer les options par défaut et réinitialise la liste des canaux personnalisés",
	["Sounds/Sound selection for incoming chat messages"] = "Sélection du son pour les messages entrants",
	["Sounds/Sound selection for outgoing (from you) chat messages"] = "Sélection du son pour les messages sortants (de vous)",
	["Sounds/Sounds"] = "Sons",
	["Sounds/whisper_desc"] = "Son pour les messages privés %s",
	["Sounds/whisper_name"] = "Chuchoter",
	["Substitutions/%d total user defined substitutions"] = "%s substitutions personnalisées totales",
	--Translation missing 
	-- ["Substitutions/|cffff0000warning:|r subtitution \"%s\" already defined as \"%s\", overwriting"] = "",
	["Substitutions/<noguild>"] = "<pas de guilde>",
	["Substitutions/<notarget>"] = "<pas de cible>",
	["Substitutions/A module to provide basic chat substitutions."] = "Un module qui propose quelques substitutions basiques.",
	["Substitutions/Are you sure - this will delete all user defined substitutions and reset defaults?"] = "Etes-vous sûr ? Cela supprimera toutes les substitutions personnalisées et réinitialisera les valeurs par défaut.",
	["Substitutions/Are you sure?"] = "Êtes-vous sûr ?",
	--Translation missing 
	-- ["Substitutions/can't find substitution index for a substitution named '%s'"] = "",
	["Substitutions/current-prompt"] = [=[Valeur actuelle : '%s'
Cliquez pour coller dans le chat.]=],
	--Translation missing 
	-- ["Substitutions/defined %s: expands to => %s"] = "",
	["Substitutions/Delete all"] = "Tout supprimer",
	["Substitutions/Delete substitution"] = "Supprimer la substitution",
	["Substitutions/Deletes a user defined substitution"] = "Supprime une substitution personnalisée",
	["Substitutions/Deletes all user defined substitutions"] = "Supprime toutes les substitutions personnalisées",
	--Translation missing 
	-- ["Substitutions/female"] = "",
	--Translation missing 
	-- ["Substitutions/her"] = "",
	--Translation missing 
	-- ["Substitutions/hers"] = "",
	--Translation missing 
	-- ["Substitutions/him"] = "",
	--Translation missing 
	-- ["Substitutions/his"] = "",
	--Translation missing 
	-- ["Substitutions/it"] = "",
	--Translation missing 
	-- ["Substitutions/its"] = "",
	["Substitutions/List of available substitutions"] = "Liste des substitution disponibles",
	["Substitutions/List of available substitutions defined by this module. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "Liste toutes les substitutions disponibles définies par ce module. (NB: l'utilisateur peut définir des valeurs personnalisées pour les substitutions existantes, mais celles-ci seront remisent à leurs valeurs par défaut si les options sont réinitialisées.)",
	["Substitutions/List substitutions"] = "Liste des substitutions",
	["Substitutions/Lists all current subtitutions in the default chat frame"] = "Liste toutes les substitutions dans la fenêtre de discussion",
	--Translation missing 
	-- ["Substitutions/male"] = "",
	["Substitutions/MapLoc"] = "Localisation",
	["Substitutions/MapPos"] = "Position",
	["Substitutions/MapXPos"] = "Position X",
	["Substitutions/MapYPos"] = "Position Y",
	["Substitutions/MapZone"] = "Zone",
	--Translation missing 
	-- ["Substitutions/module:buildUserSubsIndex(): warning: module patterns not defined!"] = "",
	--Translation missing 
	-- ["Substitutions/MouseoverTargetName"] = "",
	["Substitutions/NO MATCHFUNC FOUND"] = "PAS DE FONCTION ASSOCIÉE TROUVÉE",
	--Translation missing 
	-- ["Substitutions/no substitution name given"] = "",
	--Translation missing 
	-- ["Substitutions/no substitution name supplied for deletion"] = "",
	--Translation missing 
	-- ["Substitutions/no user defined subs found"] = "",
	--Translation missing 
	-- ["Substitutions/no value given for subtitution \"%s\""] = "",
	["Substitutions/Options for setting and removing user defined substitutions. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "Options pour ajouter ou enlever les substitutions définies par l'utilisateur. (NB: les utilisateurs peuvent changer la valeur des substitutions existantes, mais elles seront remisent à leur valeur par défaut si les préférences de l'utilisateur sont supprimés.)",
	--Translation missing 
	-- ["Substitutions/PlayerAverageItemLevel"] = "",
	["Substitutions/PlayerCurrentMana"] = "Mana actuelle",
	["Substitutions/PlayerHealthDeficit"] = "Déficit de vie",
	["Substitutions/PlayerHP"] = "HP actuel",
	["Substitutions/PlayerManaDeficit"] = "Déficit de mana",
	["Substitutions/PlayerMaxHP"] = "HP Max",
	["Substitutions/PlayerMaxMana"] = "Mana Max",
	["Substitutions/PlayerName"] = "Nom joueur",
	["Substitutions/PlayerPercentHP"] = "Pourcentage HP",
	["Substitutions/PlayerPercentMana"] = "Pourcentage Mana",
	["Substitutions/RandNum"] = "Nombre aléatoire",
	--Translation missing 
	-- ["Substitutions/removing user defined substitution \"%s\"; previously expanded to => \"%s\""] = "",
	["Substitutions/Set substitution"] = "Paramétrer une substitution",
	--Translation missing 
	-- ["Substitutions/Set the value of a user defined substitution (NB: this may be the same as an existing default substitution; to reset it to the default, just remove the user created definition)."] = "",
	--Translation missing 
	-- ["Substitutions/subname -- NOTE: sub name without the prefix '%'"] = "",
	--Translation missing 
	-- ["Substitutions/subname = text after expansion -- NOTE: sub name without the prefix \"%\""] = "",
	--Translation missing 
	-- ["Substitutions/substitution: %s defined as => %s"] = "",
	["Substitutions/Substitutions"] = "Substitutions",
	["Substitutions/TargetClass"] = "Cible Classe",
	["Substitutions/TargetGender"] = "Cible Sexe",
	["Substitutions/TargetGuild"] = "Cible Guilde",
	["Substitutions/TargetHealth"] = "Santé Cible",
	["Substitutions/TargetHealthDeficit"] = "Déficit Vie Cible",
	["Substitutions/TargetIcon"] = "CibleIcone",
	["Substitutions/TargetLevel"] = "CibleNiveau",
	["Substitutions/TargetManaDeficit"] = "CibleManqueDeMana",
	--Translation missing 
	-- ["Substitutions/TargetName"] = "",
	--Translation missing 
	-- ["Substitutions/TargetPercentHP"] = "",
	--Translation missing 
	-- ["Substitutions/TargetPossesive"] = "",
	--Translation missing 
	-- ["Substitutions/TargetPronoun"] = "",
	--Translation missing 
	-- ["Substitutions/TargetRace"] = "",
	--Translation missing 
	-- ["Substitutions/TargetTargetName"] = "",
	["Substitutions/unknown sex"] = "sexe inconnue",
	--Translation missing 
	-- ["Substitutions/user defined substition \"%s\" not found"] = "",
	--Translation missing 
	-- ["Substitutions/User defined substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/user substitutions index (usersubs_idx) doesn't exist! oh dear."] = "",
	--Translation missing 
	-- ["Substitutions/usersub_"] = "",
	["TellTarget//tt"] = "/tt",
	["TellTarget/Adds telltarget slash command (/tt)."] = "Ajoute la commande telltarget (/tt) pour envoyer un message privé au joueur ciblé.",
	["TellTarget/No target selected."] = "Pas de cible sélectionnée.",
	["TellTarget/NoTarget"] = "PasDeCible",
	["TellTarget/Target does not exist."] = "La cible n'existe pas.",
	["TellTarget/Target is not a player."] = "La cible n'est pas un joueur.",
	["TellTarget/TellTarget"] = "TellTarget",
	["Timestamps/Chat window timestamp options."] = "Options de l'heure des messages.",
	["Timestamps/colortimestamp_desc"] = "Active/Désactive la couleur de l'heure des messages.",
	["Timestamps/colortimestamp_name"] = "Couleur de l'heure",
	["Timestamps/Format All Timestamps"] = "Formatage de l'heure",
	["Timestamps/HH:MM (12-hour)"] = "HH:MM (12 heures)",
	["Timestamps/HH:MM (24-hour)"] = "HH:MM (24 heures)",
	["Timestamps/HH:MM:SS (12-hour)"] = "HH:MM:SS (12 heures)",
	["Timestamps/HH:MM:SS (24-hour)"] = "HH:MM:SS (24 heures)",
	["Timestamps/HH:MM:SS AM (12-hour)"] = "HH:MM:SS AM (12 heures)",
	["Timestamps/localtime_desc"] = "Active/Désactive l'utilisation de l'heure locale.",
	["Timestamps/localtime_name"] = "Utiliser l'heure locale",
	["Timestamps/MM:SS"] = "MM:SS",
	["Timestamps/Post-Timestamp"] = "Après l'heure",
	["Timestamps/Pre-Timestamp"] = "Avant l'heure",
	["Timestamps/Set the timestamp format"] = "Définit le format de l'heure.",
	["Timestamps/Set Timestamp Color"] = "Configurer la couleur",
	["Timestamps/Sets the color of the timestamp."] = "Définit la couleur de l'heure des messages.",
	["Timestamps/Show Timestamp"] = "Montrer l'heure des messages",
	["Timestamps/show_desc"] = "Active/Désactive l'affiche de l'heure pour chaque fenêtre.",
	["Timestamps/show_name"] = "Montrer l'heure des messages",
	["Timestamps/space_desc"] = "Active/Désactive l'ajout d'un espace après l'heure.",
	["Timestamps/space_name"] = "Montrer l'espace",
	["Timestamps/Timestamps"] = "Heure des messages",
	["Timestamps/Toggle showing timestamp for each window."] = "Active/Désactive l'affiche de l'heure des messages pour chaque fenêtre.",
	["Timestamps/twocolumn_desc"] = "Place l'heure dans une colonne séparée de manière à ce qu'aucun texte ne s'écrive en dessous de l'heure.",
	["Timestamps/twocolumn_name"] = "Discussion à 2 colonnes",
	["UrlCopy/Change the color of the URL."] = "Définit la couleur des liens URL.",
	["UrlCopy/Color URL"] = "Colorier les URL",
	["UrlCopy/Set Color"] = "Couleur des URL",
	["UrlCopy/Show Brackets"] = "Afficher les crochets",
	["UrlCopy/Toggle"] = "Activé/Désactivé",
	["UrlCopy/Toggle showing brackets on and off."] = "Active/Désactive l'affichage de crochets.",
	["UrlCopy/Toggle the module on and off."] = "Active/Désactive le module.",
	["UrlCopy/Toggle the URL color on and off."] = "Active/Désactive la couleur des liens URL.",
	["UrlCopy/URL formating options."] = "Options de formatage des liens URL.",
	["UrlCopy/UrlCopy"] = "Copie de liens",
	["UrlCopy/Use Popup"] = "Utiliser une popup",
	["UrlCopy/Use popup window to show URL."] = "Utiliser une popup pour afficher le lien URL sélectionné."
}

PL:AddLocale(nil, "frFR",L)


L=
{
	["display_desc"] = "Steuerung und Darstellung des Chatfensters",
	["display_name"] = "Anzeigeeinstellungen",
	["extras_desc"] = "Verschiedene Module",
	["extras_name"] = "Sonstiges",
	["formatting_desc"] = "Darstellung der Zeilen im Chat ändern (Look&Feel)",
	["formatting_name"] = "Chat formatieren",
	["load_desc"] = "Steuert das Ladeverhalten dieses Moduls.",
	["load_disabled"] = "Ausgeschaltet",
	["load_disabledonrestart"] = "Deaktiviert (neu laden)",
	["load_enabled"] = "Eingeschaltet",
	["load_enabledonrestart"] = "Aktiviert (neu laden)",
	["load_no"] = "Nicht laden",
	["modulecontrol_desc"] = "Steuert das Laden und Aktivieren von Prat-Modulen.",
	["modulecontrol_name"] = "Modulsteuerung",
	["prat"] = "Prat",
	["reload_required"] = "Diese Änderung wird erst nach dem Neustart vollständig wirksam.",
	["AddonMsgs/Addon message options."] = "Optionen für AddOn-Meldungen",
	["AddonMsgs/AddonMsgs"] = "AddOn-Meldungen",
	["AddonMsgs/show_desc"] = "Anzeige versteckter AddOn-Meldungen in jedem Chatfenster ein-/ausschalten.",
	["AddonMsgs/show_name"] = "AddOn-Meldungen anzeigen",
	["AddonMsgs/show_perframedesc"] = "Anzeige versteckter AddOn-Meldungen ein-/ausschalten.",
	["AddonMsgs/show_perframename"] = "Addon-Meldungen in Chatfenster %d anzeigen",
	["Alias/ - list all aliases; supply <keyword> to search for matching aliases (cmd aliases: /listallaliases)"] = "- Auflisten aller Aliase; <Suchbegriff> eingeben, um nach passenden Aliasen zu suchen (cmd aliases: /listallaliases)",
	["Alias/%s() called with blank string!"] = "%s() mit leerem String aufgerufen!",
	["Alias/%s() called with nil argument!"] = "%s() mit nil Parameter aufgerufen!",
	["Alias//%s aliased to \"/%s\""] = "/%s hat nun den Alias \"/%s\"",
	["Alias//%s aliased to: /%s"] = "/%s hat nun den Alias: /%s",
	["Alias/<alias> - remove the alias <alias> (cmd aliases: /delalias, /remalias)"] = "<alias> - entfernt den Alias <alias> (cmd aliases: /delalias, /remalias)",
	["Alias/<command>[ <value>] - alias <command> to be executed as <value>, or return the value of the currently defined alias for <command> if <command> has not been assigned a value. eg: \"/alias /examplehello /say hello there\" - typing \"/examplehello\" will now cause your character to say \"hello there\"; \"/alias examplehello\" - s \"/examplehello is aliased to /say hello there\" (cmd aliases: /addalias)"] = "<befehl>[ <wert>] - alias <befehl> auszuführen als <wert>, oder den Wert des gegenwärtig definierten Alias erwidern für <befehl> falls <befehl> noch kein Wert zugewiesen worden ist; z.B: \"/alias /beispielhallo /say hallo du\" - die Eingabe von \"/beispielhallo\" wird nun deinen Charakter veranlassen, zu sagen \"hallo du\"; \"/alias beispielhallo\" - s \"/beispielhallo is aliased to /say hallo du\" (befehl alias: /addalias)",
	["Alias/<keyword> - finds all aliases matching <keyword> (cmd aliases: /findalias)"] = "<keyword> - Findet alle Alias, die <keyword> (Stichwort) entsprechen (cmd aliases: /findalias)",
	["Alias/add"] = "hinzufügen",
	["Alias/add an alias"] = "Ein Alias hinzufügen",
	["Alias/alias \"/%s\" does not exist"] = "Alias \"/%s\" existiert nicht.",
	["Alias/dealiasing command /%s to /%s"] = "Alias des Befehls ausschalten /%s wird /%s ",
	["Alias/deleting alias \"/%s\" (previously aliased as \"/%s\")"] = "Alias \"/%s\" wird gelöscht (bisheriger Alias \"/%s\")",
	["Alias/Display extra information in the chat frame when commands are dealiased"] = "Zusätzliche Informationen im Chatfenster anzeigen, wenn Alias von Befehlen ausgeschaltet wird.",
	["Alias/Don't overwrite existing aliases when using /addalias"] = "Bestehende Alias nicht überschreiben, wenn /addalias benutzt wird.",
	["Alias/Expand aliases as you are typing"] = "Autovervollständigung von Alias während des Tippens",
	["Alias/find aliases matching a given search term"] = "Mit einem Suchbegriff nach Alias suchen",
	["Alias/findaliases"] = "findaliases",
	["Alias/infinite loop detected for alias /%s - ignoring"] = "Endlosschleife entdeckt für Alias /%s - wird ignoriert",
	["Alias/inline"] = "innerhalb",
	["Alias/list all aliases"] = "Alle Alias auflisten",
	["Alias/listaliases"] = "listaliases",
	["Alias/matching aliases found: %d"] = "Passende Alias gefunden: %d",
	["Alias/module_desc"] = "Fügt das Kommando /alias hinzu, das verwendet werden kann, um \"Slash\"-Befehle durch Alias zu ersetzen, ähnlich wie der Alias-Befehl unter Unix.",
	["Alias/module_name"] = "Alias",
	["Alias/No aliases have been defined"] = "Es wurden keine Alias definiert.",
	["Alias/noclobber"] = "noclobber",
	["Alias/noclobber set - skipping new alias: /%s already expands to /%s"] = "\"Noclobber\" (kein unsinniger Kleinkram) eingeschaltet - neues Alias übergehen: /%s wird bereits erweitert zu /%s",
	["Alias/Options"] = "Optionen",
	["Alias/Options for altering the behaviour of Alias"] = "Optionen für Verhaltensänderung von Alias",
	["Alias/overwriting existing alias \"/%s\" (was aliased to \"/%s\")"] = "Überschreibe vorhandenes Alias \"/%s\" (Vorheriges Alias war: \"/%s\")",
	["Alias/refusing to alias \"/%s\" to anything in the interests of Not Buggering Everything Up"] = "Verweigert Alias von \"/%s\" zu etwas anderem, um Störungen zu vermeiden.",
	["Alias/remove an alias"] = "Ein Alias entfernen",
	["Alias/There is no alias current defined for \"%s\""] = "Es ist derzeit kein Alias definiert für \"%s\"",
	["Alias/total aliases: %d"] = "Gesamtanzahl an Alias: %d",
	["Alias/tried to show value for alias \"%s\" but undefined in module.Aliases!"] = "Versuche einen Wert für Alias von \"%s\" anzuzeigen, ist aber nicht definiert im Modul \"Alias\"!",
	["Alias/unalias"] = "Alias aufheben",
	["Alias/verbose"] = "verlängern",
	["Alias/warnUser() called with nil argument!"] = "warnUser() mit nil-Paramter aufgerufen!",
	["Alias/warnUser() called with zero length string!"] = "warnUser() mit leerem String aufgerufen!",
	["AltNames/%d alts found for %s: %s"] = "%d Alts gefunden für %s: %s",
	["AltNames/%s alts imported from LOKWhoIsWho"] = "%s Alts importiert von LOKWhoIsWho",
	["AltNames/%s total alts linked to mains"] = "Insgesamt %s Alts mit Haupt-Charakteren verknüpft",
	["AltNames/(.-)'s? [Aa]lt"] = " %f[%a\\192-\\255]([%a\\192-\\255]+)%f[^%a\\128-\\255]s [Aa]lt",
	["AltNames/([^%s%p%d%c%z]+)'s alt"] = "%f[%a\\192-\\255]([%a\\192-\\255]+)%f[^%a\\128-\\255]s [Aa]lt",
	["AltNames/.*[Aa]lts?$"] = ".*[Aa]lts?$",
	["AltNames/<alt name> (eg, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)"] = "<Altname> (z.B. /altnames del FalscherAltname)",
	["AltNames/<main> (eg /altnames listalts Fin)"] = "<main> (z.b. /altnames listalts Shylera)",
	["AltNames/<search term> (eg, /altnames find fin)"] = "<Suchbegriff> (z.b. /altnames find Shy)",
	["AltNames/Alt"] = "Alt",
	["AltNames/alt"] = "Alt",
	["AltNames/alt name exists: %s -> %s; not overwriting as set in preferences"] = "Alt-Name vorhanden: %s -> %s; wir nicht überschrieben, wie in der Auswahl eingestellt.",
	["AltNames/AltNames"] = "AltName",
	["AltNames/Alts:"] = "Alts:",
	["AltNames/autoguildalts_desc"] = "Automatisch den Import von der Gildenliste im Hintergrund ausführen.",
	["AltNames/autoguildalts_name"] = "Auto-Import der Gilden-Alts",
	["AltNames/Be quiet"] = "Stumm schalten",
	["AltNames/character removed: %s"] = "Charakter entfernt: %s",
	["AltNames/Class colour"] = "Klassenfarbe",
	["AltNames/Clear all"] = "Alle löschen",
	["AltNames/Clear all links between alts and main names."] = "Alle Verknüpfungen zwischen Alt- und Haupt-Charakternamen löschen",
	["AltNames/Colour"] = "Farbe",
	["AltNames/Delete a character's link to another character as their main."] = "Die Verknüpfung eines Charakters zu einem anderen (Haupt-)Charakter löschen.",
	["AltNames/Delete alt"] = "Alts löschen",
	["AltNames/Disabled"] = "Inaktiv",
	["AltNames/Display a player's alts in the tooltip"] = "Die Altnamen eines Spielers im Tooltip anzeigen.",
	["AltNames/Display a player's main name in the tooltip"] = "Den Namen des Hauptcharakters eines Spielers im Tooltip anzeigen.",
	["AltNames/Display main names in the same colour as that of the alt's class (taking the data from the PlayerNames module if it is enabled)"] = "Namen der Hauptcharaktere in Klassenfarbe des Alts anzeigen (Daten werden vom Modul PlayerNames geliefert, falls aktiviert).",
	["AltNames/Display main names in the same colour as that of the main's class (taking the data from the PlayerNames module if it is enabled)"] = "Namen der Hauptcharaktere in Klassenfarbe des Hauptcharakters anzeigen (Daten werden vom Modul PlayerNames geliefert, falls aktiviert).",
	["AltNames/Don't overwrite existing alt <-> main links when importing or adding new alts."] = "Vorhandenen Alt nicht überschreiben <-> Verknüpfungen zu Hauptcharakteren während des Imports oder des Hinzufügens von neuen Alts.",
	["AltNames/Don't overwrite existing links"] = "Bestehende Verknüpfungen nicht überschreiben",
	["AltNames/don't use"] = "Nicht verwenden",
	["AltNames/Don't use data from the PlayerNames module at all"] = "Daten vom Modul SpielerNamen nicht verwenden.",
	["AltNames/ERROR: some function sent a blank message!"] = "ERROR: eine Funktion hat eine leere Nachricht hinterlassen.",
	["AltNames/Find characters"] = "Charaktersuche",
	["AltNames/Fix alts"] = "Alts reparieren",
	["AltNames/Fix corrupted entries in your list of alt names."] = "Korrupte Einträge in deiner Liste der Alt-Namen reparieren.",
	["AltNames/Found alt: %s => main: %s"] = "Alt gefunden: %s => Haupt: %s",
	["AltNames/guild member alts found and imported: %s"] = "Alt-Chars eines Gildenmitglieds gefunden und importiert: %s",
	["AltNames/Import from Guild Greet database"] = "Importiere von der Gilden-Begrüßungs-Datenbank",
	["AltNames/Import from guild roster"] = "Importiere von Gildenliste",
	["AltNames/Import options"] = "Import-Optionen",
	["AltNames/Imports alt names from a Guild Greet database, if present"] = "Importiert Alt-Namen von einer Gilden-Begrüßungs-Datenbank, wenn vorhanden.",
	["AltNames/Imports alt names from the guild roster by checking for members with the rank \"alt\" or \"alts\", or guild / officer notes like \"<name>'s alt\""] = "Importiert Alt-Namen von der Gildenliste, indem Mitglieder mit dem Rang \"alt\" oder \"alts\", oder Gilden- und Gildenoffiziersnotizen wie \"<name>s alt\" geprüft werden.",
	["AltNames/Imports data from LOKWhoIsWho, if present (drop your SavedVariablesLOKWhoIsWho.lua in the Prat directory to be able to use this)."] = "Importiert Daten von LOKWhoIsWho, wenn vorhanden (um diese Funktion verwenden zu können, kopiere deine Datei SavedVariablesLOKWhoIsWho.lua in den Prat-Ordner!).",
	["AltNames/Left"] = "Links",
	["AltNames/link <alt name> <main name> (eg, /altnames link Fin Finjathealtoffin)"] = "Verknüpfe <alt-name> <hauptcharname> (z.B. /altnames link Fin Finjaderaltvonfin)",
	["AltNames/Link alt"] = "Alt verknüpfen",
	["AltNames/Link someone's alt character with the name of their main."] = "Jemandes Alt-Charakter mit dem Namen seines Hauptcharakters verknüpfen.",
	["AltNames/linked alt %s => %s"] = "Altchar verknüpft %s => %s",
	["AltNames/List all"] = "Alle auflisten",
	["AltNames/List all links between alts and their main names."] = "Alle Verknüpfungen zwischen Alts und deren Hauptchar-Namen auflisten.",
	["AltNames/List alts"] = "Alts auflisten",
	["AltNames/List alts for a given character"] = "Alts eines bestimmten Charakters auflisten.",
	["AltNames/LOKWhoIsWho data not found"] = "LOKWhoIsWho-Daten nicht gefunden",
	["AltNames/LOKWhoIsWho import"] = "LOKWhoIsWho-Import",
	["AltNames/LOKWhoIsWho lua file not found, sorry."] = "LOKWhoIsWho.lua-Datei nicht gefunden, entschuldige.",
	["AltNames/Main"] = "Hauptchar",
	["AltNames/main"] = "Hauptchar",
	["AltNames/Main name position"] = "Position des Namens eines Hauptcharakters",
	["AltNames/Main:"] = "Hauptchar:",
	["AltNames/mainpos_desc"] = "Wo der Name eines Hauptchars dargestellt werden soll, wenn diese mit ihrem Alt-Char zocken.",
	["AltNames/mainpos_name"] = "Hauptchar-Name Position",
	["AltNames/module_desc"] = "Erlaubt das Verknüpfen von Alt-Chars mit deren Hauptchars, was dann neben deren Namen angezeigt werden kann, wenn sie in Chat-Mitteilungen erscheinen (standard = aus).",
	["AltNames/no alts found for character "] = "Keine Alt-Chars für diesen Charakter gefunden.",
	["AltNames/no alts or mains found matching \"%s\""] = "Keine Alt-Chars oder Hauptchars gefunden, die mit \"%s\" übereinstimmen.",
	["AltNames/No arg string given to :addAlt()"] = "Kein Parameter angegeben für: :addAlt()",
	["AltNames/no characters called \"%s\" found; nothing deleted"] = "Keine Charaktere mit dem Namen \"%s\" gefunden; es wurde nichts gelöscht.",
	["AltNames/No Guild Greet database found"] = "Keine Gilden-Begrüßungs-Datenbank gefunden.",
	["AltNames/No main name supplied to link %s to"] = "Kein Hauptcharname geliefert, mit dem %s verknüpft werden kann.",
	["AltNames/no matches found"] = "Keine Übereinstimmungen gefunden.",
	["AltNames/quiet"] = "Sei ruhig",
	["AltNames/quiet_desc"] = "Ob Meldungen an den Chat-Rahmen gesendet werden oder nicht.",
	["AltNames/quiet_name"] = "quiet_name",
	["AltNames/Right"] = "Rechts",
	["AltNames/Search the list of linked characters for matching main or alt names."] = "Durchsuche die Liste der verknüpften Charaktere nach passenden Hauptchar- oder Altchar-Namen.",
	["AltNames/searched for: %s - total matches: %s"] = "Gesucht nach: %s - gesamte Übereinstimmungen: %s",
	["AltNames/Show alts in tooltip"] = "Alts im Tooltip anzeigen",
	["AltNames/Show main in tooltip"] = "Hauptchar im Tooltip anzeigen",
	["AltNames/Start"] = "Starte",
	["AltNames/The colour of an alt's main name that will be displayed"] = "Die Farbe des Hauptcharnamens eines Alts, der dargestellt wird.",
	["AltNames/Use class colour (from the PlayerNames module)"] = "Klassenfarbe verwenden (vom Modul \"PlayerNames\") ",
	["AltNames/use class colour of alt"] = "Klassenfarbe für Alt-Char verwenden.",
	["AltNames/use class colour of main"] = "Klassenfarbe des Hauptchars verwenden",
	["AltNames/Use LibAlts Data"] = "Daten von LibAlts benutzen",
	["AltNames/Use the data available via the shared alt information library."] = "Verwende die vorhandenen Daten über die gemeinsam genutzte Alt-Informations-Sammlung.",
	["AltNames/Various ways to import a main's alts from other addons"] = "Verschiedene Möglichkeiten, wie man die Alts eines Hauptchars von anderen AddOns importieren kann.",
	["AltNames/warning: alt %s already linked to %s"] = "Warnung: Alt %s ist bereits mit %s verknüpft!",
	["AltNames/Where to display a character's main name when on their alt."] = "Wo der Name eines Hauptcharakters angezeigt werden soll, wenn diese mit ihrem Alt-Char zocken.",
	["AltNames/Whether to report to the chat frame or not."] = "Ob Meldungen im Chatfenster erscheinen oder nicht.",
	["AltNames/You are not in a guild"] = "Du bist in keiner Gilde",
	["AltNames/You have not yet linked any alts with their mains."] = "Bisher hast du keine Alt-Chars mit ihren Hauptchars verknüpft.",
	["Bubbles/color_desc"] = "Färbe den Sprechblasenrahmen, im selben Stil, wie den Chattyp ein.",
	["Bubbles/color_name"] = "Sprechblasen färben",
	["Bubbles/font_desc"] = "Die selbe Schriftart wie auch für das Chatfenster verwenden",
	["Bubbles/font_name"] = "Chatschriftart verwenden",
	["Bubbles/fontsize_desc"] = "Stellt die Schriftgröße der Sprechblasen ein",
	["Bubbles/fontsize_name"] = "Schriftgröße",
	["Bubbles/format_desc"] = "Benutze die Pratformatierung zum Einfärben des Sprechblasentextes",
	["Bubbles/format_name"] = "Text formatieren",
	["Bubbles/icons_desc"] = "Zielmarkierungssymbole in den Sprechblasen anzeigen.",
	["Bubbles/icons_name"] = "Zielmarkierungssymbole anzeigen",
	["Bubbles/module_desc"] = "Einstellung des Sprechblasenverhaltens",
	["Bubbles/module_name"] = "Blasen",
	["Bubbles/shorten_desc"] = "Verkürze die Sprechblasen zu einem Einzeiler. Fahre mit der Maus über die Sprachblase , um den Text zu erweitern",
	["Bubbles/shorten_name"] = "Sprechblasen verkürzen",
	["Bubbles/transparent_desc"] = "Ausblenden des Hintergrunds und den Randstrukturen von Sprechblasen. (/reload ist erforderlich, um diese Option rückgängig zu machen)",
	["Bubbles/transparent_name"] = "Transparente Blasen",
	["Buttons/alpha_desc"] = "Stellt die Transparenz der Chatmenüs und Navigationspfeile aller Chatfenster ein.",
	["Buttons/alpha_name"] = "Transparenz einstellen",
	["Buttons/Buttons"] = "Schaltflächen",
	["Buttons/Chat window button options."] = "Optionen für die die Schaltflächen der Chatfenster",
	["Buttons/chatmenu_desc"] = "Schaltet das Chatmenü ein/aus.",
	["Buttons/chatmenu_name"] = "Chatmenü anzeigen",
	["Buttons/Default"] = "Standard",
	["Buttons/Right, Inside Frame"] = "Rechts, innerhalb des Rahmens",
	["Buttons/Right, Outside Frame"] = "Rechts, außerhalb des Rahmens",
	["Buttons/scrollReminder_desc"] = "Zeigt eine Erinnerungsschaltfläche an, wenn du dich nicht am unteren Ende des Chatfensters befindest.",
	["Buttons/scrollReminder_name"] = "ScrollDown-Erinnerung anzeigen",
	["Buttons/Set Position"] = "Position einstellen",
	["Buttons/Sets position of chat menu and arrows for all chat windows."] = "Stellt die Position des Chatmenüs und der Navigationspfeile für alle Chatfenster ein.",
	["Buttons/Show Arrows"] = "Zeige die Navigationspfeile",
	["Buttons/Show Chat%d Arrows"] = "Navigationspfeile im Chat%d anzeigen",
	["Buttons/showbnet_desc"] = "Geselligkeitsmenü anzeigen",
	["Buttons/showbnet_name"] = "Geselligkeitsmenü anzeigen",
	["Buttons/showmenu_desc"] = "Chatmenü anzeigen",
	["Buttons/showmenu_name"] = "Menü anzeigen",
	["Buttons/showminimize_desc"] = "Zeigt den Schalter zum Minimieren an",
	["Buttons/showminimize_name"] = "Zeige Minimieren-Knopf",
	["Buttons/Toggle showing chat arrows for each chat window."] = "Anzeige der Navigationspfeile für jedes Chatfenster ein- und ausschalten.",
	["Buttons/Toggles navigation arrows on and off."] = "Schaltet die Anzeige der Navigationspfeile an und aus",
	["ChannelColorMemory/(%w+)%s?(.*)"] = "(%w+)%s?(.*)",
	["ChannelColorMemory/ChannelColorMemory"] = "ChannelColorMemory",
	["ChannelColorMemory/Remembers the colors of each channel name."] = "Speichert die Farbe jedes Kanalnamens.",
	["ChannelNames/%s settings."] = "%s -Einstellungen.",
	["ChannelNames/<string>"] = "<string>",
	["ChannelNames/Add Channel Abbreviation"] = "Hinzufügen einer Kanal-Abkürzung",
	["ChannelNames/addnick_desc"] = "Fügt einen abgekürzten Kanalnamen hinzu. Füge den Vorsatz '#' dem Namen hinzu, um die Nummer des Kanals mit anzuzeigen (z.B. '#Handel')",
	["ChannelNames/Blank"] = "Leer",
	["ChannelNames/chanlink_desc"] = "Den Kanal zu einem anklickbaren Link machen, der den Chat zu diesem Kanal öffnet.",
	["ChannelNames/chanlink_name"] = "Kanal-Link erstellen",
	["ChannelNames/Channel %d"] = "Kanal %d",
	["ChannelNames/Channel name abbreviation options."] = "Optionen zu Kanalnamen-Abkürzungen.",
	["ChannelNames/ChannelNames"] = "Channel-Namen",
	["ChannelNames/channelnick_desc"] = "Kanalabkürzungen",
	["ChannelNames/channelnick_name"] = "Kanalabkürzungen",
	["ChannelNames/Clear Channel Abbreviation"] = "Channel-Abkürzung löschen",
	["ChannelNames/Clears an abbreviated channel name."] = "Löscht die Abkürzung eines Kanals",
	["ChannelNames/colon_desc"] = "Hinzufügen eines Doppelpunkts nach dem Ersetzen des Kanals ein-/ausschalten.",
	["ChannelNames/colon_name"] = "Doppelpunkt anzeigen",
	["ChannelNames/Dont display the channel/chat type name"] = "Name des Kanal-/Chat-Typs nicht anzeigen",
	["ChannelNames/otheropts_desc"] = "Weitere Formatierungsoptionen für die Kanäle, sowie Steuerung der Kanal-Links.",
	["ChannelNames/otheropts_name"] = "Weitere Optionen",
	["ChannelNames/Remove Channel Abbreviation"] = "Kanal-Abkürzung entfernen",
	["ChannelNames/Removes an an abbreviated channel name."] = "Entfernt einen abgekürzten Kanalnamen.",
	["ChannelNames/Replace"] = "Ersetzen",
	["ChannelNames/Set"] = "Setzen",
	["ChannelNames/space_desc"] = [=[Hinzufügen eines Leerzeichens nach dem Ersetzen des Kanals ein-/ausschalten.
]=],
	["ChannelNames/space_name"] = "Leerzeichen anzeigen",
	["ChannelNames/Toggle replacing this channel."] = "Ersetzen für diesen Kanal ein-/ausschalten.",
	["ChannelNames/Use a custom replacement for the chat %s text."] = "Benutze einen allgemein üblichen Ersatz für den Text des Chats %s.",
	["ChannelSticky/Channel"] = "Kanal",
	["ChannelSticky/ChannelSticky"] = "ChannelSticky",
	["ChannelSticky/Chat channel sticky options."] = "\"Sticky\"-Optionen für Chat-Kanal.",
	["ChannelSticky/ChatType"] = "ChatType",
	["ChannelSticky/Per chat type options."] = "Optionen nach Chat-Type.",
	["ChannelSticky/smartgroup_desc"] = "Fügt einen Befehl /gr hinzu, der automatisch den richtigen Chat-Typ aufnimmt - RAID, PARTY, oder BATTLEGROUND",
	["ChannelSticky/smartgroup_name"] = "Intelligente Gruppen",
	["ChannelSticky/Sticky %s"] = "\"Sticky\" %s",
	["ChannelSticky/Sticky Per Chat Frame"] = "\"Sticky\" nach Chat-Rahmen",
	["ChannelSticky/Toggle remembering the chat type last used per chat frame."] = "Das Merken des Chat-Typs, der zuletzt im Chatfenster aktiviert war, umschalten.",
	["ChannelSticky/Toggles sticky on and off for %s."] = "\"Sticky\" ein- und ausschalten für %s.",
	["ChatLink/gem_desc"] = "GEM-Kompatibilitätsmodus aktivieren",
	["ChatLink/gem_name"] = "GEM-Kompatibilität",
	["ChatLink/module_desc"] = "Optionen für Gegenstandslinks in Chat-Kanal.",
	["ChatLink/module_info"] = "Dieses Modul ermöglicht dir, Gegenstände in jedwede Chat-Kanäle (Nicht-Handels-Kanäle) zu verlinken; z.B. allgemeine oder private Kanäle,  wie deinen Klassen-Kanal. Für Benutzer ohne AddOn mit der Fähigkeit diese zu Dekodieren, wird dies wie Spam aussehen - also sei höflich.",
	["ChatLink/module_name"] = "ChannelLinks",
	["ChatLink/Trade"] = "Handel",
	["ChatLog/A module to automaticaly enable chat and combat logging."] = "Ein Modul, das automatisch das Speichern des Chat- und Kampflogs aktiviert.",
	["ChatLog/Chat log recorded to <WoW Installation>\\Logs\\WoWChatLog.txt only upon logout."] = "Speicherung des Chat-Logs in <WoW Installation>\\Logs\\WoWChatLog.txt nur während des Ausloggens.",
	["ChatLog/Chat Log: Disabled"] = "Chat-Log: Inaktiv",
	["ChatLog/Chat Log: Enabled"] = "Chat-Log: Aktiv",
	["ChatLog/ChatLog"] = "ChatLog",
	["ChatLog/Combat log recorded to <WoW Installation>\\Logs\\WoWCombatLog.txt only upon logout."] = "Speicherung des Kampflogs in <WoW Installation>\\Logs\\WoWCombatLog.txt nur während des Ausloggens.",
	["ChatLog/Combat Log: Disabled"] = "Kampflog: Inaktiv",
	["ChatLog/Combat Log: Enabled"] = "Kampflog: Aktiv",
	["ChatLog/quiet_desc"] = "Zeigt keinerlei Mitteilungen an, wenn dieser Modus aktiv ist, oder wenn es die Log-Einstellungen verändert.",
	["ChatLog/quiet_name"] = "Feedback-Mitteilungen unterdrücken",
	["ChatLog/Toggle Chat Log"] = "Chat-Log umschalten",
	["ChatLog/Toggle chat log on and off."] = "Chat-Log ein- und ausschalten.",
	["ChatLog/Toggle Combat Log"] = "Kampflog umschalten",
	["ChatLog/Toggle combat log on and off."] = "Kampflog ein- und ausschalten.",
	["ChatTabs/Active Alpha"] = "Aktive Transparenz",
	["ChatTabs/All"] = "Alle",
	["ChatTabs/Always"] = "Immer",
	["ChatTabs/Chat window tab options."] = "Optionen für Chatfensterreiter",
	["ChatTabs/Default"] = "Standard",
	["ChatTabs/disableflash_desc"] = "Deaktiviert das Blinken der Chat-Tabs.",
	["ChatTabs/disableflash_name"] = "Blinken ausschalten",
	["ChatTabs/Hidden"] = "Verborgen",
	["ChatTabs/Individual"] = "Individuell",
	["ChatTabs/Not Active Alpha"] = "Inaktive Transparenz",
	["ChatTabs/preventdrag_desc"] = "Verhindert das Verschieben der Chattabs mit der Maus.",
	["ChatTabs/preventdrag_name"] = "Ziehen verhindern",
	["ChatTabs/Set ChatFrame%d Display Mode"] = "Darstellungsmodus von Chatfenster%d einstellen",
	["ChatTabs/Set Display Mode"] = "Darstellungsmodus einstellen",
	["ChatTabs/Set tab display mode for each chat window."] = "Reiterdarstellungsmodus für jedes Chatfenster einstellen: markiert (an), nicht markiert (aus), grau markiert (standard)",
	["ChatTabs/Set tab display to always, hidden or the Blizzard default."] = "Reiterdarstellung einstellen: immer, verbergen oder Blizzards Standard",
	["ChatTabs/Sets alpha of chat tab for active chat frame."] = "Transparenz der Chatreiter von aktiven Chatfenstern einstellen.",
	["ChatTabs/Sets alpha of chat tab for not active chat frame."] = "Transparenz der Chatreiter von inaktiven Chatfenstern einstellen.",
	["ChatTabs/Tabs"] = "Reiter (Reiter der Chatfenster)",
	["Clear/Adds clear text slash commands (/clear)(/cls)(/clearall)(/clsall)."] = "Fügt \"Slash\"-Befehle zum Löschen von Text hinzu (/clear)(/cls)(/clsall).",
	["Clear/Clear"] = "Löschen",
	["Clear/Clearall"] = "Alles löschen",
	["Clear/Clears all chat frames."] = "Alle Chatfenster leeren",
	["Clear/Clears the current chat frame."] = "Das aktuelle Chatfenster leeren.",
	["CopyChat/ Text"] = "Text",
	["CopyChat/BBCode"] = "BBCode",
	["CopyChat/BOTTOMLEFT"] = "Unten, links",
	["CopyChat/BOTTOMRIGHT"] = "Unten, rechts",
	["CopyChat/buttonpos_desc"] = "Wo im Chatfenster die Kopier-Schaltfläche angezeigt werden soll.",
	["CopyChat/buttonpos_name"] = "Schaltflächenposition",
	["CopyChat/ChatFrame"] = "Chatfenster",
	["CopyChat/Copy all of the text in the selected chat frame into an edit box"] = "Den gesamten Text des ausgewählten Chatfensters in ein Eingabefeld kopieren",
	["CopyChat/Copy Text"] = "Text kopieren",
	["CopyChat/Copy Text Format"] = "Textformat kopieren",
	["CopyChat/Copy text from the active chat window."] = "Text im aktiven Chatfenster kopieren.",
	["CopyChat/Copy To Editbox"] = "In das Eingabefenster kopieren",
	["CopyChat/CopyChat"] = "CopyChat",
	["CopyChat/HTML"] = "HTML",
	["CopyChat/Message From : %s"] = "Mitteilung von: %s",
	["CopyChat/Plain"] = "Einfach",
	["CopyChat/Should the copied text be plain, or formatted so you can see the colors."] = "Soll der kopierte Text einfach oder formattiert mit farbiger Darstellung kopiert werden?",
	["CopyChat/showbutton_desc"] = "Schaltfläche im Chat-Rahmen anzeigen",
	["CopyChat/showbutton_name"] = "Schaltfläche Kopieren",
	["CopyChat/TOPLEFT"] = "Oben, links",
	["CopyChat/TOPRIGHT"] = "Oben, rechts",
	["CopyChat/Wowace.com Forums"] = "Wowace.com Foren",
	["CustomFilters/<string>"] = "<string>",
	["CustomFilters/Add a pattern to search for."] = "Muster hinzufügen, nach dem gesucht wird.",
	["CustomFilters/Add Pattern"] = "Muster hinzufügen",
	["CustomFilters/Block Message"] = "Blockiere Mitteilung",
	["CustomFilters/Channel Data"] = "Kanal-Daten",
	["CustomFilters/Channel to send output text to."] = "Kanal, an den Ausgabetext gesendet werden soll.",
	["CustomFilters/Enabled"] = "Aktiviert",
	["CustomFilters/Extra data for WHISPER (target) and CHANNEL (channel name or num)"] = "Zusätzliche Daten für WHISPER (Ziel) und CHANNEL (Kanalname oder -nummer)",
	["CustomFilters/Filter Name"] = "Name filtern",
	["CustomFilters/Forward"] = "Weiterleiten",
	["CustomFilters/Forward the message to a chat channel."] = "Mitteilung weiterleiten an Chat-Kanal.",
	["CustomFilters/Forward the message to a custom chat channel."] = "Ausgabe an einen privaten Chat-Kanal",
	["CustomFilters/ForwardCustom"] = "ForwardCustom",
	["CustomFilters/ForwardMessage"] = "ForwardMessage",
	["CustomFilters/ForwardMessageCustom"] = "Privater Kanal",
	["CustomFilters/Hilight Color"] = "Farbe für Hervorhebungen",
	["CustomFilters/Hilight Match Text"] = "Text hervorheben, der Suchbegriff entspricht",
	["CustomFilters/Inbound"] = "Eingehend",
	["CustomFilters/inchannels_desc"] = "Suche in bestimmten Kanälen",
	["CustomFilters/inchannels_name"] = "Suche Kanäle",
	["CustomFilters/Is this pattern enabled for use?"] = "Ist das Muster zur Anwendung aktiviert?",
	["CustomFilters/Match Options"] = "Übereinstimmungsoptionen",
	["CustomFilters/module_desc"] = "Modul zur Unterstützung eigener Filter.",
	["CustomFilters/module_name"] = "CustomFilters",
	["CustomFilters/Only output the message portion of the chat text, leave out the channel, and playername etc."] = "Nur den Mitteilungsabschnitt des Chat-Textes ausgeben - Kanal, Spielernamen etc. auslassen.",
	["CustomFilters/Outbound"] = "Ausgehend",
	["CustomFilters/Output Channel"] = "Ausgabekanal",
	["CustomFilters/Output Message Only"] = "Nur Mitteilung ausgeben",
	["CustomFilters/Pattern Info"] = "Muster-Informationen",
	["CustomFilters/Pattern Options"] = "Optionen für Muster",
	["CustomFilters/Play a sound when this message is output to the chatframe"] = "Einen Klang abspielen, wenn diese Mitteilung an das Chatfenster ausgegeben wurde.",
	["CustomFilters/Play Sound"] = "Ton abspielen",
	["CustomFilters/Prevent the message from being displayed"] = "Die Anzeige der Mitteilung verhindern.",
	["CustomFilters/Remove an existing pattern."] = "Ein vorhandenes Muster entfernen.",
	["CustomFilters/Remove Pattern"] = "Muster entfernen",
	["CustomFilters/Replacement Text"] = "Ersatztext",
	["CustomFilters/Search Format String"] = "Suche Formatierungs-String",
	["CustomFilters/Search Pattern"] = "Suchmuster",
	["CustomFilters/Secondary Output"] = "Sekundäre Ausgabe",
	["CustomFilters/Send to a secondary output"] = "Versende eine sekundäre Ausgabe",
	["CustomFilters/Supplied pattern is a format string instead of a pattern"] = "Geliefertes Muster ist eine Formatierungsvariable anstatt eines Musters.",
	["CustomFilters/Your name for this filter"] = "Dein Name für diesen Filter",
	["Editbox/Attach edit box to..."] = "Befestige Eingabefeld an ...",
	["Editbox/Attach to..."] = "Befestige an ...",
	["Editbox/Background color"] = "Hintergrundfarbe",
	["Editbox/Background Inset"] = "Hintergrundbild",
	["Editbox/Background texture"] = "Hintergrundtextur",
	["Editbox/Border color"] = "Randfarbe",
	["Editbox/Border texture"] = "Randtextur",
	["Editbox/Bottom"] = "Unten",
	["Editbox/Color border by channel"] = "Rand einfärben nach Kanal",
	["Editbox/currently_broken_alt_behavior"] = [=[Das Verhalten der Pfeiltasten im Chat ist im aktuellen WoW-Client defekt,

verwende stattdessen Alt+Hoch und Alt+Runter, um durch den Chatverlauf zu scrollen.]=],
	["Editbox/Edge Size"] = "Kantengröße",
	["Editbox/Editbox"] = "Eingabefeld",
	["Editbox/Editbox options."] = "Optionen für das Eingabefeld.",
	["Editbox/Font"] = "Schriftart",
	["Editbox/Free-floating"] = "Freischwebend",
	["Editbox/Free-floating, Locked"] = "Freischwebend, fixiert",
	["Editbox/Requires the Alt key to be held down to move the cursor in chat"] = "Das Drücken der Alt-Taste wird benötigt, um den Cursor (Zeiger) im Chat zu bewegen.",
	["Editbox/Select the font to use for the edit box"] = "Schriftart auswählen, die im Eingabefeld verwendet wird.",
	["Editbox/Sets the frame's border color to the color of your currently active channel"] = "Wendet die Randfarbe des Rahmens auf die Farbe deines gegenwärtig aktiven Kanals an.",
	["Editbox/Tile Size"] = "Kachelgröße",
	["Editbox/Top"] = "Oben",
	["Editbox/Use Alt key for cursor movement"] = "Benutze Alt-Taste für Cursor-Bewegung",
	["EventNames/allevents_desc"] = "Prat-Verarbeitung für alle Chat-Ereignisse aktivieren.",
	["EventNames/allevents_name"] = "Alle Ereignisse verarbeiten",
	["EventNames/Chat window event name options."] = "Optionen zu Ereignisnamen in Chatfenstern.",
	["EventNames/EventNames"] = "Ereignisnamen",
	["EventNames/Show"] = "Anzeigen",
	["EventNames/Show events on chatframes"] = "Ereignisse in Chatfenstern anzeigen",
	["EventNames/show_desc"] = "Anzeige der Ereignisnamen in jedem Fenster ein- und ausschalten",
	["EventNames/show_name"] = "Ereignisnamen anzeigen",
	["Fading/duration_desc"] = "Stellt die Anzahl der Sekunden ein ehe der Text in Chatfenstern verblasst.",
	["Fading/duration_name"] = "Verzögerung des Verblassens einstellen (Sekunden)",
	["Fading/module_desc"] = "Optionen zum Verblassen des Textes in Chatfenstern.",
	["Fading/module_name"] = "Verblassen",
	["Fading/textfade_desc"] = "Schaltet das Verblassen des Textes jedes Chatfenster ein/aus.",
	["Fading/textfade_name"] = "Verblassen einschalten",
	["Filtering/A module to provide basic chat filtering."] = "Ein Modul, welches das elementare Filtern von Chat ermöglicht.",
	["Filtering/afkdnd_desc"] = "AFK- und DND-Mitteilungen unterdrücken",
	["Filtering/afkdnd_name"] = "AFK- und DND-Mitteilungen unterdrücken",
	["Filtering/bgjoin_desc"] = "Filtert bzw. entfernt Schlachtzugsverlassens- und -beitrittsnachrichten.",
	["Filtering/bgjoin_name"] = "Filter BG Verlassen/Betreten",
	["Filtering/Filtering"] = "Filtert",
	["Filtering/leavejoin_desc"] = "Filtert bzw. entfernt Kanalbeitritts- und -verlassensnachrichten.",
	["Filtering/leavejoin_name"] = "Filter Kanal Verlassen/Beitreten",
	["Filtering/notices_desc"] = "Die allgemein üblichen Benachrichtigungen in Kanälen verhindern, z.B. Moderatorenwechsel.",
	["Filtering/notices_name"] = "Kanal-Meldungen filtern",
	["Filtering/tradespam_desc"] = "Begrenze die Nachrichten um zu verhindern das gleiche Nachrichten ständig wiederholt werden",
	["Filtering/tradespam_name"] = "Spam begrenzen",
	["Font/Auto Restore Font Size"] = "Schriftgröße automatisch wiederherstellen",
	["Font/Chat window font options."] = "Optionen für Schrifttyp in Chatfenstern.",
	["Font/Font"] = "Schrifttyp",
	["Font/monochrome_desc"] = "Einfarbige Einfärbung der Schrift umschalten.",
	["Font/monochrome_name"] = "Einfarbigkeit ein- und ausschalten",
	["Font/None"] = "Keiner",
	["Font/Outline"] = "Umrandung",
	["Font/outlinemode_desc"] = "Stellt Modus für die Umrandung des Schrifttyps ein.",
	["Font/outlinemode_name"] = "Umrandungsmodus einstellen",
	["Font/rememberfont_desc"] = "Deine Wahl des Schrifttyps merken und beim Starten wiederherstellen.",
	["Font/rememberfont_name"] = "Schrifttyp merken",
	["Font/Set ChatFrame%d Font Size"] = "Schriftgröße im Chatfenster %d einstellen",
	["Font/Set Font Face"] = "Schrifttyp einstellen",
	["Font/Set Font Size"] = "Schriftgröße einstellen",
	["Font/Set Separately"] = "Einzeln einstellen",
	["Font/Set text font size for each chat window."] = "Schriftgröße von Text für jedes Chatfenster einstellen.",
	["Font/Set text font size."] = "Schriftgröße von Text einstellen.",
	["Font/Set the text font face for all chat windows."] = "Schriftart von Text für alle Chatfenster einstellen.",
	["Font/shadowcolor_desc"] = "Farbe des Schatteneffekts einstellen.",
	["Font/shadowcolor_name"] = "Schattenfarbe einstellen",
	["Font/Thick Outline"] = "Dicke Umrandung",
	["Font/Toggle setting options separately for each chat window."] = "Optionen einzeln für jedes Chatfenster einstellen umschalten.",
	["Font/Workaround a Blizzard bug which changes the font size when you open a system menu."] = "Einen Bug von Blizzard umgehen, welcher die Schriftgröße ändert sobald du ein Systemmenü öffnest.",
	["Frames/Chat window frame parameter options"] = "Optionen für Parameter des Chatfenster-Rahmens",
	["Frames/framealpha_desc"] = "Steuert die Transparenz des Chatfensters, wenn du die Maus darüberlegst.",
	["Frames/framealpha_name"] = "Transparenz für Chatfenster einstellen",
	["Frames/Frames"] = "Fenster",
	["Frames/mainchatonload_desc"] = "Automatisch das erste Chatfenster auswählen und beim Laden aktivieren.",
	["Frames/mainchatonload_name"] = "Haupt-Chatfenster beim Laden erzwingen",
	["Frames/maxchatheight_desc"] = "Die maximale Höhe für alle alle Chatfenster einstellen.",
	["Frames/maxchatheight_name"] = "Maximale Höhe einstellen",
	["Frames/maxchatwidth_desc"] = "Die maximale Breite für alle Chatfenster einstellen.",
	["Frames/maxchatwidth_name"] = "Maximale Breite einstellen.",
	["Frames/minchatheight_desc"] = "Die minimale Höhe für alle Chatfenster einstellen.",
	["Frames/minchatheight_name"] = "Minimale Höhe einstellen",
	["Frames/minchatwidth_desc"] = "Die minimale Breite für alle Chatfenster einstellen.",
	["Frames/minchatwidth_name"] = "Minimale Breite einstellen.",
	["Frames/rememberframepositions_desc"] = "Die Positionen des Chatfensters merken und diese beim Laden wiederherstellen",
	["Frames/rememberframepositions_name"] = "Positionen merken",
	["Frames/removeclamp_desc"] = "Das Verschieben des Chatfensters bündig zur Bildschirmkante zulassen",
	["Frames/removeclamp_name"] = "Klammergröße Null",
	["History/Chat history options."] = "Optionen zum Chatverlauf.",
	["History/Color GMOTD"] = "Farbe Gildennachricht des Tages",
	["History/Colors the GMOTD label"] = "Färbt die GMOTD-Beschriftung",
	["History/delaygmotd_desc"] = "GMOTD verzögern, bis die Ausgabe aller Mitteilungen nach dem Einloggen vollendet ist.",
	["History/delaygmotd_name"] = "GMOTD verzögern",
	["History/divider"] = "======= Ende der Aufzeichnungen =======",
	["History/History"] = "Verlauf",
	["History/Maximum number of lines of command history to save."] = "Maximal zu speichernde Zeilenanzahl des Befehlsverlaufs.",
	["History/Save Command History"] = "Befehlsverlauf speichern",
	["History/Saves command history between sessions (for use with alt+up arrow or just the up arrow)"] = "Speichert Befehlsverlauf zwischen Sitzungen (um mit Alt + \"Pfeil nach oben\" oder nur \"Pfeil nach oben\" verwendet zu werden).",
	["History/Scrollback"] = "Aufzeichnung",
	["History/Scrollback Options"] = "Optionen zum Aufwärtsscrollen",
	["History/scrollbacklen_desc"] = "Anzahl der Chatzeilen, die im Puffer gespeichert werden sollen",
	["History/scrollbacklen_name"] = "Scroll-Weite",
	["History/Set Chat Lines"] = "Chatzeilen einstellen",
	["History/Set Command History"] = "Befehlsverlauf einstellen",
	["History/Set the number of lines of chat history for each window."] = "Die Zeilenanzahl des Chatverlaufs für jedes Fenster einstellen.",
	["History/Store the chat lines between sessions"] = "Speichert den Chat zwischen den Sitzungen",
	["KeyBindings/Channel %d"] = "Kanal %d",
	["KeyBindings/Copy Selected Chat Frame"] = "Ausgewähltes Chatfenster kopieren",
	["KeyBindings/Guild Channel"] = "Gildenkanal",
	["KeyBindings/Instance Channel"] = "Schlachtfeld-Kanal",
	["KeyBindings/Next Chat Tab"] = "Nächster Chatreiter",
	["KeyBindings/Officer Channel"] = "Offizierskanal",
	["KeyBindings/Party Channel"] = "Gruppenkanal",
	["KeyBindings/Prat CopyChat"] = "Prat CopyChat",
	["KeyBindings/Prat Keybindings"] = "Prat Keybindings",
	["KeyBindings/Prat TellTarget"] = "Prat TellTarget",
	["KeyBindings/Raid Channel"] = "Schlachtzugskanal",
	["KeyBindings/Raid Warning Channel"] = "Schlachtzugswarnkanal",
	["KeyBindings/Say"] = "Say",
	["KeyBindings/Smart Group Channel"] = "Intelligenter Gruppenkanal",
	["KeyBindings/TellTarget"] = "TellTarget",
	["KeyBindings/Whisper"] = "Whisper",
	["KeyBindings/Yell"] = "Yell",
	["OriginalButtons/alpha_desc"] = "Transparenz des Chatmenüs sowie der Navigationspfeile für alle Chatfenster einstellen.",
	["OriginalButtons/alpha_name"] = "Transparenz einstellen",
	["OriginalButtons/buttonframe_desc"] = "Schaltfächenrahmen-Menü anzeigen/verbergen",
	["OriginalButtons/buttonframe_name"] = "Schaltfächenrahmen anzeigen",
	["OriginalButtons/ChannelNames"] = "Kanalnamen",
	["OriginalButtons/Chat window button options."] = "Optionen für Chatfenster-Schaltfläche",
	["OriginalButtons/chatmenu_desc"] = "Ein-/Ausschalten des Chatmenüs",
	["OriginalButtons/chatmenu_name"] = "Chatmenü anzeigen",
	["OriginalButtons/Default"] = "Standard",
	["OriginalButtons/Original Buttons"] = "Standardschaltflächen",
	["OriginalButtons/reflow_desc"] = "Chatfenster-Text soll um die Schaltflächen herum fließen, nicht unter sie.",
	["OriginalButtons/reflow_name"] = "Umfließungstext",
	["OriginalButtons/reminder_desc"] = "Zeige Erinnerungs-Schaltfläche, wenn nicht am unteren Ende des Chat-Fensters.",
	["OriginalButtons/reminder_name"] = "Runterscroll-Erinnerung anzeigen",
	["OriginalButtons/Right, Inside Frame"] = "Rechts, innerhalb des Rahmens",
	["OriginalButtons/Right, Outside Frame"] = "Rechts, außerhalb des Rahmens",
	["OriginalButtons/Set Position"] = "Position festlegen",
	["OriginalButtons/Sets position of chat menu and arrows for all chat windows."] = "Position von Chatmenü und -pfeilen für alle Fenster festlegen.",
	["OriginalButtons/Show Arrows"] = "Scrollsymbole anzeigen",
	["OriginalButtons/Show Chat%d Arrows"] = "%d -Chat-Pfeile anzeigen",
	["OriginalButtons/Toggle showing chat arrows for each chat window."] = "Ein-/Ausschalten der Chatpfeile für jedes Chatfenster.",
	["OriginalButtons/Toggles navigation arrows on and off."] = "Ein-/Ausschalten der Navigationspfeile",
	["OriginalEditbox/Autohide"] = "Automatisch verbergen",
	["OriginalEditbox/BACKGROUND"] = "HINTERGRUND",
	["OriginalEditbox/Bar colour"] = "Leistenfarbe",
	["OriginalEditbox/Border colour"] = "Randfarbe",
	["OriginalEditbox/Border width"] = "Randbreite",
	["OriginalEditbox/Bottom"] = "Unten",
	["OriginalEditbox/Click the edit box to open it up for editing. Only available if Autohide is disabled."] = "Das Eingabefeld anklicken, um es für die Eingabe zu Öffnen. Nur verfügbar, wenn \"Autohide\" (automatisch verbergen) deaktiviert ist.",
	["OriginalEditbox/Clickable"] = "Anklickbar",
	["OriginalEditbox/DIALOG"] = "DIALOG",
	["OriginalEditbox/Editbox options."] = "Eingabefeld-Optionen",
	["OriginalEditbox/Enable Arrowkeys"] = "Pfeiltasten aktivieren",
	["OriginalEditbox/Enable using arrowkeys in editbox without the alt key."] = "Die Benutzung der Pfeiltasten im Eingabefeld ohne die Alt-Taste aktivieren.",
	["OriginalEditbox/Hide Border"] = "Rand verbergen",
	["OriginalEditbox/Hide the border around the edit box."] = "Rand um das Eingabefeld verbergen.",
	["OriginalEditbox/Hide the edit box after you have pressed enter."] = "Das Eingabefeld nach dem Drücken von \"Eingabe\" verbergen.",
	["OriginalEditbox/HIGH"] = "HOCH",
	["OriginalEditbox/Lock editbox position if undocked."] = "Position des Eingabefelds fixieren, falls es freigesetzt sein sollte.",
	["OriginalEditbox/Lock Position"] = "Position fixieren",
	["OriginalEditbox/LOW"] = "NIEDRIG",
	["OriginalEditbox/MEDIUM"] = "MEDIUM",
	["OriginalEditbox/OriginalEditbox"] = "OriginalEditbox",
	["OriginalEditbox/Padding"] = "Einlage",
	["OriginalEditbox/Set Alpha"] = "Transparenz einstellen",
	["OriginalEditbox/Set Position"] = "Position einstellen",
	["OriginalEditbox/Set Strata"] = "Ebenen einstellen",
	["OriginalEditbox/Set the alpha of the editbox."] = "Die Transparenz des Eingabefelds einstellen.",
	["OriginalEditbox/Set the amount of padding inside the edit box"] = "Die Füllmenge innerhalb des Eingabefelds einstellen.",
	["OriginalEditbox/Set the edit box background colour"] = "Die Hintergrundfarbe des Eingabefelds einstellen.",
	["OriginalEditbox/Set the edit box border colour"] = "Die Randfarbe des Eingabefelds einstellen.",
	["OriginalEditbox/Set the frame strata of the editbox."] = "Die Rahmenebene des Eingabefelds einstellen.",
	["OriginalEditbox/Set the position of the editbox."] = "Die Position des Eingabefelds einstellen.",
	["OriginalEditbox/Set the texture of the chat edit box"] = "Die Textur des Chat-Eingabefelds einstellen.",
	["OriginalEditbox/Set the width of the edit box's border"] = "Die Randbreite des Eingabefelds einstellen.",
	["OriginalEditbox/Set the width of the editbox."] = "Die Breite des Eingabefelds einstellen.",
	["OriginalEditbox/Set Width (NB: only enabled if the editbox is undocked)"] = "Breite einstellen (NB: Nur aktiv, wenn das Eingabefeld freigesetzt ist)",
	["OriginalEditbox/Texture"] = "Textur",
	["OriginalEditbox/Top"] = "Oben",
	["OriginalEditbox/Undocked"] = "Abgekoppelt",
	["Paragraph/adjustlinks_desc"] = "Links anpassen, um die Fähigkeit des Anklickens wiederherzustellen, wenn Text zentriert oder rechtsbündig ist.",
	["Paragraph/adjustlinks_name"] = "Platzierung von Spieler-/Gegenstands-Links reparieren.",
	["Paragraph/Center"] = "Mitte",
	["Paragraph/Chat window paragraph options."] = "Paragraphoptionen in Chatfenstern.",
	["Paragraph/justification_desc"] = "Horizontale Ausrichtung für jedes Chat-Fenster einstellen.",
	["Paragraph/justification_name"] = "Ausrichtung einstellen",
	["Paragraph/Left"] = "Links",
	["Paragraph/Line Spacing"] = "Zeilenabstand",
	["Paragraph/Paragraph"] = "Paragraph",
	["Paragraph/Right"] = "Rechts",
	["Paragraph/Set the line spacing for all chat windows."] = "Den Zeilenabstand für alle Chatfenster einstellen.",
	["PlayerNames/Actively Query Player Info"] = "Spielerinformationen aktiv abfragen",
	["PlayerNames/Angled"] = "Abgewinkelt",
	["PlayerNames/Brackets"] = "Klammern",
	["PlayerNames/Brackets Common Color"] = "Standardfarbe der Klammern",
	["PlayerNames/Brackets Use Common Color"] = "Klammern verwende die Standardfarbe",
	["PlayerNames/Class"] = "Klasse",
	["PlayerNames/Color by Level Difference"] = "Entsprechend des Stufenunterschieds einfärben",
	["PlayerNames/coloreverywhere_desc"] = "Spielernamen einfärben, wenn diese im Text einer Chat-Mitteilung auftreten.",
	["PlayerNames/coloreverywhere_name"] = "Namen überall einfärben",
	["PlayerNames/Enable Alt-Invite"] = "Alt-Einladungen aktivieren",
	["PlayerNames/Enable Invite Links"] = "Einladungs-Links aktivieren",
	["PlayerNames/Enable TabComplete"] = "TabComplete aktivieren",
	["PlayerNames/hoverhilight_desc"] = "Chat-Zeilen eines bestimmten Spielers hervorheben, wenn die Maus über den Spielerlink gelegt wird.",
	["PlayerNames/hoverhilight_name"] = "Schwebendes Hervorheben",
	["PlayerNames/How to color other player's level."] = "Wie die Stufen anderer Spieler eingefärbt werden sollen.",
	["PlayerNames/How to color player's name."] = "Wie die Namen der Spieler eingefärbt werden sollen.",
	["PlayerNames/Keep Info"] = "Informationen merken",
	["PlayerNames/Keep Lots Of Info"] = "Viele Informationen speichern",
	["PlayerNames/Keep player information between session for all players except cross-server players"] = "Spielerinformationen aller Spieler außer Spielern anderer Server zwischen Sitzungen merken.",
	["PlayerNames/Keep player information between session, but limit it to friends and guild members."] = "Spielerinformationen zwischen Sitzungen speichern, aber schränke dies ein auf Freunde und Gildenmitglieder.",
	["PlayerNames/Let TasteTheNaimbow set the common color for unknown player names."] = "Lasse TasteTheNaimbow die übliche Farbe für unbekannte Spielernamen einstellen.",
	["PlayerNames/Level Color Mode"] = "Stufenfarbe-Modus",
	["PlayerNames/linkifycommon_desc"] = "Allgemeine Mitteilungen in Links umwandeln",
	["PlayerNames/linkifycommon_name"] = "Allgemeine Mitteilungen in Links umwandeln",
	["PlayerNames/No additional coloring"] = "Keine zusätzliche Einfärbung",
	["PlayerNames/None"] = "Keine",
	["PlayerNames/Player Color Mode"] = "Spielerfarbe-Modus",
	["PlayerNames/Player name formating options."] = "Formatierungsoptionen für Spielernamen",
	["PlayerNames/PlayerNames"] = "PlayerNames",
	["PlayerNames/Prat_Playernames: Stored Player Data Cleared"] = "Prat_Playernames: Gespeicherte Spielerdaten gelöscht",
	["PlayerNames/Query the server for all player names we do not know. Note: This happpens pretty slowly, and this data is not saved."] = "Alle uns unbekannten Spielernamen beim Server abfragen. Merke: dies passiert ziemlich langsam und diese Daten sind nicht gespeichert.",
	["PlayerNames/Random"] = "Zufällig",
	["PlayerNames/realidcolor_desc"] = "RealID-Namenseinfärbung",
	["PlayerNames/realidcolor_name"] = "RealID-Einfärbung",
	["PlayerNames/Reset Settings"] = "Einstellungen zurücksetzen",
	["PlayerNames/Restore default settings, and delete stored character data."] = "Standardeinstellungen wiederherstellen und gespeicherte Charakterdaten löschen.",
	["PlayerNames/Set common color of unknown player names."] = "Allgemein übliche Farbe bei unbekannten Spielernamen einstellen.",
	["PlayerNames/Sets common color of brackets to use around player names."] = "Allgemein übliche Farbe der Klammern bei Spielernamen einstellen.",
	["PlayerNames/Sets style of brackets to use around player names."] = "Stil der Klammern bei Spielernamen einstellen.",
	["PlayerNames/Show Group"] = "Gruppe anzeigen",
	["PlayerNames/Show Level"] = "Stufe anzeigen",
	["PlayerNames/Show Raid Target Icon"] = "Zielmarkierungssymbol anzeigen",
	["PlayerNames/Square"] = "Quadrat",
	["PlayerNames/Tab completion : "] = "Tab-Ergänzung:",
	["PlayerNames/tabcomplete_name"] = "Mögliche Namen",
	["PlayerNames/Toggle group invites by alt-clicking hyperlinked keywords like 'invite'."] = "Gruppeneinladungen umschalten, indem Hyperlinks von Stichworten wie \"invite\" bei gleichzeitigem Drücken der Alt-Taste angeklickt werden.",
	["PlayerNames/Toggle group invites by alt-clicking on player name."] = "Gruppeneinladungen umschalten, indem Spielernamen bei gleichzeitigem Drücken der Alt-Taste angeklickt werden.",
	["PlayerNames/Toggle level showing."] = "Stufenanzeige umschalten.",
	["PlayerNames/Toggle raid group showing."] = "Schlachtzugsgruppenanzeige umschalten.",
	["PlayerNames/Toggle showing the raid target icon which is currently on the player."] = "Anzeige von Schlachtzugsziel-Symbol, welches gegenwärtig dem Spieler zugewiesen ist, umschalten.",
	["PlayerNames/Toggle tab completion of player names."] = "Tag-Ergänzung von Spielernamen umschalten.",
	["PlayerNames/Toggle using a common color for brackets around player names."] = "Die Verwendung der allgemein üblichen Farbe für Klammern bei Spielernamen umschalten.",
	["PlayerNames/Toggle using a common color for unknown player names."] = "Die Verwendung der allgemein üblichen Farbe für unbekannte Spielernamen umschalten.",
	["PlayerNames/Too many matches (%d possible)"] = "Zu viele Entsprechungen (%d möglich)",
	["PlayerNames/Unknown Common Color"] = "Unbekannte übliche Farbe",
	["PlayerNames/Unknown Common Color From TasteTheNaimbow"] = "Unbekannte übliche Farbe von TasteTheNaimbow",
	["PlayerNames/Unknown Use Common Color"] = "Unbekannt - übliche Farbe verwenden",
	["PlayerNames/Use Channel Color"] = "Kanalfarbe verwenden",
	["PlayerNames/Use Player Color"] = "Spielerfarbe verwenden",
	["PlayerNames/Use toon name for RealID"] = "Charakternamen statt RealID verwenden",
	["PopupMessage/Add Nickname"] = "Spitzname hinzufügen",
	["PopupMessage/Adds an alternate name to show in popups."] = "Einen anderen (alternierenden) Namen hinzufügen, der in Popups angezeigt werden soll.",
	["PopupMessage/Clear Nickname"] = "Spitznamen löschen",
	["PopupMessage/Clears alternate name to show in popups."] = "Einen anderen (alternierenden) Namen löschen, der in Popups angezeigt werden soll.",
	["PopupMessage/framealpha_desc"] = "Den Transparenzwert des Popup-Rahmens bei voller Darstellung einstellen.",
	["PopupMessage/framealpha_name"] = "Transparenz der Popup-Rahmens",
	["PopupMessage/Popup"] = "Popup",
	["PopupMessage/PopupMessage"] = "PopupMessage",
	["PopupMessage/Remove Nickname"] = "Spitznamen entfernen",
	["PopupMessage/Removes an alternate name to show in popups."] = "Einen anderen (alternierenden) Namen entfernen, der in Popups angezeigt werden soll.",
	["PopupMessage/Set Separately"] = "Einzeln einstellen",
	["PopupMessage/Show All Popups"] = "Alle Popups anzeigen",
	["PopupMessage/Show Popups"] = "Popups anzeigen",
	["PopupMessage/Show Popups for all chat windows."] = "Popups für alle Chatfenster anzeigen.",
	["PopupMessage/Show Popups for each window."] = "Popups für jedes Fenster anzeigen.",
	["PopupMessage/show_desc"] = "Popups für jedes Fenster anzeigen.",
	["PopupMessage/show_name"] = "Popups anzeigen",
	["PopupMessage/show_perframedesc"] = "Anzeige der Popups ein- und ausschalten.",
	["PopupMessage/show_perframename"] = "Popups vom Chatfenster%d anzeigen",
	["PopupMessage/showall_desc"] = "Popups für alle Chatfenster anzeigen.",
	["PopupMessage/showall_name"] = "Alle Popups anzeigen",
	["PopupMessage/Shows messages in a popup window."] = "Mitteilungen in einem Popup-Fenster anzeigen.",
	["PopupMessage/Shows messages with your name in a popup."] = "Mitteilungen in einem Popup-Fenster mit deinem Namen anzeigen.",
	["PopupMessage/Toggle setting options separately for each chat window."] = "Optionseinstellungen einzeln für jedes Chatfenster umschalten.",
	["Scroll/Bottom"] = "Von unten nach oben",
	["Scroll/Chat window scrolling options."] = "Optionen zum Scrollen in Chatfenstern.",
	["Scroll/Control whether text is added to the frame at the top or the bottom."] = "Steuerung, ob der Text oben oder unten im Chatfenster hinzugefügt wird.",
	["Scroll/lowdown_desc"] = "Automatisches Springen zum unteren Ende eines Chatfensters ein-/ausschalten.",
	["Scroll/lowdown_name"] = "TheLowDown aktivieren",
	["Scroll/modified_speed"] = "SHIFT + Mausrad-Geschwindigkeit einstellen",
	["Scroll/modified_speed_desc"] = "Anzahl der Zeilen, die bei Betätigung des Mausrads gescrollt werden, während die SHIFT-Taste gedrückt wird.",
	["Scroll/mousewheel_desc"] = "Mausradunterstützung für jedes Chatfenster ein-/ausschalten.",
	["Scroll/mousewheel_name"] = "Mausrad aktivieren",
	["Scroll/Scroll"] = "Scrollen",
	["Scroll/Set Ctrl+MouseWheel Speed"] = "Geschwindigkeit für <Strg>-Mausrad einstellen",
	["Scroll/Set MouseWheel Speed"] = "Geschwindigkeit des Mausrads einstellen",
	["Scroll/Set number of lines mousewheel will scroll when ctrl is pressed."] = "Anzahl der Zeilen, die per Mausrad weitergescrollt werden, während <Strg> gedrückt wird, einstellen.",
	["Scroll/Set number of lines mousewheel will scroll."] = "Zeilenanzahl einstellen, die das Mausrad weiterscrollt.",
	["Scroll/Set TheLowDown Delay"] = "TheLowDown-Verzögerung einstellen",
	["Scroll/Set time to wait before jumping to the bottom of chat windows."] = "Wartezeit einstellen, ehe zum Ende von Chatfenstern gesprungen wird.",
	["Scroll/Text scroll direction"] = "Scroll-Richtung im Text",
	["Scroll/Top"] = "Von oben nach unten",
	["Scrollback/divider"] = "======= Ende der Aufzeichnungen =======",
	["Scrollback/Scrollback"] = "Aufzeichnung",
	["Scrollback/Store the chat lines between sessions"] = "Speichert den Chatverlauf zwischen den Sitzungen",
	["Search/err_notfound"] = "Nicht gefunden",
	["Search/err_tooshort"] = "Suchbegriff zu kurz",
	["Search/find_results"] = "Gefundene Ergebnisse:",
	["Search/module_desc"] = [=[Aktiviert die Suchfunktion in Chatfenstern.

Suche]=],
	["Search/module_info"] = [=[Aktiviert die Textbefehle /find und /findall, um die Chathistorie zu durchsuchen

Benutzung:

/find <text>

/findall <text>

Suche]=],
	["Search/module_name"] = "Suchen",
	["ServerNames/autoabbreviate_desc"] = "Kürze den Server-Namen auf 3 Buchstaben",
	["ServerNames/autoabbreviate_name"] = "Auto-Abkürzen",
	["ServerNames/colon_desc"] = "Hinzufügen eines Doppelpunkts nach dem Ersetzen des Servers ein-/ausschalten.",
	["ServerNames/colon_name"] = "Doppelpunkt anzeigen",
	["ServerNames/randomclr_desc"] = "Eine zufällige Farbe für jeden Server verwenden.",
	["ServerNames/randomclr_name"] = "Zufällige Farben",
	["ServerNames/Server name abbreviation options."] = "Optionen für Abkürzungen von Server-Namen",
	["ServerNames/ServerNames"] = "ServerNamen",
	["Sounds/A module to play sounds on certain chat messages."] = "Ein Modul, um bei bestimmten Mitteilungen, Töne abzuspielen.",
	["Sounds/Add a custom channel"] = "Einen benutzerdefinierten Kanal hinzufügen.",
	["Sounds/bn_whisper_desc"] = "Sound für %s Battle.Net-Flüsternachrichten",
	["Sounds/bn_whisper_name"] = "Battle.Net-Flüsternachricht",
	["Sounds/Custom Channels"] = "Benutzerdefinierte Kanäle",
	["Sounds/group_lead_desc"] = "Klang für %s Schlachtzugsleiter, Gruppenführer oder Anleitungsmitteilungen für Instanzen.",
	["Sounds/group_lead_name"] = "Gruppenanführer",
	["Sounds/guild_desc"] = "Klang für %s Gildenmitteilungen",
	["Sounds/guild_name"] = "Gilde",
	["Sounds/incoming"] = "eingehend",
	["Sounds/Incoming Sounds"] = "Eingehende Klänge",
	["Sounds/officer_desc"] = "Klang für %s Mitteilungen im Offizierskanal",
	["Sounds/officer_name"] = "Offizier",
	["Sounds/outgoing"] = "ausgehend",
	["Sounds/Outgoing Sounds"] = "Ausgehende Töne",
	["Sounds/party_desc"] = "Klang für %s Gruppenmitteilungen",
	["Sounds/party_name"] = "Gruppe",
	["Sounds/Play a sound for a certain channel name (can be a substring)"] = "Einen Klang für einen bestimmten Kanalnamen abspielen (kann ein Substring sein).",
	["Sounds/raid_desc"] = "Klang für %s Gruppen- und Führermitteilungen in Schlachtzügen oder Schlachtfeldern",
	["Sounds/raid_name"] = "Schlachtzug",
	["Sounds/Remove a custom channel"] = "Einen allgemeinen Kanal entfernen",
	["Sounds/Reset settings"] = "Einstellungen zurücksetzen",
	["Sounds/Restore default settings and resets custom channel list"] = "Standardeinstellungen wiederherstellen und allgemein übliche Kanalliste zurücksetzen.",
	["Sounds/Sound selection for incoming chat messages"] = "Klangauswahl für eingehende Chat-Mitteilungen",
	["Sounds/Sound selection for outgoing (from you) chat messages"] = "Klangauswahl für ausgehende (von dir) Chat-Mitteilungen",
	["Sounds/Sounds"] = "Klänge",
	["Sounds/whisper_desc"] = "Klang für %s Flüstermitteilungen",
	["Sounds/whisper_name"] = "Flüstern",
	["Substitutions/%d total user defined substitutions"] = " %d Gesamte vom Benutzer definierte Ersetzungen",
	["Substitutions/|cffff0000warning:|r subtitution \"%s\" already defined as \"%s\", overwriting"] = "|cffff0000Warnung:|r Ersetzung \"%s\" wurde bereits definiert als \"%s\", überschreibe",
	["Substitutions/<noguild>"] = " <keinegilde>",
	["Substitutions/<notarget>"] = "<keinziel>",
	["Substitutions/A module to provide basic chat substitutions."] = "Ein Modul, das grundlegende Ersetzungen zur Verfügung stellt.",
	["Substitutions/Are you sure - this will delete all user defined substitutions and reset defaults?"] = "Bist du sicher - dies wird alle vom Benutzer definierten Ersetzungen löschen und auf Standard zurücksetzen.",
	["Substitutions/Are you sure?"] = "Bist Du sicher?",
	["Substitutions/can't find substitution index for a substitution named '%s'"] = "Kann Ersetzungsindex für eine Ersetzung mit dem Namen '%s' nicht finden.",
	["Substitutions/current-prompt"] = [=[Gegenwärtiger Wert: '%s'
Anklicken, um in den Chat einzufügen.]=],
	["Substitutions/defined %s: expands to => %s"] = "definiert %s: erweitert zu => %s",
	["Substitutions/Delete all"] = "Alle löschen",
	["Substitutions/Delete substitution"] = "Ersetzung löschen",
	["Substitutions/Deletes a user defined substitution"] = "Löscht eine vom Benutzer definierte Ersetzung",
	["Substitutions/Deletes all user defined substitutions"] = "Löscht alle vom Benutzer definierten Ersetzungen",
	["Substitutions/female"] = "weiblich",
	["Substitutions/her"] = "ihr",
	["Substitutions/hers"] = "ihr/ihre",
	["Substitutions/him"] = "ihn/ihm",
	["Substitutions/his"] = "sein/seine",
	["Substitutions/it"] = "es",
	["Substitutions/its"] = "sein",
	["Substitutions/List of available substitutions"] = "Liste der verfügbaren Ersetzungen",
	["Substitutions/List of available substitutions defined by this module. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "Die List der verfügbaren Ersetzungen wird von diesem Modul definiert. (NB: Benutzer können gebräuchliche Werte für vorhandene Ersetzungen definieren, aber sie werden auf ihre Standardwerte zurückgesetzt, falls die Definitionen des Benutzers gelöscht wurde.)",
	["Substitutions/List substitutions"] = "Ersetzungen auflisten",
	["Substitutions/Lists all current subtitutions in the default chat frame"] = "Alle gegenwärtigen Ersetzungen im Standard-Chatfenster auflisten.",
	["Substitutions/male"] = "männlich",
	["Substitutions/MapLoc"] = "KarteOrt",
	["Substitutions/MapPos"] = "KartePos",
	["Substitutions/MapXPos"] = "KarteXPos",
	["Substitutions/MapYPos"] = "KarteYPos",
	["Substitutions/MapZone"] = "KarteZone",
	["Substitutions/module:buildUserSubsIndex(): warning: module patterns not defined!"] = "module:buildUserSubsIndex(): warning: module patterns not defined!",
	["Substitutions/MouseoverTargetName"] = "MouseoverTargetName",
	["Substitutions/NO MATCHFUNC FOUND"] = "NO MATCHFUNC FOUND",
	["Substitutions/no substitution name given"] = "kein Ersetzungsname vergeben",
	["Substitutions/no substitution name supplied for deletion"] = "kein Ersetzungsname für Löschung geliefert",
	["Substitutions/no user defined subs found"] = "keine benutzerdefinierten Ersetzungen gefunden",
	["Substitutions/no value given for subtitution \"%s\""] = "kein Wert für Ersetzung \"%s\" gegeben",
	["Substitutions/Options for setting and removing user defined substitutions. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "Optionen zum Einstellen und Entfernen benutzerdefinierter Ersetzungen. (NB: Benutzer können eigeneWerte für vorhandene Ersetzungen definieren, aber diese werden auf ihre Standardwerte zurückgesetzt, wenn die Definition des Benutzers gelöscht wurde.)",
	["Substitutions/PlayerAverageItemLevel"] = [=[Durchschnittliche Gegenstandsstufe des Spielers

Ersatz]=],
	["Substitutions/PlayerCurrentMana"] = "SpielerAktuellesMana",
	["Substitutions/PlayerHealthDeficit"] = "SpielerGesundheitDefizit",
	["Substitutions/PlayerHP"] = "SpielerHP",
	["Substitutions/PlayerManaDeficit"] = "SpielerManaDefizit",
	["Substitutions/PlayerMaxHP"] = "SpielerMaxHP",
	["Substitutions/PlayerMaxMana"] = "SpielerMaxMana",
	["Substitutions/PlayerName"] = "SpielerName",
	["Substitutions/PlayerPercentHP"] = "SpielerProzentHP",
	["Substitutions/PlayerPercentMana"] = "SpielerProzentMana",
	["Substitutions/RandNum"] = "ZufNum",
	["Substitutions/removing user defined substitution \"%s\"; previously expanded to => \"%s\""] = "Benutzerdefinierte Ersetzung \"%s\" wird entfernt; zuvor erweitert zu => \"%s\"",
	["Substitutions/Set substitution"] = "Ersetzung einstellen",
	["Substitutions/Set the value of a user defined substitution (NB: this may be the same as an existing default substitution; to reset it to the default, just remove the user created definition)."] = "Den Wert für eine benutzerdefinierte Ersetzung einstellen. (NB: dies kann einer vorhandenen Standardersetzung gleichen; um sie auf Standard zurückzusetzen, einfach die vom Benutzer erschaffene Definition entfernen.)",
	["Substitutions/subname -- NOTE: sub name without the prefix '%'"] = "Subname -- MERKE: Subname ohne den Vorsatz '%'",
	["Substitutions/subname = text after expansion -- NOTE: sub name without the prefix \"%\""] = "Subname = Text nach Erweiterung -- MERKE: Subname ohne den Vorsatz \"%\"",
	["Substitutions/substitution: %s defined as => %s"] = "Ersetzung: %s definiert als => %s",
	["Substitutions/Substitutions"] = "Ersetzungen",
	["Substitutions/TargetClass"] = "ZielKlasse",
	["Substitutions/TargetGender"] = "ZielGeschlecht",
	["Substitutions/TargetGuild"] = "ZielGilde",
	["Substitutions/TargetHealth"] = "ZielGesundheit",
	["Substitutions/TargetHealthDeficit"] = "ZielGesundheitDefizit",
	["Substitutions/TargetIcon"] = "ZielSymbol",
	["Substitutions/TargetLevel"] = "ZielStufe",
	["Substitutions/TargetManaDeficit"] = "ZielManaDefizit",
	["Substitutions/TargetName"] = "ZielName",
	["Substitutions/TargetPercentHP"] = "ZielProzentHP",
	["Substitutions/TargetPossesive"] = "ZielGierig",
	["Substitutions/TargetPronoun"] = "ZielPronomen",
	["Substitutions/TargetRace"] = "ZielVolk",
	["Substitutions/TargetTargetName"] = "ZielZielName",
	["Substitutions/unknown sex"] = "Geschlecht unbekannt",
	["Substitutions/user defined substition \"%s\" not found"] = "Benutzerdefinierte Ersetzung \"%s\" nicht gefunden",
	["Substitutions/User defined substitutions"] = "Benutzerdefinierte Ersetzungen",
	["Substitutions/user substitutions index (usersubs_idx) doesn't exist! oh dear."] = "Ersetzungsindex des Benutzers (usersubs_idx) existiert nicht! Oh weh!",
	["Substitutions/usersub_"] = [=[ 	 	usersub_]=],
	["TellTarget//tt"] = "/tt",
	["TellTarget/Adds telltarget slash command (/tt)."] = "Fügt das Slash-Kommando TellTarget (/tt) hinzu",
	["TellTarget/No target selected."] = "Kein Ziel ausgewählt.",
	["TellTarget/NoTarget"] = "KeinZiel",
	["TellTarget/Target does not exist."] = "Ziel existiert nicht.",
	["TellTarget/Target is not a player."] = "Ziel ist kein Spieler.",
	["TellTarget/TellTarget"] = "TellTarget",
	["Timestamps/Chat window timestamp options."] = "Optionen für Zeitstempel in Chatfenstern.",
	["Timestamps/colortimestamp_desc"] = "Einfärben des Zeitstempels ein- und ausschalten.",
	["Timestamps/colortimestamp_name"] = "Zeitstempel einfärben",
	["Timestamps/Format All Timestamps"] = "Formatiere alle Zeitstempel",
	["Timestamps/HH:MM (12-hour)"] = "HH:MM (12-Stunden)",
	["Timestamps/HH:MM (24-hour)"] = "HH:MM (24-Stunden)",
	["Timestamps/HH:MM:SS (12-hour)"] = "HH:MM:SS (12-Stunden)",
	["Timestamps/HH:MM:SS (24-hour)"] = "HH:MM:SS (24-Stunden)",
	["Timestamps/HH:MM:SS AM (12-hour)"] = "HH:MM:SS AM (12-Stunden)",
	["Timestamps/localtime_desc"] = "Verwendung der Ortszeitein- und ausschalten.",
	["Timestamps/localtime_name"] = "Ortszeit verwenden",
	["Timestamps/MM:SS"] = "MM:SS",
	["Timestamps/Post-Timestamp"] = "Nach-Zeitstempel",
	["Timestamps/Pre-Timestamp"] = "Vor-Zeitstempel",
	["Timestamps/Set the timestamp format"] = "Format für Zeitstempel einstellen",
	["Timestamps/Set Timestamp Color"] = "Farbe für Zeitstempel einstellen",
	["Timestamps/Sets the color of the timestamp."] = "Stellt die Farbe des Zeitstempels ein.",
	["Timestamps/Show Timestamp"] = "Teitstempel anzeigen",
	["Timestamps/show_desc"] = "Anzeige des Zeitstempels für jedes Fenster ein- und ausschalten.",
	["Timestamps/show_name"] = "Zeitstempel anzeigen",
	["Timestamps/space_desc"] = "Das Einfügen eines Leerzeichens nach dem Zeitstempel ein- und ausschalten.",
	["Timestamps/space_name"] = "Leerzeichen anzeigen",
	["Timestamps/Timestamps"] = "Zeitstempel",
	["Timestamps/Toggle showing timestamp for each window."] = "Anzeige des Zeitstempels für jedes Fenster umschalten.",
	["Timestamps/twocolumn_desc"] = "Platziere die Zeitstempel in einer getrennten Spalte, so dass der Text nicht unterhalb der Zeitstempel dargestellt wird.",
	["Timestamps/twocolumn_name"] = "2-Spalten-Chat",
	["UrlCopy/Change the color of the URL."] = "Farbe einer URL ändern.",
	["UrlCopy/Color URL"] = "URL einfärben",
	["UrlCopy/Set Color"] = "Farbe einstellen",
	["UrlCopy/Show Brackets"] = "Klammern anzeigen",
	["UrlCopy/Toggle"] = "Ein-/ausschalten",
	["UrlCopy/Toggle showing brackets on and off."] = "Anzeige der Klammern ein-/ausschalten",
	["UrlCopy/Toggle the module on and off."] = "Modul ein-/ausschalten",
	["UrlCopy/Toggle the URL color on and off."] = "Farbe von URL ein-/ausschalten.",
	["UrlCopy/URL formating options."] = "URL-Formatierungsoptionen",
	["UrlCopy/UrlCopy"] = "URL-Kopie",
	["UrlCopy/Use Popup"] = "Popup benutzen",
	["UrlCopy/Use popup window to show URL."] = "Popup-Fenster benutzen, um URL anzuzeigen."
}

PL:AddLocale(nil, "deDE",L)


L=
{
	["display_desc"] = "대화창 기능 및 외형 설정",
	["display_name"] = "표시 설정",
	["extras_desc"] = "기타 모듈",
	["extras_name"] = "기타 기능",
	["formatting_desc"] = "대화창 글의 외형을 변경합니다.",
	["formatting_name"] = "대화글 형식",
	["load_desc"] = "이 모듈의 로드 방식을 설정합니다.",
	["load_disabled"] = "사용 안 함",
	["load_disabledonrestart"] = "비활성 (reload)",
	["load_enabled"] = "사용",
	["load_enabledonrestart"] = "활성 (reload)",
	["load_no"] = "로드 안함",
	["modulecontrol_desc"] = "Prat 모듈의 로드와 활성화를 제어합니다.",
	["modulecontrol_name"] = "모듈 제어",
	["prat"] = "Prat",
	["reload_required"] = "이 설정은 애드온을 %s 해야 변경된 사항이 적용됩니다.",
	["AddonMsgs/Addon message options."] = "애드온 메시지 옵션입니다.",
	["AddonMsgs/AddonMsgs"] = "애드온 메시지",
	["AddonMsgs/show_desc"] = "각 대화창에 숨겨진 애드온 메시지 표시를 켜거나 끕니다.",
	["AddonMsgs/show_name"] = "애드온 메시지 표시",
	["AddonMsgs/show_perframedesc"] = "숨겨진 애드온 메시지 표시를 켜거나 끕니다.",
	["AddonMsgs/show_perframename"] = "대화창%d 애드온 메시지 표시",
	["Alias/ - list all aliases; supply <keyword> to search for matching aliases (cmd aliases: /listallaliases)"] = " - 모든 대체 명령어 목록; 대체 명령어를 찾기 위한 <키워드> 지원 (명령어: /listallaliases)",
	["Alias/%s() called with blank string!"] = "%s() 함수가 문자열없이 호출되었습니다!",
	["Alias/%s() called with nil argument!"] = "%s() 함수가 nil 인자로 호출되었습니다!",
	["Alias//%s aliased to \"/%s\""] = "/%s |1이;가; \"/%s\"|1으로;로; 대체되었습니다",
	["Alias//%s aliased to: /%s"] = "/%s |1이;가; 다음으로 대체되었습니다: /%s",
	["Alias/<alias> - remove the alias <alias> (cmd aliases: /delalias, /remalias)"] = "<alias> - <alias> 대체 명령어 삭제 (명령어: /delalias, /remalias)",
	["Alias/<command>[ <value>] - alias <command> to be executed as <value>, or return the value of the currently defined alias for <command> if <command> has not been assigned a value. eg: \"/alias /examplehello /say hello there\" - typing \"/examplehello\" will now cause your character to say \"hello there\"; \"/alias examplehello\" - s \"/examplehello is aliased to /say hello there\" (cmd aliases: /addalias)"] = "<명령어>[ <인자>] - <명령어>로 <인자>를 수행하게 대체하거나, <명령어>에 할당된 인자가 없으면 <명령어>에 설정된 대체 명령어를 출력합니다. 예제: \"/alias /꾸벅 /say 안녕하세요\" - \"/꾸벅\" 명령어로 일반 대화 \"안녕하세요\"가 수행됩니다;\"/alias 꾸벅\" - \"/꾸벅 명령어가 /say 안녕하세요 로 대체되었습니다\"가 표시됩니다 (명령어: /addalias)",
	["Alias/<keyword> - finds all aliases matching <keyword> (cmd aliases: /findalias)"] = "<키워드> - <키워드>가 포함된 모든 대체 명령어를 찾습니다. (명령어: /findalias)",
	["Alias/add"] = "add",
	["Alias/add an alias"] = "대체 명령어 추가",
	["Alias/alias \"/%s\" does not exist"] = "대체 명령어 \"/%s\"|1이;가; 없습니다",
	["Alias/dealiasing command /%s to /%s"] = "/%s|1이;가; /%s|1으로;로; 대체 명령어가 해제됩니다",
	["Alias/deleting alias \"/%s\" (previously aliased as \"/%s\")"] = "대체 명령어 \"%s\"|1을;를; 삭제합니다. (\"/%s\"로 설정되어 있었음)",
	["Alias/Display extra information in the chat frame when commands are dealiased"] = "대체 명령어가 해제될 때 대화창에 추가 정보를 표시합니다.",
	["Alias/Don't overwrite existing aliases when using /addalias"] = "/addalias 를 사용할 때 기존 대체 명령어를 덮어쓰지 마세요",
	["Alias/Expand aliases as you are typing"] = "대화창에 입력할 때 대체 명령어를 설정된 값으로 자동으로 바꿉니다.",
	["Alias/find aliases matching a given search term"] = "주어진 검색어와 일치하는 대체 명령어 찾기",
	["Alias/findaliases"] = "findaliases",
	["Alias/infinite loop detected for alias /%s - ignoring"] = "대체 명령어 /%s의 무한 반복이 감지되었습니다 - 무시합니다",
	["Alias/inline"] = "inline",
	["Alias/list all aliases"] = "모든 대체 명령어 목록",
	["Alias/listaliases"] = "listaliases",
	["Alias/matching aliases found: %d"] = "일치하는 대체 명령어 찾음: %d개",
	["Alias/module_desc"] = "UNIX의 alias 명령과 비슷한 방법으로 슬래쉬 명령어를 대체하는데 사용하는 /alias 명령을 추가합니다.",
	["Alias/module_name"] = "대체 명령어",
	["Alias/No aliases have been defined"] = "설정된 대체 명령어가 없습니다.",
	["Alias/noclobber"] = "덮어쓰기 금지",
	["Alias/noclobber set - skipping new alias: /%s already expands to /%s"] = "덮어쓰기 금지 - 새로운 대체 명령어를 무시합니다 : /%s |1은;는; 이미 /%s |1으로;로; 설정되어 있습니다",
	["Alias/Options"] = "옵션",
	["Alias/Options for altering the behaviour of Alias"] = "대체 명령어의 작동을 바꾸는 옵션입니다",
	["Alias/overwriting existing alias \"/%s\" (was aliased to \"/%s\")"] = "대체 명령어 \"/%s\"|1을;를; 덮어씁니다 (\"/%s\"의 대체 명령어 였음)",
	["Alias/refusing to alias \"/%s\" to anything in the interests of Not Buggering Everything Up"] = "\"/%s\" |1은;는; 중요 명령어로 사용 중이어서 대체 명령어 사용으로 거부되었습니다.",
	["Alias/remove an alias"] = "대체 명령어를 제거합니다",
	["Alias/There is no alias current defined for \"%s\""] = "\"%s\"|1으로;로; 설정된 대체 명령어가 없습니다.",
	["Alias/total aliases: %d"] = "모든 대체 명령어: %d개",
	["Alias/tried to show value for alias \"%s\" but undefined in module.Aliases!"] = "대체 명령어 \"%s\"의 값을 표시하려고 했지만 모듈에 설정되어 있지 않습니다. 대체하세요!",
	["Alias/unalias"] = "unalias",
	["Alias/verbose"] = "verbose",
	["Alias/warnUser() called with nil argument!"] = "warnUser() 함수가 nil 인자로 호출되었습니다!",
	["Alias/warnUser() called with zero length string!"] = "warnUser() 함수가 문자열 없이 호출되었습니다!",
	["AltNames/%d alts found for %s: %s"] = "%2$s의 부 캐릭터 %1$d개 찾음: %3$s",
	["AltNames/%s alts imported from LOKWhoIsWho"] = "LOKWhoIsWho에서 %s 부 캐릭터를 가져왔습니다",
	["AltNames/%s total alts linked to mains"] = "총 %s개의 부 캐릭터가 주 캐릭터와 연결되었습니다",
	["AltNames/(.-)'s? [Aa]lt"] = "%f[%a\\192-\\255]([%a\\192-\\255]+)%f[^%a\\128-\\255]의 부캐릭터",
	["AltNames/([^%s%p%d%c%z]+)'s alt"] = "%f[%a\\192-\\255]([%a\\192-\\255]+)%f[^%a\\128-\\255]의 부 캐릭터",
	["AltNames/.*[Aa]lts?$"] = ".*부캐릭터?$",
	["AltNames/<alt name> (eg, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)"] = "<부 캐릭터 이름> (예, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)",
	["AltNames/<main> (eg /altnames listalts Fin)"] = "<주 캐릭터> (예 /altnames listalts Fin)",
	["AltNames/<search term> (eg, /altnames find fin)"] = "<검색 구문> (예, /altnames find fin)",
	["AltNames/Alt"] = "부 캐릭터",
	["AltNames/alt"] = "부 캐릭터",
	["AltNames/alt name exists: %s -> %s; not overwriting as set in preferences"] = "부 캐릭터 이름 존재: %s -> %s; 우선권 설정으로 덮어쓰지 않았습니다",
	["AltNames/AltNames"] = "부 캐릭터 이름",
	["AltNames/Alts:"] = "부 캐릭터:",
	["AltNames/autoguildalts_desc"] = "자동으로 길드 명단에서 가져오기 명령을 실행합니다",
	["AltNames/autoguildalts_name"] = "자동 길드 부 캐릭터 가져오기",
	["AltNames/Be quiet"] = "조용하게",
	["AltNames/character removed: %s"] = "캐릭터 제거됨: %s",
	["AltNames/Class colour"] = "직업 색상",
	["AltNames/Clear all"] = "모두 지우기",
	["AltNames/Clear all links between alts and main names."] = "부 캐릭터와 주 캐릭터 이름 사이의 모든 연결을 지웁니다.",
	["AltNames/Colour"] = "색상",
	["AltNames/Delete a character's link to another character as their main."] = "주 캐릭터로 연결된 다른 캐릭터와의 연결을 삭제합니다.",
	["AltNames/Delete alt"] = "부 캐릭터 삭제",
	["AltNames/Disabled"] = "비활성",
	["AltNames/Display a player's alts in the tooltip"] = "툴팁에 플레이어의 부 캐릭터 표시하기",
	["AltNames/Display a player's main name in the tooltip"] = "툴팁에 플레이어의 주 캐릭터 이름 표시하기",
	["AltNames/Display main names in the same colour as that of the alt's class (taking the data from the PlayerNames module if it is enabled)"] = "부 캐릭터의 직업과 같은 색상으로 주 캐릭터 이름 표시하기 (플레이어 이름 모듈을 사용 중이면 모듈에서 데이터를 가져옵니다)",
	["AltNames/Display main names in the same colour as that of the main's class (taking the data from the PlayerNames module if it is enabled)"] = "주 캐릭터의 직업과 같은 색상으로 주 캐릭터 이름 표시하기 (플레이어 이름 모듈을 사용 중이면 모듈에서 데이터를 가져옵니다)",
	["AltNames/Don't overwrite existing alt <-> main links when importing or adding new alts."] = "새로운 부 캐릭터를 추가하거나 가져올 때 저장된 부 캐릭터 <-> 주 캐릭터 간 연결을 덮어쓰지 않습니다.",
	["AltNames/Don't overwrite existing links"] = "저장된 연결을 덮어쓰지 않기",
	["AltNames/don't use"] = "사용하지 않음",
	["AltNames/Don't use data from the PlayerNames module at all"] = "플레이어 이름 모듈의 데이터 사용하지 않기",
	["AltNames/ERROR: some function sent a blank message!"] = "오류: 몇몇 함수가 빈 메시지를 보냈습니다!",
	["AltNames/Find characters"] = "캐릭터 찾기",
	["AltNames/Fix alts"] = "부 캐릭터 고치기",
	["AltNames/Fix corrupted entries in your list of alt names."] = "당신의 부 캐릭터 이름 목록에서 잘못된 목록을 수정합니다.",
	["AltNames/Found alt: %s => main: %s"] = "부 캐릭터 발견: %s => 주 캐릭터: %s",
	["AltNames/guild member alts found and imported: %s"] = "길드원의 부 캐릭터를 발견하고 가져옴: %s",
	["AltNames/Import from Guild Greet database"] = "길드 쪽지 데이터베이스에서 가져오기",
	["AltNames/Import from guild roster"] = "길드 명단에서 가져오기",
	["AltNames/Import options"] = "옵션 가져오기",
	["AltNames/Imports alt names from a Guild Greet database, if present"] = "길드 쪽지 데이터베이스에서 부 캐릭터 이름이 있으면 가져옵니다",
	["AltNames/Imports alt names from the guild roster by checking for members with the rank \"alt\" or \"alts\", or guild / officer notes like \"<name>'s alt\""] = "\"부캐\"나 \"부캐릭터\" 등급, 또는 \"<이름>의 부캐\"같은 길드 / 관리자 쪽지를 확인하여 길드 명단에서 부 캐릭터 이름을 가져옵니다",
	["AltNames/Imports data from LOKWhoIsWho, if present (drop your SavedVariablesLOKWhoIsWho.lua in the Prat directory to be able to use this)."] = "존재한다면 LOKWhoIsWho에서 데이터를 가져옵니다 (SavedVariablesLOKWhoIsWho.lua 파일을 Prat 디렉토리에 복사해야 사용 가능함).",
	["AltNames/Left"] = "왼쪽",
	["AltNames/link <alt name> <main name> (eg, /altnames link Fin Finjathealtoffin)"] = "link <부 캐릭터 이름> <주 캐릭터 이름> (예, /altnames link Fin Finjathealtoffin)",
	["AltNames/Link alt"] = "부 캐릭터 연결하기",
	["AltNames/Link someone's alt character with the name of their main."] = "누군가의 부 캐릭터를 그의 주 캐릭터 이름과 연결시킵니다.",
	["AltNames/linked alt %s => %s"] = "부 캐릭터 연결됨 %s => %s",
	["AltNames/List all"] = "모든 목록",
	["AltNames/List all links between alts and their main names."] = "부 캐릭터와 주 캐릭터 이름 사이의 모든 연결 목록입니다.",
	["AltNames/List alts"] = "부 캐릭터 목록",
	["AltNames/List alts for a given character"] = "주어진 캐릭터의 부 캐릭터 목록",
	["AltNames/LOKWhoIsWho data not found"] = "LOKWhoIsWho 데이터 찾을 수 없음",
	["AltNames/LOKWhoIsWho import"] = "LOKWhoIsWho 가져오기",
	["AltNames/LOKWhoIsWho lua file not found, sorry."] = "LOKWhoIsWho lua 파일 찾을 수 없음.",
	["AltNames/Main"] = "주 캐릭터",
	["AltNames/main"] = "주 캐릭터",
	["AltNames/Main name position"] = "주 캐릭터 이름 위치",
	["AltNames/Main:"] = "주 캐릭터:",
	["AltNames/mainpos_desc"] = "부 캐릭터에 접속 중일 때 주 캐릭터의 이름을 표시할 곳",
	["AltNames/mainpos_name"] = "주 캐릭터 이름 위치",
	["AltNames/module_desc"] = "사람들의 부 캐릭터를 그들의 주 캐릭터와 연결합니다, 대화 메시지에서 발견됐을 때 그들의 이름 다음에 표시되게 할 수 있습니다 (기본값=끔).",
	["AltNames/no alts found for character "] = "캐릭터의 부 캐릭터 찾을 수 없음",
	["AltNames/no alts or mains found matching \"%s\""] = "\"%s\"|1과;와; 일치하는 부 캐릭터나 주 캐릭터를 찾을 수 없음",
	["AltNames/No arg string given to :addAlt()"] = ":addAlt()에 변수 구문이 주어지지 않았습니다",
	["AltNames/no characters called \"%s\" found; nothing deleted"] = "요청한 \"%s\" 캐릭터 찾을 수 없음; 삭제하지 못함",
	["AltNames/No Guild Greet database found"] = "길드 쪽지 데이터베이스 찾을 수 없음",
	["AltNames/No main name supplied to link %s to"] = "%s|1과;와; 연결할 주 캐릭터 이름 제공되지 않음",
	["AltNames/no matches found"] = "일치 하는 것 없음",
	["AltNames/quiet"] = "조용하게",
	["AltNames/quiet_desc"] = "대화창에 보고할 지 안할 지 설정합니다.",
	["AltNames/quiet_name"] = "quiet_name",
	["AltNames/Right"] = "오른쪽",
	["AltNames/Search the list of linked characters for matching main or alt names."] = "주 캐릭터나 부 캐릭터 이름이 일치하는 연결된 캐릭터의 목록을 검색합니다.",
	["AltNames/searched for: %s - total matches: %s"] = "검색: %s - 총 일치: %s",
	["AltNames/Show alts in tooltip"] = "툴팁에 부 캐릭터 표시",
	["AltNames/Show main in tooltip"] = "툴팁에 주 캐릭터 표시",
	["AltNames/Start"] = "시작",
	["AltNames/The colour of an alt's main name that will be displayed"] = "표시할 주 캐릭터 이름의 색상",
	["AltNames/Use class colour (from the PlayerNames module)"] = "직업 색상 사용 (플레이어 이름 모듈로부터)",
	["AltNames/use class colour of alt"] = "부 캐릭터의 직업 색상 사용",
	["AltNames/use class colour of main"] = "주 캐릭터의 직업 색상 사용",
	["AltNames/Use LibAlts Data"] = "LibAlts 데이터 사용",
	["AltNames/Use the data available via the shared alt information library."] = "공유된 부 캐릭터 정보 라이브러리를 통해 이용 가능한 데이터를 사용합니다.",
	["AltNames/Various ways to import a main's alts from other addons"] = "다른 애드온에서 주 캐릭터의 부 캐릭터들을 가져올 다양한 방법들",
	["AltNames/warning: alt %s already linked to %s"] = "경고: 부 캐릭터 %s|1은;는; 이미 %s|1과;와; 연결됨",
	["AltNames/Where to display a character's main name when on their alt."] = "부 캐릭터에 접속 중일 때 주 캐릭터의 이름을 표시할 곳",
	["AltNames/Whether to report to the chat frame or not."] = "대화창에 보고 여부",
	["AltNames/You are not in a guild"] = "당신은 길드에 속해 있지 않습니다",
	["AltNames/You have not yet linked any alts with their mains."] = "아직 주 캐릭터에 연결한 부 캐릭터가 없습니다.",
	["Bubbles/color_desc"] = "말풍선 테두리 색상을 대화 유형에 맞춥니다.",
	["Bubbles/color_name"] = "말풍선 색상",
	["Bubbles/font_desc"] = "대화창에서 사용중인 글꼴과 같은 글꼴 사용",
	["Bubbles/font_name"] = "대화 글꼴 사용",
	["Bubbles/fontsize_desc"] = "말풍선 글꼴 크기를 설정합니다",
	["Bubbles/fontsize_name"] = "글꼴 크기",
	["Bubbles/format_desc"] = "대화 말풍선 내용에 Prat 서식을 적용합니다.",
	["Bubbles/format_name"] = "문자열 서식",
	["Bubbles/icons_desc"] = "말풍선에 전술 아이콘을 표시합니다.",
	["Bubbles/icons_name"] = "전술 아이콘 표시",
	["Bubbles/module_desc"] = "대화 말풍선과 관련된 사용자 설정",
	["Bubbles/module_name"] = "말풍선",
	["Bubbles/shorten_desc"] = "말풍선을 한 줄로 줄입니다. 말풍선에 마우스를 올리면 내용을 확장합니다.",
	["Bubbles/shorten_name"] = "말풍선 축소",
	["Bubbles/transparent_desc"] = "대화 말풍선의 배경과 테두리 무늬를 숨깁니다. (이 옵션을 취소하려면 /reload 필요)",
	["Bubbles/transparent_name"] = "투명한 말풍선",
	["Buttons/alpha_desc"] = "모든 대화창의 대화 메뉴와 화살표의 투명도를 설정합니다.",
	["Buttons/alpha_name"] = "투명도 설정",
	["Buttons/Buttons"] = "버튼",
	["Buttons/Chat window button options."] = "대화창 버튼 옵션",
	["Buttons/chatmenu_desc"] = "대화 메뉴를 끄고 켭니다.",
	["Buttons/chatmenu_name"] = "대화 메뉴 표시",
	["Buttons/Default"] = "기본값",
	["Buttons/Right, Inside Frame"] = "우측, 프레임 안쪽",
	["Buttons/Right, Outside Frame"] = "우측, 프레임 바깥쪽",
	["Buttons/scrollReminder_desc"] = "대화창을 위로 올렸을 때 맨 아래로 버튼을 표시합니다.",
	["Buttons/scrollReminder_name"] = "맨 아래로 버튼 표시",
	["Buttons/Set Position"] = "위치 설정",
	["Buttons/Sets position of chat menu and arrows for all chat windows."] = "대화창의 메뉴와 화살표의 위치를 설정합니다.",
	["Buttons/Show Arrows"] = "화살표 표시",
	["Buttons/Show Chat%d Arrows"] = "대화창%d의 화살표 보이기",
	["Buttons/showbnet_desc"] = "커뮤니티 메뉴 표시",
	["Buttons/showbnet_name"] = "커뮤니티 메뉴 표시",
	["Buttons/showmenu_desc"] = "대화 메뉴 표시",
	["Buttons/showmenu_name"] = "메뉴 표시",
	["Buttons/showminimize_desc"] = "최소화 버튼 표시",
	["Buttons/showminimize_name"] = "최소화 버튼 표시",
	["Buttons/Toggle showing chat arrows for each chat window."] = "각 채팅창 별로 화살표 표시를 끄고 켭니다.",
	["Buttons/Toggles navigation arrows on and off."] = "상하 화살표를 끄고 켭니다.",
	["ChannelColorMemory/(%w+)%s?(.*)"] = "(%S+)%s?(.*)",
	["ChannelColorMemory/ChannelColorMemory"] = "채널 색상 기억",
	["ChannelColorMemory/Remembers the colors of each channel name."] = "각 채널 이름의 색상을 기억합니다.",
	["ChannelNames/%s settings."] = "%s 설정.",
	["ChannelNames/<string>"] = "<내용>",
	["ChannelNames/Add Channel Abbreviation"] = "채널 이름 줄임 추가",
	["ChannelNames/addnick_desc"] = "축약된 채널 이름을 추가합니다. 채널 이름에 #을 붙이면 채널 번호를 포함합니다. (예. '#거래').",
	["ChannelNames/Blank"] = "공백",
	["ChannelNames/chanlink_desc"] = "채널을 해당 채널에 대화를 여는 클릭가능 한 링크로 만듭니다.",
	["ChannelNames/chanlink_name"] = "채널 링크 만들기",
	["ChannelNames/Channel %d"] = "채널 %d",
	["ChannelNames/Channel name abbreviation options."] = "채널 이름 줄이기 옵션입니다.",
	["ChannelNames/ChannelNames"] = "채널 이름",
	["ChannelNames/channelnick_desc"] = "채널 이름 줄여쓰기",
	["ChannelNames/channelnick_name"] = "채널 이름 줄여쓰기",
	["ChannelNames/Clear Channel Abbreviation"] = "채널 줄임 초기화",
	["ChannelNames/Clears an abbreviated channel name."] = "축약된 채널 이름을 지웁니다.",
	["ChannelNames/colon_desc"] = "대체 채널 이름 뒤에 콜론을 추가합니다.",
	["ChannelNames/colon_name"] = "콜론 표시",
	["ChannelNames/Dont display the channel/chat type name"] = "채널/대화 유형 이름 표시하지 않기",
	["ChannelNames/otheropts_desc"] = "추가적으로 채널 링크를 제어하고 채널을 형식화하는 옵션입니다.",
	["ChannelNames/otheropts_name"] = "기타 옵션",
	["ChannelNames/Remove Channel Abbreviation"] = "채널 줄임 제거",
	["ChannelNames/Removes an an abbreviated channel name."] = "축약된 채널 이름을 제거합니다.",
	["ChannelNames/Replace"] = "교체",
	["ChannelNames/Set"] = "설정",
	["ChannelNames/space_desc"] = "채널 대체 이름 뒤에 공간 추가 기능을 켜거나 끕니다.",
	["ChannelNames/space_name"] = "공간 표시",
	["ChannelNames/Toggle replacing this channel."] = "이 채널 이름 대체하기",
	["ChannelNames/Use a custom replacement for the chat %s text."] = "대화 %s 문자에 사용자 설정 교체를 사용합니다.",
	["ChannelSticky/Channel"] = "채널",
	["ChannelSticky/ChannelSticky"] = "채널 고정",
	["ChannelSticky/Chat channel sticky options."] = "대화 채널 고정 옵션입니다.",
	["ChannelSticky/ChatType"] = "대화 형식",
	["ChannelSticky/Per chat type options."] = "대화 형식 별 옵션",
	["ChannelSticky/smartgroup_desc"] = "공격대, 파티 또는 인스턴스 대화 중 자동으로 유효한 대화 유형을 선택하는 /smart와 /smrt 명령어를 추가합니다",
	["ChannelSticky/smartgroup_name"] = "스마트 그룹",
	["ChannelSticky/Sticky %s"] = "%s 고정",
	["ChannelSticky/Sticky Per Chat Frame"] = "대화창 별 고정",
	["ChannelSticky/Toggle remembering the chat type last used per chat frame."] = "대화창 별로 마지막으로 사용한 대화 형식 기억 기능을 켜거나 끕니다.",
	["ChannelSticky/Toggles sticky on and off for %s."] = "%s의 입력 고정을 켜거나 끕니다.",
	["ChatLink/gem_desc"] = "보석 호환 모드 사용",
	["ChatLink/gem_name"] = "보석 호환",
	["ChatLink/module_desc"] = "대화 채널 아이템 링크 옵션입니다.",
	["ChatLink/module_info"] = "이 모듈은 비-거래 대화 채널 예. 공개, 또는 직업 채널같은 사설 채널에 아이템을 링크할 수 있게 해줍니다. 디코딩할 수 있는 애드온을 사용하지 않는 사용자에게는 스팸으로 보여질 수 있습니다.",
	["ChatLink/module_name"] = "채널 링크",
	["ChatLink/Trade"] = "거래",
	["ChatLog/A module to automaticaly enable chat and combat logging."] = "대화 기록과 전투 기록을 자동으로 켜는 모듈입니다.",
	["ChatLog/Chat log recorded to <WoW Installation>\\Logs\\WoWChatLog.txt only upon logout."] = "대화 기록은 접속종료 후, <와우폴더>\\Logs\\WoWChatLog.txt 에 저장됩니다.",
	["ChatLog/Chat Log: Disabled"] = "대화 기록: 꺼짐",
	["ChatLog/Chat Log: Enabled"] = "대화 기록: 켜짐",
	["ChatLog/ChatLog"] = "대화 기록 [ChatLog]",
	["ChatLog/Combat log recorded to <WoW Installation>\\Logs\\WoWCombatLog.txt only upon logout."] = "전투 기록은 접속종료 후, <와우폴더>\\Logs\\WoWCombatLog.txt 에 저장됩니다.",
	["ChatLog/Combat Log: Disabled"] = "전투 기록: 꺼짐",
	["ChatLog/Combat Log: Enabled"] = "전투 기록: 켜짐",
	["ChatLog/quiet_desc"] = "이 모듈이 켜지거나 설정이 변경될 때 알림 메시지를 표시하지 않습니다.",
	["ChatLog/quiet_name"] = "알림 메시지 끄기",
	["ChatLog/Toggle Chat Log"] = "대화 기록 끄고 켜기",
	["ChatLog/Toggle chat log on and off."] = "대화 기록을 끄거나 켭니다.",
	["ChatLog/Toggle Combat Log"] = "전투 기록 끄고 켜기",
	["ChatLog/Toggle combat log on and off."] = "전투 기록을 끄거나 켭니다.",
	["ChatTabs/Active Alpha"] = "활성 탭 투명도",
	["ChatTabs/All"] = "모두",
	["ChatTabs/Always"] = "항상",
	["ChatTabs/Chat window tab options."] = "대화창 탭 옵션입니다.",
	["ChatTabs/Default"] = "기본값",
	["ChatTabs/disableflash_desc"] = "대화창 탭의 반짝임을 끕니다.",
	["ChatTabs/disableflash_name"] = "반짝임 끄기",
	["ChatTabs/Hidden"] = "숨김",
	["ChatTabs/Individual"] = "개별",
	["ChatTabs/Not Active Alpha"] = "비활성 탭 투명도",
	["ChatTabs/preventdrag_desc"] = "마우스로 대화창 탭을 이동하지 못하게 합니다",
	["ChatTabs/preventdrag_name"] = "탭 이동방지",
	["ChatTabs/Set ChatFrame%d Display Mode"] = "대화창%d 표시 모드 설정",
	["ChatTabs/Set Display Mode"] = "표시 모드 설정",
	["ChatTabs/Set tab display mode for each chat window."] = "각 대화창 별로 탭 표시 모드를 설정합니다. 체크함 (표시), 체크 안함 (표시 안함), 회색 체크 (기본값)",
	["ChatTabs/Set tab display to always, hidden or the Blizzard default."] = "탭 표시를 항상 표시, 숨김 또는 블리자드 기본값으로 설정합니다.",
	["ChatTabs/Sets alpha of chat tab for active chat frame."] = "활성화 된 대화창 탭의 투명도를 설정합니다.",
	["ChatTabs/Sets alpha of chat tab for not active chat frame."] = "비활성화 된 대화창 탭의 투명도를 설정합니다.",
	["ChatTabs/Tabs"] = "대화창 탭",
	["Clear/Adds clear text slash commands (/clear)(/cls)(/clearall)(/clsall)."] = "지우기 명령어 /clear, /cls, /clearall, /clsall 을 추가합니다.",
	["Clear/Clear"] = "지우기",
	["Clear/Clearall"] = "모두 지우기",
	["Clear/Clears all chat frames."] = "모든 대화창의 내용을 지웁니다.",
	["Clear/Clears the current chat frame."] = "현재 대화창의 내용을 지웁니다.",
	["CopyChat/ Text"] = " 텍스트",
	["CopyChat/BBCode"] = "BBCode",
	["CopyChat/BOTTOMLEFT"] = "하단, 좌측",
	["CopyChat/BOTTOMRIGHT"] = "하단, 우측",
	["CopyChat/buttonpos_desc"] = "복사 버튼을 표시할 대화창의 위치",
	["CopyChat/buttonpos_name"] = "버튼 위치",
	["CopyChat/ChatFrame"] = "대화창",
	["CopyChat/Copy all of the text in the selected chat frame into an edit box"] = "선택된 대화창의 모든 내용을 대화 입력창으로 복사합니다",
	["CopyChat/Copy Text"] = "텍스트 복사",
	["CopyChat/Copy Text Format"] = "복사 내용 서식",
	["CopyChat/Copy text from the active chat window."] = "활성 대화창에서 내용을 복사합니다.",
	["CopyChat/Copy To Editbox"] = "대화 입력창에 복사",
	["CopyChat/CopyChat"] = "대화 복사 [CopyChat]",
	["CopyChat/HTML"] = "HTML",
	["CopyChat/Message From : %s"] = "%s|1으로;로;부터 메시지",
	["CopyChat/Plain"] = "보통",
	["CopyChat/Should the copied text be plain, or formatted so you can see the colors."] = "복사된 내용을 보통으로 표시하거나, 또는 색상을 보기 위해 형식화 합니다.",
	["CopyChat/showbutton_desc"] = "대화창에 버튼 표시",
	["CopyChat/showbutton_name"] = "복사 버튼",
	["CopyChat/TOPLEFT"] = "상단, 좌측",
	["CopyChat/TOPRIGHT"] = "상단, 우측",
	["CopyChat/Wowace.com Forums"] = "Wowace.com 포럼",
	["CustomFilters/<string>"] = "<내용>",
	["CustomFilters/Add a pattern to search for."] = "검색할 패턴을 추가합니다.",
	["CustomFilters/Add Pattern"] = "패턴 추가",
	["CustomFilters/Block Message"] = "메시지 차단",
	["CustomFilters/Channel Data"] = "채널 데이터",
	["CustomFilters/Channel to send output text to."] = "출력 내용을 보낼 채널.",
	["CustomFilters/Enabled"] = "사용",
	["CustomFilters/Extra data for WHISPER (target) and CHANNEL (channel name or num)"] = "귓속말 (대상)과 채널 (채널 이름 또는 숫자)의 추가 데이터",
	["CustomFilters/Filter Name"] = "필터 이름",
	["CustomFilters/Forward"] = "보내기",
	["CustomFilters/Forward the message to a chat channel."] = "메시지를 대화 채널로 보내기.",
	["CustomFilters/Forward the message to a custom chat channel."] = "사설 채널로 출력",
	["CustomFilters/ForwardCustom"] = "사설 채널로 보내기",
	["CustomFilters/ForwardMessage"] = "메시지 보내기",
	["CustomFilters/ForwardMessageCustom"] = "사설 채널",
	["CustomFilters/Hilight Color"] = "색상 강조",
	["CustomFilters/Hilight Match Text"] = "일치하는 문자 강조",
	["CustomFilters/Inbound"] = "받는 메시지",
	["CustomFilters/inchannels_desc"] = "특정 채널에서 검색",
	["CustomFilters/inchannels_name"] = "채널 검색",
	["CustomFilters/Is this pattern enabled for use?"] = "이 패턴을 사용하기 위해 활성화 할까요?",
	["CustomFilters/Match Options"] = "일치 옵션",
	["CustomFilters/module_desc"] = "사용자 설정 필터를 지원하는 모듈입니다.",
	["CustomFilters/module_name"] = "사용자 설정 필터",
	["CustomFilters/Only output the message portion of the chat text, leave out the channel, and playername etc."] = "대화 문자열, 채널 나감, 플레이어 이름 등의 메시지 부분만 출력합니다.",
	["CustomFilters/Outbound"] = "보낸 메시지",
	["CustomFilters/Output Channel"] = "출력 채널",
	["CustomFilters/Output Message Only"] = "출력 메시지만",
	["CustomFilters/Pattern Info"] = "패턴 정보",
	["CustomFilters/Pattern Options"] = "패턴 옵션",
	["CustomFilters/Play a sound when this message is output to the chatframe"] = "이 메시지가 대화창에 출력되면 소리를 재생합니다",
	["CustomFilters/Play Sound"] = "소리 재생",
	["CustomFilters/Prevent the message from being displayed"] = "표시 중인 메시지 차단하기",
	["CustomFilters/Remove an existing pattern."] = "저장 중인 패턴을 제거합니다.",
	["CustomFilters/Remove Pattern"] = "패턴 삭제",
	["CustomFilters/Replacement Text"] = "대체 텍스트",
	["CustomFilters/Search Format String"] = "형식 구문 검색",
	["CustomFilters/Search Pattern"] = "패턴 검색",
	["CustomFilters/Secondary Output"] = "보조 출력",
	["CustomFilters/Send to a secondary output"] = "보조 출력으로 전송하기",
	["CustomFilters/Supplied pattern is a format string instead of a pattern"] = "제공된 패턴은 패턴이 아닌 형식 구문입니다",
	["CustomFilters/Your name for this filter"] = "이 필터의 이름",
	["Editbox/Attach edit box to..."] = "입력창 붙이기...",
	["Editbox/Attach to..."] = "붙이기...",
	["Editbox/Background color"] = "배경 색상",
	["Editbox/Background Inset"] = "배경 삽입",
	["Editbox/Background texture"] = "배경 무늬",
	["Editbox/Border color"] = "테두리 색상",
	["Editbox/Border texture"] = "테두리 무늬",
	["Editbox/Bottom"] = "아래",
	["Editbox/Color border by channel"] = "채널에 의한 테두리 색상",
	["Editbox/currently_broken_alt_behavior"] = [=[화살표 키 동작은 현재 WoW 클라이언트에서 작동하지 않습니다.

기록 접근에 위쪽 아래쪽 키 대신 ALT-위와 ALT-아래 키를 사용하세요]=],
	["Editbox/Edge Size"] = "모서리 크기",
	["Editbox/Editbox"] = "대화 입력창",
	["Editbox/Editbox options."] = "대화 입력창을 설정합니다.",
	["Editbox/Font"] = "글꼴",
	["Editbox/Free-floating"] = "자유로운 이동",
	["Editbox/Free-floating, Locked"] = "자유로운 이동, 잠금",
	["Editbox/Requires the Alt key to be held down to move the cursor in chat"] = "대화 입력창 커서 이동에 Alt 키를 사용합니다",
	["Editbox/Select the font to use for the edit box"] = "대화 입력창에 사용할 글꼴 선택",
	["Editbox/Sets the frame's border color to the color of your currently active channel"] = "대화 입력창 테두리 색상을 현재 채널 색상으로 설정",
	["Editbox/Tile Size"] = "타일 크기",
	["Editbox/Top"] = "위",
	["Editbox/Use Alt key for cursor movement"] = "커서 이동에 Alt 키 사용",
	["EventNames/allevents_desc"] = "모든 대화 이벤트에 Prat 처리 과정을 적용시킵니다.",
	["EventNames/allevents_name"] = "모든 이벤트 처리",
	["EventNames/Chat window event name options."] = "대화창에 이벤트 이름을 표시합니다.",
	["EventNames/EventNames"] = "이벤트 이름",
	["EventNames/Show"] = "표시",
	["EventNames/Show events on chatframes"] = "대화창에 이벤트를 표시합니다.",
	["EventNames/show_desc"] = "각 대화창에 이벤트 이름 표시를 끄고 켭니다.",
	["EventNames/show_name"] = "이벤트 이름 표시",
	["Fading/duration_desc"] = "대화글이 사라질 때 까지의 대기 시간을 설정합니다.",
	["Fading/duration_name"] = "사라짐 대기 시간 설정 (초)",
	["Fading/module_desc"] = "대화글의 사라짐 옵션을 설정합니다.",
	["Fading/module_name"] = "사라짐",
	["Fading/textfade_desc"] = "각 대화창 별로 대화글 사라짐 기능을 켜고 끕니다.",
	["Fading/textfade_name"] = "사라짐 켜기",
	["Filtering/A module to provide basic chat filtering."] = "대화 내용을 필터링하는 모듈입니다.",
	["Filtering/afkdnd_desc"] = "자리비움과 다른 용무중 메시지를 조절합니다.",
	["Filtering/afkdnd_name"] = "자리비움과 다른 용무중 메시지를 조절합니다.",
	["Filtering/bgjoin_desc"] = "전장 채널 입장/퇴장 메시지를 숨깁니다.",
	["Filtering/bgjoin_name"] = "전장 입장/퇴장 필터링",
	["Filtering/Filtering"] = "필터링",
	["Filtering/leavejoin_desc"] = "채널 입장/퇴장 메시지를 숨깁니다.",
	["Filtering/leavejoin_name"] = "채널 입장/퇴장 필터링",
	["Filtering/notices_desc"] = "사설 채널의 알림 메시지를 숨깁니다, ex. 관리자 변경.",
	["Filtering/notices_name"] = "채널 알림 메시지 필터링",
	["Filtering/tradespam_desc"] = "같은 메시지가 여러번 반복되지 않게 방지합니다.",
	["Filtering/tradespam_name"] = "스팸 조절",
	["Font/Auto Restore Font Size"] = "글꼴 크기 자동 복원",
	["Font/Chat window font options."] = "대화창 글꼴 옵션입니다.",
	["Font/Font"] = "글꼴",
	["Font/monochrome_desc"] = "글꼴 그림자 색을 끄고 켭니다.",
	["Font/monochrome_name"] = "그림자 끄고 켜기",
	["Font/None"] = "없음",
	["Font/Outline"] = "외곽선",
	["Font/outlinemode_desc"] = "글꼴의 외곽선을 설정합니다.",
	["Font/outlinemode_name"] = "외곽선 설정",
	["Font/rememberfont_desc"] = "선택한 글꼴을 기억하고 시작할 때 적용합니다.",
	["Font/rememberfont_name"] = "글꼴 기억",
	["Font/Set ChatFrame%d Font Size"] = "대화창%d의 글꼴 크기를 설정합니다.",
	["Font/Set Font Face"] = "글꼴 설정",
	["Font/Set Font Size"] = "글꼴 크기 설정",
	["Font/Set Separately"] = "개별 설정",
	["Font/Set text font size for each chat window."] = "각 대화창 별로 글꼴 크기를 설정합니다.",
	["Font/Set text font size."] = "글꼴 크기를 설정합니다.",
	["Font/Set the text font face for all chat windows."] = "모든 대화창의 글꼴을 설정합니다.",
	["Font/shadowcolor_desc"] = "그림자 색상을 설정합니다.",
	["Font/shadowcolor_name"] = "그림자 색상 설정",
	["Font/Thick Outline"] = "굵은 외곽선",
	["Font/Toggle setting options separately for each chat window."] = "각 대화창 별로 옵션 설정을 끄고 켭니다.",
	["Font/Workaround a Blizzard bug which changes the font size when you open a system menu."] = "시스템 메뉴를 열 때 글꼴 크기를 변경하는 블리자드 버그를 회피합니다.",
	["Frames/Chat window frame parameter options"] = "대화창 프레임 한도 옵션",
	["Frames/framealpha_desc"] = "마우스를 올렸을 때 대화창의 투명도를 조절합니다.",
	["Frames/framealpha_name"] = "대화창 투명도 설정",
	["Frames/Frames"] = "대화창",
	["Frames/mainchatonload_desc"] = "첫번째 대화창을 자동으로 선택하고 로드 시에 활성화 시킵니다.",
	["Frames/mainchatonload_name"] = "로드 시 주 대화창 강제 설정",
	["Frames/maxchatheight_desc"] = "모든 대화창의 최대 높이를 설정합니다.",
	["Frames/maxchatheight_name"] = "최대 높이 설정",
	["Frames/maxchatwidth_desc"] = "모든 대화창의 최대 너비를 설정합니다.",
	["Frames/maxchatwidth_name"] = "최대 너비 설정",
	["Frames/minchatheight_desc"] = "모든 대화창의 최소 높이를 설정합니다.",
	["Frames/minchatheight_name"] = "최소 높이 설정",
	["Frames/minchatwidth_desc"] = "모든 대화창의 최소 너비를 설정합니다.",
	["Frames/minchatwidth_name"] = "최소 너비 설정",
	["Frames/rememberframepositions_desc"] = "대화창 위치를 기억하고 로드 시마다 불러옵니다",
	["Frames/rememberframepositions_name"] = "위치 기억",
	["Frames/removeclamp_desc"] = "대화창이 화면 밖으로 나가지 않도록 방지합니다.",
	["Frames/removeclamp_name"] = "Zero 고정 크기",
	["History/Chat history options."] = "대화 내역 옵션입니다.",
	["History/Color GMOTD"] = "오늘의 길드 메시지에 색상입히기",
	["History/Colors the GMOTD label"] = "오늘의 길드 메시지 제목에 색상입히기",
	["History/delaygmotd_desc"] = "모든 시작 스팸이 표시 될때까지 오늘의 길드 메시지 지연시키기",
	["History/delaygmotd_name"] = "오늘의 길드 메시지 지연",
	["History/divider"] = "========== 이전 대화 목록의 끝 ==========",
	["History/History"] = "대화 내역",
	["History/Maximum number of lines of command history to save."] = "저장할 명령어 내역의 최대 갯수입니다.",
	["History/Save Command History"] = "명령어 내역 저장",
	["History/Saves command history between sessions (for use with alt+up arrow or just the up arrow)"] = "세션 간 명령어 내역을 저장합니다 (Alt+위 화살표나 위 화살표로 사용하는)",
	["History/Scrollback"] = "스크롤백",
	["History/Scrollback Options"] = "스크롤백 옵션",
	["History/scrollbacklen_desc"] = "스크롤백 저장소에 저장할 대화 줄의 숫자입니다.",
	["History/scrollbacklen_name"] = "스크롤백 길이",
	["History/Set Chat Lines"] = "대화 내역 설정",
	["History/Set Command History"] = "명령어 내역 설정",
	["History/Set the number of lines of chat history for each window."] = "각 대화창 별로 대화 내역의 줄의 갯수를 설정합니다.",
	["History/Store the chat lines between sessions"] = "세션 간 대화 내용 저장하기",
	["KeyBindings/Channel %d"] = "채널 %d",
	["KeyBindings/Copy Selected Chat Frame"] = "선택한 대화창 복사",
	["KeyBindings/Guild Channel"] = "길드 채널",
	["KeyBindings/Instance Channel"] = "인스턴스 채널",
	["KeyBindings/Next Chat Tab"] = "다음 대화 탭",
	["KeyBindings/Officer Channel"] = "관리자 채널",
	["KeyBindings/Party Channel"] = "파티 채널",
	["KeyBindings/Prat CopyChat"] = "Prat 대화 복사",
	["KeyBindings/Prat Keybindings"] = "Prat 단축키",
	["KeyBindings/Prat TellTarget"] = "Prat 대상 대화",
	["KeyBindings/Raid Channel"] = "공격대 채널",
	["KeyBindings/Raid Warning Channel"] = "공격대 경보 채널",
	["KeyBindings/Say"] = "일반 대화",
	["KeyBindings/Smart Group Channel"] = "스마트 그룹 채널",
	["KeyBindings/TellTarget"] = "대상 대화",
	["KeyBindings/Whisper"] = "귓속말",
	["KeyBindings/Yell"] = "외침",
	["OriginalButtons/alpha_desc"] = "모든 대화창의 대화 메뉴와 화살표의 투명도를 설정합니다.",
	["OriginalButtons/alpha_name"] = "투명도 설정",
	["OriginalButtons/buttonframe_desc"] = "버튼 프레임 메뉴를 켜거나 끕니다.",
	["OriginalButtons/buttonframe_name"] = "버튼 프레임 표시",
	["OriginalButtons/ChannelNames"] = "채널 이름",
	["OriginalButtons/Chat window button options."] = "대화창 버튼 옵션입니다.",
	["OriginalButtons/chatmenu_desc"] = "대화 메뉴를 표시하거나 숨깁니다.",
	["OriginalButtons/chatmenu_name"] = "대화 메뉴 표시",
	["OriginalButtons/Default"] = "기본값",
	["OriginalButtons/Original Buttons"] = "오리지날 버튼",
	["OriginalButtons/reflow_desc"] = "대화창 문자를 버튼과 겹치지 않게 합니다.",
	["OriginalButtons/reflow_name"] = "문자 겹침 방지",
	["OriginalButtons/reminder_desc"] = "대화창이 최하단이 아닐 때 맨 아래로 버튼을 표시합니다.",
	["OriginalButtons/reminder_name"] = "맨 아래로 버튼 표시",
	["OriginalButtons/Right, Inside Frame"] = "오른쪽, 프레임 내부",
	["OriginalButtons/Right, Outside Frame"] = "오른쪽, 프레임 외부",
	["OriginalButtons/Set Position"] = "위치 설정",
	["OriginalButtons/Sets position of chat menu and arrows for all chat windows."] = "모든 대화창에서 대화 메뉴와 화살표의 위치를 설정합니다.",
	["OriginalButtons/Show Arrows"] = "화살표 표시",
	["OriginalButtons/Show Chat%d Arrows"] = "대화창%d 화살표 표시",
	["OriginalButtons/Toggle showing chat arrows for each chat window."] = "각 대화창 별로 화살표 표시 기능을 켜거나 끕니다.",
	["OriginalButtons/Toggles navigation arrows on and off."] = "탐색 화살표를 켜거나 끕니다.",
	["OriginalEditbox/Autohide"] = "자동 숨기기",
	["OriginalEditbox/BACKGROUND"] = "BACKGROUND",
	["OriginalEditbox/Bar colour"] = "바 색상",
	["OriginalEditbox/Border colour"] = "테두리 색상",
	["OriginalEditbox/Border width"] = "테두리 폭",
	["OriginalEditbox/Bottom"] = "맨 아래로",
	["OriginalEditbox/Click the edit box to open it up for editing. Only available if Autohide is disabled."] = "대화 입력창을 클릭하여 편집할 수 있게 엽니다. 자동 숨기기 기능이 꺼져있을 때만 사용할 수 있습니다.",
	["OriginalEditbox/Clickable"] = "클릭 가능한",
	["OriginalEditbox/DIALOG"] = "DIALOG",
	["OriginalEditbox/Editbox options."] = "대화 입력창을 설정합니다.",
	["OriginalEditbox/Enable Arrowkeys"] = "방향키 사용",
	["OriginalEditbox/Enable using arrowkeys in editbox without the alt key."] = "입력창에서 Alt 키 없이 방향키 사용이 가능합니다.",
	["OriginalEditbox/Hide Border"] = "테두리 숨기기",
	["OriginalEditbox/Hide the border around the edit box."] = "입력창의 테두리를 숨깁니다.",
	["OriginalEditbox/Hide the edit box after you have pressed enter."] = "엔터를 누른 후에 입력 창을 숨깁니다.",
	["OriginalEditbox/HIGH"] = "HIGH",
	["OriginalEditbox/Lock editbox position if undocked."] = "고정 되있지 않으면 대화 입력창의 위치를 잠급니다.",
	["OriginalEditbox/Lock Position"] = "위치 잠그기",
	["OriginalEditbox/LOW"] = "LOW",
	["OriginalEditbox/MEDIUM"] = "MEDIUM",
	["OriginalEditbox/OriginalEditbox"] = "오리지널 대화 입력창",
	["OriginalEditbox/Padding"] = "채우기",
	["OriginalEditbox/Set Alpha"] = "투명도 설정",
	["OriginalEditbox/Set Position"] = "위치 설정",
	["OriginalEditbox/Set Strata"] = "프레임 우선순위 설정",
	["OriginalEditbox/Set the alpha of the editbox."] = "입력창의 투명도를 설정합니다.",
	["OriginalEditbox/Set the amount of padding inside the edit box"] = "대화 입력창 안을 채울 양 설정",
	["OriginalEditbox/Set the edit box background colour"] = "입력창의 배경색을 설정합니다.",
	["OriginalEditbox/Set the edit box border colour"] = "입력창의 테두리 색을 설정합니다.",
	["OriginalEditbox/Set the frame strata of the editbox."] = "입력창의 프레임 우선 순위를 설정합니다.",
	["OriginalEditbox/Set the position of the editbox."] = "입력창의 위치를 설정합니다.",
	["OriginalEditbox/Set the texture of the chat edit box"] = "대화 입력창의 무늬 설정",
	["OriginalEditbox/Set the width of the edit box's border"] = "대화 입력창의 테두리 너비 설정",
	["OriginalEditbox/Set the width of the editbox."] = "입력창의 너비를 설정합니다.",
	["OriginalEditbox/Set Width (NB: only enabled if the editbox is undocked)"] = "폭 설정 (주의: 입력창이 고정되있지 않아야 가능합니다.)",
	["OriginalEditbox/Texture"] = "무늬",
	["OriginalEditbox/Top"] = "위",
	["OriginalEditbox/Undocked"] = "고정안함",
	["Paragraph/adjustlinks_desc"] = "중앙이나 우측 정렬일 때 클릭 기능을 위해 링크 위치를 조절합니다.",
	["Paragraph/adjustlinks_name"] = "플레이어/아이템 링크 위치 수정",
	["Paragraph/Center"] = "중앙",
	["Paragraph/Chat window paragraph options."] = "대화창을 정렬하는 옵션입니다.",
	["Paragraph/justification_desc"] = "각 대화창 별로 가로 정렬을 설정합니다.",
	["Paragraph/justification_name"] = "정렬 설정",
	["Paragraph/Left"] = "왼쪽",
	["Paragraph/Line Spacing"] = "줄 간격",
	["Paragraph/Paragraph"] = "정렬",
	["Paragraph/Right"] = "오른쪽",
	["Paragraph/Set the line spacing for all chat windows."] = "모든 대화창의 줄 간격을 설정합니다.",
	["PlayerNames/Actively Query Player Info"] = "적극적인 플레이어 정보 요청",
	["PlayerNames/Angled"] = "<플레이어>",
	["PlayerNames/Brackets"] = "괄호 선택",
	["PlayerNames/Brackets Common Color"] = "괄호 색상",
	["PlayerNames/Brackets Use Common Color"] = "괄호에 색상 사용",
	["PlayerNames/Class"] = "직업",
	["PlayerNames/Color by Level Difference"] = "레벨 차이에 의한 색상",
	["PlayerNames/coloreverywhere_desc"] = "대화 메시지에 나타나는 플레이어 이름에 색상 적용",
	["PlayerNames/coloreverywhere_name"] = "모든 곳의 이름에 색상 사용",
	["PlayerNames/Enable Alt-Invite"] = "Alt-초대 켜기",
	["PlayerNames/Enable Invite Links"] = "초대 링크 켜기",
	["PlayerNames/Enable TabComplete"] = "탭 완성 켜기",
	["PlayerNames/hoverhilight_desc"] = "플레이어 링크에 마우스를 올리면 특정 플레이어의 대화 내용을 강조합니다",
	["PlayerNames/hoverhilight_name"] = "마우스 오버 강조",
	["PlayerNames/How to color other player's level."] = "다른 플레이어의 레벨 색상화 방법을 설정합니다.",
	["PlayerNames/How to color player's name."] = "플레이어의 이름 색상화 방법을 설정합니다.",
	["PlayerNames/Keep Info"] = "친구/길드원 정보 저장",
	["PlayerNames/Keep Lots Of Info"] = "모든 플레이어 정보 저장",
	["PlayerNames/Keep player information between session for all players except cross-server players"] = "다른 서버를 제외한 모든 플레이어의 정보를 세션 간 유지합니다",
	["PlayerNames/Keep player information between session, but limit it to friends and guild members."] = "친구와 길드원의 정보를 세션 간 유지합니다",
	["PlayerNames/Let TasteTheNaimbow set the common color for unknown player names."] = "알 수 없는 플레이어 이름에 대한 색상으로 TasteTheNaimBow 애드온의 설정을 사용합니다.",
	["PlayerNames/Level Color Mode"] = "레벨 색상 설정",
	["PlayerNames/linkifycommon_desc"] = "일반 메시지 링크",
	["PlayerNames/linkifycommon_name"] = "일반 메시지 링크",
	["PlayerNames/No additional coloring"] = "사용 안함",
	["PlayerNames/None"] = "안함",
	["PlayerNames/Player Color Mode"] = "플레이어 색상 설정",
	["PlayerNames/Player name formating options."] = "플레이어 이름 형식화 설정입니다.",
	["PlayerNames/PlayerNames"] = "플레이어 이름",
	["PlayerNames/Prat_Playernames: Stored Player Data Cleared"] = "Prat_Playernames: 저장된 플레이어 정보 초기화",
	["PlayerNames/Query the server for all player names we do not know. Note: This happpens pretty slowly, and this data is not saved."] = "모르는 모든 플레이어 이름 정보를 서버에 요청합니다. 주의: 작동 시 느려질 수 있으며, 수집된 정보들은 저장되지 않습니다.",
	["PlayerNames/Random"] = "무작위",
	["PlayerNames/realidcolor_desc"] = "실명ID 이름에 색을 입힙니다",
	["PlayerNames/realidcolor_name"] = "실명ID 색 입히기",
	["PlayerNames/Reset Settings"] = "설정 초기화",
	["PlayerNames/Restore default settings, and delete stored character data."] = "기본 설정을 복구하고 저장된 캐릭터 설정을 지웁니다.",
	["PlayerNames/Set common color of unknown player names."] = "알 수 없는 플레이어 이름의 색상을 설정합니다.",
	["PlayerNames/Sets common color of brackets to use around player names."] = "플레이어 이름 주위에 사용할 괄호의 색상을 설정합니다.",
	["PlayerNames/Sets style of brackets to use around player names."] = "플레이어 이름 주위에 사용할 괄호의 모양을 설정합니다.",
	["PlayerNames/Show Group"] = "그룹 표시",
	["PlayerNames/Show Level"] = "레벨 표시",
	["PlayerNames/Show Raid Target Icon"] = "전술 아이콘 표시",
	["PlayerNames/Square"] = "사각형",
	["PlayerNames/Tab completion : "] = "탭 완성 :",
	["PlayerNames/tabcomplete_name"] = "가능한 이름",
	["PlayerNames/Toggle group invites by alt-clicking hyperlinked keywords like 'invite'."] = "'초대' 같은 링크된 단어를 Alt-클릭하여 초대합니다.",
	["PlayerNames/Toggle group invites by alt-clicking on player name."] = "플레이어 이름을 Alt-클릭하여 초대합니다.",
	["PlayerNames/Toggle level showing."] = "레벨을 표시합니다.",
	["PlayerNames/Toggle raid group showing."] = "공격대 파티를 표시합니다.",
	["PlayerNames/Toggle showing the raid target icon which is currently on the player."] = "플레이어에게 지정된 전술 아이콘을 표시합니다.",
	["PlayerNames/Toggle tab completion of player names."] = "플레이어 이름의 탭 완성을 켭니다.",
	["PlayerNames/Toggle using a common color for brackets around player names."] = "플레이어 이름 주위 괄호에 색상을 입힙니다.",
	["PlayerNames/Toggle using a common color for unknown player names."] = "알 수 없는 플레이어 이름에 색상을 입힙니다.",
	["PlayerNames/Too many matches (%d possible)"] = "너무 많은 일치 (%d 가능)",
	["PlayerNames/Unknown Common Color"] = "알 수 없는 색상",
	["PlayerNames/Unknown Common Color From TasteTheNaimbow"] = "알 수 없는 이름에 TasteTheNaimbow 색상 사용",
	["PlayerNames/Unknown Use Common Color"] = "알 수 없는 이름에 색상 사용",
	["PlayerNames/Use Channel Color"] = "채널 색상 사용",
	["PlayerNames/Use Player Color"] = "플레이어 색상 사용",
	["PlayerNames/Use toon name for RealID"] = "실명ID에 별명 사용",
	["PopupMessage/Add Nickname"] = "별명 추가",
	["PopupMessage/Adds an alternate name to show in popups."] = "팝업에 표시할 별명을 추가합니다.",
	["PopupMessage/Clear Nickname"] = "별명 전체 삭제",
	["PopupMessage/Clears alternate name to show in popups."] = "팝업에 표시할 별명을 전체 삭제합니다.",
	["PopupMessage/framealpha_desc"] = "가장 밝아졌을 때 팝업 창의 투명도를 설정합니다.",
	["PopupMessage/framealpha_name"] = "팝업 창 투명도",
	["PopupMessage/Popup"] = "팝업",
	["PopupMessage/PopupMessage"] = "팝업 메시지",
	["PopupMessage/Remove Nickname"] = "별명 제거",
	["PopupMessage/Removes an alternate name to show in popups."] = "팝업에 표시할 별명을 제거합니다.",
	["PopupMessage/Set Separately"] = "개별 설정",
	["PopupMessage/Show All Popups"] = "모든 팝업 표시",
	["PopupMessage/Show Popups"] = "팝업 표시",
	["PopupMessage/Show Popups for all chat windows."] = "모든 대화창에 팝업을 표시합니다.",
	["PopupMessage/Show Popups for each window."] = "각 대화창 별로 팝업을 표시합니다.",
	["PopupMessage/show_desc"] = "각 창 별로 팝업을 표시합니다.",
	["PopupMessage/show_name"] = "팝업 표시",
	["PopupMessage/show_perframedesc"] = "팝업 표시 여부를 토글합니다.",
	["PopupMessage/show_perframename"] = "%d번 대화창 팝업 표시",
	["PopupMessage/showall_desc"] = "모든 대화창에 팝업을 표시합니다.",
	["PopupMessage/showall_name"] = "모든 팝업 표시",
	["PopupMessage/Shows messages in a popup window."] = "팝업창 안에 메시지를 표시합니다.",
	["PopupMessage/Shows messages with your name in a popup."] = "팝업 창에 당신의 이름과 메시지를 같이 표시합니다.",
	["PopupMessage/Toggle setting options separately for each chat window."] = "각 대화창 별로 설정 옵션을 끄거나 켭니다.",
	["Scroll/Bottom"] = "밑에서 위로",
	["Scroll/Chat window scrolling options."] = "대화 창 스크롤 옵션입니다.",
	["Scroll/Control whether text is added to the frame at the top or the bottom."] = "문자가 창의 상단 또는 하단부터 추가될 지 설정합니다.",
	["Scroll/lowdown_desc"] = "각 대화창 별로 자동 최하단 이동을 끄거나 켭니다.",
	["Scroll/lowdown_name"] = "최하단 이동 사용",
	["Scroll/modified_speed"] = "Shift+마우스휠 속도 설정",
	["Scroll/modified_speed_desc"] = "Shift를 눌렀을 때 마우스 휠로 스크롤할 줄의 숫자를 설정합니다.",
	["Scroll/mousewheel_desc"] = "각 대화창 별로 마우스 휠 지원을 끄거나 켭니다.",
	["Scroll/mousewheel_name"] = "마우스 휠 사용",
	["Scroll/Scroll"] = "스크롤",
	["Scroll/Set Ctrl+MouseWheel Speed"] = "Ctrl+마우스 휠 속도 설정",
	["Scroll/Set MouseWheel Speed"] = "마우스 휠 속도 설정",
	["Scroll/Set number of lines mousewheel will scroll when ctrl is pressed."] = "Ctrl 키를 누르고 마우스 휠을 사용할 때 스크롤할 줄의 수를 설정합니다.",
	["Scroll/Set number of lines mousewheel will scroll."] = "마우스 휠로 스크롤할 줄의 수를 설정합니다.",
	["Scroll/Set TheLowDown Delay"] = "최하단 이동 지연 시간 설정",
	["Scroll/Set time to wait before jumping to the bottom of chat windows."] = "대화창을 하단으로 내리기까지 대기 시간을 설정합니다.",
	["Scroll/Text scroll direction"] = "문자 스크롤 방향",
	["Scroll/Top"] = "위에서 아래로",
	["Scrollback/divider"] = "========== 이전 대화 목록의 끝 ==========",
	["Scrollback/Scrollback"] = "이전 대화 목록",
	["Scrollback/Store the chat lines between sessions"] = "세션 간 대화 내용을 저장합니다",
	["Search/err_notfound"] = "찾을 수 없음",
	["Search/err_tooshort"] = "검색 구문이 너무 짧습니다",
	["Search/find_results"] = "검색 결과:",
	["Search/module_desc"] = "대화창 검색 기능을 추가합니다.",
	["Search/module_info"] = [=[이 모듈은 대화 기록을 검색하는 /find 와 /findall 명령어를 추가합니다

사용법:

/find <문자열>

/findall <문자열>]=],
	["Search/module_name"] = "검색",
	["ServerNames/autoabbreviate_desc"] = "서버 이름을 3글자로 줄입니다",
	["ServerNames/autoabbreviate_name"] = "자동-줄임",
	["ServerNames/colon_desc"] = "서버 대체 이름 뒤에 콜론 추가 기능을 끄거나 켭니다.",
	["ServerNames/colon_name"] = "콜론 표시",
	["ServerNames/randomclr_desc"] = "서버 이름에 무작위 색상을 사용합니다.",
	["ServerNames/randomclr_name"] = "무작위 색상",
	["ServerNames/Server name abbreviation options."] = "서버 이름 줄이기 옵션입니다.",
	["ServerNames/ServerNames"] = "서버 이름",
	["Sounds/A module to play sounds on certain chat messages."] = "특정 대화 메시지에 소리를 재생하는 모듈입니다.",
	["Sounds/Add a custom channel"] = "사설 채널 추가",
	["Sounds/bn_whisper_desc"] = "%s Battle.Net 귓속말 메시지 소리",
	["Sounds/bn_whisper_name"] = "Battle.Net 귓속말",
	["Sounds/Custom Channels"] = "사설 채널",
	["Sounds/group_lead_desc"] = "%s 공격대장, 파티장 또는 던전 길잡이 메시지의 소리",
	["Sounds/group_lead_name"] = "그룹장",
	["Sounds/guild_desc"] = "%s 길드 메시지 소리",
	["Sounds/guild_name"] = "길드",
	["Sounds/incoming"] = "받을 때",
	["Sounds/Incoming Sounds"] = "받을 때 소리",
	["Sounds/officer_desc"] = "%s 관리자 채널 메시지 소리",
	["Sounds/officer_name"] = "관리자",
	["Sounds/outgoing"] = "보낼 때",
	["Sounds/Outgoing Sounds"] = "보낼 때 소리",
	["Sounds/party_desc"] = "%s 파티 메시지 소리",
	["Sounds/party_name"] = "파티",
	["Sounds/Play a sound for a certain channel name (can be a substring)"] = "특정 채널 이름에 소리 재생하기 (일치하는 단어 포함)",
	["Sounds/raid_desc"] = "%s 공격대 또는 전장 파티/장 메시지 소리",
	["Sounds/raid_name"] = "공격대",
	["Sounds/Remove a custom channel"] = "사설 채널 제거",
	["Sounds/Reset settings"] = "설정 초기화",
	["Sounds/Restore default settings and resets custom channel list"] = "사설 채널 목록을 초기화하고 기본 설정으로 복원",
	["Sounds/Sound selection for incoming chat messages"] = "대화 메시지를 받을 때 소리 선택",
	["Sounds/Sound selection for outgoing (from you) chat messages"] = "대화 메시지를 보낼 때(자신이) 소리 선택",
	["Sounds/Sounds"] = "소리",
	["Sounds/whisper_desc"] = "%s 귓속말 메시지 소리",
	["Sounds/whisper_name"] = "귓속말",
	["Substitutions/%d total user defined substitutions"] = "총 %d개의 사용자 설정 대용어",
	["Substitutions/|cffff0000warning:|r subtitution \"%s\" already defined as \"%s\", overwriting"] = "|cffff0000경고:|r 대용어 \"%s\"|1은;는; 이미 \"%s\"|1으로;로; 정의 되었습니다, 덮어씁니다",
	["Substitutions/<noguild>"] = "<길드없음>",
	["Substitutions/<notarget>"] = "<대상없음>",
	["Substitutions/A module to provide basic chat substitutions."] = "기본적인 대화 대용어를 제공하는 모듈입니다.",
	["Substitutions/Are you sure - this will delete all user defined substitutions and reset defaults?"] = "정말로 모든 사용자 정의 대용어를 삭제하고 기본값으로 초기화할까요?",
	["Substitutions/Are you sure?"] = "동의합니까?",
	["Substitutions/can't find substitution index for a substitution named '%s'"] = "'%s' 대용어의 값을 찾을 수 없습니다",
	["Substitutions/current-prompt"] = [=[현재 값: '%s'
클릭하면 대화창에 붙여 넣습니다.]=],
	["Substitutions/defined %s: expands to => %s"] = "'%s' 정의: 확장됨 => %s",
	["Substitutions/Delete all"] = "전부 삭제",
	["Substitutions/Delete substitution"] = "대용어 삭제",
	["Substitutions/Deletes a user defined substitution"] = "사용자 정의 대용어를 삭제합니다",
	["Substitutions/Deletes all user defined substitutions"] = "모든 사용자 정의 대용어를 삭제합니다",
	["Substitutions/female"] = "여자",
	["Substitutions/her"] = "그녀의",
	["Substitutions/hers"] = "그녀의 것",
	["Substitutions/him"] = "그",
	["Substitutions/his"] = "그의",
	["Substitutions/it"] = "그것",
	["Substitutions/its"] = "그것의",
	["Substitutions/List of available substitutions"] = "사용 가능한 대용어 목록",
	["Substitutions/List of available substitutions defined by this module. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "이 모듈로 사용 가능한 대용어 목록입니다. (NB: 존재하는 대용어에 사용자 설정 값을 정의 할 수 있지만, 사용자 설정 값이 삭제되면 기본 값으로 전환됩니다.)",
	["Substitutions/List substitutions"] = "대용어 목록",
	["Substitutions/Lists all current subtitutions in the default chat frame"] = "기본 대화창에 현재 모든 대용어 목록 표시",
	["Substitutions/male"] = "남자",
	["Substitutions/MapLoc"] = "지도 위치",
	["Substitutions/MapPos"] = "지도 좌표",
	["Substitutions/MapXPos"] = "지도 X좌표",
	["Substitutions/MapYPos"] = "지도 Y좌표",
	["Substitutions/MapZone"] = "지도 지역",
	["Substitutions/module:buildUserSubsIndex(): warning: module patterns not defined!"] = "module:buildUserSubsIndex(): 경고: 모듈 패턴이 정의되지 않았습니다!",
	["Substitutions/MouseoverTargetName"] = "마우스 오버 대상 이름",
	["Substitutions/NO MATCHFUNC FOUND"] = "MATCHFUNC 찾을 수 없음",
	["Substitutions/no substitution name given"] = "주어진 대용어 이름 없음",
	["Substitutions/no substitution name supplied for deletion"] = "삭제할 대용어 이름 없음",
	["Substitutions/no user defined subs found"] = "사용자 정의 대용어 찾을 수 없음",
	["Substitutions/no value given for subtitution \"%s\""] = "\"%s\" 대용어에 주어진 값 없음",
	["Substitutions/Options for setting and removing user defined substitutions. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "사용자 정의 대용어을 설정하거나 제거하는 옵션입니다. (NB: 존재하는 대용어에 사용자 설정 값을 정의 할 수 있지만, 사용자 설정 값을 삭제하면 기본값으로 전환됩니다.)",
	["Substitutions/PlayerAverageItemLevel"] = "플레이어 평균 아이템 레벨",
	["Substitutions/PlayerCurrentMana"] = "플레이어 현재 마나",
	["Substitutions/PlayerHealthDeficit"] = "플레이어 생명력 결손치",
	["Substitutions/PlayerHP"] = "플레이어 생명력",
	["Substitutions/PlayerManaDeficit"] = "플레이어 마나 결손치",
	["Substitutions/PlayerMaxHP"] = "플레이어 최대 생명력",
	["Substitutions/PlayerMaxMana"] = "플레이어 최대 마나",
	["Substitutions/PlayerName"] = "플레이어 이름",
	["Substitutions/PlayerPercentHP"] = "플레이어 생명력 백분율",
	["Substitutions/PlayerPercentMana"] = "플레이어 마나 백분율",
	["Substitutions/RandNum"] = "무작위 숫자",
	["Substitutions/removing user defined substitution \"%s\"; previously expanded to => \"%s\""] = "\"%s\" 사용자 정의 대용어를 제거합니다, 이전 값으로 복원 => \"%s\"",
	["Substitutions/Set substitution"] = "대용어 설정",
	["Substitutions/Set the value of a user defined substitution (NB: this may be the same as an existing default substitution; to reset it to the default, just remove the user created definition)."] = "사용자 정의 대용어 값 설정 (NB: 존재하는 기본 대용어와 같으면; 기본값으로 초기화하며, 사용자가 생성한 정의를 제거합니다.)",
	["Substitutions/subname -- NOTE: sub name without the prefix '%'"] = "대체이름 -- 참고: 접두사 '%' 없이 대체 이름",
	["Substitutions/subname = text after expansion -- NOTE: sub name without the prefix \"%\""] = "대체이름 = 확장 후 문자 -- 참고: 접두사 '%' 없이 대체 이름",
	["Substitutions/substitution: %s defined as => %s"] = "대용어: %s 정의됨 => %s",
	["Substitutions/Substitutions"] = "대용어",
	["Substitutions/TargetClass"] = "대상 직업",
	["Substitutions/TargetGender"] = "대상 성별",
	["Substitutions/TargetGuild"] = "대상 길드",
	["Substitutions/TargetHealth"] = "대상 생명력",
	["Substitutions/TargetHealthDeficit"] = "대상 생명력 결손치",
	["Substitutions/TargetIcon"] = "대상 아이콘",
	["Substitutions/TargetLevel"] = "대상 레벨",
	["Substitutions/TargetManaDeficit"] = "대상 마나 결손치",
	["Substitutions/TargetName"] = "대상 이름",
	["Substitutions/TargetPercentHP"] = "대상 생명력 백분율",
	["Substitutions/TargetPossesive"] = "대상 소유격",
	["Substitutions/TargetPronoun"] = "대상 대명사",
	["Substitutions/TargetRace"] = "대상 종족",
	["Substitutions/TargetTargetName"] = "대상의 대상 이름",
	["Substitutions/unknown sex"] = "알 수 없는 성별",
	["Substitutions/user defined substition \"%s\" not found"] = "사용자 설정 대용어 \"%s\" 찾을 수 없음",
	["Substitutions/User defined substitutions"] = "사용자 정의 대용어",
	["Substitutions/user substitutions index (usersubs_idx) doesn't exist! oh dear."] = "사용자 대용어 값 (usersubs_idx) 존재하지 않습니다!",
	["Substitutions/usersub_"] = "usersub_",
	["TellTarget//tt"] = "/tt",
	["TellTarget/Adds telltarget slash command (/tt)."] = "대상에게 말하기 슬래쉬 명령어를 추가합니다 (/tt).",
	["TellTarget/No target selected."] = "대상이 선택되지 않았습니다.",
	["TellTarget/NoTarget"] = "대상 없음",
	["TellTarget/Target does not exist."] = "대상이 존재하지 않습니다.",
	["TellTarget/Target is not a player."] = "대상이 플레이어가 아닙니다.",
	["TellTarget/TellTarget"] = "대상에게 말하기",
	["Timestamps/Chat window timestamp options."] = "대화창 시간 표시 옵션입니다.",
	["Timestamps/colortimestamp_desc"] = "시간 표시에 색상을 입히거나 입히지 않습니다.",
	["Timestamps/colortimestamp_name"] = "시간 표시 색상",
	["Timestamps/Format All Timestamps"] = "모든 시간 표시 형식",
	["Timestamps/HH:MM (12-hour)"] = "HH:MM (12시간제)",
	["Timestamps/HH:MM (24-hour)"] = "HH:MM (24시간제)",
	["Timestamps/HH:MM:SS (12-hour)"] = "HH:MM:SS (12시간제)",
	["Timestamps/HH:MM:SS (24-hour)"] = "HH:MM:SS (24시간제)",
	["Timestamps/HH:MM:SS AM (12-hour)"] = "HH:MM:SS AM (12시간제)",
	["Timestamps/localtime_desc"] = "컴퓨터 시간 사용합니다.",
	["Timestamps/localtime_name"] = "컴퓨터 시간 사용",
	["Timestamps/MM:SS"] = "MM:SS",
	["Timestamps/Post-Timestamp"] = "뒤-시간 표시",
	["Timestamps/Pre-Timestamp"] = "앞-시간 표시",
	["Timestamps/Set the timestamp format"] = "시간 표시 형식 설정",
	["Timestamps/Set Timestamp Color"] = "시간 표시 색상 설정",
	["Timestamps/Sets the color of the timestamp."] = "시간 표시 색상을 설정합니다.",
	["Timestamps/Show Timestamp"] = "시간 표시",
	["Timestamps/show_desc"] = "각 창 별로 시간 표시 여부를 선택합니다.",
	["Timestamps/show_name"] = "시간 표시",
	["Timestamps/space_desc"] = "시간 표시 뒤에 공간을 넣을 지 선택합니다.",
	["Timestamps/space_name"] = "공간 삽입",
	["Timestamps/Timestamps"] = "시간 표시",
	["Timestamps/Toggle showing timestamp for each window."] = "각 창 별로 시간 표시 기능을 끄거나 켭니다.",
	["Timestamps/twocolumn_desc"] = "시간 표시를 분리된 열에 위치시켜 글자가 그 아래쪽을 둘러싸지 않게 합니다",
	["Timestamps/twocolumn_name"] = "열 분리",
	["UrlCopy/Change the color of the URL."] = "URL의 색상을 변경합니다.",
	["UrlCopy/Color URL"] = "URL 색상",
	["UrlCopy/Set Color"] = "색상 설정",
	["UrlCopy/Show Brackets"] = "괄호 표시",
	["UrlCopy/Toggle"] = "토글",
	["UrlCopy/Toggle showing brackets on and off."] = "괄호 표시를 끄거나 켭니다.",
	["UrlCopy/Toggle the module on and off."] = "모듈을 끄거나 켭니다.",
	["UrlCopy/Toggle the URL color on and off."] = "URL 색상을 끄거나 켭니다.",
	["UrlCopy/URL formating options."] = "URL 형식 옵션입니다.",
	["UrlCopy/UrlCopy"] = "Url 복사",
	["UrlCopy/Use Popup"] = "팝업창 사용",
	["UrlCopy/Use popup window to show URL."] = "URL을 팝업창에 표시합니다."
}

PL:AddLocale(nil, "koKR",L)


L=
{
	--Translation missing 
	-- ["display_desc"] = "",
	--Translation missing 
	-- ["display_name"] = "",
	--Translation missing 
	-- ["extras_desc"] = "",
	--Translation missing 
	-- ["extras_name"] = "",
	--Translation missing 
	-- ["formatting_desc"] = "",
	--Translation missing 
	-- ["formatting_name"] = "",
	--Translation missing 
	-- ["load_desc"] = "",
	--Translation missing 
	-- ["load_disabled"] = "",
	--Translation missing 
	-- ["load_disabledonrestart"] = "",
	--Translation missing 
	-- ["load_enabled"] = "",
	--Translation missing 
	-- ["load_enabledonrestart"] = "",
	--Translation missing 
	-- ["load_no"] = "",
	--Translation missing 
	-- ["modulecontrol_desc"] = "",
	--Translation missing 
	-- ["modulecontrol_name"] = "",
	--Translation missing 
	-- ["prat"] = "",
	--Translation missing 
	-- ["reload_required"] = "",
	--Translation missing 
	-- ["AddonMsgs/Addon message options."] = "",
	--Translation missing 
	-- ["AddonMsgs/AddonMsgs"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_desc"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_name"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_perframedesc"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_perframename"] = "",
	--Translation missing 
	-- ["Alias/ - list all aliases; supply <keyword> to search for matching aliases (cmd aliases: /listallaliases)"] = "",
	--Translation missing 
	-- ["Alias/%s() called with blank string!"] = "",
	--Translation missing 
	-- ["Alias/%s() called with nil argument!"] = "",
	--Translation missing 
	-- ["Alias//%s aliased to \"/%s\""] = "",
	--Translation missing 
	-- ["Alias//%s aliased to: /%s"] = "",
	--Translation missing 
	-- ["Alias/<alias> - remove the alias <alias> (cmd aliases: /delalias, /remalias)"] = "",
	--Translation missing 
	-- ["Alias/<command>[ <value>] - alias <command> to be executed as <value>, or return the value of the currently defined alias for <command> if <command> has not been assigned a value. eg: \"/alias /examplehello /say hello there\" - typing \"/examplehello\" will now cause your character to say \"hello there\"; \"/alias examplehello\" - s \"/examplehello is aliased to /say hello there\" (cmd aliases: /addalias)"] = "",
	--Translation missing 
	-- ["Alias/<keyword> - finds all aliases matching <keyword> (cmd aliases: /findalias)"] = "",
	--Translation missing 
	-- ["Alias/add"] = "",
	--Translation missing 
	-- ["Alias/add an alias"] = "",
	--Translation missing 
	-- ["Alias/alias \"/%s\" does not exist"] = "",
	--Translation missing 
	-- ["Alias/dealiasing command /%s to /%s"] = "",
	--Translation missing 
	-- ["Alias/deleting alias \"/%s\" (previously aliased as \"/%s\")"] = "",
	--Translation missing 
	-- ["Alias/Display extra information in the chat frame when commands are dealiased"] = "",
	--Translation missing 
	-- ["Alias/Don't overwrite existing aliases when using /addalias"] = "",
	--Translation missing 
	-- ["Alias/Expand aliases as you are typing"] = "",
	--Translation missing 
	-- ["Alias/find aliases matching a given search term"] = "",
	--Translation missing 
	-- ["Alias/findaliases"] = "",
	--Translation missing 
	-- ["Alias/infinite loop detected for alias /%s - ignoring"] = "",
	--Translation missing 
	-- ["Alias/inline"] = "",
	--Translation missing 
	-- ["Alias/list all aliases"] = "",
	--Translation missing 
	-- ["Alias/listaliases"] = "",
	--Translation missing 
	-- ["Alias/matching aliases found: %d"] = "",
	--Translation missing 
	-- ["Alias/module_desc"] = "",
	--Translation missing 
	-- ["Alias/module_name"] = "",
	--Translation missing 
	-- ["Alias/No aliases have been defined"] = "",
	--Translation missing 
	-- ["Alias/noclobber"] = "",
	--Translation missing 
	-- ["Alias/noclobber set - skipping new alias: /%s already expands to /%s"] = "",
	--Translation missing 
	-- ["Alias/Options"] = "",
	--Translation missing 
	-- ["Alias/Options for altering the behaviour of Alias"] = "",
	--Translation missing 
	-- ["Alias/overwriting existing alias \"/%s\" (was aliased to \"/%s\")"] = "",
	--Translation missing 
	-- ["Alias/refusing to alias \"/%s\" to anything in the interests of Not Buggering Everything Up"] = "",
	--Translation missing 
	-- ["Alias/remove an alias"] = "",
	--Translation missing 
	-- ["Alias/There is no alias current defined for \"%s\""] = "",
	--Translation missing 
	-- ["Alias/total aliases: %d"] = "",
	--Translation missing 
	-- ["Alias/tried to show value for alias \"%s\" but undefined in module.Aliases!"] = "",
	--Translation missing 
	-- ["Alias/unalias"] = "",
	--Translation missing 
	-- ["Alias/verbose"] = "",
	--Translation missing 
	-- ["Alias/warnUser() called with nil argument!"] = "",
	--Translation missing 
	-- ["Alias/warnUser() called with zero length string!"] = "",
	--Translation missing 
	-- ["AltNames/%d alts found for %s: %s"] = "",
	--Translation missing 
	-- ["AltNames/%s alts imported from LOKWhoIsWho"] = "",
	--Translation missing 
	-- ["AltNames/%s total alts linked to mains"] = "",
	--Translation missing 
	-- ["AltNames/(.-)'s? [Aa]lt"] = "",
	--Translation missing 
	-- ["AltNames/([^%s%p%d%c%z]+)'s alt"] = "",
	--Translation missing 
	-- ["AltNames/.*[Aa]lts?$"] = "",
	--Translation missing 
	-- ["AltNames/<alt name> (eg, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)"] = "",
	--Translation missing 
	-- ["AltNames/<main> (eg /altnames listalts Fin)"] = "",
	--Translation missing 
	-- ["AltNames/<search term> (eg, /altnames find fin)"] = "",
	--Translation missing 
	-- ["AltNames/Alt"] = "",
	--Translation missing 
	-- ["AltNames/alt"] = "",
	--Translation missing 
	-- ["AltNames/alt name exists: %s -> %s; not overwriting as set in preferences"] = "",
	--Translation missing 
	-- ["AltNames/AltNames"] = "",
	--Translation missing 
	-- ["AltNames/Alts:"] = "",
	--Translation missing 
	-- ["AltNames/autoguildalts_desc"] = "",
	--Translation missing 
	-- ["AltNames/autoguildalts_name"] = "",
	--Translation missing 
	-- ["AltNames/Be quiet"] = "",
	--Translation missing 
	-- ["AltNames/character removed: %s"] = "",
	--Translation missing 
	-- ["AltNames/Class colour"] = "",
	--Translation missing 
	-- ["AltNames/Clear all"] = "",
	--Translation missing 
	-- ["AltNames/Clear all links between alts and main names."] = "",
	--Translation missing 
	-- ["AltNames/Colour"] = "",
	--Translation missing 
	-- ["AltNames/Delete a character's link to another character as their main."] = "",
	--Translation missing 
	-- ["AltNames/Delete alt"] = "",
	--Translation missing 
	-- ["AltNames/Disabled"] = "",
	--Translation missing 
	-- ["AltNames/Display a player's alts in the tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Display a player's main name in the tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Display main names in the same colour as that of the alt's class (taking the data from the PlayerNames module if it is enabled)"] = "",
	--Translation missing 
	-- ["AltNames/Display main names in the same colour as that of the main's class (taking the data from the PlayerNames module if it is enabled)"] = "",
	--Translation missing 
	-- ["AltNames/Don't overwrite existing alt <-> main links when importing or adding new alts."] = "",
	--Translation missing 
	-- ["AltNames/Don't overwrite existing links"] = "",
	--Translation missing 
	-- ["AltNames/don't use"] = "",
	--Translation missing 
	-- ["AltNames/Don't use data from the PlayerNames module at all"] = "",
	--Translation missing 
	-- ["AltNames/ERROR: some function sent a blank message!"] = "",
	--Translation missing 
	-- ["AltNames/Find characters"] = "",
	--Translation missing 
	-- ["AltNames/Fix alts"] = "",
	--Translation missing 
	-- ["AltNames/Fix corrupted entries in your list of alt names."] = "",
	--Translation missing 
	-- ["AltNames/Found alt: %s => main: %s"] = "",
	--Translation missing 
	-- ["AltNames/guild member alts found and imported: %s"] = "",
	--Translation missing 
	-- ["AltNames/Import from Guild Greet database"] = "",
	--Translation missing 
	-- ["AltNames/Import from guild roster"] = "",
	--Translation missing 
	-- ["AltNames/Import options"] = "",
	--Translation missing 
	-- ["AltNames/Imports alt names from a Guild Greet database, if present"] = "",
	--Translation missing 
	-- ["AltNames/Imports alt names from the guild roster by checking for members with the rank \"alt\" or \"alts\", or guild / officer notes like \"<name>'s alt\""] = "",
	--Translation missing 
	-- ["AltNames/Imports data from LOKWhoIsWho, if present (drop your SavedVariablesLOKWhoIsWho.lua in the Prat directory to be able to use this)."] = "",
	--Translation missing 
	-- ["AltNames/Left"] = "",
	--Translation missing 
	-- ["AltNames/link <alt name> <main name> (eg, /altnames link Fin Finjathealtoffin)"] = "",
	--Translation missing 
	-- ["AltNames/Link alt"] = "",
	--Translation missing 
	-- ["AltNames/Link someone's alt character with the name of their main."] = "",
	--Translation missing 
	-- ["AltNames/linked alt %s => %s"] = "",
	--Translation missing 
	-- ["AltNames/List all"] = "",
	--Translation missing 
	-- ["AltNames/List all links between alts and their main names."] = "",
	--Translation missing 
	-- ["AltNames/List alts"] = "",
	--Translation missing 
	-- ["AltNames/List alts for a given character"] = "",
	--Translation missing 
	-- ["AltNames/LOKWhoIsWho data not found"] = "",
	--Translation missing 
	-- ["AltNames/LOKWhoIsWho import"] = "",
	--Translation missing 
	-- ["AltNames/LOKWhoIsWho lua file not found, sorry."] = "",
	--Translation missing 
	-- ["AltNames/Main"] = "",
	--Translation missing 
	-- ["AltNames/main"] = "",
	--Translation missing 
	-- ["AltNames/Main name position"] = "",
	--Translation missing 
	-- ["AltNames/Main:"] = "",
	--Translation missing 
	-- ["AltNames/mainpos_desc"] = "",
	--Translation missing 
	-- ["AltNames/mainpos_name"] = "",
	--Translation missing 
	-- ["AltNames/module_desc"] = "",
	--Translation missing 
	-- ["AltNames/no alts found for character "] = "",
	--Translation missing 
	-- ["AltNames/no alts or mains found matching \"%s\""] = "",
	--Translation missing 
	-- ["AltNames/No arg string given to :addAlt()"] = "",
	--Translation missing 
	-- ["AltNames/no characters called \"%s\" found; nothing deleted"] = "",
	--Translation missing 
	-- ["AltNames/No Guild Greet database found"] = "",
	--Translation missing 
	-- ["AltNames/No main name supplied to link %s to"] = "",
	--Translation missing 
	-- ["AltNames/no matches found"] = "",
	--Translation missing 
	-- ["AltNames/quiet"] = "",
	--Translation missing 
	-- ["AltNames/quiet_desc"] = "",
	--Translation missing 
	-- ["AltNames/quiet_name"] = "",
	--Translation missing 
	-- ["AltNames/Right"] = "",
	--Translation missing 
	-- ["AltNames/Search the list of linked characters for matching main or alt names."] = "",
	--Translation missing 
	-- ["AltNames/searched for: %s - total matches: %s"] = "",
	--Translation missing 
	-- ["AltNames/Show alts in tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Show main in tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Start"] = "",
	--Translation missing 
	-- ["AltNames/The colour of an alt's main name that will be displayed"] = "",
	--Translation missing 
	-- ["AltNames/Use class colour (from the PlayerNames module)"] = "",
	--Translation missing 
	-- ["AltNames/use class colour of alt"] = "",
	--Translation missing 
	-- ["AltNames/use class colour of main"] = "",
	--Translation missing 
	-- ["AltNames/Use LibAlts Data"] = "",
	--Translation missing 
	-- ["AltNames/Use the data available via the shared alt information library."] = "",
	--Translation missing 
	-- ["AltNames/Various ways to import a main's alts from other addons"] = "",
	--Translation missing 
	-- ["AltNames/warning: alt %s already linked to %s"] = "",
	--Translation missing 
	-- ["AltNames/Where to display a character's main name when on their alt."] = "",
	--Translation missing 
	-- ["AltNames/Whether to report to the chat frame or not."] = "",
	--Translation missing 
	-- ["AltNames/You are not in a guild"] = "",
	--Translation missing 
	-- ["AltNames/You have not yet linked any alts with their mains."] = "",
	--Translation missing 
	-- ["Bubbles/color_desc"] = "",
	--Translation missing 
	-- ["Bubbles/color_name"] = "",
	--Translation missing 
	-- ["Bubbles/font_desc"] = "",
	--Translation missing 
	-- ["Bubbles/font_name"] = "",
	--Translation missing 
	-- ["Bubbles/fontsize_desc"] = "",
	--Translation missing 
	-- ["Bubbles/fontsize_name"] = "",
	--Translation missing 
	-- ["Bubbles/format_desc"] = "",
	--Translation missing 
	-- ["Bubbles/format_name"] = "",
	--Translation missing 
	-- ["Bubbles/icons_desc"] = "",
	--Translation missing 
	-- ["Bubbles/icons_name"] = "",
	--Translation missing 
	-- ["Bubbles/module_desc"] = "",
	--Translation missing 
	-- ["Bubbles/module_name"] = "",
	--Translation missing 
	-- ["Bubbles/shorten_desc"] = "",
	--Translation missing 
	-- ["Bubbles/shorten_name"] = "",
	--Translation missing 
	-- ["Bubbles/transparent_desc"] = "",
	--Translation missing 
	-- ["Bubbles/transparent_name"] = "",
	--Translation missing 
	-- ["Buttons/alpha_desc"] = "",
	--Translation missing 
	-- ["Buttons/alpha_name"] = "",
	--Translation missing 
	-- ["Buttons/Buttons"] = "",
	--Translation missing 
	-- ["Buttons/Chat window button options."] = "",
	--Translation missing 
	-- ["Buttons/chatmenu_desc"] = "",
	--Translation missing 
	-- ["Buttons/chatmenu_name"] = "",
	--Translation missing 
	-- ["Buttons/Default"] = "",
	--Translation missing 
	-- ["Buttons/Right, Inside Frame"] = "",
	--Translation missing 
	-- ["Buttons/Right, Outside Frame"] = "",
	--Translation missing 
	-- ["Buttons/scrollReminder_desc"] = "",
	--Translation missing 
	-- ["Buttons/scrollReminder_name"] = "",
	--Translation missing 
	-- ["Buttons/Set Position"] = "",
	--Translation missing 
	-- ["Buttons/Sets position of chat menu and arrows for all chat windows."] = "",
	--Translation missing 
	-- ["Buttons/Show Arrows"] = "",
	--Translation missing 
	-- ["Buttons/Show Chat%d Arrows"] = "",
	--Translation missing 
	-- ["Buttons/showbnet_desc"] = "",
	--Translation missing 
	-- ["Buttons/showbnet_name"] = "",
	--Translation missing 
	-- ["Buttons/showmenu_desc"] = "",
	--Translation missing 
	-- ["Buttons/showmenu_name"] = "",
	--Translation missing 
	-- ["Buttons/showminimize_desc"] = "",
	--Translation missing 
	-- ["Buttons/showminimize_name"] = "",
	--Translation missing 
	-- ["Buttons/Toggle showing chat arrows for each chat window."] = "",
	--Translation missing 
	-- ["Buttons/Toggles navigation arrows on and off."] = "",
	--Translation missing 
	-- ["ChannelColorMemory/(%w+)%s?(.*)"] = "",
	--Translation missing 
	-- ["ChannelColorMemory/ChannelColorMemory"] = "",
	--Translation missing 
	-- ["ChannelColorMemory/Remembers the colors of each channel name."] = "",
	--Translation missing 
	-- ["ChannelNames/%s settings."] = "",
	--Translation missing 
	-- ["ChannelNames/<string>"] = "",
	--Translation missing 
	-- ["ChannelNames/Add Channel Abbreviation"] = "",
	--Translation missing 
	-- ["ChannelNames/addnick_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/Blank"] = "",
	--Translation missing 
	-- ["ChannelNames/chanlink_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/chanlink_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Channel %d"] = "",
	--Translation missing 
	-- ["ChannelNames/Channel name abbreviation options."] = "",
	--Translation missing 
	-- ["ChannelNames/ChannelNames"] = "",
	--Translation missing 
	-- ["ChannelNames/channelnick_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/channelnick_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Clear Channel Abbreviation"] = "",
	--Translation missing 
	-- ["ChannelNames/Clears an abbreviated channel name."] = "",
	--Translation missing 
	-- ["ChannelNames/colon_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/colon_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Dont display the channel/chat type name"] = "",
	--Translation missing 
	-- ["ChannelNames/otheropts_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/otheropts_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Remove Channel Abbreviation"] = "",
	--Translation missing 
	-- ["ChannelNames/Removes an an abbreviated channel name."] = "",
	--Translation missing 
	-- ["ChannelNames/Replace"] = "",
	--Translation missing 
	-- ["ChannelNames/Set"] = "",
	--Translation missing 
	-- ["ChannelNames/space_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/space_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Toggle replacing this channel."] = "",
	--Translation missing 
	-- ["ChannelNames/Use a custom replacement for the chat %s text."] = "",
	--Translation missing 
	-- ["ChannelSticky/Channel"] = "",
	--Translation missing 
	-- ["ChannelSticky/ChannelSticky"] = "",
	--Translation missing 
	-- ["ChannelSticky/Chat channel sticky options."] = "",
	--Translation missing 
	-- ["ChannelSticky/ChatType"] = "",
	--Translation missing 
	-- ["ChannelSticky/Per chat type options."] = "",
	--Translation missing 
	-- ["ChannelSticky/smartgroup_desc"] = "",
	--Translation missing 
	-- ["ChannelSticky/smartgroup_name"] = "",
	--Translation missing 
	-- ["ChannelSticky/Sticky %s"] = "",
	--Translation missing 
	-- ["ChannelSticky/Sticky Per Chat Frame"] = "",
	--Translation missing 
	-- ["ChannelSticky/Toggle remembering the chat type last used per chat frame."] = "",
	--Translation missing 
	-- ["ChannelSticky/Toggles sticky on and off for %s."] = "",
	--Translation missing 
	-- ["ChatLink/gem_desc"] = "",
	--Translation missing 
	-- ["ChatLink/gem_name"] = "",
	--Translation missing 
	-- ["ChatLink/module_desc"] = "",
	--Translation missing 
	-- ["ChatLink/module_info"] = "",
	--Translation missing 
	-- ["ChatLink/module_name"] = "",
	--Translation missing 
	-- ["ChatLink/Trade"] = "",
	--Translation missing 
	-- ["ChatLog/A module to automaticaly enable chat and combat logging."] = "",
	--Translation missing 
	-- ["ChatLog/Chat log recorded to <WoW Installation>\\Logs\\WoWChatLog.txt only upon logout."] = "",
	--Translation missing 
	-- ["ChatLog/Chat Log: Disabled"] = "",
	--Translation missing 
	-- ["ChatLog/Chat Log: Enabled"] = "",
	--Translation missing 
	-- ["ChatLog/ChatLog"] = "",
	--Translation missing 
	-- ["ChatLog/Combat log recorded to <WoW Installation>\\Logs\\WoWCombatLog.txt only upon logout."] = "",
	--Translation missing 
	-- ["ChatLog/Combat Log: Disabled"] = "",
	--Translation missing 
	-- ["ChatLog/Combat Log: Enabled"] = "",
	--Translation missing 
	-- ["ChatLog/quiet_desc"] = "",
	--Translation missing 
	-- ["ChatLog/quiet_name"] = "",
	--Translation missing 
	-- ["ChatLog/Toggle Chat Log"] = "",
	--Translation missing 
	-- ["ChatLog/Toggle chat log on and off."] = "",
	--Translation missing 
	-- ["ChatLog/Toggle Combat Log"] = "",
	--Translation missing 
	-- ["ChatLog/Toggle combat log on and off."] = "",
	--Translation missing 
	-- ["ChatTabs/Active Alpha"] = "",
	--Translation missing 
	-- ["ChatTabs/All"] = "",
	--Translation missing 
	-- ["ChatTabs/Always"] = "",
	--Translation missing 
	-- ["ChatTabs/Chat window tab options."] = "",
	--Translation missing 
	-- ["ChatTabs/Default"] = "",
	--Translation missing 
	-- ["ChatTabs/disableflash_desc"] = "",
	--Translation missing 
	-- ["ChatTabs/disableflash_name"] = "",
	--Translation missing 
	-- ["ChatTabs/Hidden"] = "",
	--Translation missing 
	-- ["ChatTabs/Individual"] = "",
	--Translation missing 
	-- ["ChatTabs/Not Active Alpha"] = "",
	--Translation missing 
	-- ["ChatTabs/preventdrag_desc"] = "",
	--Translation missing 
	-- ["ChatTabs/preventdrag_name"] = "",
	--Translation missing 
	-- ["ChatTabs/Set ChatFrame%d Display Mode"] = "",
	--Translation missing 
	-- ["ChatTabs/Set Display Mode"] = "",
	--Translation missing 
	-- ["ChatTabs/Set tab display mode for each chat window."] = "",
	--Translation missing 
	-- ["ChatTabs/Set tab display to always, hidden or the Blizzard default."] = "",
	--Translation missing 
	-- ["ChatTabs/Sets alpha of chat tab for active chat frame."] = "",
	--Translation missing 
	-- ["ChatTabs/Sets alpha of chat tab for not active chat frame."] = "",
	--Translation missing 
	-- ["ChatTabs/Tabs"] = "",
	--Translation missing 
	-- ["Clear/Adds clear text slash commands (/clear)(/cls)(/clearall)(/clsall)."] = "",
	--Translation missing 
	-- ["Clear/Clear"] = "",
	--Translation missing 
	-- ["Clear/Clearall"] = "",
	--Translation missing 
	-- ["Clear/Clears all chat frames."] = "",
	--Translation missing 
	-- ["Clear/Clears the current chat frame."] = "",
	--Translation missing 
	-- ["CopyChat/ Text"] = "",
	--Translation missing 
	-- ["CopyChat/BBCode"] = "",
	--Translation missing 
	-- ["CopyChat/BOTTOMLEFT"] = "",
	--Translation missing 
	-- ["CopyChat/BOTTOMRIGHT"] = "",
	--Translation missing 
	-- ["CopyChat/buttonpos_desc"] = "",
	--Translation missing 
	-- ["CopyChat/buttonpos_name"] = "",
	--Translation missing 
	-- ["CopyChat/ChatFrame"] = "",
	--Translation missing 
	-- ["CopyChat/Copy all of the text in the selected chat frame into an edit box"] = "",
	--Translation missing 
	-- ["CopyChat/Copy Text"] = "",
	--Translation missing 
	-- ["CopyChat/Copy Text Format"] = "",
	--Translation missing 
	-- ["CopyChat/Copy text from the active chat window."] = "",
	--Translation missing 
	-- ["CopyChat/Copy To Editbox"] = "",
	--Translation missing 
	-- ["CopyChat/CopyChat"] = "",
	--Translation missing 
	-- ["CopyChat/HTML"] = "",
	--Translation missing 
	-- ["CopyChat/Message From : %s"] = "",
	--Translation missing 
	-- ["CopyChat/Plain"] = "",
	--Translation missing 
	-- ["CopyChat/Should the copied text be plain, or formatted so you can see the colors."] = "",
	--Translation missing 
	-- ["CopyChat/showbutton_desc"] = "",
	--Translation missing 
	-- ["CopyChat/showbutton_name"] = "",
	--Translation missing 
	-- ["CopyChat/TOPLEFT"] = "",
	--Translation missing 
	-- ["CopyChat/TOPRIGHT"] = "",
	--Translation missing 
	-- ["CopyChat/Wowace.com Forums"] = "",
	--Translation missing 
	-- ["CustomFilters/<string>"] = "",
	--Translation missing 
	-- ["CustomFilters/Add a pattern to search for."] = "",
	--Translation missing 
	-- ["CustomFilters/Add Pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Block Message"] = "",
	--Translation missing 
	-- ["CustomFilters/Channel Data"] = "",
	--Translation missing 
	-- ["CustomFilters/Channel to send output text to."] = "",
	--Translation missing 
	-- ["CustomFilters/Enabled"] = "",
	--Translation missing 
	-- ["CustomFilters/Extra data for WHISPER (target) and CHANNEL (channel name or num)"] = "",
	--Translation missing 
	-- ["CustomFilters/Filter Name"] = "",
	--Translation missing 
	-- ["CustomFilters/Forward"] = "",
	--Translation missing 
	-- ["CustomFilters/Forward the message to a chat channel."] = "",
	--Translation missing 
	-- ["CustomFilters/Forward the message to a custom chat channel."] = "",
	--Translation missing 
	-- ["CustomFilters/ForwardCustom"] = "",
	--Translation missing 
	-- ["CustomFilters/ForwardMessage"] = "",
	--Translation missing 
	-- ["CustomFilters/ForwardMessageCustom"] = "",
	--Translation missing 
	-- ["CustomFilters/Hilight Color"] = "",
	--Translation missing 
	-- ["CustomFilters/Hilight Match Text"] = "",
	--Translation missing 
	-- ["CustomFilters/Inbound"] = "",
	--Translation missing 
	-- ["CustomFilters/inchannels_desc"] = "",
	--Translation missing 
	-- ["CustomFilters/inchannels_name"] = "",
	--Translation missing 
	-- ["CustomFilters/Is this pattern enabled for use?"] = "",
	--Translation missing 
	-- ["CustomFilters/Match Options"] = "",
	--Translation missing 
	-- ["CustomFilters/module_desc"] = "",
	--Translation missing 
	-- ["CustomFilters/module_name"] = "",
	--Translation missing 
	-- ["CustomFilters/Only output the message portion of the chat text, leave out the channel, and playername etc."] = "",
	--Translation missing 
	-- ["CustomFilters/Outbound"] = "",
	--Translation missing 
	-- ["CustomFilters/Output Channel"] = "",
	--Translation missing 
	-- ["CustomFilters/Output Message Only"] = "",
	--Translation missing 
	-- ["CustomFilters/Pattern Info"] = "",
	--Translation missing 
	-- ["CustomFilters/Pattern Options"] = "",
	--Translation missing 
	-- ["CustomFilters/Play a sound when this message is output to the chatframe"] = "",
	--Translation missing 
	-- ["CustomFilters/Play Sound"] = "",
	--Translation missing 
	-- ["CustomFilters/Prevent the message from being displayed"] = "",
	--Translation missing 
	-- ["CustomFilters/Remove an existing pattern."] = "",
	--Translation missing 
	-- ["CustomFilters/Remove Pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Replacement Text"] = "",
	--Translation missing 
	-- ["CustomFilters/Search Format String"] = "",
	--Translation missing 
	-- ["CustomFilters/Search Pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Secondary Output"] = "",
	--Translation missing 
	-- ["CustomFilters/Send to a secondary output"] = "",
	--Translation missing 
	-- ["CustomFilters/Supplied pattern is a format string instead of a pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Your name for this filter"] = "",
	--Translation missing 
	-- ["Editbox/Attach edit box to..."] = "",
	--Translation missing 
	-- ["Editbox/Attach to..."] = "",
	--Translation missing 
	-- ["Editbox/Background color"] = "",
	--Translation missing 
	-- ["Editbox/Background Inset"] = "",
	--Translation missing 
	-- ["Editbox/Background texture"] = "",
	--Translation missing 
	-- ["Editbox/Border color"] = "",
	--Translation missing 
	-- ["Editbox/Border texture"] = "",
	--Translation missing 
	-- ["Editbox/Bottom"] = "",
	--Translation missing 
	-- ["Editbox/Color border by channel"] = "",
	--Translation missing 
	-- ["Editbox/currently_broken_alt_behavior"] = "",
	--Translation missing 
	-- ["Editbox/Edge Size"] = "",
	--Translation missing 
	-- ["Editbox/Editbox"] = "",
	--Translation missing 
	-- ["Editbox/Editbox options."] = "",
	--Translation missing 
	-- ["Editbox/Font"] = "",
	--Translation missing 
	-- ["Editbox/Free-floating"] = "",
	--Translation missing 
	-- ["Editbox/Free-floating, Locked"] = "",
	--Translation missing 
	-- ["Editbox/Requires the Alt key to be held down to move the cursor in chat"] = "",
	--Translation missing 
	-- ["Editbox/Select the font to use for the edit box"] = "",
	--Translation missing 
	-- ["Editbox/Sets the frame's border color to the color of your currently active channel"] = "",
	--Translation missing 
	-- ["Editbox/Tile Size"] = "",
	--Translation missing 
	-- ["Editbox/Top"] = "",
	--Translation missing 
	-- ["Editbox/Use Alt key for cursor movement"] = "",
	--Translation missing 
	-- ["EventNames/allevents_desc"] = "",
	--Translation missing 
	-- ["EventNames/allevents_name"] = "",
	--Translation missing 
	-- ["EventNames/Chat window event name options."] = "",
	--Translation missing 
	-- ["EventNames/EventNames"] = "",
	--Translation missing 
	-- ["EventNames/Show"] = "",
	--Translation missing 
	-- ["EventNames/Show events on chatframes"] = "",
	--Translation missing 
	-- ["EventNames/show_desc"] = "",
	--Translation missing 
	-- ["EventNames/show_name"] = "",
	--Translation missing 
	-- ["Fading/duration_desc"] = "",
	--Translation missing 
	-- ["Fading/duration_name"] = "",
	--Translation missing 
	-- ["Fading/module_desc"] = "",
	--Translation missing 
	-- ["Fading/module_name"] = "",
	--Translation missing 
	-- ["Fading/textfade_desc"] = "",
	--Translation missing 
	-- ["Fading/textfade_name"] = "",
	--Translation missing 
	-- ["Filtering/A module to provide basic chat filtering."] = "",
	--Translation missing 
	-- ["Filtering/afkdnd_desc"] = "",
	--Translation missing 
	-- ["Filtering/afkdnd_name"] = "",
	--Translation missing 
	-- ["Filtering/bgjoin_desc"] = "",
	--Translation missing 
	-- ["Filtering/bgjoin_name"] = "",
	--Translation missing 
	-- ["Filtering/Filtering"] = "",
	--Translation missing 
	-- ["Filtering/leavejoin_desc"] = "",
	--Translation missing 
	-- ["Filtering/leavejoin_name"] = "",
	--Translation missing 
	-- ["Filtering/notices_desc"] = "",
	--Translation missing 
	-- ["Filtering/notices_name"] = "",
	--Translation missing 
	-- ["Filtering/tradespam_desc"] = "",
	--Translation missing 
	-- ["Filtering/tradespam_name"] = "",
	--Translation missing 
	-- ["Font/Auto Restore Font Size"] = "",
	--Translation missing 
	-- ["Font/Chat window font options."] = "",
	--Translation missing 
	-- ["Font/Font"] = "",
	--Translation missing 
	-- ["Font/monochrome_desc"] = "",
	--Translation missing 
	-- ["Font/monochrome_name"] = "",
	--Translation missing 
	-- ["Font/None"] = "",
	--Translation missing 
	-- ["Font/Outline"] = "",
	--Translation missing 
	-- ["Font/outlinemode_desc"] = "",
	--Translation missing 
	-- ["Font/outlinemode_name"] = "",
	--Translation missing 
	-- ["Font/rememberfont_desc"] = "",
	--Translation missing 
	-- ["Font/rememberfont_name"] = "",
	--Translation missing 
	-- ["Font/Set ChatFrame%d Font Size"] = "",
	--Translation missing 
	-- ["Font/Set Font Face"] = "",
	--Translation missing 
	-- ["Font/Set Font Size"] = "",
	--Translation missing 
	-- ["Font/Set Separately"] = "",
	--Translation missing 
	-- ["Font/Set text font size for each chat window."] = "",
	--Translation missing 
	-- ["Font/Set text font size."] = "",
	--Translation missing 
	-- ["Font/Set the text font face for all chat windows."] = "",
	--Translation missing 
	-- ["Font/shadowcolor_desc"] = "",
	--Translation missing 
	-- ["Font/shadowcolor_name"] = "",
	--Translation missing 
	-- ["Font/Thick Outline"] = "",
	--Translation missing 
	-- ["Font/Toggle setting options separately for each chat window."] = "",
	--Translation missing 
	-- ["Font/Workaround a Blizzard bug which changes the font size when you open a system menu."] = "",
	--Translation missing 
	-- ["Frames/Chat window frame parameter options"] = "",
	--Translation missing 
	-- ["Frames/framealpha_desc"] = "",
	--Translation missing 
	-- ["Frames/framealpha_name"] = "",
	--Translation missing 
	-- ["Frames/Frames"] = "",
	--Translation missing 
	-- ["Frames/mainchatonload_desc"] = "",
	--Translation missing 
	-- ["Frames/mainchatonload_name"] = "",
	--Translation missing 
	-- ["Frames/maxchatheight_desc"] = "",
	--Translation missing 
	-- ["Frames/maxchatheight_name"] = "",
	--Translation missing 
	-- ["Frames/maxchatwidth_desc"] = "",
	--Translation missing 
	-- ["Frames/maxchatwidth_name"] = "",
	--Translation missing 
	-- ["Frames/minchatheight_desc"] = "",
	--Translation missing 
	-- ["Frames/minchatheight_name"] = "",
	--Translation missing 
	-- ["Frames/minchatwidth_desc"] = "",
	--Translation missing 
	-- ["Frames/minchatwidth_name"] = "",
	--Translation missing 
	-- ["Frames/rememberframepositions_desc"] = "",
	--Translation missing 
	-- ["Frames/rememberframepositions_name"] = "",
	--Translation missing 
	-- ["Frames/removeclamp_desc"] = "",
	--Translation missing 
	-- ["Frames/removeclamp_name"] = "",
	--Translation missing 
	-- ["History/Chat history options."] = "",
	--Translation missing 
	-- ["History/Color GMOTD"] = "",
	--Translation missing 
	-- ["History/Colors the GMOTD label"] = "",
	--Translation missing 
	-- ["History/delaygmotd_desc"] = "",
	--Translation missing 
	-- ["History/delaygmotd_name"] = "",
	--Translation missing 
	-- ["History/divider"] = "",
	--Translation missing 
	-- ["History/History"] = "",
	--Translation missing 
	-- ["History/Maximum number of lines of command history to save."] = "",
	--Translation missing 
	-- ["History/Save Command History"] = "",
	--Translation missing 
	-- ["History/Saves command history between sessions (for use with alt+up arrow or just the up arrow)"] = "",
	--Translation missing 
	-- ["History/Scrollback"] = "",
	--Translation missing 
	-- ["History/Scrollback Options"] = "",
	--Translation missing 
	-- ["History/scrollbacklen_desc"] = "",
	--Translation missing 
	-- ["History/scrollbacklen_name"] = "",
	--Translation missing 
	-- ["History/Set Chat Lines"] = "",
	--Translation missing 
	-- ["History/Set Command History"] = "",
	--Translation missing 
	-- ["History/Set the number of lines of chat history for each window."] = "",
	--Translation missing 
	-- ["History/Store the chat lines between sessions"] = "",
	--Translation missing 
	-- ["KeyBindings/Channel %d"] = "",
	--Translation missing 
	-- ["KeyBindings/Copy Selected Chat Frame"] = "",
	--Translation missing 
	-- ["KeyBindings/Guild Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Instance Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Next Chat Tab"] = "",
	--Translation missing 
	-- ["KeyBindings/Officer Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Party Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Prat CopyChat"] = "",
	--Translation missing 
	-- ["KeyBindings/Prat Keybindings"] = "",
	--Translation missing 
	-- ["KeyBindings/Prat TellTarget"] = "",
	--Translation missing 
	-- ["KeyBindings/Raid Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Raid Warning Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Say"] = "",
	--Translation missing 
	-- ["KeyBindings/Smart Group Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/TellTarget"] = "",
	--Translation missing 
	-- ["KeyBindings/Whisper"] = "",
	--Translation missing 
	-- ["KeyBindings/Yell"] = "",
	--Translation missing 
	-- ["OriginalButtons/alpha_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/alpha_name"] = "",
	--Translation missing 
	-- ["OriginalButtons/buttonframe_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/buttonframe_name"] = "",
	--Translation missing 
	-- ["OriginalButtons/ChannelNames"] = "",
	--Translation missing 
	-- ["OriginalButtons/Chat window button options."] = "",
	--Translation missing 
	-- ["OriginalButtons/chatmenu_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/chatmenu_name"] = "",
	--Translation missing 
	-- ["OriginalButtons/Default"] = "",
	--Translation missing 
	-- ["OriginalButtons/Original Buttons"] = "",
	--Translation missing 
	-- ["OriginalButtons/reflow_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/reflow_name"] = "",
	--Translation missing 
	-- ["OriginalButtons/reminder_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/reminder_name"] = "",
	--Translation missing 
	-- ["OriginalButtons/Right, Inside Frame"] = "",
	--Translation missing 
	-- ["OriginalButtons/Right, Outside Frame"] = "",
	--Translation missing 
	-- ["OriginalButtons/Set Position"] = "",
	--Translation missing 
	-- ["OriginalButtons/Sets position of chat menu and arrows for all chat windows."] = "",
	--Translation missing 
	-- ["OriginalButtons/Show Arrows"] = "",
	--Translation missing 
	-- ["OriginalButtons/Show Chat%d Arrows"] = "",
	--Translation missing 
	-- ["OriginalButtons/Toggle showing chat arrows for each chat window."] = "",
	--Translation missing 
	-- ["OriginalButtons/Toggles navigation arrows on and off."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Autohide"] = "",
	--Translation missing 
	-- ["OriginalEditbox/BACKGROUND"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Bar colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Border colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Border width"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Bottom"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Click the edit box to open it up for editing. Only available if Autohide is disabled."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Clickable"] = "",
	--Translation missing 
	-- ["OriginalEditbox/DIALOG"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Editbox options."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Enable Arrowkeys"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Enable using arrowkeys in editbox without the alt key."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Hide Border"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Hide the border around the edit box."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Hide the edit box after you have pressed enter."] = "",
	--Translation missing 
	-- ["OriginalEditbox/HIGH"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Lock editbox position if undocked."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Lock Position"] = "",
	--Translation missing 
	-- ["OriginalEditbox/LOW"] = "",
	--Translation missing 
	-- ["OriginalEditbox/MEDIUM"] = "",
	--Translation missing 
	-- ["OriginalEditbox/OriginalEditbox"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Padding"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Alpha"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Position"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Strata"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the alpha of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the amount of padding inside the edit box"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the edit box background colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the edit box border colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the frame strata of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the position of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the texture of the chat edit box"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the width of the edit box's border"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the width of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Width (NB: only enabled if the editbox is undocked)"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Texture"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Top"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Undocked"] = "",
	--Translation missing 
	-- ["Paragraph/adjustlinks_desc"] = "",
	--Translation missing 
	-- ["Paragraph/adjustlinks_name"] = "",
	--Translation missing 
	-- ["Paragraph/Center"] = "",
	--Translation missing 
	-- ["Paragraph/Chat window paragraph options."] = "",
	--Translation missing 
	-- ["Paragraph/justification_desc"] = "",
	--Translation missing 
	-- ["Paragraph/justification_name"] = "",
	--Translation missing 
	-- ["Paragraph/Left"] = "",
	--Translation missing 
	-- ["Paragraph/Line Spacing"] = "",
	--Translation missing 
	-- ["Paragraph/Paragraph"] = "",
	--Translation missing 
	-- ["Paragraph/Right"] = "",
	--Translation missing 
	-- ["Paragraph/Set the line spacing for all chat windows."] = "",
	--Translation missing 
	-- ["PlayerNames/Actively Query Player Info"] = "",
	--Translation missing 
	-- ["PlayerNames/Angled"] = "",
	--Translation missing 
	-- ["PlayerNames/Brackets"] = "",
	--Translation missing 
	-- ["PlayerNames/Brackets Common Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Brackets Use Common Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Class"] = "",
	--Translation missing 
	-- ["PlayerNames/Color by Level Difference"] = "",
	--Translation missing 
	-- ["PlayerNames/coloreverywhere_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/coloreverywhere_name"] = "",
	--Translation missing 
	-- ["PlayerNames/Enable Alt-Invite"] = "",
	--Translation missing 
	-- ["PlayerNames/Enable Invite Links"] = "",
	--Translation missing 
	-- ["PlayerNames/Enable TabComplete"] = "",
	--Translation missing 
	-- ["PlayerNames/hoverhilight_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/hoverhilight_name"] = "",
	--Translation missing 
	-- ["PlayerNames/How to color other player's level."] = "",
	--Translation missing 
	-- ["PlayerNames/How to color player's name."] = "",
	--Translation missing 
	-- ["PlayerNames/Keep Info"] = "",
	--Translation missing 
	-- ["PlayerNames/Keep Lots Of Info"] = "",
	--Translation missing 
	-- ["PlayerNames/Keep player information between session for all players except cross-server players"] = "",
	--Translation missing 
	-- ["PlayerNames/Keep player information between session, but limit it to friends and guild members."] = "",
	--Translation missing 
	-- ["PlayerNames/Let TasteTheNaimbow set the common color for unknown player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Level Color Mode"] = "",
	--Translation missing 
	-- ["PlayerNames/linkifycommon_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/linkifycommon_name"] = "",
	--Translation missing 
	-- ["PlayerNames/No additional coloring"] = "",
	--Translation missing 
	-- ["PlayerNames/None"] = "",
	--Translation missing 
	-- ["PlayerNames/Player Color Mode"] = "",
	--Translation missing 
	-- ["PlayerNames/Player name formating options."] = "",
	--Translation missing 
	-- ["PlayerNames/PlayerNames"] = "",
	--Translation missing 
	-- ["PlayerNames/Prat_Playernames: Stored Player Data Cleared"] = "",
	--Translation missing 
	-- ["PlayerNames/Query the server for all player names we do not know. Note: This happpens pretty slowly, and this data is not saved."] = "",
	--Translation missing 
	-- ["PlayerNames/Random"] = "",
	--Translation missing 
	-- ["PlayerNames/realidcolor_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/realidcolor_name"] = "",
	--Translation missing 
	-- ["PlayerNames/Reset Settings"] = "",
	--Translation missing 
	-- ["PlayerNames/Restore default settings, and delete stored character data."] = "",
	--Translation missing 
	-- ["PlayerNames/Set common color of unknown player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Sets common color of brackets to use around player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Sets style of brackets to use around player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Show Group"] = "",
	--Translation missing 
	-- ["PlayerNames/Show Level"] = "",
	--Translation missing 
	-- ["PlayerNames/Show Raid Target Icon"] = "",
	--Translation missing 
	-- ["PlayerNames/Square"] = "",
	--Translation missing 
	-- ["PlayerNames/Tab completion : "] = "",
	--Translation missing 
	-- ["PlayerNames/tabcomplete_name"] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle group invites by alt-clicking hyperlinked keywords like 'invite'."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle group invites by alt-clicking on player name."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle level showing."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle raid group showing."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle showing the raid target icon which is currently on the player."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle tab completion of player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle using a common color for brackets around player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle using a common color for unknown player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Too many matches (%d possible)"] = "",
	--Translation missing 
	-- ["PlayerNames/Unknown Common Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Unknown Common Color From TasteTheNaimbow"] = "",
	--Translation missing 
	-- ["PlayerNames/Unknown Use Common Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Use Channel Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Use Player Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Use toon name for RealID"] = "",
	--Translation missing 
	-- ["PopupMessage/Add Nickname"] = "",
	--Translation missing 
	-- ["PopupMessage/Adds an alternate name to show in popups."] = "",
	--Translation missing 
	-- ["PopupMessage/Clear Nickname"] = "",
	--Translation missing 
	-- ["PopupMessage/Clears alternate name to show in popups."] = "",
	--Translation missing 
	-- ["PopupMessage/framealpha_desc"] = "",
	--Translation missing 
	-- ["PopupMessage/framealpha_name"] = "",
	--Translation missing 
	-- ["PopupMessage/Popup"] = "",
	--Translation missing 
	-- ["PopupMessage/PopupMessage"] = "",
	--Translation missing 
	-- ["PopupMessage/Remove Nickname"] = "",
	--Translation missing 
	-- ["PopupMessage/Removes an alternate name to show in popups."] = "",
	--Translation missing 
	-- ["PopupMessage/Set Separately"] = "",
	--Translation missing 
	-- ["PopupMessage/Show All Popups"] = "",
	--Translation missing 
	-- ["PopupMessage/Show Popups"] = "",
	--Translation missing 
	-- ["PopupMessage/Show Popups for all chat windows."] = "",
	--Translation missing 
	-- ["PopupMessage/Show Popups for each window."] = "",
	--Translation missing 
	-- ["PopupMessage/show_desc"] = "",
	--Translation missing 
	-- ["PopupMessage/show_name"] = "",
	--Translation missing 
	-- ["PopupMessage/show_perframedesc"] = "",
	--Translation missing 
	-- ["PopupMessage/show_perframename"] = "",
	--Translation missing 
	-- ["PopupMessage/showall_desc"] = "",
	--Translation missing 
	-- ["PopupMessage/showall_name"] = "",
	--Translation missing 
	-- ["PopupMessage/Shows messages in a popup window."] = "",
	--Translation missing 
	-- ["PopupMessage/Shows messages with your name in a popup."] = "",
	--Translation missing 
	-- ["PopupMessage/Toggle setting options separately for each chat window."] = "",
	--Translation missing 
	-- ["Scroll/Bottom"] = "",
	--Translation missing 
	-- ["Scroll/Chat window scrolling options."] = "",
	--Translation missing 
	-- ["Scroll/Control whether text is added to the frame at the top or the bottom."] = "",
	--Translation missing 
	-- ["Scroll/lowdown_desc"] = "",
	--Translation missing 
	-- ["Scroll/lowdown_name"] = "",
	--Translation missing 
	-- ["Scroll/modified_speed"] = "",
	--Translation missing 
	-- ["Scroll/modified_speed_desc"] = "",
	--Translation missing 
	-- ["Scroll/mousewheel_desc"] = "",
	--Translation missing 
	-- ["Scroll/mousewheel_name"] = "",
	--Translation missing 
	-- ["Scroll/Scroll"] = "",
	--Translation missing 
	-- ["Scroll/Set Ctrl+MouseWheel Speed"] = "",
	--Translation missing 
	-- ["Scroll/Set MouseWheel Speed"] = "",
	--Translation missing 
	-- ["Scroll/Set number of lines mousewheel will scroll when ctrl is pressed."] = "",
	--Translation missing 
	-- ["Scroll/Set number of lines mousewheel will scroll."] = "",
	--Translation missing 
	-- ["Scroll/Set TheLowDown Delay"] = "",
	--Translation missing 
	-- ["Scroll/Set time to wait before jumping to the bottom of chat windows."] = "",
	--Translation missing 
	-- ["Scroll/Text scroll direction"] = "",
	--Translation missing 
	-- ["Scroll/Top"] = "",
	--Translation missing 
	-- ["Scrollback/divider"] = "",
	--Translation missing 
	-- ["Scrollback/Scrollback"] = "",
	--Translation missing 
	-- ["Scrollback/Store the chat lines between sessions"] = "",
	--Translation missing 
	-- ["Search/err_notfound"] = "",
	--Translation missing 
	-- ["Search/err_tooshort"] = "",
	--Translation missing 
	-- ["Search/find_results"] = "",
	--Translation missing 
	-- ["Search/module_desc"] = "",
	--Translation missing 
	-- ["Search/module_info"] = "",
	--Translation missing 
	-- ["Search/module_name"] = "",
	--Translation missing 
	-- ["ServerNames/autoabbreviate_desc"] = "",
	--Translation missing 
	-- ["ServerNames/autoabbreviate_name"] = "",
	--Translation missing 
	-- ["ServerNames/colon_desc"] = "",
	--Translation missing 
	-- ["ServerNames/colon_name"] = "",
	--Translation missing 
	-- ["ServerNames/randomclr_desc"] = "",
	--Translation missing 
	-- ["ServerNames/randomclr_name"] = "",
	--Translation missing 
	-- ["ServerNames/Server name abbreviation options."] = "",
	--Translation missing 
	-- ["ServerNames/ServerNames"] = "",
	--Translation missing 
	-- ["Sounds/A module to play sounds on certain chat messages."] = "",
	--Translation missing 
	-- ["Sounds/Add a custom channel"] = "",
	--Translation missing 
	-- ["Sounds/bn_whisper_desc"] = "",
	--Translation missing 
	-- ["Sounds/bn_whisper_name"] = "",
	--Translation missing 
	-- ["Sounds/Custom Channels"] = "",
	--Translation missing 
	-- ["Sounds/group_lead_desc"] = "",
	--Translation missing 
	-- ["Sounds/group_lead_name"] = "",
	--Translation missing 
	-- ["Sounds/guild_desc"] = "",
	--Translation missing 
	-- ["Sounds/guild_name"] = "",
	--Translation missing 
	-- ["Sounds/incoming"] = "",
	--Translation missing 
	-- ["Sounds/Incoming Sounds"] = "",
	--Translation missing 
	-- ["Sounds/officer_desc"] = "",
	--Translation missing 
	-- ["Sounds/officer_name"] = "",
	--Translation missing 
	-- ["Sounds/outgoing"] = "",
	--Translation missing 
	-- ["Sounds/Outgoing Sounds"] = "",
	--Translation missing 
	-- ["Sounds/party_desc"] = "",
	--Translation missing 
	-- ["Sounds/party_name"] = "",
	--Translation missing 
	-- ["Sounds/Play a sound for a certain channel name (can be a substring)"] = "",
	--Translation missing 
	-- ["Sounds/raid_desc"] = "",
	--Translation missing 
	-- ["Sounds/raid_name"] = "",
	--Translation missing 
	-- ["Sounds/Remove a custom channel"] = "",
	--Translation missing 
	-- ["Sounds/Reset settings"] = "",
	--Translation missing 
	-- ["Sounds/Restore default settings and resets custom channel list"] = "",
	--Translation missing 
	-- ["Sounds/Sound selection for incoming chat messages"] = "",
	--Translation missing 
	-- ["Sounds/Sound selection for outgoing (from you) chat messages"] = "",
	--Translation missing 
	-- ["Sounds/Sounds"] = "",
	--Translation missing 
	-- ["Sounds/whisper_desc"] = "",
	--Translation missing 
	-- ["Sounds/whisper_name"] = "",
	--Translation missing 
	-- ["Substitutions/%d total user defined substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/|cffff0000warning:|r subtitution \"%s\" already defined as \"%s\", overwriting"] = "",
	--Translation missing 
	-- ["Substitutions/<noguild>"] = "",
	--Translation missing 
	-- ["Substitutions/<notarget>"] = "",
	--Translation missing 
	-- ["Substitutions/A module to provide basic chat substitutions."] = "",
	--Translation missing 
	-- ["Substitutions/Are you sure - this will delete all user defined substitutions and reset defaults?"] = "",
	--Translation missing 
	-- ["Substitutions/Are you sure?"] = "",
	--Translation missing 
	-- ["Substitutions/can't find substitution index for a substitution named '%s'"] = "",
	--Translation missing 
	-- ["Substitutions/current-prompt"] = "",
	--Translation missing 
	-- ["Substitutions/defined %s: expands to => %s"] = "",
	--Translation missing 
	-- ["Substitutions/Delete all"] = "",
	--Translation missing 
	-- ["Substitutions/Delete substitution"] = "",
	--Translation missing 
	-- ["Substitutions/Deletes a user defined substitution"] = "",
	--Translation missing 
	-- ["Substitutions/Deletes all user defined substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/female"] = "",
	--Translation missing 
	-- ["Substitutions/her"] = "",
	--Translation missing 
	-- ["Substitutions/hers"] = "",
	--Translation missing 
	-- ["Substitutions/him"] = "",
	--Translation missing 
	-- ["Substitutions/his"] = "",
	--Translation missing 
	-- ["Substitutions/it"] = "",
	--Translation missing 
	-- ["Substitutions/its"] = "",
	--Translation missing 
	-- ["Substitutions/List of available substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/List of available substitutions defined by this module. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "",
	--Translation missing 
	-- ["Substitutions/List substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/Lists all current subtitutions in the default chat frame"] = "",
	--Translation missing 
	-- ["Substitutions/male"] = "",
	--Translation missing 
	-- ["Substitutions/MapLoc"] = "",
	--Translation missing 
	-- ["Substitutions/MapPos"] = "",
	--Translation missing 
	-- ["Substitutions/MapXPos"] = "",
	--Translation missing 
	-- ["Substitutions/MapYPos"] = "",
	--Translation missing 
	-- ["Substitutions/MapZone"] = "",
	--Translation missing 
	-- ["Substitutions/module:buildUserSubsIndex(): warning: module patterns not defined!"] = "",
	--Translation missing 
	-- ["Substitutions/MouseoverTargetName"] = "",
	--Translation missing 
	-- ["Substitutions/NO MATCHFUNC FOUND"] = "",
	--Translation missing 
	-- ["Substitutions/no substitution name given"] = "",
	--Translation missing 
	-- ["Substitutions/no substitution name supplied for deletion"] = "",
	--Translation missing 
	-- ["Substitutions/no user defined subs found"] = "",
	--Translation missing 
	-- ["Substitutions/no value given for subtitution \"%s\""] = "",
	--Translation missing 
	-- ["Substitutions/Options for setting and removing user defined substitutions. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerAverageItemLevel"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerCurrentMana"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerHealthDeficit"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerHP"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerManaDeficit"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerMaxHP"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerMaxMana"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerName"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerPercentHP"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerPercentMana"] = "",
	--Translation missing 
	-- ["Substitutions/RandNum"] = "",
	--Translation missing 
	-- ["Substitutions/removing user defined substitution \"%s\"; previously expanded to => \"%s\""] = "",
	--Translation missing 
	-- ["Substitutions/Set substitution"] = "",
	--Translation missing 
	-- ["Substitutions/Set the value of a user defined substitution (NB: this may be the same as an existing default substitution; to reset it to the default, just remove the user created definition)."] = "",
	--Translation missing 
	-- ["Substitutions/subname -- NOTE: sub name without the prefix '%'"] = "",
	--Translation missing 
	-- ["Substitutions/subname = text after expansion -- NOTE: sub name without the prefix \"%\""] = "",
	--Translation missing 
	-- ["Substitutions/substitution: %s defined as => %s"] = "",
	--Translation missing 
	-- ["Substitutions/Substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/TargetClass"] = "",
	--Translation missing 
	-- ["Substitutions/TargetGender"] = "",
	--Translation missing 
	-- ["Substitutions/TargetGuild"] = "",
	--Translation missing 
	-- ["Substitutions/TargetHealth"] = "",
	--Translation missing 
	-- ["Substitutions/TargetHealthDeficit"] = "",
	--Translation missing 
	-- ["Substitutions/TargetIcon"] = "",
	--Translation missing 
	-- ["Substitutions/TargetLevel"] = "",
	--Translation missing 
	-- ["Substitutions/TargetManaDeficit"] = "",
	--Translation missing 
	-- ["Substitutions/TargetName"] = "",
	--Translation missing 
	-- ["Substitutions/TargetPercentHP"] = "",
	--Translation missing 
	-- ["Substitutions/TargetPossesive"] = "",
	--Translation missing 
	-- ["Substitutions/TargetPronoun"] = "",
	--Translation missing 
	-- ["Substitutions/TargetRace"] = "",
	--Translation missing 
	-- ["Substitutions/TargetTargetName"] = "",
	--Translation missing 
	-- ["Substitutions/unknown sex"] = "",
	--Translation missing 
	-- ["Substitutions/user defined substition \"%s\" not found"] = "",
	--Translation missing 
	-- ["Substitutions/User defined substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/user substitutions index (usersubs_idx) doesn't exist! oh dear."] = "",
	--Translation missing 
	-- ["Substitutions/usersub_"] = "",
	--Translation missing 
	-- ["TellTarget//tt"] = "",
	--Translation missing 
	-- ["TellTarget/Adds telltarget slash command (/tt)."] = "",
	--Translation missing 
	-- ["TellTarget/No target selected."] = "",
	--Translation missing 
	-- ["TellTarget/NoTarget"] = "",
	--Translation missing 
	-- ["TellTarget/Target does not exist."] = "",
	--Translation missing 
	-- ["TellTarget/Target is not a player."] = "",
	--Translation missing 
	-- ["TellTarget/TellTarget"] = "",
	--Translation missing 
	-- ["Timestamps/Chat window timestamp options."] = "",
	--Translation missing 
	-- ["Timestamps/colortimestamp_desc"] = "",
	--Translation missing 
	-- ["Timestamps/colortimestamp_name"] = "",
	--Translation missing 
	-- ["Timestamps/Format All Timestamps"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM (12-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM (24-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM:SS (12-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM:SS (24-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM:SS AM (12-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/localtime_desc"] = "",
	--Translation missing 
	-- ["Timestamps/localtime_name"] = "",
	--Translation missing 
	-- ["Timestamps/MM:SS"] = "",
	--Translation missing 
	-- ["Timestamps/Post-Timestamp"] = "",
	--Translation missing 
	-- ["Timestamps/Pre-Timestamp"] = "",
	--Translation missing 
	-- ["Timestamps/Set the timestamp format"] = "",
	--Translation missing 
	-- ["Timestamps/Set Timestamp Color"] = "",
	--Translation missing 
	-- ["Timestamps/Sets the color of the timestamp."] = "",
	--Translation missing 
	-- ["Timestamps/Show Timestamp"] = "",
	--Translation missing 
	-- ["Timestamps/show_desc"] = "",
	--Translation missing 
	-- ["Timestamps/show_name"] = "",
	--Translation missing 
	-- ["Timestamps/space_desc"] = "",
	--Translation missing 
	-- ["Timestamps/space_name"] = "",
	--Translation missing 
	-- ["Timestamps/Timestamps"] = "",
	--Translation missing 
	-- ["Timestamps/Toggle showing timestamp for each window."] = "",
	--Translation missing 
	-- ["Timestamps/twocolumn_desc"] = "",
	--Translation missing 
	-- ["Timestamps/twocolumn_name"] = "",
	--Translation missing 
	-- ["UrlCopy/Change the color of the URL."] = "",
	--Translation missing 
	-- ["UrlCopy/Color URL"] = "",
	--Translation missing 
	-- ["UrlCopy/Set Color"] = "",
	--Translation missing 
	-- ["UrlCopy/Show Brackets"] = "",
	--Translation missing 
	-- ["UrlCopy/Toggle"] = "",
	--Translation missing 
	-- ["UrlCopy/Toggle showing brackets on and off."] = "",
	--Translation missing 
	-- ["UrlCopy/Toggle the module on and off."] = "",
	--Translation missing 
	-- ["UrlCopy/Toggle the URL color on and off."] = "",
	--Translation missing 
	-- ["UrlCopy/URL formating options."] = "",
	--Translation missing 
	-- ["UrlCopy/UrlCopy"] = "",
	--Translation missing 
	-- ["UrlCopy/Use Popup"] = "",
	--Translation missing 
	-- ["UrlCopy/Use popup window to show URL."] = ""
}

PL:AddLocale(nil, "esMX",L)


L=
{
	["display_desc"] = "Настройка отображения чата",
	["display_name"] = "Настройка отображения",
	["extras_desc"] = "Различные дополнительные модули",
	["extras_name"] = "Другие модули",
	["formatting_desc"] = "Изменение отображения строк чата",
	["formatting_name"] = "Форматирование чата",
	["load_desc"] = "Настройка поведения этого модуля.",
	["load_disabled"] = "Отключено",
	["load_disabledonrestart"] = "Отключён (перезагрузка)",
	["load_enabled"] = "Включено",
	["load_enabledonrestart"] = "Включён (перезагрузка)",
	["load_no"] = "Не загружать",
	["modulecontrol_desc"] = "Настройка загрузки модулей Prat",
	["modulecontrol_name"] = "Настройка модулей",
	["prat"] = "Prat",
	["reload_required"] = "Эта настройка вступит в силу только после %s вашего интерфейса.",
	["AddonMsgs/Addon message options."] = "Настройки сообщений модификаций.",
	["AddonMsgs/AddonMsgs"] = "Сообщения аддонов",
	["AddonMsgs/show_desc"] = "Включить отображение сообщений аддонов в каждой закладке чата.",
	["AddonMsgs/show_name"] = "Показывать сообщения аддонов",
	["AddonMsgs/show_perframedesc"] = "Вкл/Выкл отображение сообщений аддонов.",
	["AddonMsgs/show_perframename"] = "ChatFrame%d AddonMsgsShow",
	["Alias/ - list all aliases; supply <keyword> to search for matching aliases (cmd aliases: /listallaliases)"] = " - список всех псевдонимов; источник <keyword> для поиска псевдонимов (команда: /listallaliases)",
	["Alias/%s() called with blank string!"] = "Функция %s() вызвана с пустой строкой!",
	["Alias/%s() called with nil argument!"] = "Функция %s() вызвана с нулевым аргументом!",
	["Alias//%s aliased to \"/%s\""] = "/%s теперь псевдоним на \"/%s\"",
	["Alias//%s aliased to: /%s"] = "/%s теперь псевдоним: /%s",
	["Alias/<alias> - remove the alias <alias> (cmd aliases: /delalias, /remalias)"] = "<alias> - удалить все псевдонимы <alias> (cmd псевдонимы: /delalias, /remalias)",
	["Alias/<command>[ <value>] - alias <command> to be executed as <value>, or return the value of the currently defined alias for <command> if <command> has not been assigned a value. eg: \"/alias /examplehello /say hello there\" - typing \"/examplehello\" will now cause your character to say \"hello there\"; \"/alias examplehello\" - s \"/examplehello is aliased to /say hello there\" (cmd aliases: /addalias)"] = "<command>[ <value>] - псевдоним <command> будет исполняться как <value>, или возвращать значение value в качестве определённого в настоящий момент значения для <command>. Например: \"/alias /examplehello /say всем привет\" - набрав \"/examplehello\" ваш персонаж скажет \"всем привет\"; \"/alias examplehello\" - \"/examplehello is aliased to /say всем привет\" (cmd aliases: /addalias)",
	["Alias/<keyword> - finds all aliases matching <keyword> (cmd aliases: /findalias)"] = "<keyword> - найти все псевдонимы, совпадающие с <keyword> (команда: /findalias)",
	["Alias/add"] = "добавить",
	["Alias/add an alias"] = "добавить псевдоним",
	["Alias/alias \"/%s\" does not exist"] = "псевдонима \"/%s\" не существует",
	["Alias/dealiasing command /%s to /%s"] = "раскрытие псевдонима /%s в /%s",
	["Alias/deleting alias \"/%s\" (previously aliased as \"/%s\")"] = "удаление псевдонима \"/%s\" (перед этим назывался как \"/%s\")",
	["Alias/Display extra information in the chat frame when commands are dealiased"] = "Отображать дополнительную информацию в рамке чата при раскрытии псевдонимов команд",
	["Alias/Don't overwrite existing aliases when using /addalias"] = "Не перезаписывать существующие псевдонимы при использовани /addalias",
	["Alias/Expand aliases as you are typing"] = "Раскрыть псевдонимы, которые вы вводили",
	["Alias/find aliases matching a given search term"] = "найти псевдонимы соответствующие критериям поиска",
	["Alias/findaliases"] = "findaliases",
	["Alias/infinite loop detected for alias /%s - ignoring"] = "обнаружен бесконечный цикл при раскрытии псевдонима /%s - игнорируется",
	["Alias/inline"] = "на линии",
	["Alias/list all aliases"] = "список всех псевдонимов",
	["Alias/listaliases"] = "вывести список псевдонимов",
	["Alias/matching aliases found: %d"] = "совпавших псевдонимов найдено: %d",
	["Alias/module_desc"] = "Добовляет команду /alias, which can be used to alias slash commands in a similar way to the Unix alias command.",
	["Alias/module_name"] = "Псевдонимы",
	["Alias/No aliases have been defined"] = "Псевдонимов не обнаружено",
	["Alias/noclobber"] = "защита настроек",
	["Alias/noclobber set - skipping new alias: /%s already expands to /%s"] = "защита настроек - пропускаем новый псевдоним:  /%s уже задано как /%s",
	["Alias/Options"] = "Настройки",
	["Alias/Options for altering the behaviour of Alias"] = "Опции для изменения поведения Псевдонимов",
	["Alias/overwriting existing alias \"/%s\" (was aliased to \"/%s\")"] = "перезапись сужествующего псевдонима \"/%s\" (теперь псевдоним \"/%s\")",
	["Alias/refusing to alias \"/%s\" to anything in the interests of Not Buggering Everything Up"] = "отказ псевдониму \"/%s\" в чём-либо, чтобы не испортить ВСЁ",
	["Alias/remove an alias"] = "убрать псевдоним",
	["Alias/There is no alias current defined for \"%s\""] = "Нет псевдонимов для \"%s\"",
	["Alias/total aliases: %d"] = "всего псевдонимов: %d",
	["Alias/tried to show value for alias \"%s\" but undefined in module.Aliases!"] = "\"%s\" не определено в модуле \"Псевдонимы\" при попытке показать значение!",
	["Alias/unalias"] = "удалить псевдоним",
	["Alias/verbose"] = "подробно",
	["Alias/warnUser() called with nil argument!"] = "Функция warnUser() вызвана с нулевым аргументом!",
	["Alias/warnUser() called with zero length string!"] = "Функция warnUser() вызвана со строкой нулевой длины!",
	["AltNames/%d alts found for %s: %s"] = "%d альтов найдено для %s: %s",
	["AltNames/%s alts imported from LOKWhoIsWho"] = "Импортировано альтов из LOKWhoIsWho: %s",
	["AltNames/%s total alts linked to mains"] = "всего альтов связано с основным %s",
	["AltNames/(.-)'s? [Aa]lt"] = "%f[%a\\192-\\255]([%a\\192-\\255]+)%f[^%a\\128-\\255]'s [Аа]льт",
	["AltNames/([^%s%p%d%c%z]+)'s alt"] = "[Аа]льт %f[%a\\192-\\255]([%a\\192-\\255]+)%f[^%a\\128-\\255]",
	["AltNames/.*[Aa]lts?$"] = ".*[Аа]льты?$",
	["AltNames/<alt name> (eg, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)"] = "<имя альта> (к примеру, /altnames del Загзаг)",
	["AltNames/<main> (eg /altnames listalts Fin)"] = "<основной> (к примеру: /altnames listalts Загзаг)",
	["AltNames/<search term> (eg, /altnames find fin)"] = "<элемент поиска> (к примеру, /altnames find Загзаг)",
	["AltNames/Alt"] = "Альт",
	["AltNames/alt"] = "альт",
	["AltNames/alt name exists: %s -> %s; not overwriting as set in preferences"] = "имя альта уже существует: %s -> %s; перезапись запрещена настройками",
	["AltNames/AltNames"] = "Имя альтов",
	["AltNames/Alts:"] = "Альты:",
	["AltNames/autoguildalts_desc"] = "Автоматически и без отчета выполнять команду импорта из списка гильдии",
	["AltNames/autoguildalts_name"] = "Авто-импорт альтов гильдии",
	["AltNames/Be quiet"] = "Молчи",
	["AltNames/character removed: %s"] = "персонаж удалён: %s",
	["AltNames/Class colour"] = "Окраска по классу",
	["AltNames/Clear all"] = "Очистить все",
	["AltNames/Clear all links between alts and main names."] = "Очистить все ссылки между альтами и основными именами.",
	["AltNames/Colour"] = "Цвет",
	["AltNames/Delete a character's link to another character as their main."] = "Удалить ссылку персонажа на другого персонажа если он основной.",
	["AltNames/Delete alt"] = "Удалить альта",
	["AltNames/Disabled"] = "Отключено",
	["AltNames/Display a player's alts in the tooltip"] = "Отображать альтов игрока в подсказке",
	["AltNames/Display a player's main name in the tooltip"] = "Отображать основных персонажей игрока в подсказке",
	["AltNames/Display main names in the same colour as that of the alt's class (taking the data from the PlayerNames module if it is enabled)"] = "Отображать имена основного персонажа по классу альта (данные берутся из модуля PlayerNames, если он включен)",
	["AltNames/Display main names in the same colour as that of the main's class (taking the data from the PlayerNames module if it is enabled)"] = "Отображать имена основного персонажа по его основному классу (данные берутся из модуля PlayerNames, если он включен)",
	["AltNames/Don't overwrite existing alt <-> main links when importing or adding new alts."] = "Не перезаписывать существующии связки альтов <-> основных при импортировании или добавлении нового.",
	["AltNames/Don't overwrite existing links"] = "Не перезаписывать существующие связки",
	["AltNames/don't use"] = "не окрашивать",
	["AltNames/Don't use data from the PlayerNames module at all"] = "Не использовать для всех данные из модуля PlayerNames",
	["AltNames/ERROR: some function sent a blank message!"] = "ОШИБКА: одна из функций послала пустое сообщение!",
	["AltNames/Find characters"] = "Найти персонажи",
	["AltNames/Fix alts"] = "Исправить альтов",
	["AltNames/Fix corrupted entries in your list of alt names."] = "Исправить неправельные записи в вашем списке имен альтов.",
	["AltNames/Found alt: %s => main: %s"] = "Альт найден: %s => основной: %s",
	["AltNames/guild member alts found and imported: %s"] = "%s: найдено альтов участников гильдии и импортированно",
	["AltNames/Import from Guild Greet database"] = "Импорт базы данных Guild Greet",
	["AltNames/Import from guild roster"] = "Импорт из списка гильдии",
	["AltNames/Import options"] = "Настройки импорта",
	["AltNames/Imports alt names from a Guild Greet database, if present"] = "Импорт альтов из базы данных Guild Greet, если есть",
	["AltNames/Imports alt names from the guild roster by checking for members with the rank \"alt\" or \"alts\", or guild / officer notes like \"<name>'s alt\""] = "Импорт имен альтов из списка гильдии определяя участника по званию \"alt\" или \"alts\", или общие / офицерские заметки типо \"<name> alt\"",
	["AltNames/Imports data from LOKWhoIsWho, if present (drop your SavedVariablesLOKWhoIsWho.lua in the Prat directory to be able to use this)."] = "Импортировать данные из LOKWhoIsWho, если есть (перекиньте ваш SavedVariables/LOKWhoIsWho.lua в папку Pratа для использования).",
	["AltNames/Left"] = "Слева",
	["AltNames/link <alt name> <main name> (eg, /altnames link Fin Finjathealtoffin)"] = "link <имя альта> <имя основного> (пример, /altnames link Загзаг Загзаговичюс)",
	["AltNames/Link alt"] = "Связать альта",
	["AltNames/Link someone's alt character with the name of their main."] = "Связать определённого альта с именем его основного персонажа.",
	["AltNames/linked alt %s => %s"] = "альт %s связан с => %s",
	["AltNames/List all"] = "Весь список",
	["AltNames/List all links between alts and their main names."] = "Весь список ссылок между альтами и основными именами.",
	["AltNames/List alts"] = "Список альтов",
	["AltNames/List alts for a given character"] = "Список альтов для заданных персонажей",
	["AltNames/LOKWhoIsWho data not found"] = "Данные LOKWhoIsWho не найдены",
	["AltNames/LOKWhoIsWho import"] = "Импорт из LOKWhoIsWho",
	["AltNames/LOKWhoIsWho lua file not found, sorry."] = "Lua файл LOKWhoIsWho не найден, извените.",
	["AltNames/Main"] = "Основной",
	["AltNames/main"] = "основной",
	["AltNames/Main name position"] = "Позиция основного имени",
	["AltNames/Main:"] = "Основной:",
	["AltNames/mainpos_desc"] = "Где отображать имя главного персонажа если он на альте.",
	["AltNames/mainpos_name"] = "Позиция основного имени",
	["AltNames/module_desc"] = "Позволяет привязывать имена альтов к именам основных персонажей, а потом отображать их рядом в сообщениях в чате (по умолчанию=выключено).",
	["AltNames/no alts found for character "] = "не найдено альтов для персонажа",
	["AltNames/no alts or mains found matching \"%s\""] = "совпавших альтов или основных \"%s\"",
	["AltNames/No arg string given to :addAlt()"] = "Не задано значение строки для: :addAlt()",
	["AltNames/no characters called \"%s\" found; nothing deleted"] = "не найден персонаж по имени \"%s\"; нечего удалять",
	["AltNames/No Guild Greet database found"] = "База данных Guild Greet не найдена",
	["AltNames/No main name supplied to link %s to"] = "Не предоставлено основное имя для связки %s к",
	["AltNames/no matches found"] = "совпадений не найдено",
	["AltNames/quiet"] = "тихий",
	["AltNames/quiet_desc"] = "Отчитываться о действиях в чат или нет.",
	["AltNames/quiet_name"] = "quiet_name",
	["AltNames/Right"] = "Справа",
	["AltNames/Search the list of linked characters for matching main or alt names."] = "Поиск в списке связанных персонажей.",
	["AltNames/searched for: %s - total matches: %s"] = "поиск для: %s - всего совподений: %s",
	["AltNames/Show alts in tooltip"] = "Альты в подсказке",
	["AltNames/Show main in tooltip"] = "Основные в подсказке",
	["AltNames/Start"] = "Начать",
	["AltNames/The colour of an alt's main name that will be displayed"] = "Отображать цвет имени альта по основному персонажу",
	["AltNames/Use class colour (from the PlayerNames module)"] = "Использовать окраску по цвету класса (из модуля PlayerNames)",
	["AltNames/use class colour of alt"] = "цвета класса для альтов",
	["AltNames/use class colour of main"] = "цвета класса для основных",
	["AltNames/Use LibAlts Data"] = "Использовать LibAlts",
	["AltNames/Use the data available via the shared alt information library."] = "Использовать данные посредством совместно используемой библиотеки информации об альтах.",
	["AltNames/Various ways to import a main's alts from other addons"] = "Различные варианты импорта альтов основных персонажей из других аддонов",
	["AltNames/warning: alt %s already linked to %s"] = "внимание: альт %s уже связан с %s",
	["AltNames/Where to display a character's main name when on their alt."] = "Где отображать имя главного персонажа если он на альте.",
	["AltNames/Whether to report to the chat frame or not."] = "Сообщать в чат или нет.",
	["AltNames/You are not in a guild"] = "Вы не состоитев гильдии",
	["AltNames/You have not yet linked any alts with their mains."] = "Вы еще не связали не одного альта с их основными.",
	["Bubbles/color_desc"] = "Окрашивать границу облачка чата в цвет канала чата.",
	["Bubbles/color_name"] = "Окрашивать облачка",
	["Bubbles/font_desc"] = "Использовать тот же шрифт, что и в окне чата",
	["Bubbles/font_name"] = "Шрифт чата",
	["Bubbles/fontsize_desc"] = "Размер шрифта чата",
	["Bubbles/fontsize_name"] = "Размер шрифта",
	["Bubbles/format_desc"] = "Применить форматирование чата к тексту в облачках чата.",
	["Bubbles/format_name"] = "Формат Текста",
	["Bubbles/icons_desc"] = "Показать иконки рейда в облачках чата.",
	["Bubbles/icons_name"] = "Показать метки цели рейда",
	["Bubbles/module_desc"] = "Настройки, относящиеся к облачкам чата",
	["Bubbles/module_name"] = "Облачка",
	["Bubbles/shorten_desc"] = "Уменьшать облачка чата до одной строки. Наведите курсор на облачко, чтобы открыть текст полностью.",
	["Bubbles/shorten_name"] = "Уменьшать облачка",
	["Bubbles/transparent_desc"] = "Скрыть фон и границы у всплывающих сообщений (требуется /reload для отмены опции)",
	["Bubbles/transparent_name"] = "Прозрачные всплывающие сообщения",
	["Buttons/alpha_desc"] = "Настройка прозрачности кнопки чата и всех цтрелок.",
	["Buttons/alpha_name"] = "Прозрачность",
	["Buttons/Buttons"] = "Кнопки",
	["Buttons/Chat window button options."] = "Настройки кнопок окна чата.",
	["Buttons/chatmenu_desc"] = "Вкл/выкл кнопки чата.",
	["Buttons/chatmenu_name"] = "Показать кнопку чата",
	["Buttons/Default"] = "По умолчанию",
	["Buttons/Right, Inside Frame"] = "Справа, внутри окна",
	["Buttons/Right, Outside Frame"] = "Справа, вне окна",
	["Buttons/scrollReminder_desc"] = "Вкл/выкл указателя, сигнализирующего о том, что окно чата можно прокручивать вниз.",
	["Buttons/scrollReminder_name"] = "Указатель прокрутки вниз",
	["Buttons/Set Position"] = "Положение",
	["Buttons/Sets position of chat menu and arrows for all chat windows."] = "Установить положение стрелок и кнопок чата для всех окон.",
	["Buttons/Show Arrows"] = "Показывать стрелки",
	["Buttons/Show Chat%d Arrows"] = "Показывать стрелки %d чата",
	["Buttons/showbnet_desc"] = "Показать меню Общение",
	["Buttons/showbnet_name"] = "Показать меню Общение",
	["Buttons/showmenu_desc"] = "Отображать меню команд",
	["Buttons/showmenu_name"] = "Отображать меню",
	["Buttons/showminimize_desc"] = "Показать Кнопку минимизации",
	["Buttons/showminimize_name"] = "Показать Кнопку минимизации",
	["Buttons/Toggle showing chat arrows for each chat window."] = "Показывать стрелки для каждого окна чата.",
	["Buttons/Toggles navigation arrows on and off."] = "Вкл/выкл навигационных стрелок.",
	["ChannelColorMemory/(%w+)%s?(.*)"] = "(%w+)%s?(.*)",
	["ChannelColorMemory/ChannelColorMemory"] = "Сохранение цветов каналов",
	["ChannelColorMemory/Remembers the colors of each channel name."] = "Запоминает цвета названия каждого канала.",
	["ChannelNames/%s settings."] = "Настройки канала \"%s\".",
	["ChannelNames/<string>"] = "<string>",
	["ChannelNames/Add Channel Abbreviation"] = "Добавить сокращение канала",
	["ChannelNames/addnick_desc"] = "Добавляет сокращение названий каналов. Префикс названия с '#' включает номер канала. (например '#Торговля').",
	["ChannelNames/Blank"] = "Пустой",
	["ChannelNames/chanlink_desc"] = "Сделать название канала ссылкой, щелчок по которой открывает окно чата этого канала.",
	["ChannelNames/chanlink_name"] = "Создать ссылку на канал",
	["ChannelNames/Channel %d"] = "Канал %d",
	["ChannelNames/Channel name abbreviation options."] = "Настройки сокращения названий каналов.",
	["ChannelNames/ChannelNames"] = "Названия каналов",
	["ChannelNames/channelnick_desc"] = "Сокращение канала",
	["ChannelNames/channelnick_name"] = "Сокращение канала",
	["ChannelNames/Clear Channel Abbreviation"] = "Очистить сокращение канала",
	["ChannelNames/Clears an abbreviated channel name."] = "Очищает сокращение названия канала.",
	["ChannelNames/colon_desc"] = "Вкл/Выкл добавление двоеточия после замены канала.",
	["ChannelNames/colon_name"] = "Показывать двоеточие",
	["ChannelNames/Dont display the channel/chat type name"] = "Не показывать название канала/тип чата",
	["ChannelNames/otheropts_desc"] = "Дополнительные настройки форматирования канала, и управление ссылками канала.",
	["ChannelNames/otheropts_name"] = "Другие настройки",
	["ChannelNames/Remove Channel Abbreviation"] = "Удалить сокращение канала",
	["ChannelNames/Removes an an abbreviated channel name."] = "Удаляет сокращение названий каналов.",
	["ChannelNames/Replace"] = "Заменить",
	["ChannelNames/Set"] = "Задать",
	["ChannelNames/space_desc"] = "Вкл/Выкл добавление пробела после замены канала.",
	["ChannelNames/space_name"] = "Показывать пробел",
	["ChannelNames/Toggle replacing this channel."] = "Включить замену данного канала.",
	["ChannelNames/Use a custom replacement for the chat %s text."] = "Использовать заданную замену текста %s канала.",
	["ChannelSticky/Channel"] = "Канал",
	["ChannelSticky/ChannelSticky"] = "Совмещение каналов",
	["ChannelSticky/Chat channel sticky options."] = "Настройки прилипания каналов чата.",
	["ChannelSticky/ChatType"] = "Тип чата",
	["ChannelSticky/Per chat type options."] = "Настройки по типу чата.",
	["ChannelSticky/smartgroup_desc"] = "Добавляет команду /gr , автоматически выбирающую корректный тип чата, РЕЙД, ГРУППА, или ПОЛЕ БОЯ",
	["ChannelSticky/smartgroup_name"] = "Быстрая сортировка",
	["ChannelSticky/Sticky %s"] = "Прилепить к %s",
	["ChannelSticky/Sticky Per Chat Frame"] = "Прилипать к окнам чата",
	["ChannelSticky/Toggle remembering the chat type last used per chat frame."] = "Вкл/Выкл запоминание тип чата при последнем использовании чата.",
	["ChannelSticky/Toggles sticky on and off for %s."] = "Вкл/Выкл прилипание для %s.",
	["ChatLink/gem_desc"] = "Включить режим совместимости GEM",
	["ChatLink/gem_name"] = "Cовместимость GEM",
	["ChatLink/module_desc"] = "Настройки ссылок на предметы в каналах чата.",
	["ChatLink/module_info"] = "Этот модуль позволяет вывести ссылку на предмет в неторговый канал чата, например в Общий или частный канал. Для пользователей, которые не используют аддон, способный декодировать ссылки, это будет выглядеть как спам, так что будьте учтивы.",
	["ChatLink/module_name"] = "ChannelLinks",
	["ChatLink/Trade"] = "Торговля",
	["ChatLog/A module to automaticaly enable chat and combat logging."] = "Модуль автоматического включения записи чата и журнала боя.",
	["ChatLog/Chat log recorded to <WoW Installation>\\Logs\\WoWChatLog.txt only upon logout."] = "Запись чата, записано в <директория инсталляции WoW>\\Logs\\WoWChatLog.txt  (только после выхода из игры).",
	["ChatLog/Chat Log: Disabled"] = "Запись чатa: выключена",
	["ChatLog/Chat Log: Enabled"] = "Запись чатa: включена",
	["ChatLog/ChatLog"] = "Логи чата",
	["ChatLog/Combat log recorded to <WoW Installation>\\Logs\\WoWCombatLog.txt only upon logout."] = "Журнал боя записывается в <директория инсталляции WoW>\\Logs\\WoWCombatLog.txt только до выхода из игры.",
	["ChatLog/Combat Log: Disabled"] = "Запись журнала боя: выключена",
	["ChatLog/Combat Log: Enabled"] = "Запись журнала боя: включена",
	["ChatLog/quiet_desc"] = "Не отображать никаких сообщений, если данный модуль включен, или при изменении им настроек записи.",
	["ChatLog/quiet_name"] = "Подавлять инфо сообщения",
	["ChatLog/Toggle Chat Log"] = "Запись чата",
	["ChatLog/Toggle chat log on and off."] = "Вкл/Выкл запись чата.",
	["ChatLog/Toggle Combat Log"] = "Запись журнала боя",
	["ChatLog/Toggle combat log on and off."] = "Вкл/Выкл запись журнала боя.",
	["ChatTabs/Active Alpha"] = "Прозрачность активной",
	["ChatTabs/All"] = "Все",
	["ChatTabs/Always"] = "Всегда",
	["ChatTabs/Chat window tab options."] = "Настройки вкладок чата.",
	["ChatTabs/Default"] = "По умолчанию",
	["ChatTabs/disableflash_desc"] = "Отключить мигание вкладок чата.",
	["ChatTabs/disableflash_name"] = "Отключить мигание",
	["ChatTabs/Hidden"] = "Скрывать",
	["ChatTabs/Individual"] = "Индивидуально",
	["ChatTabs/Not Active Alpha"] = "Прозрачность неактивных",
	["ChatTabs/preventdrag_desc"] = "Запретить перетаскивание вкладок чата с помощью мыши",
	["ChatTabs/preventdrag_name"] = "Запретить перетаскивание",
	["ChatTabs/Set ChatFrame%d Display Mode"] = "Установить режим отображения %d вкладки",
	["ChatTabs/Set Display Mode"] = "Режим отображения",
	["ChatTabs/Set tab display mode for each chat window."] = "Установить режим отображения каждой вкладки окна чата. Отмечено (вкл), Не отмечено (выкл), Отмечено серым (по умолчанию)",
	["ChatTabs/Set tab display to always, hidden or the Blizzard default."] = "Установить режим отображения вкладки на 'всегда показывать', 'скрывать' или 'поведение по умолчанию, как у Blizzard'.",
	["ChatTabs/Sets alpha of chat tab for active chat frame."] = "Прозрачность активной вкладки чата.",
	["ChatTabs/Sets alpha of chat tab for not active chat frame."] = "Прозрачность неактивных вкладок чата.",
	["ChatTabs/Tabs"] = "Вкладки чата",
	["Clear/Adds clear text slash commands (/clear)(/cls)(/clearall)(/clsall)."] = "Добавляет слаш команды очистки текста (/clear)(/cls)(/clearall)(/clsall).",
	["Clear/Clear"] = "Очистить",
	["Clear/Clearall"] = "Очистить все",
	["Clear/Clears all chat frames."] = "Очистить все окна чата.",
	["Clear/Clears the current chat frame."] = "Очистить текущее окно чата.",
	["CopyChat/ Text"] = " Текст",
	["CopyChat/BBCode"] = "BBCode",
	["CopyChat/BOTTOMLEFT"] = "Снизу, Слева",
	["CopyChat/BOTTOMRIGHT"] = "Снизу, Справа",
	["CopyChat/buttonpos_desc"] = "Где в окне чата показывать кнопку копирования",
	["CopyChat/buttonpos_name"] = "Положение кнопки",
	["CopyChat/ChatFrame"] = "Окно чата",
	["CopyChat/Copy all of the text in the selected chat frame into an edit box"] = "Копировать весь текст из выбранного окна чата в поле ввода.",
	["CopyChat/Copy Text"] = "Копировать текст",
	["CopyChat/Copy Text Format"] = "Формат копирования текста",
	["CopyChat/Copy text from the active chat window."] = "Копировать текст из активного окна чата.",
	["CopyChat/Copy To Editbox"] = "Копировать чат",
	["CopyChat/CopyChat"] = "Копия Чата",
	["CopyChat/HTML"] = "HTML",
	["CopyChat/Message From : %s"] = "Сообщение от : %s",
	["CopyChat/Plain"] = "Обычный текст",
	["CopyChat/Should the copied text be plain, or formatted so you can see the colors."] = "Копировать информацию как обычный текст или же форматированный, с сохранением цветов и т.п.",
	["CopyChat/showbutton_desc"] = "Показывать кнопку копирования в окне чата",
	["CopyChat/showbutton_name"] = "Кнопка копирования",
	["CopyChat/TOPLEFT"] = "Сверху, Слева",
	["CopyChat/TOPRIGHT"] = "Сверху, Справа",
	["CopyChat/Wowace.com Forums"] = "Форумы Wowace.com",
	["CustomFilters/<string>"] = "<string>",
	["CustomFilters/Add a pattern to search for."] = "Добавить образец для поиска.",
	["CustomFilters/Add Pattern"] = "Добавить образец",
	["CustomFilters/Block Message"] = "Блокировка сообщения",
	["CustomFilters/Channel Data"] = "Канал данных",
	["CustomFilters/Channel to send output text to."] = "Канал для отсылки выходящего текста.",
	["CustomFilters/Enabled"] = "Включено",
	["CustomFilters/Extra data for WHISPER (target) and CHANNEL (channel name or num)"] = "Добавочные данные для ШЕПОТА (цель) и КАНАЛА (название канала или номер)",
	["CustomFilters/Filter Name"] = "Название фильтра",
	["CustomFilters/Forward"] = "Пересылать",
	["CustomFilters/Forward the message to a chat channel."] = "Пересылать сообщение в канал чата.",
	["CustomFilters/Forward the message to a custom chat channel."] = "Вывод в частный канал",
	["CustomFilters/ForwardCustom"] = "ForwardCustom",
	["CustomFilters/ForwardMessage"] = "ForwardMessage",
	["CustomFilters/ForwardMessageCustom"] = "Частный канал",
	["CustomFilters/Hilight Color"] = "Цвет выделения",
	["CustomFilters/Hilight Match Text"] = "Выделение текста",
	["CustomFilters/Inbound"] = "Входящие",
	["CustomFilters/inchannels_desc"] = "Поиск в определённых каналах",
	["CustomFilters/inchannels_name"] = "Поиск канала",
	["CustomFilters/Is this pattern enabled for use?"] = "Включить в использование данный шаблон?",
	["CustomFilters/Match Options"] = "Опции совпадения",
	["CustomFilters/module_desc"] = "Модуль поддерживающий пользовательские фильтры.",
	["CustomFilters/module_name"] = "CustomFilters",
	["CustomFilters/Only output the message portion of the chat text, leave out the channel, and playername etc."] = "Вывод только части сообщений, выход с канала, имя игрока и т.д.",
	["CustomFilters/Outbound"] = "Исходящие",
	["CustomFilters/Output Channel"] = "Канал вывода",
	["CustomFilters/Output Message Only"] = "Только вывод сообщения",
	["CustomFilters/Pattern Info"] = "Шаблон",
	["CustomFilters/Pattern Options"] = "Настройки образца",
	["CustomFilters/Play a sound when this message is output to the chatframe"] = "Проиграть звук когда данное сообщение выводится в окно чата.",
	["CustomFilters/Play Sound"] = "Проиграть звук",
	["CustomFilters/Prevent the message from being displayed"] = "Предотвращает отображение сообщения",
	["CustomFilters/Remove an existing pattern."] = "Удалить существующий образец.",
	["CustomFilters/Remove Pattern"] = "Удалить образец",
	["CustomFilters/Replacement Text"] = "Замена текста",
	["CustomFilters/Search Format String"] = "Формат строки поиска",
	["CustomFilters/Search Pattern"] = "Образец поиска",
	["CustomFilters/Secondary Output"] = "Вторичный вывод",
	["CustomFilters/Send to a secondary output"] = "Отослать на вторичный вывод",
	["CustomFilters/Supplied pattern is a format string instead of a pattern"] = "Поставляется оброзец формата строки вместо шаблона",
	["CustomFilters/Your name for this filter"] = "Ваше имя для данного фильтра",
	["Editbox/Attach edit box to..."] = "Закрепить поле ввода...",
	["Editbox/Attach to..."] = "Закрепить...",
	["Editbox/Background color"] = "Цвет фона",
	["Editbox/Background Inset"] = "Фоновая врезка",
	["Editbox/Background texture"] = "Текстура фона",
	["Editbox/Border color"] = "Цвет границ",
	["Editbox/Border texture"] = "Текстура границы",
	["Editbox/Bottom"] = "Внизу",
	["Editbox/Color border by channel"] = "Окраска границы по цвету канала",
	["Editbox/currently_broken_alt_behavior"] = [=[Поведение стрелок сломано в текущей версии WoW

Используйте ALT-СтрелкаВверх и ALT-СтрелкаВниз вместо просто стрелок вверх и вниз чтобы открыть историю]=],
	["Editbox/Edge Size"] = "Размер контура",
	["Editbox/Editbox"] = "Поле ввода",
	["Editbox/Editbox options."] = "Настройки поля ввода.",
	["Editbox/Font"] = "Шрифт",
	["Editbox/Free-floating"] = "Свободно",
	["Editbox/Free-floating, Locked"] = "Свободно, заблокировано",
	["Editbox/Requires the Alt key to be held down to move the cursor in chat"] = "Для перемещения курсора в чате требуется нажатая клавиша Alt",
	["Editbox/Select the font to use for the edit box"] = "Выбор шрифта для области редактирования",
	["Editbox/Sets the frame's border color to the color of your currently active channel"] = "Установить окраску границы в цвет вашего активного канала",
	["Editbox/Tile Size"] = "Размер мозаики",
	["Editbox/Top"] = "Вверху",
	["Editbox/Use Alt key for cursor movement"] = "Исп. кливишу Alt для перемещения курсора",
	["EventNames/allevents_desc"] = "Обрабатывать Prat'ом все сообщения в чате.",
	["EventNames/allevents_name"] = "Обрабатывать все сообщения",
	["EventNames/Chat window event name options."] = "Настройки названий событий в окне чата.",
	["EventNames/EventNames"] = "EventNames",
	["EventNames/Show"] = "Отображать",
	["EventNames/Show events on chatframes"] = "Отображать события в окне чата",
	["EventNames/show_desc"] = "Вкл/Выкл отображение названий событий во всех окнах.",
	["EventNames/show_name"] = "Названия событий",
	["Fading/duration_desc"] = "Задайте значение в секундах для задержки затухания текста в окне чата.",
	["Fading/duration_name"] = "Задержка затухания (в секундах)",
	["Fading/module_desc"] = "Настройки затухания текста в окне чата.",
	["Fading/module_name"] = "Затухание",
	["Fading/textfade_desc"] = "Вкл/Выкл затухание текста во всех окнах чата.",
	["Fading/textfade_name"] = "Включить затухание",
	["Filtering/A module to provide basic chat filtering."] = "Модуль для обеспечения базовый фильтрации чата.",
	["Filtering/afkdnd_desc"] = "Заглушать сообщения AFK и DND.",
	["Filtering/afkdnd_name"] = "Заглушать сообщения AFK и DND.",
	["Filtering/bgjoin_desc"] = "Отфильтровывать сообщения входа и выхода на/из Поля Сражения (БГ)",
	["Filtering/bgjoin_name"] = "Отфильтровывать вход/выход на ПС",
	["Filtering/Filtering"] = "Фильтрование",
	["Filtering/leavejoin_desc"] = "Отфильтровывать сообщения входа и выхода из/в канал.",
	["Filtering/leavejoin_name"] = "Вход/выход в/из канала",
	["Filtering/notices_desc"] = "Отфильтровывать извещения в каналах (такие как смета модератора и т.п.).",
	["Filtering/notices_name"] = "Извещения в канале",
	["Filtering/tradespam_desc"] = "Скрывать повторяющиеся сообщения",
	["Filtering/tradespam_name"] = "Скрывать спам",
	["Font/Auto Restore Font Size"] = "Авто-восстановление размера",
	["Font/Chat window font options."] = "Настройки шрифта окна чата.",
	["Font/Font"] = "Шрифт",
	["Font/monochrome_desc"] = "Вкл/Выкл чёрно-белое окрашивание шрифта.",
	["Font/monochrome_name"] = "Чёрно-белое",
	["Font/None"] = "Нет",
	["Font/Outline"] = "Обычная обводка",
	["Font/outlinemode_desc"] = "Выбор типа обводки вокруг символов.",
	["Font/outlinemode_name"] = "Обводка",
	["Font/rememberfont_desc"] = "Запомнить выбранный шрифт и использовать его при следующей загрузке.",
	["Font/rememberfont_name"] = "Запомнить шрифт",
	["Font/Set ChatFrame%d Font Size"] = "Размер шрифта окна %d",
	["Font/Set Font Face"] = "Основной шрифт",
	["Font/Set Font Size"] = "Размер шрифта",
	["Font/Set Separately"] = "Разделение",
	["Font/Set text font size for each chat window."] = "Установка размера шрифта во всех окнах чата.",
	["Font/Set text font size."] = "Размер шрифта.",
	["Font/Set the text font face for all chat windows."] = "Установка главного шрифта для всех окон чата.",
	["Font/shadowcolor_desc"] = "Установка цвета эффекта тени.",
	["Font/shadowcolor_name"] = "Цвет тени",
	["Font/Thick Outline"] = "Жирная обводка",
	["Font/Toggle setting options separately for each chat window."] = "Вкл/Выкл настройки разделения для всех окон чата.",
	["Font/Workaround a Blizzard bug which changes the font size when you open a system menu."] = "Метод обхода ошибки Blizzard, изменяющей размер шрифта при открытии системного меню.",
	["Frames/Chat window frame parameter options"] = "Параметры окна чата",
	["Frames/framealpha_desc"] = "Настройка прозрачности окна чата при наведении на него курсора мыши.",
	["Frames/framealpha_name"] = "Прозрачность окна чата",
	["Frames/Frames"] = "Фреймы",
	["Frames/mainchatonload_desc"] = "Автоматически выбирает первое окно чата, и делает его активным при загрузке.",
	["Frames/mainchatonload_name"] = "Задействовать главное окно чата при загрузке",
	["Frames/maxchatheight_desc"] = "Устанавливает максимальную высоту для всех окон чата.",
	["Frames/maxchatheight_name"] = "Максимальная высоты",
	["Frames/maxchatwidth_desc"] = "Устанавливает максимальную ширину для всех окон чата.",
	["Frames/maxchatwidth_name"] = "Максимальная ширина",
	["Frames/minchatheight_desc"] = "Устанавливает минимальную высоту для всех окон чата.",
	["Frames/minchatheight_name"] = "Минимальная высоты",
	["Frames/minchatwidth_desc"] = "Устанавливает минимальную ширину для всех окон чата.",
	["Frames/minchatwidth_name"] = "Минимальная ширина",
	["Frames/rememberframepositions_desc"] = "Запомнить положение окна чата и восстановить при загрузке",
	["Frames/rememberframepositions_name"] = "Запомнить положение",
	["Frames/removeclamp_desc"] = "Позволить окну чата прижиматься вплотную к краю экрана",
	["Frames/removeclamp_name"] = "Вплотную к краю экрана",
	["History/Chat history options."] = "Настройки истории чата.",
	["History/Color GMOTD"] = "Цвет  GMOTD",
	["History/Colors the GMOTD label"] = "Цвета названия СДГ",
	["History/delaygmotd_desc"] = "Задерживать отображение СДГ вплоть до окончания спама при входе в игру",
	["History/delaygmotd_name"] = "задержка GMOTD",
	["History/divider"] = "========== Конец истории сообщений ==========",
	["History/History"] = "История",
	["History/Maximum number of lines of command history to save."] = "Максимальное число строк сохранённых в истории команд.",
	["History/Save Command History"] = "Сохранять историю команд",
	["History/Saves command history between sessions (for use with alt+up arrow or just the up arrow)"] = "Сохранять историю команд между сеансами (для использования используйте alt+ стрелка вверх или просто стрелку вверх)",
	["History/Scrollback"] = "История сообщений",
	["History/Scrollback Options"] = "Вернуть опции",
	["History/scrollbacklen_desc"] = "Количество строк чата, которое надо сохранять в буфере истории сообщений.",
	["History/scrollbacklen_name"] = "Длина истории сообщений",
	["History/Set Chat Lines"] = "Задать число строк чата",
	["History/Set Command History"] = "История команд",
	["History/Set the number of lines of chat history for each window."] = "Установите число строк истории чата для всех окон чата.",
	["History/Store the chat lines between sessions"] = "Сохранять строки чата между сессиями",
	["KeyBindings/Channel %d"] = "Канал %d",
	["KeyBindings/Copy Selected Chat Frame"] = "Копирование выбранного окна чата",
	["KeyBindings/Guild Channel"] = "Канал Гильдии",
	["KeyBindings/Instance Channel"] = "Канал Подземелий",
	["KeyBindings/Next Chat Tab"] = "Следующее окно чата",
	["KeyBindings/Officer Channel"] = "Офицерский Канал",
	["KeyBindings/Party Channel"] = "Канал Группы",
	["KeyBindings/Prat CopyChat"] = "Копирование чата Prat",
	["KeyBindings/Prat Keybindings"] = "Prat Keybindings",
	["KeyBindings/Prat TellTarget"] = "Prat Сказать обьекту",
	["KeyBindings/Raid Channel"] = "Канал Рейда",
	["KeyBindings/Raid Warning Channel"] = "Канал объявлений рейду",
	["KeyBindings/Say"] = "Сказать",
	["KeyBindings/Smart Group Channel"] = "Групирование каналов",
	["KeyBindings/TellTarget"] = "Сказать обьекту",
	["KeyBindings/Whisper"] = "Шепнуть",
	["KeyBindings/Yell"] = "Крикнуть",
	["OriginalButtons/alpha_desc"] = "Установить прозрачность меню чата, а также стрелок для всех окон чата.",
	["OriginalButtons/alpha_name"] = "Прозрачность",
	["OriginalButtons/buttonframe_desc"] = "Включить или выключить меню Окна кнопок.",
	["OriginalButtons/buttonframe_name"] = "Показать Окно кнопок",
	["OriginalButtons/ChannelNames"] = "Названия каналов",
	["OriginalButtons/Chat window button options."] = "Опции кнопок чата.",
	["OriginalButtons/chatmenu_desc"] = "Вкл/выкл меню чата.",
	["OriginalButtons/chatmenu_name"] = "Показать меню чата",
	["OriginalButtons/Default"] = "По умолчанию",
	["OriginalButtons/Original Buttons"] = "Обычные кнопки",
	["OriginalButtons/reflow_desc"] = "Текст в окне чата должен обтекать кнопки, а не уходить под них.",
	["OriginalButtons/reflow_name"] = "Текст обтекает кнопки",
	["OriginalButtons/reminder_desc"] = "Показать кнопку прокрутки чата вниз, когда последнее сообщение не в нижней части окна чата.",
	["OriginalButtons/reminder_name"] = "Показать прокрутку вниз",
	["OriginalButtons/Right, Inside Frame"] = "Справа, внутри рамки",
	["OriginalButtons/Right, Outside Frame"] = "Справа, вне рамки",
	["OriginalButtons/Set Position"] = "Установить позицию",
	["OriginalButtons/Sets position of chat menu and arrows for all chat windows."] = "Устанавливает позицию меню чата и стрелок для всех окон чата",
	["OriginalButtons/Show Arrows"] = "Отображать стрелки",
	["OriginalButtons/Show Chat%d Arrows"] = "Отображает стрелки чата %d",
	["OriginalButtons/Toggle showing chat arrows for each chat window."] = "Вкл/Откл отображение стрелок для всех окон чата.",
	["OriginalButtons/Toggles navigation arrows on and off."] = "Вкл/Откл отображение стрелок прокрутки чата",
	["OriginalEditbox/Autohide"] = "Авто-сокрытие",
	["OriginalEditbox/BACKGROUND"] = "ФОН",
	["OriginalEditbox/Bar colour"] = "Цвет панели",
	["OriginalEditbox/Border colour"] = "Цвет границ",
	["OriginalEditbox/Border width"] = "Ширина границ",
	["OriginalEditbox/Bottom"] = "Внизу",
	["OriginalEditbox/Click the edit box to open it up for editing. Only available if Autohide is disabled."] = "Нажмите на поле ввода, чтобы открыть его для редактирования. Доступно только если авто-сокрытие отключено.",
	["OriginalEditbox/Clickable"] = "Реагировать на щелчки мыши",
	["OriginalEditbox/DIALOG"] = "ДИАЛОГ",
	["OriginalEditbox/Editbox options."] = "Настройки поле ввода.",
	["OriginalEditbox/Enable Arrowkeys"] = "Включить стрелки",
	["OriginalEditbox/Enable using arrowkeys in editbox without the alt key."] = "Включить использование стрелок напровления в поле ввода без клавиши alt.",
	["OriginalEditbox/Hide Border"] = "Скрыть границы",
	["OriginalEditbox/Hide the border around the edit box."] = "Скрыть границы в окружности поле ввода.",
	["OriginalEditbox/Hide the edit box after you have pressed enter."] = "Скрыть поле ввода после того как вы нажали enter.",
	["OriginalEditbox/HIGH"] = "ВЫСОКИЙ",
	["OriginalEditbox/Lock editbox position if undocked."] = "Закрепить позицию поле ввода если разблокировано.",
	["OriginalEditbox/Lock Position"] = "Закрепить пазицию",
	["OriginalEditbox/LOW"] = "НИЗКИЙ",
	["OriginalEditbox/MEDIUM"] = "СРЕДНИЙ",
	["OriginalEditbox/OriginalEditbox"] = "OriginalEditbox",
	["OriginalEditbox/Padding"] = "Выравнивание",
	["OriginalEditbox/Set Alpha"] = "Установить прозрачность",
	["OriginalEditbox/Set Position"] = "Установить позицию",
	["OriginalEditbox/Set Strata"] = "Установить слой",
	["OriginalEditbox/Set the alpha of the editbox."] = "Установка прозрачности поле ввода.",
	["OriginalEditbox/Set the amount of padding inside the edit box"] = "Установка значения отступа в поле ввода",
	["OriginalEditbox/Set the edit box background colour"] = "Установка цвета фона поля ввода",
	["OriginalEditbox/Set the edit box border colour"] = "Установка цвета границ поля ввода",
	["OriginalEditbox/Set the frame strata of the editbox."] = "Установить рамку слоёв окна редактирования",
	["OriginalEditbox/Set the position of the editbox."] = "Задать позицию окна редактирования",
	["OriginalEditbox/Set the texture of the chat edit box"] = "Задать текстуру в окне редактирования для чата",
	["OriginalEditbox/Set the width of the edit box's border"] = "Задать ширину границы окна редактирования",
	["OriginalEditbox/Set the width of the editbox."] = "Задать ширину окна редактирования",
	["OriginalEditbox/Set Width (NB: only enabled if the editbox is undocked)"] = "Уст. ширину (Пометка: включено только если поле ввода разблокировано)",
	["OriginalEditbox/Texture"] = "Текстура",
	["OriginalEditbox/Top"] = "Верх",
	["OriginalEditbox/Undocked"] = "Отстыкован",
	["Paragraph/adjustlinks_desc"] = "Регулировка текста кликабельных сссылок способностей по центру или в право/лево.",
	["Paragraph/adjustlinks_name"] = "Размещение ссылок игроков/предметов",
	["Paragraph/Center"] = "Центр",
	["Paragraph/Chat window paragraph options."] = "Настройки абзаца окна чата.",
	["Paragraph/justification_desc"] = "Горизонтальное выравнивание всех окон чата.",
	["Paragraph/justification_name"] = "Выравнивание",
	["Paragraph/Left"] = "Влево",
	["Paragraph/Line Spacing"] = "Промежуток строк",
	["Paragraph/Paragraph"] = "Абзац",
	["Paragraph/Right"] = "Вправо",
	["Paragraph/Set the line spacing for all chat windows."] = "Установка промежутка строк во всех окнах чата.",
	["PlayerNames/Actively Query Player Info"] = "Активный запрос инфы о игроке",
	["PlayerNames/Angled"] = "Треугольные",
	["PlayerNames/Brackets"] = "Скобки",
	["PlayerNames/Brackets Common Color"] = "Основной цвет скобок",
	["PlayerNames/Brackets Use Common Color"] = "Скобки общего цвета",
	["PlayerNames/Class"] = "Класс",
	["PlayerNames/Color by Level Difference"] = "Окрашивание по отличию в уровне",
	["PlayerNames/coloreverywhere_desc"] = "Окраска текст сообщения в цвет имени игрока, если цвет задан",
	["PlayerNames/coloreverywhere_name"] = "Цвет имени везде",
	["PlayerNames/Enable Alt-Invite"] = "Включить приглашение с кнопкой Alt",
	["PlayerNames/Enable Invite Links"] = "Включить приглашение по ссылкам",
	["PlayerNames/Enable TabComplete"] = "Включить TabComplete",
	["PlayerNames/hoverhilight_desc"] = "Подсвечивает строки чата от определенных игроков при наведении мышкой на их никнейм.",
	["PlayerNames/hoverhilight_name"] = "Подсветка при наведении мышкой",
	["PlayerNames/How to color other player's level."] = "Как окрашивать уповень игрока.",
	["PlayerNames/How to color player's name."] = "Как окрашивать имя игрока.",
	["PlayerNames/Keep Info"] = "Хранить информацию",
	["PlayerNames/Keep Lots Of Info"] = "Хранить большое количество информации",
	["PlayerNames/Keep player information between session for all players except cross-server players"] = "Хранить информацию о всех собеседниках между сессиями за исключением игроков с других серверов",
	["PlayerNames/Keep player information between session, but limit it to friends and guild members."] = "Хранить информацию о собеседниках между сессиями, но ограничить этот список только друзьями и членами гильдии.",
	["PlayerNames/Let TasteTheNaimbow set the common color for unknown player names."] = "Позволить TasteTheNaimbow установить общий цветдля неизвестных играков.",
	["PlayerNames/Level Color Mode"] = "Режим окрашивания уровня",
	["PlayerNames/linkifycommon_desc"] = "Общие сообщения с сылками",
	["PlayerNames/linkifycommon_name"] = "Общие сообщения с сылками",
	["PlayerNames/No additional coloring"] = "Отключить дополнительное цвето-выделение",
	["PlayerNames/None"] = "Нет",
	["PlayerNames/Player Color Mode"] = "Режим цвета игрока",
	["PlayerNames/Player name formating options."] = "Настройки форматирования имени собеседника.",
	["PlayerNames/PlayerNames"] = "Имя игрока",
	["PlayerNames/Prat_Playernames: Stored Player Data Cleared"] = "Prat_Playernames: Информация о собеседниках очищена",
	["PlayerNames/Query the server for all player names we do not know. Note: This happpens pretty slowly, and this data is not saved."] = "Запрос сервера для всех неизвестных играков. Заметка: Это происходит дастаточно медленно, и их данные не сохраняются.",
	["PlayerNames/Random"] = "Случайно",
	["PlayerNames/realidcolor_desc"] = "Окрашивание имен RealID",
	["PlayerNames/realidcolor_name"] = "RealID Цвет",
	["PlayerNames/Reset Settings"] = "Сброс настроек",
	["PlayerNames/Restore default settings, and delete stored character data."] = "Восстановить настройки по умолчанию и удалить сохраненную информацию о собеседниках.",
	["PlayerNames/Set common color of unknown player names."] = "Выбор цвета, которым будут окрашены неизвестные игроки.",
	["PlayerNames/Sets common color of brackets to use around player names."] = "Установить цвет скобок, окружающих имя игрока.",
	["PlayerNames/Sets style of brackets to use around player names."] = "Установить стиль скобок вокруг имени собеседника.",
	["PlayerNames/Show Group"] = "Показывать группу",
	["PlayerNames/Show Level"] = "Показывать уровень",
	["PlayerNames/Show Raid Target Icon"] = "Показать иконку цели рейда",
	["PlayerNames/Square"] = "Квадратные",
	["PlayerNames/Tab completion : "] = "Завершение закладки : ",
	["PlayerNames/tabcomplete_name"] = "Возможные имена",
	["PlayerNames/Toggle group invites by alt-clicking hyperlinked keywords like 'invite'."] = "Вкл/выкл приглашение в группу с помощью alt+клик по ключевому слову типа: 'инвайт'.",
	["PlayerNames/Toggle group invites by alt-clicking on player name."] = "Включить режим, в котором можно пригласить игрока в группу щелкнув по его имени  с нажатой клавишей Alt.",
	["PlayerNames/Toggle level showing."] = "Вкл/выкл отображения уровня собеседника.",
	["PlayerNames/Toggle raid group showing."] = "Вкл/выкл отображения рейдовой группы.",
	["PlayerNames/Toggle showing the raid target icon which is currently on the player."] = "Вкл/Выкл отображение иконки цели рейда которой помечен игрок.",
	["PlayerNames/Toggle tab completion of player names."] = "Вкл/выкл завершение закладки именами играка.",
	["PlayerNames/Toggle using a common color for brackets around player names."] = "Включить окрашивание скобок вокруг имени игрока общим, выбранным цветом.",
	["PlayerNames/Toggle using a common color for unknown player names."] = "Включить окрашивание имен всех неизвестных собеседников в общий цвет.",
	["PlayerNames/Too many matches (%d possible)"] = "За много совпадение (%d возможных)",
	["PlayerNames/Unknown Common Color"] = "Общий цвет неизвестных",
	["PlayerNames/Unknown Common Color From TasteTheNaimbow"] = "Общая окраска неизвестных из TasteTheNaimbow",
	["PlayerNames/Unknown Use Common Color"] = "Общий цвет для неизвестных",
	["PlayerNames/Use Channel Color"] = "Использовать цвет канала",
	["PlayerNames/Use Player Color"] = "Использовать цвет игрока",
	["PlayerNames/Use toon name for RealID"] = "Использовать имя персонажа вместо RealID",
	["PopupMessage/Add Nickname"] = "Добавить ник",
	["PopupMessage/Adds an alternate name to show in popups."] = "Добавить альтернативное имя для отображения при всплывании.",
	["PopupMessage/Clear Nickname"] = "Очистить ники",
	["PopupMessage/Clears alternate name to show in popups."] = "Очистить альтернативные имена для отображения при всплывании.",
	["PopupMessage/framealpha_desc"] = "Установка прозрачности всплывающего окна при полном затухании.",
	["PopupMessage/framealpha_name"] = "Прозрачность окна всплывания",
	["PopupMessage/Popup"] = "Всплывающий",
	["PopupMessage/PopupMessage"] = "Всплывающее окно",
	["PopupMessage/Remove Nickname"] = "Удалить ник",
	["PopupMessage/Removes an alternate name to show in popups."] = "Удалить альтернативное имя для отображения при всплывании.",
	["PopupMessage/Set Separately"] = "Разделение",
	["PopupMessage/Show All Popups"] = "Все всплывающие",
	["PopupMessage/Show Popups"] = "Показывать всплывания",
	["PopupMessage/Show Popups for all chat windows."] = "Показывать всплывающие окна для всего чата.",
	["PopupMessage/Show Popups for each window."] = "Показывать всплывания для всех окон.",
	["PopupMessage/show_desc"] = "Отображать всплывние для всех окон чата.",
	["PopupMessage/show_name"] = "Показывать всплывание",
	["PopupMessage/show_perframedesc"] = "Вкл/Выкл отображение всплывания.",
	["PopupMessage/show_perframename"] = "Показать всплывание окна %d",
	["PopupMessage/showall_desc"] = "Показывать всплывающие окна для всего чата.",
	["PopupMessage/showall_name"] = "Все всплывающие",
	["PopupMessage/Shows messages in a popup window."] = "Показывать сообщение во всплывающем окне.",
	["PopupMessage/Shows messages with your name in a popup."] = "Показывать сообщение с вашим именем во всплывающем окне.",
	["PopupMessage/Toggle setting options separately for each chat window."] = "Вкл/Выкл настройки разделения для всех окон чата.",
	["Scroll/Bottom"] = "Снизу вверх",
	["Scroll/Chat window scrolling options."] = "Настройки прокрутки окна чата.",
	["Scroll/Control whether text is added to the frame at the top or the bottom."] = "Регулировка текста добавленного в окно в вверх или низ.",
	["Scroll/lowdown_desc"] = "Вкл/Выкл авто прокрутку в низ для во всех окнах чата.",
	["Scroll/lowdown_name"] = "Включить спад в низ",
	["Scroll/modified_speed"] = "Установка скорости прокрутки колеса мышки+Shift",
	["Scroll/modified_speed_desc"] = "Установите количество прокручиваемых строк с помощью колеса мыши+shift.",
	["Scroll/mousewheel_desc"] = "Вкл/Выкл поддержку колесика мыши во всех оконах чата.",
	["Scroll/mousewheel_name"] = "Включить КолесоМыши",
	["Scroll/Scroll"] = "Прокрутка",
	["Scroll/Set Ctrl+MouseWheel Speed"] = "Задать скорость Ctrl+КолесоМыши",
	["Scroll/Set MouseWheel Speed"] = "Скорость КолесаМыши",
	["Scroll/Set number of lines mousewheel will scroll when ctrl is pressed."] = "Установите число строк прокручиваемых колёсиком мыши при удерживании ctrl.",
	["Scroll/Set number of lines mousewheel will scroll."] = "Устанавите число строк прокручиваемых колёсиком мыши за раз.",
	["Scroll/Set TheLowDown Delay"] = "Задержка спада в низ",
	["Scroll/Set time to wait before jumping to the bottom of chat windows."] = "Установите время ожидания перед прокруткой в низ окна чата.",
	["Scroll/Text scroll direction"] = "Направление текста прокрутки",
	["Scroll/Top"] = "С верху вниз",
	["Scrollback/divider"] = "========== Конец прокрутки назад ==========",
	["Scrollback/Scrollback"] = "Прокрутка назад",
	["Scrollback/Store the chat lines between sessions"] = "Сохранять строки чата между сессиями",
	["Search/err_notfound"] = "Не Найденно",
	["Search/err_tooshort"] = "Критерий поиска слишком короток",
	["Search/find_results"] = "Найти Результаты:",
	["Search/module_desc"] = "Добавляет возможность поиска текста в чате.",
	["Search/module_info"] = [=[Этот модуль добавляет команды /find и /findall для поиска в истории чата

Использование:

/find <текст>

/findall <текст>]=],
	["Search/module_name"] = "Поиск",
	["ServerNames/autoabbreviate_desc"] = "Сокращает название сервера до трех букв",
	["ServerNames/autoabbreviate_name"] = "Авто-сокращение",
	["ServerNames/colon_desc"] = "Вкл/Выкл добавление двоеточия после замещения сервера.",
	["ServerNames/colon_name"] = "Показывать двоеточие",
	["ServerNames/randomclr_desc"] = "Использовать случайные цвета для всех серверов.",
	["ServerNames/randomclr_name"] = "Случайные цвета",
	["ServerNames/Server name abbreviation options."] = "Настройки сокращений имен серверов.",
	["ServerNames/ServerNames"] = "Названия серверов",
	["Sounds/A module to play sounds on certain chat messages."] = "Модуль проигрывает зуки для определённых сообщений в чате.",
	["Sounds/Add a custom channel"] = "Добавить свой канал",
	["Sounds/bn_whisper_desc"] = "Звук для %s Battle.Net при шепоте",
	["Sounds/bn_whisper_name"] = "Battle.Net Шепот",
	["Sounds/Custom Channels"] = "Личные каналы",
	["Sounds/group_lead_desc"] = "Звук для сообщений %s лидера рейда, лидера группы или проводника подземелья",
	["Sounds/group_lead_name"] = "Лидер группы",
	["Sounds/guild_desc"] = "Звук %s для сообщений гильдии",
	["Sounds/guild_name"] = "Гильдия",
	["Sounds/incoming"] = "Входящие",
	["Sounds/Incoming Sounds"] = "Звук входящих",
	["Sounds/officer_desc"] = "Звук %s для сообщений офицеров или личного канала",
	["Sounds/officer_name"] = "Офицеры",
	["Sounds/outgoing"] = "Исходящие",
	["Sounds/Outgoing Sounds"] = "Звуки исходящего",
	["Sounds/party_desc"] = "Звук %s для сообщений группы",
	["Sounds/party_name"] = "Группа",
	["Sounds/Play a sound for a certain channel name (can be a substring)"] = "Проигрывает зук для определённого канала чата (can be a substring)",
	["Sounds/raid_desc"] = "Звук %s для сообщений группы/лидера рейда или поля сражений",
	["Sounds/raid_name"] = "Рейд",
	["Sounds/Remove a custom channel"] = "Удалить свой канал",
	["Sounds/Reset settings"] = "Сброс настроек",
	["Sounds/Restore default settings and resets custom channel list"] = "Восстановление стандартных настроек и сброс списка своих каналов чата.",
	["Sounds/Sound selection for incoming chat messages"] = "Выбор звука для входящих сообщений в чате",
	["Sounds/Sound selection for outgoing (from you) chat messages"] = "Выбор звука для исходящих (от вас) сообщений в чате",
	["Sounds/Sounds"] = "Звуки",
	["Sounds/whisper_desc"] = "Звук  %s для личных сообщений",
	["Sounds/whisper_name"] = "Шепот",
	["Substitutions/%d total user defined substitutions"] = "всего %d пользовательских замен",
	["Substitutions/|cffff0000warning:|r subtitution \"%s\" already defined as \"%s\", overwriting"] = "|cffff0000предупреждение:|r замена \"%s\" уже определена как \"%s\", переписываем",
	["Substitutions/<noguild>"] = "<без гильдии>",
	["Substitutions/<notarget>"] = "<нет цели>",
	["Substitutions/A module to provide basic chat substitutions."] = "Модуль для простых замен текста в чате.",
	["Substitutions/Are you sure - this will delete all user defined substitutions and reset defaults?"] = "Вы уверены - будут удалены все пользовательские замены и установлены значения по умолчанию?",
	["Substitutions/Are you sure?"] = "Ты уверен?",
	["Substitutions/can't find substitution index for a substitution named '%s'"] = "не могу найти номер замены в списке замен для '%s'",
	["Substitutions/current-prompt"] = [=[Текущее значение: '%s'
Кликнуть для копирования в чат.]=],
	["Substitutions/defined %s: expands to => %s"] = "определено %s: раскрывается в => %s",
	["Substitutions/Delete all"] = "Удалить все",
	["Substitutions/Delete substitution"] = "Удалить замену",
	["Substitutions/Deletes a user defined substitution"] = "Удаляет пользовательскую замену",
	["Substitutions/Deletes all user defined substitutions"] = "Удалить все замены заданные пользователем",
	["Substitutions/female"] = "женский",
	["Substitutions/her"] = "её",
	["Substitutions/hers"] = "ей",
	["Substitutions/him"] = "им",
	["Substitutions/his"] = "его",
	["Substitutions/it"] = "это",
	["Substitutions/its"] = "его",
	["Substitutions/List of available substitutions"] = "Список доступных замен",
	["Substitutions/List of available substitutions defined by this module. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "Список доступных подмен, определённых в этом модуле. (Примечание: пользователи могут присваивать собственные значения существующим подменам, но они вернутся в значения по умолчанию, если пользовательское определение будет удалено.",
	["Substitutions/List substitutions"] = "Вывести список замен",
	["Substitutions/Lists all current subtitutions in the default chat frame"] = "Вывести все текущие замены в основное окно чата",
	["Substitutions/male"] = "мужской",
	["Substitutions/MapLoc"] = "Блокировка карты",
	["Substitutions/MapPos"] = "Позиция на карте",
	["Substitutions/MapXPos"] = "Позиция Х на карте",
	["Substitutions/MapYPos"] = "Поз.по Y",
	["Substitutions/MapZone"] = "Зона карты",
	["Substitutions/module:buildUserSubsIndex(): warning: module patterns not defined!"] = "module:buildUserSubsIndex(): предупреждение: шаблоны модуля не определены!",
	["Substitutions/MouseoverTargetName"] = "MouseoverTargetName",
	["Substitutions/NO MATCHFUNC FOUND"] = "Нет соответствующих ",
	["Substitutions/no substitution name given"] = "не задано имя замены",
	["Substitutions/no substitution name supplied for deletion"] = "не задано имя замены для удаления",
	["Substitutions/no user defined subs found"] = "не найдено замен определяемых пользователем",
	["Substitutions/no value given for subtitution \"%s\""] = "не задано значение для замены \"%s\"",
	["Substitutions/Options for setting and removing user defined substitutions. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "Опции для назначения и отмены пользовательских замен. (Внимание: пользователи могут назначать свои значения для существующих замен, однако будет использовано значение по умолчанию если определение пользователя удалено).",
	["Substitutions/PlayerAverageItemLevel"] = "PlayerAverageItemLevel",
	["Substitutions/PlayerCurrentMana"] = "текушая мана игрока",
	["Substitutions/PlayerHealthDeficit"] = "PlayerHealthDeficit",
	["Substitutions/PlayerHP"] = "PlayerHP",
	["Substitutions/PlayerManaDeficit"] = "нехватка маны",
	["Substitutions/PlayerMaxHP"] = "PlayerMaxHP",
	["Substitutions/PlayerMaxMana"] = "PlayerMaxMana",
	["Substitutions/PlayerName"] = "Имя игрока",
	["Substitutions/PlayerPercentHP"] = "PlayerPercentHP",
	["Substitutions/PlayerPercentMana"] = "PlayerPercentMana",
	["Substitutions/RandNum"] = "RandNum",
	["Substitutions/removing user defined substitution \"%s\"; previously expanded to => \"%s\""] = "удаляется определяемая пользователем замена \"%s\", раскрывавшаяся в => \"%s\"",
	["Substitutions/Set substitution"] = "Назначить замену",
	["Substitutions/Set the value of a user defined substitution (NB: this may be the same as an existing default substitution; to reset it to the default, just remove the user created definition)."] = "Установить значение для определяемой пользователем замены (Внимание: может совпадать с существующей заменой по умолчанию; чтобы сбросить к первоначальному значению удалите пользовательское определение).",
	["Substitutions/subname -- NOTE: sub name without the prefix '%'"] = "subname -- ВАЖНО: sub name указывать без префикса '%'",
	["Substitutions/subname = text after expansion -- NOTE: sub name without the prefix \"%\""] = "subname = text after expansion -- ВАЖНО: sub name указывать без префикса '%'",
	["Substitutions/substitution: %s defined as => %s"] = "замена: %s определен как => %s",
	["Substitutions/Substitutions"] = "Замены",
	["Substitutions/TargetClass"] = "TargetClass",
	["Substitutions/TargetGender"] = "TargetGender",
	["Substitutions/TargetGuild"] = "показать гильдию",
	["Substitutions/TargetHealth"] = "показать жизнь",
	["Substitutions/TargetHealthDeficit"] = "Деф. здоровья цели",
	["Substitutions/TargetIcon"] = "показать иконку",
	["Substitutions/TargetLevel"] = "показать уровень",
	["Substitutions/TargetManaDeficit"] = "Деф. маны цели",
	["Substitutions/TargetName"] = "показать имя",
	["Substitutions/TargetPercentHP"] = "% здоровья цели",
	["Substitutions/TargetPossesive"] = "TargetPossesive",
	["Substitutions/TargetPronoun"] = "TargetPronoun",
	["Substitutions/TargetRace"] = "Раса цели",
	["Substitutions/TargetTargetName"] = "Имя цели цели",
	["Substitutions/unknown sex"] = "неизвестный пол",
	["Substitutions/user defined substition \"%s\" not found"] = "пользовательская замена \"%s\" не найдена",
	["Substitutions/User defined substitutions"] = "Пользовательские подмены",
	["Substitutions/user substitutions index (usersubs_idx) doesn't exist! oh dear."] = "таблица пользовательских замен (usersubs_idx) не существует! о боже.",
	["Substitutions/usersub_"] = "usersub_",
	["TellTarget//tt"] = "/tt",
	["TellTarget/Adds telltarget slash command (/tt)."] = "Добавляет слеш-команду 'сказать о цели' (/tt).",
	["TellTarget/No target selected."] = "Нет выбранной цели.",
	["TellTarget/NoTarget"] = "Нет цели",
	["TellTarget/Target does not exist."] = "Цель не существует.",
	["TellTarget/Target is not a player."] = "Выбранная цель не является игроком.",
	["TellTarget/TellTarget"] = "Сказать цели",
	["Timestamps/Chat window timestamp options."] = "Настройки времени в окне чата.",
	["Timestamps/colortimestamp_desc"] = "Вкл/Выкл окрасу времени.",
	["Timestamps/colortimestamp_name"] = "Окраска времени",
	["Timestamps/Format All Timestamps"] = "Формат всего времени",
	["Timestamps/HH:MM (12-hour)"] = "HH:MM (12-ч)",
	["Timestamps/HH:MM (24-hour)"] = "HH:MM (24-ч)",
	["Timestamps/HH:MM:SS (12-hour)"] = "HH:MM:SS (12-ч)",
	["Timestamps/HH:MM:SS (24-hour)"] = "HH:MM:SS (24-ч)",
	["Timestamps/HH:MM:SS AM (12-hour)"] = "HH:MM:SS AM (12-ч)",
	["Timestamps/localtime_desc"] = "Вкл/Выкл использование местного времени.",
	["Timestamps/localtime_name"] = "Местное время",
	["Timestamps/MM:SS"] = "MM:SS",
	["Timestamps/Post-Timestamp"] = "Перед-временем",
	["Timestamps/Pre-Timestamp"] = "После-времени",
	["Timestamps/Set the timestamp format"] = "Установите формат времени ",
	["Timestamps/Set Timestamp Color"] = "Цвет времени",
	["Timestamps/Sets the color of the timestamp."] = "Установка цвета времени.",
	["Timestamps/Show Timestamp"] = "Показывать время",
	["Timestamps/show_desc"] = "Вкл/Выкл отображение времени во всех окнах.",
	["Timestamps/show_name"] = "Показывать время",
	["Timestamps/space_desc"] = "Вкл/Выкл добавление пробела после времени.",
	["Timestamps/space_name"] = "Пробел",
	["Timestamps/Timestamps"] = "Отображение времени",
	["Timestamps/Toggle showing timestamp for each window."] = "Вкл/Выкл отображение времени во всех окнах.",
	["Timestamps/twocolumn_desc"] = "Помещает время в отдельную колонку, чтобы текст не переносился на строку под ним.",
	["Timestamps/twocolumn_name"] = "Чат в 2 колонки",
	["UrlCopy/Change the color of the URL."] = "Изменение цвета ссылок.",
	["UrlCopy/Color URL"] = "Цвет ссылки",
	["UrlCopy/Set Color"] = "Цвет",
	["UrlCopy/Show Brackets"] = "Показывать скобки",
	["UrlCopy/Toggle"] = "Вкл/выкл",
	["UrlCopy/Toggle showing brackets on and off."] = "Вкл/Выкл отображение скобок.",
	["UrlCopy/Toggle the module on and off."] = "Вкл/Выкл данный модуль.",
	["UrlCopy/Toggle the URL color on and off."] = "Вкл/Выкл окраску ссылок.",
	["UrlCopy/URL formating options."] = "Настройки формата URL-адреса.",
	["UrlCopy/UrlCopy"] = "Копировать ссылку",
	["UrlCopy/Use Popup"] = "Всплывающее окно",
	["UrlCopy/Use popup window to show URL."] = "Использовать всплывающее окно для показа ссылки."
}

PL:AddLocale(nil, "ruRU",L)


L=
{
	["display_desc"] = "聊天框管理与插件",
	["display_name"] = "显示设置",
	["extras_desc"] = "杂项模块",
	["extras_name"] = "扩展选项",
	["formatting_desc"] = "改变行的感观",
	["formatting_name"] = "聊天格式",
	["load_desc"] = "控制这个模块的载入状态",
	["load_disabled"] = "禁用",
	["load_disabledonrestart"] = "停用 (重载)",
	["load_enabled"] = "启用",
	["load_enabledonrestart"] = "启用 (重载)",
	["load_no"] = "不加载",
	["modulecontrol_desc"] = "控制Prat模块的读取和启用",
	["modulecontrol_name"] = "模块控制",
	["prat"] = "Prat",
	["reload_required"] = "在%s您的插件以前,此选项不会完全生效",
	["AddonMsgs/Addon message options."] = "插件信息选项",
	["AddonMsgs/AddonMsgs"] = "插件信息",
	["AddonMsgs/show_desc"] = "在各自聊天窗口中显示隐藏的插件消息",
	["AddonMsgs/show_name"] = "显示插件信息",
	["AddonMsgs/show_perframedesc"] = "显示隐藏的插件消息",
	["AddonMsgs/show_perframename"] = "聊天框体%d插件消息显示",
	["Alias/ - list all aliases; supply <keyword> to search for matching aliases (cmd aliases: /listallaliases)"] = "-列出全部替换词;支持<关键字>搜索匹配的替换词(替换词命令:/listallaliases)",
	["Alias/%s() called with blank string!"] = "%s()为空白字符!",
	["Alias/%s() called with nil argument!"] = "%s()不能为空!",
	["Alias//%s aliased to \"/%s\""] = "/%s替换为\"/%s\"",
	["Alias//%s aliased to: /%s"] = "/%s替换为:/%s",
	["Alias/<alias> - remove the alias <alias> (cmd aliases: /delalias, /remalias)"] = "<alias> - 移除替换词<alias> (命令: /delalias, /remalias)",
	["Alias/<command>[ <value>] - alias <command> to be executed as <value>, or return the value of the currently defined alias for <command> if <command> has not been assigned a value. eg: \"/alias /examplehello /say hello there\" - typing \"/examplehello\" will now cause your character to say \"hello there\"; \"/alias examplehello\" - s \"/examplehello is aliased to /say hello there\" (cmd aliases: /addalias)"] = "<命令>[<值>] - 替换词<命令>被实现为<值>，如果<命令>没有被定义一个值,就为<命令>返回当前确定了值的替换词.例: \"/alias /好 /s 你好啊\" - 键入\"/好\"就会马上让你的角色去说\"你好啊\";\"/alias 好\"是\"/好 去替换/s 你好啊\"(替换词命令:/addalias)",
	["Alias/<keyword> - finds all aliases matching <keyword> (cmd aliases: /findalias)"] = "<关键字> - 寻找所有匹配<关键字>的替换词(命令: /findalias)",
	["Alias/add"] = "添加",
	["Alias/add an alias"] = "添加一个替换词",
	["Alias/alias \"/%s\" does not exist"] = "替换词\"/%s\"不存在",
	["Alias/dealiasing command /%s to /%s"] = "/%s到/%s非替换词命令",
	["Alias/deleting alias \"/%s\" (previously aliased as \"/%s\")"] = "删除替换词\"/%s\"(先前被命名为\"/%s\")",
	["Alias/Display extra information in the chat frame when commands are dealiased"] = "当命令取消替换名时在聊天框显示额外信息",
	["Alias/Don't overwrite existing aliases when using /addalias"] = "使用/addalias时不能覆盖一个已存在的替换词",
	["Alias/Expand aliases as you are typing"] = "输入时展开替换词",
	["Alias/find aliases matching a given search term"] = "寻找匹配替换词的特定搜索字词",
	["Alias/findaliases"] = "寻找替换词",
	["Alias/infinite loop detected for alias /%s - ignoring"] = "死循环替换名/%s - 忽略",
	["Alias/inline"] = "内联",
	["Alias/list all aliases"] = "列出全部替换词",
	["Alias/listaliases"] = "替换词一览表",
	["Alias/matching aliases found: %d"] = "发现匹配替换词:%d",
	["Alias/module_desc"] = "添加命令/alias,用Unix alias command类似的方法替换来消减命令",
	["Alias/module_name"] = "替换词",
	["Alias/No aliases have been defined"] = "无替换名被定义",
	["Alias/noclobber"] = "无冲突",
	["Alias/noclobber set - skipping new alias: /%s already expands to /%s"] = "无冲突设置-跳过新的替换词:/%s已经扩展到/%s",
	["Alias/Options"] = "选项",
	["Alias/Options for altering the behaviour of Alias"] = "变更替换词状况的选项",
	["Alias/overwriting existing alias \"/%s\" (was aliased to \"/%s\")"] = "覆盖现有替换词\"/%s\"(替换为\"/%s\")",
	["Alias/refusing to alias \"/%s\" to anything in the interests of Not Buggering Everything Up"] = "拒绝替换词\"/%s\"的任何权利以不破坏重要的东西",
	["Alias/remove an alias"] = "移除一个替换词",
	["Alias/There is no alias current defined for \"%s\""] = "无任何替换词目前定义为\"%s\"",
	["Alias/total aliases: %d"] = "替换词总数:%d",
	["Alias/tried to show value for alias \"%s\" but undefined in module.Aliases!"] = "模块未定义试图显示的替换词的值\"%s\".替换词!",
	["Alias/unalias"] = "无替换词",
	["Alias/verbose"] = "详细",
	["Alias/warnUser() called with nil argument!"] = "您注意()为无效参数!",
	["Alias/warnUser() called with zero length string!"] = "您注意()为零长度字符串!",
	["AltNames/%d alts found for %s: %s"] = "%d 马甲找到 %s: %s",
	["AltNames/%s alts imported from LOKWhoIsWho"] = "%s马甲从LOKWhoIsWho导入",
	["AltNames/%s total alts linked to mains"] = "%s全部马甲联结到本尊",
	["AltNames/(.-)'s? [Aa]lt"] = "(.-)'s? [Aa]lt",
	["AltNames/([^%s%p%d%c%z]+)'s alt"] = "([^%s%p%d%c%z]+)'s alt",
	["AltNames/.*[Aa]lts?$"] = ".*[Aa]lts?$",
	["AltNames/<alt name> (eg, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)"] = "<马甲名称> (例, /altnames del 某个你以为是但不是的某人分身)",
	["AltNames/<main> (eg /altnames listalts Fin)"] = "<本尊> (例 /altnames listalts 顶尖战士)",
	["AltNames/<search term> (eg, /altnames find fin)"] = "<搜索条件>(例, /altnames find 顶尖战士)",
	["AltNames/Alt"] = "马甲",
	["AltNames/alt"] = "马甲",
	["AltNames/alt name exists: %s -> %s; not overwriting as set in preferences"] = "马甲名称存在: %s -> %s;没有覆盖参数设置",
	["AltNames/AltNames"] = "马甲名称",
	["AltNames/Alts:"] = "马甲:",
	["AltNames/autoguildalts_desc"] = [=[后台自动从公会信息中导入
]=],
	["AltNames/autoguildalts_name"] = "自动导入公会名",
	["AltNames/Be quiet"] = "禁言",
	["AltNames/character removed: %s"] = "删除角色: %s",
	["AltNames/Class colour"] = "职业颜色",
	["AltNames/Clear all"] = "全部清除",
	["AltNames/Clear all links between alts and main names."] = "清除所有马甲与本尊名称间的联结",
	["AltNames/Colour"] = "颜色",
	["AltNames/Delete a character's link to another character as their main."] = "删除一个角色作为另一个角色本尊的联结",
	["AltNames/Delete alt"] = "删除马甲",
	["AltNames/Disabled"] = "禁用",
	["AltNames/Display a player's alts in the tooltip"] = "在提示里显示玩家的马甲名称",
	["AltNames/Display a player's main name in the tooltip"] = "在提示里显示玩家的本尊名称",
	["AltNames/Display main names in the same colour as that of the alt's class (taking the data from the PlayerNames module if it is enabled)"] = "用和马甲职业相同的颜色显示本尊名称(如果玩家名称模块启用,从中采集数据)",
	["AltNames/Display main names in the same colour as that of the main's class (taking the data from the PlayerNames module if it is enabled)"] = "用和本尊职业相同的颜色显示本尊名称(如果玩家名称模块启用,从中采集数据)",
	["AltNames/Don't overwrite existing alt <-> main links when importing or adding new alts."] = "不要在导入或添加新马甲时覆盖已有的马甲 <-> 本尊",
	["AltNames/Don't overwrite existing links"] = "不要覆盖已有联结",
	["AltNames/don't use"] = "不使用",
	["AltNames/Don't use data from the PlayerNames module at all"] = "不要从玩家名称模块使用数据",
	["AltNames/ERROR: some function sent a blank message!"] = "错误:一些参数发送了一条空白信息!",
	["AltNames/Find characters"] = "发现角色",
	["AltNames/Fix alts"] = "修复马甲",
	["AltNames/Fix corrupted entries in your list of alt names."] = "在你的马甲名称列表里修复损坏的条目",
	["AltNames/Found alt: %s => main: %s"] = "发现马甲: %s => 本尊: %s",
	["AltNames/guild member alts found and imported: %s"] = "公会成员马甲发现并导入: %s",
	["AltNames/Import from Guild Greet database"] = "从公会欢迎数据库导入",
	["AltNames/Import from guild roster"] = "从工会名单导入",
	["AltNames/Import options"] = "导入选项",
	["AltNames/Imports alt names from a Guild Greet database, if present"] = "导入马甲名称从公会欢迎数据库,如果可以",
	["AltNames/Imports alt names from the guild roster by checking for members with the rank \"alt\" or \"alts\", or guild / officer notes like \"<name>'s alt\""] = "导入马甲名称从公会名单中检查到的成员头衔为“马甲”或“马甲们”的,或者公会官员备注为\"<某某>的马甲\"",
	["AltNames/Imports data from LOKWhoIsWho, if present (drop your SavedVariablesLOKWhoIsWho.lua in the Prat directory to be able to use this)."] = "从LOKWhoIsWho导入数据,如果可以(你的Prat目录丢失SavedVariablesLOKWhoIsWho.lua可以使用这个).",
	["AltNames/Left"] = "左边",
	["AltNames/link <alt name> <main name> (eg, /altnames link Fin Finjathealtoffin)"] = "联结 <马甲名称> <本尊名称>(例,/altnames link 顶尖战士 苍天哥)",
	["AltNames/Link alt"] = "联结马甲",
	["AltNames/Link someone's alt character with the name of their main."] = "联结某人的马甲角色与他们的本尊名称",
	["AltNames/linked alt %s => %s"] = "联结的马甲 %s => %s",
	["AltNames/List all"] = "全部列出",
	["AltNames/List all links between alts and their main names."] = "列出所有马甲与他们的本尊名称间的联结",
	["AltNames/List alts"] = "列出马甲",
	["AltNames/List alts for a given character"] = "列出特定角色的马甲",
	["AltNames/LOKWhoIsWho data not found"] = "未发现LOKWhoIsWho数据",
	["AltNames/LOKWhoIsWho import"] = "LOKWhoIsWho导入",
	["AltNames/LOKWhoIsWho lua file not found, sorry."] = "未发现LOKWhoIsWho权限文件,息怒",
	["AltNames/Main"] = "本尊",
	["AltNames/main"] = "本尊",
	["AltNames/Main name position"] = "本尊名称位置",
	["AltNames/Main:"] = "本尊:",
	["AltNames/mainpos_desc"] = "当角色在马甲上时本尊名称的显示位置",
	["AltNames/mainpos_name"] = "本尊名称位置",
	["AltNames/module_desc"] = "把某人的马甲角色联结到他们的本尊,在聊天信息中的名字旁边显示(默认=关闭).",
	["AltNames/no alts found for character "] = "未发现角色马甲",
	["AltNames/no alts or mains found matching \"%s\""] = "未发现匹配\"%s\"马甲或本尊",
	["AltNames/No arg string given to :addAlt()"] = "无字符串参数到:addAlt()",
	["AltNames/no characters called \"%s\" found; nothing deleted"] = "未发现称作\"%s\"角色;无删除",
	["AltNames/No Guild Greet database found"] = "未发现公会欢迎数据库",
	["AltNames/No main name supplied to link %s to"] = "没有本尊名称以供联结%s",
	["AltNames/no matches found"] = "无匹配发现",
	["AltNames/quiet"] = "安静",
	["AltNames/quiet_desc"] = "是否在聊天框报告",
	["AltNames/quiet_name"] = "无声_名字",
	["AltNames/Right"] = "右边",
	["AltNames/Search the list of linked characters for matching main or alt names."] = "搜索已联结的角色列表匹配本尊或马甲名称",
	["AltNames/searched for: %s - total matches: %s"] = "搜索: %s - 完全匹配: %s",
	["AltNames/Show alts in tooltip"] = "在提示里显示马甲",
	["AltNames/Show main in tooltip"] = "在提示里显示本尊",
	["AltNames/Start"] = "起始",
	["AltNames/The colour of an alt's main name that will be displayed"] = "马甲的本尊名称将显示的颜色",
	["AltNames/Use class colour (from the PlayerNames module)"] = "使用职业颜色(从玩家名称模块)",
	["AltNames/use class colour of alt"] = "马甲职业的颜色",
	["AltNames/use class colour of main"] = "本尊职业的颜色",
	["AltNames/Use LibAlts Data"] = "使用LibAlts数据",
	["AltNames/Use the data available via the shared alt information library."] = "使数据可通过共享的马甲信息库",
	["AltNames/Various ways to import a main's alts from other addons"] = "用各种途径从其他插件导入本尊的马甲",
	["AltNames/warning: alt %s already linked to %s"] = "注意:马甲%s已联结到%s",
	["AltNames/Where to display a character's main name when on their alt."] = "当角色在马甲上时本尊名称显示何处",
	["AltNames/Whether to report to the chat frame or not."] = "是否报告在聊天框",
	["AltNames/You are not in a guild"] = "你不在一个公会里",
	["AltNames/You have not yet linked any alts with their mains."] = "尚未有任何马甲联结到他们的本尊",
	["Bubbles/color_desc"] = "把聊天泡泡颜色设为与聊天类型一致",
	["Bubbles/color_name"] = "泡泡颜色",
	["Bubbles/font_desc"] = "使用与聊天框相同的字体",
	["Bubbles/font_name"] = "使用聊天字体",
	["Bubbles/fontsize_desc"] = "设置聊天泡泡字体大小",
	["Bubbles/fontsize_name"] = "字体大小",
	["Bubbles/format_desc"] = "聊天泡泡文字应用 Prat's 格式",
	["Bubbles/format_name"] = "格式化文字",
	["Bubbles/icons_desc"] = "在聊天泡泡里显示团队图标。",
	["Bubbles/icons_name"] = "显示团队图标",
	["Bubbles/module_desc"] = "聊天泡泡相关自定义",
	["Bubbles/module_name"] = "泡泡",
	["Bubbles/shorten_desc"] = [=[缩短每个聊天气泡至一行. 鼠标移过气泡时展开文本.
]=],
	["Bubbles/shorten_name"] = "缩短气泡",
	["Bubbles/transparent_desc"] = "隐藏聊天泡泡中的背景和边框材质.(撤销此选项需要/reload)",
	["Bubbles/transparent_name"] = "透明泡泡",
	["Buttons/alpha_desc"] = "设置所有聊天窗口的聊天目录及箭头透明度",
	["Buttons/alpha_name"] = "设置透明度",
	["Buttons/Buttons"] = "按钮",
	["Buttons/Chat window button options."] = "聊天窗口按钮选项",
	["Buttons/chatmenu_desc"] = "聊天菜单开与关",
	["Buttons/chatmenu_name"] = "聊天菜单_名称",
	["Buttons/Default"] = "默认",
	["Buttons/Right, Inside Frame"] = "框体内右侧",
	["Buttons/Right, Outside Frame"] = "框体外右侧",
	["Buttons/scrollReminder_desc"] = "当聊天信息不在底部时显示提醒按钮",
	["Buttons/scrollReminder_name"] = "显示向下滚动提醒",
	["Buttons/Set Position"] = "设置位置",
	["Buttons/Sets position of chat menu and arrows for all chat windows."] = "设置所有聊天窗口的聊天目录及箭头位置",
	["Buttons/Show Arrows"] = "显示箭头",
	["Buttons/Show Chat%d Arrows"] = "显示聊天%d箭头",
	["Buttons/showbnet_desc"] = "显示社交菜单",
	["Buttons/showbnet_name"] = "显示社交菜单",
	["Buttons/showmenu_desc"] = "显示聊天菜单",
	["Buttons/showmenu_name"] = "显示菜单",
	["Buttons/showminimize_desc"] = "显示最小化按钮",
	["Buttons/showminimize_name"] = "显示最小化按钮",
	["Buttons/Toggle showing chat arrows for each chat window."] = "为各个聊天窗口显示上下翻页箭头",
	["Buttons/Toggles navigation arrows on and off."] = "切换导航箭头开与关",
	["ChannelColorMemory/(%w+)%s?(.*)"] = "(%w+)%s?(.*)",
	["ChannelColorMemory/ChannelColorMemory"] = "频道颜色存储",
	["ChannelColorMemory/Remembers the colors of each channel name."] = "记住每个频道名称的颜色",
	["ChannelNames/%s settings."] = "%s 设置.",
	["ChannelNames/<string>"] = "<字符串>",
	["ChannelNames/Add Channel Abbreviation"] = "添加频道缩写",
	["ChannelNames/addnick_desc"] = "添加一个缩写的频道名称.名称前缀为 '#' 来包含频道数字(例如'#贸易')",
	["ChannelNames/Blank"] = "空白",
	["ChannelNames/chanlink_desc"] = "使频道可以点击链接打开频道聊天",
	["ChannelNames/chanlink_name"] = "创建频道链接",
	["ChannelNames/Channel %d"] = "频道 %d",
	["ChannelNames/Channel name abbreviation options."] = "频道名称缩写选项",
	["ChannelNames/ChannelNames"] = "频道名称",
	["ChannelNames/channelnick_desc"] = "频道缩写",
	["ChannelNames/channelnick_name"] = "频道缩写",
	["ChannelNames/Clear Channel Abbreviation"] = "清除频道缩写",
	["ChannelNames/Clears an abbreviated channel name."] = "清除一个频道名称缩写",
	["ChannelNames/colon_desc"] = "频道后添加冒号",
	["ChannelNames/colon_name"] = "显示冒号",
	["ChannelNames/Dont display the channel/chat type name"] = "不要显示频道/聊天分类名称",
	["ChannelNames/otheropts_desc"] = "额外的频道格式选项，以及频道链接控制",
	["ChannelNames/otheropts_name"] = "其他选项",
	["ChannelNames/Remove Channel Abbreviation"] = "移除频道缩写",
	["ChannelNames/Removes an an abbreviated channel name."] = "移除一个频道名称缩写",
	["ChannelNames/Replace"] = "替换",
	["ChannelNames/Set"] = "设置",
	["ChannelNames/space_desc"] = "频道后添加空格",
	["ChannelNames/space_name"] = "显示空格",
	["ChannelNames/Toggle replacing this channel."] = "替换频道",
	["ChannelNames/Use a custom replacement for the chat %s text."] = "使用自定义替换此聊天 %s 文本",
	["ChannelSticky/Channel"] = "频道",
	["ChannelSticky/ChannelSticky"] = "频道粘连",
	["ChannelSticky/Chat channel sticky options."] = "聊天频道粘连选项",
	["ChannelSticky/ChatType"] = "聊天分类",
	["ChannelSticky/Per chat type options."] = "每个聊天分类选项",
	["ChannelSticky/smartgroup_desc"] = "添加一个/gr命令用来自动选择正确的聊天分类,比如团队,小队或战场",
	["ChannelSticky/smartgroup_name"] = "智能分组",
	["ChannelSticky/Sticky %s"] = "粘连 %s",
	["ChannelSticky/Sticky Per Chat Frame"] = "粘连每个聊天框",
	["ChannelSticky/Toggle remembering the chat type last used per chat frame."] = "记住每个聊天框上一次使用的聊天分类",
	["ChannelSticky/Toggles sticky on and off for %s."] = "切换%s的粘连开关",
	["ChatLink/gem_desc"] = "启动宝石镶嵌模式",
	["ChatLink/gem_name"] = "宝石镶嵌",
	["ChatLink/module_desc"] = "聊天频道物品链接选项",
	["ChatLink/module_info"] = "这个模块允许你把物体链接发到非交易频道，比如通用、私人、或者你的种族频道。对于没有安装解码扩展的用户来看, 就像是乱码，所以注意礼貌。",
	["ChatLink/module_name"] = "频道链接",
	["ChatLink/Trade"] = "商业",
	["ChatLog/A module to automaticaly enable chat and combat logging."] = "自动启用聊天和战斗记录的模块",
	["ChatLog/Chat log recorded to <WoW Installation>\\Logs\\WoWChatLog.txt only upon logout."] = "退出游戏时保存聊天记录在<魔兽世界安装目录>\\Logs\\WoWChatLog.txt",
	["ChatLog/Chat Log: Disabled"] = "聊天记录：禁用",
	["ChatLog/Chat Log: Enabled"] = "聊天记录：启用",
	["ChatLog/ChatLog"] = "聊天记录",
	["ChatLog/Combat log recorded to <WoW Installation>\\Logs\\WoWCombatLog.txt only upon logout."] = "退出游戏后保存战斗记录在<魔兽世界安装目录>\\Logs\\WoWCombatLog.txt",
	["ChatLog/Combat Log: Disabled"] = "战斗记录：禁用",
	["ChatLog/Combat Log: Enabled"] = "战斗记录：启用",
	["ChatLog/quiet_desc"] = "模块启用或改变记录设置时不显示任何信息",
	["ChatLog/quiet_name"] = "禁止反馈信息",
	["ChatLog/Toggle Chat Log"] = "聊天记录",
	["ChatLog/Toggle chat log on and off."] = "切换聊天记录开关",
	["ChatLog/Toggle Combat Log"] = "战斗记录",
	["ChatLog/Toggle combat log on and off."] = "切换战斗记录开关",
	["ChatTabs/Active Alpha"] = "活跃的透明度",
	["ChatTabs/All"] = "全部",
	["ChatTabs/Always"] = "总是",
	["ChatTabs/Chat window tab options."] = "聊天窗口页签选项",
	["ChatTabs/Default"] = "预设",
	["ChatTabs/disableflash_desc"] = "禁用聊天页签闪动",
	["ChatTabs/disableflash_name"] = "禁用闪动",
	["ChatTabs/Hidden"] = "隐藏",
	["ChatTabs/Individual"] = "个别",
	["ChatTabs/Not Active Alpha"] = "非活跃的透明度",
	["ChatTabs/preventdrag_desc"] = "阻止聊天页签随鼠标拖动",
	["ChatTabs/preventdrag_name"] = "拖动阻止",
	["ChatTabs/Set ChatFrame%d Display Mode"] = "设置聊天框%d显示模式",
	["ChatTabs/Set Display Mode"] = "设置显示模式",
	["ChatTabs/Set tab display mode for each chat window."] = "设置每个聊天窗口的页签显示模式.检查(开),不检查(关),暂停检查(预设)",
	["ChatTabs/Set tab display to always, hidden or the Blizzard default."] = "设置页签永久显示,隐藏或暴雪预设",
	["ChatTabs/Sets alpha of chat tab for active chat frame."] = "设置活跃聊天框页签透明度",
	["ChatTabs/Sets alpha of chat tab for not active chat frame."] = "设置非活跃聊天框页签透明度",
	["ChatTabs/Tabs"] = "页签",
	["Clear/Adds clear text slash commands (/clear)(/cls)(/clearall)(/clsall)."] = "添加清除文本斜杠命令(/clear)(/cls)(/clearall)(/clsall).",
	["Clear/Clear"] = "清除",
	["Clear/Clearall"] = "全部清除",
	["Clear/Clears all chat frames."] = "清除所有聊天框架",
	["Clear/Clears the current chat frame."] = "清除当前聊天框架",
	["CopyChat/ Text"] = "文本",
	["CopyChat/BBCode"] = "BB代码",
	["CopyChat/BOTTOMLEFT"] = "左下",
	["CopyChat/BOTTOMRIGHT"] = "右下",
	["CopyChat/buttonpos_desc"] = "复制按钮在聊天框的位置",
	["CopyChat/buttonpos_name"] = "按钮位置",
	["CopyChat/ChatFrame"] = "聊天框",
	["CopyChat/Copy all of the text in the selected chat frame into an edit box"] = "在选定的聊天框复制全部文本到输入框",
	["CopyChat/Copy Text"] = "复制文本",
	["CopyChat/Copy Text Format"] = "复制文本格式",
	["CopyChat/Copy text from the active chat window."] = "从活跃的聊天窗口复制文本",
	["CopyChat/Copy To Editbox"] = "复制到编辑框",
	["CopyChat/CopyChat"] = "聊天复制",
	["CopyChat/HTML"] = "超文本标记语言",
	["CopyChat/Message From : %s"] = "信息来自: %s",
	["CopyChat/Plain"] = "简洁",
	["CopyChat/Should the copied text be plain, or formatted so you can see the colors."] = "如果用简洁或排版复制的文本,你可以看到颜色",
	["CopyChat/showbutton_desc"] = "在聊天框显示按钮",
	["CopyChat/showbutton_name"] = "复制按钮",
	["CopyChat/TOPLEFT"] = "左上",
	["CopyChat/TOPRIGHT"] = "右上",
	["CopyChat/Wowace.com Forums"] = "Wowace.com论坛",
	["CustomFilters/<string>"] = "<string>",
	["CustomFilters/Add a pattern to search for."] = "添加一个搜索模板",
	["CustomFilters/Add Pattern"] = "添加模板",
	["CustomFilters/Block Message"] = "消息阻止",
	["CustomFilters/Channel Data"] = "频道数据",
	["CustomFilters/Channel to send output text to."] = "频道发送输出文本",
	["CustomFilters/Enabled"] = "启用",
	["CustomFilters/Extra data for WHISPER (target) and CHANNEL (channel name or num)"] = "密语(目标)和频道(频道名称或数字)的扩展数据",
	["CustomFilters/Filter Name"] = "过滤器名字",
	["CustomFilters/Forward"] = "转发",
	["CustomFilters/Forward the message to a chat channel."] = "转发信息到聊天频道",
	["CustomFilters/Forward the message to a custom chat channel."] = "输出到一个私人频道",
	["CustomFilters/ForwardCustom"] = "自定义传送",
	["CustomFilters/ForwardMessage"] = "信息转发",
	["CustomFilters/ForwardMessageCustom"] = "私有频道",
	["CustomFilters/Hilight Color"] = "颜色高亮",
	["CustomFilters/Hilight Match Text"] = "高亮匹配文本",
	["CustomFilters/Inbound"] = "输入范围",
	["CustomFilters/inchannels_desc"] = "在当前频道搜索",
	["CustomFilters/inchannels_name"] = "搜索频道",
	["CustomFilters/Is this pattern enabled for use?"] = "这个样式启用了吗？",
	["CustomFilters/Match Options"] = "适配选项",
	["CustomFilters/module_desc"] = "支持自定义过滤的模块",
	["CustomFilters/module_name"] = "自定义过滤",
	["CustomFilters/Only output the message portion of the chat text, leave out the channel, and playername etc."] = "仅在聊天文本中输出部分信息，移除频道和玩家姓名等",
	["CustomFilters/Outbound"] = "输出范围",
	["CustomFilters/Output Channel"] = "输出频道",
	["CustomFilters/Output Message Only"] = "只输出信息",
	["CustomFilters/Pattern Info"] = "样式信息",
	["CustomFilters/Pattern Options"] = "模块选项",
	["CustomFilters/Play a sound when this message is output to the chatframe"] = "当信息在聊天框输出时播放声音",
	["CustomFilters/Play Sound"] = "播放声音",
	["CustomFilters/Prevent the message from being displayed"] = "阻止信息被现实",
	["CustomFilters/Remove an existing pattern."] = "移除现有模板",
	["CustomFilters/Remove Pattern"] = "移除模板",
	["CustomFilters/Replacement Text"] = "替换文本",
	["CustomFilters/Search Format String"] = "搜索格式字符串",
	["CustomFilters/Search Pattern"] = "搜索模板",
	["CustomFilters/Secondary Output"] = "二次输出",
	["CustomFilters/Send to a secondary output"] = "发送二次输出",
	["CustomFilters/Supplied pattern is a format string instead of a pattern"] = "支持模板是格式字符串而非模板",
	["CustomFilters/Your name for this filter"] = "这个过滤器的名字",
	["Editbox/Attach edit box to..."] = "把输入框附加到……",
	["Editbox/Attach to..."] = "附加到……",
	["Editbox/Background color"] = "背景颜色",
	["Editbox/Background Inset"] = "背景嵌入",
	["Editbox/Background texture"] = "背景纹理",
	["Editbox/Border color"] = "边框颜色",
	["Editbox/Border texture"] = "边框纹理",
	["Editbox/Bottom"] = "底部",
	["Editbox/Color border by channel"] = "频道颜色边框",
	["Editbox/currently_broken_alt_behavior"] = [=[在现在WoW客户端里，方向键的行为已损坏，

使用Alt+上和Alt+下来替代上下键浏览历史]=],
	["Editbox/Edge Size"] = "边缘尺寸",
	["Editbox/Editbox"] = "输入框",
	["Editbox/Editbox options."] = "输入框选项",
	["Editbox/Font"] = "字体",
	["Editbox/Free-floating"] = "自由浮动",
	["Editbox/Free-floating, Locked"] = "自由浮动，锁定",
	["Editbox/Requires the Alt key to be held down to move the cursor in chat"] = "需要在聊天中按住Alt键移动光标",
	["Editbox/Select the font to use for the edit box"] = "选择输入框的字体",
	["Editbox/Sets the frame's border color to the color of your currently active channel"] = "设置边框颜色到你当前激活的频道颜色",
	["Editbox/Tile Size"] = "平铺尺寸",
	["Editbox/Top"] = "顶部",
	["Editbox/Use Alt key for cursor movement"] = "使用Alt键令光标移动",
	["EventNames/allevents_desc"] = "为所有聊天事件开启Phat处理",
	["EventNames/allevents_name"] = "处理所有事件",
	["EventNames/Chat window event name options."] = "聊天窗口项目名称选项",
	["EventNames/EventNames"] = "事件名称",
	["EventNames/Show"] = "显示",
	["EventNames/Show events on chatframes"] = "在聊天框显示事件",
	["EventNames/show_desc"] = "显示事件名称在每个聊天窗口",
	["EventNames/show_name"] = "显示事件名称",
	["Fading/duration_desc"] = "设置聊天窗口文本消隐前等待秒数",
	["Fading/duration_name"] = "设置消隐延时(秒)",
	["Fading/module_desc"] = "聊天窗口文本消隐选项",
	["Fading/module_name"] = "消隐",
	["Fading/textfade_desc"] = "为每个聊天窗口启用文本消隐",
	["Fading/textfade_name"] = "启用消隐",
	["Filtering/A module to provide basic chat filtering."] = "提供基础的聊天过滤的模块",
	["Filtering/afkdnd_desc"] = "节流AFK和DND消息.",
	["Filtering/afkdnd_name"] = "节流AFK和DND消息.",
	["Filtering/bgjoin_desc"] = "过滤战场频道离开/加入信息",
	["Filtering/bgjoin_name"] = "过滤战场出/入",
	["Filtering/Filtering"] = "过滤",
	["Filtering/leavejoin_desc"] = "滤掉频道离开/加入信息",
	["Filtering/leavejoin_name"] = "过滤频道离开/加入",
	["Filtering/notices_desc"] = "滤掉其他自定义频道通知信息,例如改变频道所有者",
	["Filtering/notices_name"] = "频道通知过滤",
	["Filtering/tradespam_desc"] = "节流消息以防止连续多次收到同样的消息",
	["Filtering/tradespam_name"] = "屏蔽垃圾",
	["Font/Auto Restore Font Size"] = "自动还原字体尺寸",
	["Font/Chat window font options."] = "聊天窗口字体选项",
	["Font/Font"] = "字体",
	["Font/monochrome_desc"] = "单色字体",
	["Font/monochrome_name"] = "单色",
	["Font/None"] = "无",
	["Font/Outline"] = "轮廓",
	["Font/outlinemode_desc"] = "字体轮廓样式设置",
	["Font/outlinemode_name"] = "轮廓样式",
	["Font/rememberfont_desc"] = "记住您的字体选择并在启动时恢复",
	["Font/rememberfont_name"] = "记住字体",
	["Font/Set ChatFrame%d Font Size"] = "聊天框%d字体尺寸",
	["Font/Set Font Face"] = "字体设置",
	["Font/Set Font Size"] = "设置字体大小",
	["Font/Set Separately"] = "个别设置",
	["Font/Set text font size for each chat window."] = "每个聊天窗口的文本字体尺寸",
	["Font/Set text font size."] = "文本字体尺寸",
	["Font/Set the text font face for all chat windows."] = "所有聊天窗口的文本字体",
	["Font/shadowcolor_desc"] = "阴影效果的颜色",
	["Font/shadowcolor_name"] = "阴影色彩",
	["Font/Thick Outline"] = "厚轮廓",
	["Font/Toggle setting options separately for each chat window."] = "每个聊天窗口的个别选项设置",
	["Font/Workaround a Blizzard bug which changes the font size when you open a system menu."] = "当你打开系统菜单时改变暴雪错误提示字体尺寸",
	["Frames/Chat window frame parameter options"] = "聊天窗口参数选项",
	["Frames/framealpha_desc"] = "控制鼠标移过时聊天框架的透明度.",
	["Frames/framealpha_name"] = "设定聊天框架透明度",
	["Frames/Frames"] = "框架",
	["Frames/mainchatonload_desc"] = "加载时自动选择并激活第1个聊天框架.",
	["Frames/mainchatonload_name"] = "加载时焦点于主聊天框架.",
	["Frames/maxchatheight_desc"] = "设定所有聊天窗口的最大高度.",
	["Frames/maxchatheight_name"] = "设定最大高度",
	["Frames/maxchatwidth_desc"] = "设定所有聊天窗口的最大宽度.",
	["Frames/maxchatwidth_name"] = "设定最大宽度",
	["Frames/minchatheight_desc"] = "设定所有聊天窗口的最小高度.",
	["Frames/minchatheight_name"] = "设定最小高度.",
	["Frames/minchatwidth_desc"] = "设定所有聊天窗口的最小宽度.",
	["Frames/minchatwidth_name"] = "设定最小宽度.",
	["Frames/rememberframepositions_desc"] = "记住聊天框的位置,在加载时恢复.",
	["Frames/rememberframepositions_name"] = "记住位置",
	["Frames/removeclamp_desc"] = "允许聊天框架移动至屏幕边缘齐平",
	--Translation missing 
	-- ["Frames/removeclamp_name"] = "",
	["History/Chat history options."] = "历史聊天记录选项",
	["History/Color GMOTD"] = "每日公会信息颜色",
	["History/Colors the GMOTD label"] = "为每日公会信息标签着色",
	["History/delaygmotd_desc"] = "延迟每日公会信息直到起始垃圾信息显示完毕为止",
	["History/delaygmotd_name"] = "延迟 GMOTD",
	["History/divider"] = "========== 回卷结束 ==========",
	["History/History"] = "历史记录",
	["History/Maximum number of lines of command history to save."] = "存储命令记录最大行数",
	["History/Save Command History"] = "命令记录存储",
	["History/Saves command history between sessions (for use with alt+up arrow or just the up arrow)"] = "存储会话之间命令的历史记录(使用alt+上箭头键或仅上箭头键)",
	["History/Scrollback"] = "回卷",
	["History/Scrollback Options"] = "回滚选项",
	["History/scrollbacklen_desc"] = "聊天内容回滚缓冲数量",
	["History/scrollbacklen_name"] = "回卷长度",
	["History/Set Chat Lines"] = "聊天行设置",
	["History/Set Command History"] = "命令历史记录",
	["History/Set the number of lines of chat history for each window."] = "为每个聊天窗口设置聊天历史记录行数",
	["History/Store the chat lines between sessions"] = "在会话之间存储聊天内容",
	["KeyBindings/Channel %d"] = "频道 %d",
	["KeyBindings/Copy Selected Chat Frame"] = "复制选定的聊天框体",
	["KeyBindings/Guild Channel"] = "公会频道",
	["KeyBindings/Instance Channel"] = "战场频道",
	["KeyBindings/Next Chat Tab"] = "下一个聊天标签",
	["KeyBindings/Officer Channel"] = "官员频道",
	["KeyBindings/Party Channel"] = "小队频道",
	["KeyBindings/Prat CopyChat"] = "Prat聊天复制",
	["KeyBindings/Prat Keybindings"] = "Prat键位绑定",
	["KeyBindings/Prat TellTarget"] = "Prat目标告知",
	["KeyBindings/Raid Channel"] = "团队频道",
	["KeyBindings/Raid Warning Channel"] = "团队警告频道",
	["KeyBindings/Say"] = "说",
	["KeyBindings/Smart Group Channel"] = "频道智能分组",
	["KeyBindings/TellTarget"] = "目标告知",
	["KeyBindings/Whisper"] = "密语",
	["KeyBindings/Yell"] = "喊话",
	["OriginalButtons/alpha_desc"] = "设置所有聊天窗口里聊天菜单和聊天箭头的透明度。",
	["OriginalButtons/alpha_name"] = "设置透明度",
	["OriginalButtons/buttonframe_desc"] = "切换框架菜单按钮开关.",
	["OriginalButtons/buttonframe_name"] = "显示框架按钮",
	["OriginalButtons/ChannelNames"] = "频道名字",
	["OriginalButtons/Chat window button options."] = "聊天窗口按钮选项.",
	["OriginalButtons/chatmenu_desc"] = "开启或关闭聊天菜单。",
	["OriginalButtons/chatmenu_name"] = "显示聊天菜单",
	["OriginalButtons/Default"] = "默认",
	["OriginalButtons/Original Buttons"] = "初始按钮",
	["OriginalButtons/reflow_desc"] = "聊天框文字应该此按钮而非位于其下方",
	["OriginalButtons/reflow_name"] = "文字环绕",
	["OriginalButtons/reminder_desc"] = "当不在聊天窗口底部时显示提醒按钮。",
	["OriginalButtons/reminder_name"] = "显示鼠标滚动提醒器",
	["OriginalButtons/Right, Inside Frame"] = "右边,框体内",
	["OriginalButtons/Right, Outside Frame"] = "右边,框体外",
	["OriginalButtons/Set Position"] = "设置位置",
	["OriginalButtons/Sets position of chat menu and arrows for all chat windows."] = "设置所有聊天窗口的聊天菜单和箭头的位置.",
	["OriginalButtons/Show Arrows"] = "显示箭头",
	["OriginalButtons/Show Chat%d Arrows"] = "显示 聊天框%d 箭头",
	["OriginalButtons/Toggle showing chat arrows for each chat window."] = "在每个聊天窗口显示聊天箭头。",
	["OriginalButtons/Toggles navigation arrows on and off."] = "开启或关闭导航箭头。",
	["OriginalEditbox/Autohide"] = "自动隐藏",
	["OriginalEditbox/BACKGROUND"] = "背景",
	["OriginalEditbox/Bar colour"] = "工具条颜色",
	["OriginalEditbox/Border colour"] = "边框颜色",
	["OriginalEditbox/Border width"] = "边框宽度",
	["OriginalEditbox/Bottom"] = "按钮",
	["OriginalEditbox/Click the edit box to open it up for editing. Only available if Autohide is disabled."] = "点击编辑框以打开进行编辑. 仅自动隐藏关闭时可用.",
	["OriginalEditbox/Clickable"] = "可点击",
	["OriginalEditbox/DIALOG"] = "对话框",
	["OriginalEditbox/Editbox options."] = "输入框选项",
	["OriginalEditbox/Enable Arrowkeys"] = "允许方向键",
	["OriginalEditbox/Enable using arrowkeys in editbox without the alt key."] = "在编辑框中开启不使用alt键的方向键.",
	["OriginalEditbox/Hide Border"] = "隐藏边框",
	["OriginalEditbox/Hide the border around the edit box."] = "隐藏编辑框周围的边框.",
	["OriginalEditbox/Hide the edit box after you have pressed enter."] = "按回车键后隐藏编辑框.",
	["OriginalEditbox/HIGH"] = "高",
	["OriginalEditbox/Lock editbox position if undocked."] = "非停靠时锁定编辑框位置.",
	["OriginalEditbox/Lock Position"] = "锁定位置",
	["OriginalEditbox/LOW"] = "低",
	["OriginalEditbox/MEDIUM"] = "中",
	["OriginalEditbox/OriginalEditbox"] = "原始编辑框",
	["OriginalEditbox/Padding"] = "填白",
	["OriginalEditbox/Set Alpha"] = "设置透明度",
	["OriginalEditbox/Set Position"] = "设置位置",
	["OriginalEditbox/Set Strata"] = "设置阶层",
	["OriginalEditbox/Set the alpha of the editbox."] = "设置编辑框的透明度.",
	["OriginalEditbox/Set the amount of padding inside the edit box"] = "设置编辑框的内填白值.",
	["OriginalEditbox/Set the edit box background colour"] = "设置编辑框的背景颜色.",
	["OriginalEditbox/Set the edit box border colour"] = "设置编辑框边框的颜色.",
	["OriginalEditbox/Set the frame strata of the editbox."] = "设置编辑框的框架阶层.",
	["OriginalEditbox/Set the position of the editbox."] = "设置编辑框的位置.",
	["OriginalEditbox/Set the texture of the chat edit box"] = "设置聊天编辑框的材质.",
	["OriginalEditbox/Set the width of the edit box's border"] = "设置编辑框边框的宽度.",
	["OriginalEditbox/Set the width of the editbox."] = "设置编辑框的宽度.",
	["OriginalEditbox/Set Width (NB: only enabled if the editbox is undocked)"] = "设置宽度 (仅编辑框未停靠时开启)",
	["OriginalEditbox/Texture"] = "材质",
	["OriginalEditbox/Top"] = "顶部",
	["OriginalEditbox/Undocked"] = "非停靠",
	["Paragraph/adjustlinks_desc"] = "调整链接以恢复在中心或右对齐文本上的可点击性",
	["Paragraph/adjustlinks_name"] = "修复玩家/物品位置链接",
	["Paragraph/Center"] = "中心",
	["Paragraph/Chat window paragraph options."] = "聊天窗口段落选项",
	["Paragraph/justification_desc"] = "为每个聊天窗口设置水平对齐",
	["Paragraph/justification_name"] = "设置对齐",
	["Paragraph/Left"] = "左",
	["Paragraph/Line Spacing"] = "行距",
	["Paragraph/Paragraph"] = "段落",
	["Paragraph/Right"] = "右",
	["Paragraph/Set the line spacing for all chat windows."] = "为所有聊天窗口设置行间距",
	["PlayerNames/Actively Query Player Info"] = "活跃的查询玩家信息",
	["PlayerNames/Angled"] = "折角",
	["PlayerNames/Brackets"] = "括号",
	["PlayerNames/Brackets Common Color"] = "同一颜色括号",
	["PlayerNames/Brackets Use Common Color"] = "使用同一颜色括号",
	["PlayerNames/Class"] = "职业",
	["PlayerNames/Color by Level Difference"] = "彩色的等级差别",
	["PlayerNames/coloreverywhere_desc"] = "彩色显示聊天信息中出现的玩家姓名",
	["PlayerNames/coloreverywhere_name"] = "彩色显示姓名在所有地方",
	["PlayerNames/Enable Alt-Invite"] = "启用Alt-邀请",
	["PlayerNames/Enable Invite Links"] = "启用邀请链接",
	["PlayerNames/Enable TabComplete"] = "启用Tab键补全",
	["PlayerNames/hoverhilight_desc"] = "当悬停在玩家链接上时高亮该玩家的聊天语句",
	["PlayerNames/hoverhilight_name"] = "悬停高亮",
	["PlayerNames/How to color other player's level."] = "如何着色其他玩家的等级",
	["PlayerNames/How to color player's name."] = "如何着色玩家的名称",
	["PlayerNames/Keep Info"] = "保持信息",
	["PlayerNames/Keep Lots Of Info"] = "保持大量的信息",
	["PlayerNames/Keep player information between session for all players except cross-server players"] = "为除跨服玩家外的所有玩家在会话间保持玩家信息",
	["PlayerNames/Keep player information between session, but limit it to friends and guild members."] = "在会话间保持玩家信息,但仅限于朋友和公会成员",
	["PlayerNames/Let TasteTheNaimbow set the common color for unknown player names."] = "让TasteTheNaimbow(插件)为未知玩家名称设置公共颜色",
	["PlayerNames/Level Color Mode"] = "等级着色模式",
	["PlayerNames/linkifycommon_desc"] = "自助链接公共信息",
	["PlayerNames/linkifycommon_name"] = "自助链接公共信息",
	["PlayerNames/No additional coloring"] = "无额外着色",
	["PlayerNames/None"] = "无",
	["PlayerNames/Player Color Mode"] = "玩家着色模式",
	["PlayerNames/Player name formating options."] = "玩家名称格式选项",
	["PlayerNames/PlayerNames"] = "玩家名称",
	["PlayerNames/Prat_Playernames: Stored Player Data Cleared"] = "Prat_玩家名称: 玩家数据存储已清除",
	["PlayerNames/Query the server for all player names we do not know. Note: This happpens pretty slowly, and this data is not saved."] = "为所有未知玩家查询服务器,注意:这将非常缓慢,并且数据不会被存储",
	["PlayerNames/Random"] = "随机",
	["PlayerNames/realidcolor_desc"] = "实名名字颜色",
	["PlayerNames/realidcolor_name"] = "实名颜色",
	["PlayerNames/Reset Settings"] = "重置设置",
	["PlayerNames/Restore default settings, and delete stored character data."] = "恢复默认设置并删除已存角色数据",
	["PlayerNames/Set common color of unknown player names."] = "设置未知玩家名称共有颜色",
	["PlayerNames/Sets common color of brackets to use around player names."] = "设置用来围绕玩家名称的括号颜色",
	["PlayerNames/Sets style of brackets to use around player names."] = "设置用来围绕玩家名称的括号类型",
	["PlayerNames/Show Group"] = "显示团队",
	["PlayerNames/Show Level"] = "显示等级",
	["PlayerNames/Show Raid Target Icon"] = "显示团队目标图标",
	["PlayerNames/Square"] = "直角",
	["PlayerNames/Tab completion : "] = "Tab键补全",
	["PlayerNames/tabcomplete_name"] = "可能的名称",
	["PlayerNames/Toggle group invites by alt-clicking hyperlinked keywords like 'invite'."] = "组队邀请用alt-点击超链接的关键词如'邀请'",
	["PlayerNames/Toggle group invites by alt-clicking on player name."] = "组队邀请用alt-点击玩家名称",
	["PlayerNames/Toggle level showing."] = "等级显示",
	["PlayerNames/Toggle raid group showing."] = "团队分组显示",
	["PlayerNames/Toggle showing the raid target icon which is currently on the player."] = "显示当前玩家的团队目标图标",
	["PlayerNames/Toggle tab completion of player names."] = "Tab键补全玩家姓名",
	["PlayerNames/Toggle using a common color for brackets around player names."] = "为括号内玩家姓名使用公共颜色",
	["PlayerNames/Toggle using a common color for unknown player names."] = "为位置未知玩家名称使用公共颜色",
	["PlayerNames/Too many matches (%d possible)"] = "太多的匹配 (%d可能的)",
	["PlayerNames/Unknown Common Color"] = "未知公共颜色",
	["PlayerNames/Unknown Common Color From TasteTheNaimbow"] = "未知公共颜色自TasteTheNaimbow",
	["PlayerNames/Unknown Use Common Color"] = "未知使用公共颜色",
	["PlayerNames/Use Channel Color"] = "使用频道颜色",
	["PlayerNames/Use Player Color"] = "使用玩家颜色",
	["PlayerNames/Use toon name for RealID"] = "使用角色名代替战网ID",
	["PopupMessage/Add Nickname"] = "添加昵称",
	["PopupMessage/Adds an alternate name to show in popups."] = "添加一个显示在弹出中的替换名",
	["PopupMessage/Clear Nickname"] = "清除昵称",
	["PopupMessage/Clears alternate name to show in popups."] = "弹出显示清除候补名称",
	["PopupMessage/framealpha_desc"] = "设置完全消失时弹出框体透明度值",
	["PopupMessage/framealpha_name"] = "弹出框体透明度",
	["PopupMessage/Popup"] = "弹出",
	["PopupMessage/PopupMessage"] = "弹出信息",
	["PopupMessage/Remove Nickname"] = "移除昵称",
	["PopupMessage/Removes an alternate name to show in popups."] = "移除在弹出里显示的候补名称",
	["PopupMessage/Set Separately"] = "个别设置",
	["PopupMessage/Show All Popups"] = "显示所有弹出",
	["PopupMessage/Show Popups"] = "显示弹出",
	["PopupMessage/Show Popups for all chat windows."] = "为所有聊天窗后显示弹出",
	["PopupMessage/Show Popups for each window."] = "为每个窗口显示弹出",
	["PopupMessage/show_desc"] = "在每个窗口显示弹出",
	["PopupMessage/show_name"] = "显示弹出",
	["PopupMessage/show_perframedesc"] = "弹出开关",
	["PopupMessage/show_perframename"] = "显示聊天框体%d弹出",
	["PopupMessage/showall_desc"] = "在所有聊天窗口显示弹出",
	["PopupMessage/showall_name"] = "显示所有弹出",
	["PopupMessage/Shows messages in a popup window."] = "在弹出窗口显示信息",
	["PopupMessage/Shows messages with your name in a popup."] = "在弹出中显示含有你名字的信息",
	["PopupMessage/Toggle setting options separately for each chat window."] = "分别为每个聊天窗口设置选项",
	["Scroll/Bottom"] = "从下到上",
	["Scroll/Chat window scrolling options."] = "聊天窗口滚动选项",
	["Scroll/Control whether text is added to the frame at the top or the bottom."] = "控制文本被添加到框体顶端还是底端",
	["Scroll/lowdown_desc"] = "为每个聊天窗口自动跳至底端",
	["Scroll/lowdown_name"] = "启用回到底端",
	["Scroll/modified_speed"] = "设置 Shift+鼠标滚轮 速度",
	["Scroll/modified_speed_desc"] = "设定按住Shift键时鼠标滚轮滚动的行数",
	["Scroll/mousewheel_desc"] = "为每个聊天窗口选取鼠标滚轮支持",
	["Scroll/mousewheel_name"] = "启用鼠标滚轮",
	["Scroll/Scroll"] = "滚动",
	["Scroll/Set Ctrl+MouseWheel Speed"] = "设置Ctrl+鼠标滚轮速度",
	["Scroll/Set MouseWheel Speed"] = "设置鼠标滚轮速度",
	["Scroll/Set number of lines mousewheel will scroll when ctrl is pressed."] = "设置按下ctrl时鼠标滚轮滚动行数",
	["Scroll/Set number of lines mousewheel will scroll."] = "设置鼠标滚轮滚动行数",
	["Scroll/Set TheLowDown Delay"] = "设置回到底端延迟",
	["Scroll/Set time to wait before jumping to the bottom of chat windows."] = "设置聊天窗口跳至底部前等待时间",
	["Scroll/Text scroll direction"] = "文本滚动方向",
	["Scroll/Top"] = "从上到下",
	["Scrollback/divider"] = "========== 回卷结束 ==========",
	["Scrollback/Scrollback"] = "回卷",
	["Scrollback/Store the chat lines between sessions"] = "在会话之间存储聊天内容",
	["Search/err_notfound"] = "没找到",
	["Search/err_tooshort"] = "搜索文字太短",
	["Search/find_results"] = "查找结果：",
	["Search/module_desc"] = "增加搜索聊天框的能力",
	["Search/module_info"] = [=[此模块增加 /find 和 /findall 命令搜索聊天历史

用法:

 /find <文字>

 /findall <文字>]=],
	["Search/module_name"] = "搜索",
	["ServerNames/autoabbreviate_desc"] = "把服务器名缩到3个字符",
	["ServerNames/autoabbreviate_name"] = "自动缩写",
	["ServerNames/colon_desc"] = "在服务器后添加冒号",
	["ServerNames/colon_name"] = "显示冒号",
	["ServerNames/randomclr_desc"] = "为每个服务器使用随机颜色",
	["ServerNames/randomclr_name"] = "随机颜色",
	["ServerNames/Server name abbreviation options."] = "服务器名称缩写选项",
	["ServerNames/ServerNames"] = "服务器名称",
	["Sounds/A module to play sounds on certain chat messages."] = "在某些聊天信息播放声音的模块",
	["Sounds/Add a custom channel"] = "添加自定义频道",
	["Sounds/bn_whisper_desc"] = "为 %s 战网密语提示音乐",
	["Sounds/bn_whisper_name"] = "战网密语",
	["Sounds/Custom Channels"] = "自定义频道",
	["Sounds/group_lead_desc"] = "为团队领袖, 队伍领袖或地下城领袖 %s 发出声音提示",
	["Sounds/group_lead_name"] = "队伍领袖",
	["Sounds/guild_desc"] = "公会信息声音",
	["Sounds/guild_name"] = "公会",
	["Sounds/incoming"] = "收到",
	["Sounds/Incoming Sounds"] = "收入声音",
	["Sounds/officer_desc"] = "官员或自定义频道信息声音",
	["Sounds/officer_name"] = "官员",
	["Sounds/outgoing"] = "送出",
	["Sounds/Outgoing Sounds"] = "送出声音",
	["Sounds/party_desc"] = " %s 小队信息声音",
	["Sounds/party_name"] = "小队",
	["Sounds/Play a sound for a certain channel name (can be a substring)"] = "为特定频道名(可以是子字符串)播放声音",
	["Sounds/raid_desc"] = " %s 团队或战场分组/领袖信息声音",
	["Sounds/raid_name"] = "团队",
	["Sounds/Remove a custom channel"] = "移除自定义频道",
	["Sounds/Reset settings"] = "重制设置",
	["Sounds/Restore default settings and resets custom channel list"] = "恢复默认设置并且重制自定义频道列表",
	["Sounds/Sound selection for incoming chat messages"] = "收到聊天信息声音设置",
	["Sounds/Sound selection for outgoing (from you) chat messages"] = "送出(由你)聊天信息音乐设置",
	["Sounds/Sounds"] = "声音",
	["Sounds/whisper_desc"] = "密语信息 %s 声音",
	["Sounds/whisper_name"] = "密语",
	["Substitutions/%d total user defined substitutions"] = "%d 全部用户定义的置换",
	["Substitutions/|cffff0000warning:|r subtitution \"%s\" already defined as \"%s\", overwriting"] = "|cffff0000注意:|r 置换\"%s\"已定义为\"%s\",覆盖",
	["Substitutions/<noguild>"] = "<无公会>",
	["Substitutions/<notarget>"] = "<无目标>",
	["Substitutions/A module to provide basic chat substitutions."] = "提供基础聊天替换的模块",
	["Substitutions/Are you sure - this will delete all user defined substitutions and reset defaults?"] = "您确定? - 这样将删除全部用户定义的替换并恢复默认",
	["Substitutions/Are you sure?"] = "您确定？",
	["Substitutions/can't find substitution index for a substitution named '%s'"] = "无法为置换名称 '%s' 找到置换索引",
	["Substitutions/current-prompt"] = "当前值: '%s'Click to paste into the chat.",
	["Substitutions/defined %s: expands to => %s"] = "定义 %s: 扩展到 => %s",
	["Substitutions/Delete all"] = "删除全部",
	["Substitutions/Delete substitution"] = "删除置换",
	["Substitutions/Deletes a user defined substitution"] = "删除用户定义的置换",
	["Substitutions/Deletes all user defined substitutions"] = "删除所有用户定义的置换",
	["Substitutions/female"] = "女",
	["Substitutions/her"] = "她",
	["Substitutions/hers"] = "她的",
	["Substitutions/him"] = "他",
	["Substitutions/his"] = "他的",
	["Substitutions/it"] = "它",
	["Substitutions/its"] = "它的",
	["Substitutions/List of available substitutions"] = "列出有效替换",
	["Substitutions/List of available substitutions defined by this module. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "在此模块列出有效替换定义..(注:用户可以为已存在的置换定义自定义值,如果用户定义被删除将恢复默认值)",
	["Substitutions/List substitutions"] = "替换列表",
	["Substitutions/Lists all current subtitutions in the default chat frame"] = "在默认聊天框体列出所有当前替换",
	["Substitutions/male"] = "男",
	["Substitutions/MapLoc"] = "地图地点",
	["Substitutions/MapPos"] = "地图坐标",
	["Substitutions/MapXPos"] = "地图X坐标",
	["Substitutions/MapYPos"] = "地图Y坐标",
	["Substitutions/MapZone"] = "地图区域",
	["Substitutions/module:buildUserSubsIndex(): warning: module patterns not defined!"] = "模块:buildUserSubsIndex(): 警告: 模块模板未定义!",
	["Substitutions/MouseoverTargetName"] = "鼠标滑过目标名",
	["Substitutions/NO MATCHFUNC FOUND"] = "未发现匹配函数",
	["Substitutions/no substitution name given"] = "无特定置换名称",
	["Substitutions/no substitution name supplied for deletion"] = "没有删除部分的替换名称支持",
	["Substitutions/no user defined subs found"] = "未发现用户定义置换",
	["Substitutions/no value given for subtitution \"%s\""] = "置换 \"%s\"没有赋值",
	["Substitutions/Options for setting and removing user defined substitutions. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "设置和移除用户定义置换的选项.(注:用户可以为已存在的置换定义自定义值,如果用户定义被删除将恢复默认值)",
	["Substitutions/PlayerAverageItemLevel"] = "替换",
	["Substitutions/PlayerCurrentMana"] = "玩家当前法力",
	["Substitutions/PlayerHealthDeficit"] = "玩家生命不足",
	["Substitutions/PlayerHP"] = "玩家血量",
	["Substitutions/PlayerManaDeficit"] = "玩家法力不足",
	["Substitutions/PlayerMaxHP"] = "玩家血量上限",
	["Substitutions/PlayerMaxMana"] = "玩家法力上限",
	["Substitutions/PlayerName"] = "玩家名称",
	["Substitutions/PlayerPercentHP"] = "玩家血量百分比",
	["Substitutions/PlayerPercentMana"] = "玩家法力百分比",
	["Substitutions/RandNum"] = "随机数字",
	["Substitutions/removing user defined substitution \"%s\"; previously expanded to => \"%s\""] = "移除用户定义的置换 \"%s\"; 以前扩展到=> \"%s\"",
	["Substitutions/Set substitution"] = "设置置换",
	["Substitutions/Set the value of a user defined substitution (NB: this may be the same as an existing default substitution; to reset it to the default, just remove the user created definition)."] = "设置用户定义替换的值(注:这可能与现有的默认替换相同;若重置为默认,仅移除用户创建的定义)",
	["Substitutions/subname -- NOTE: sub name without the prefix '%'"] = "置换名称 -- 注意: 置换名称无前缀 '%'",
	["Substitutions/subname = text after expansion -- NOTE: sub name without the prefix \"%\""] = "置换名称 = 扩展后文本-- 注意: 置换名称无前缀 \"%\"",
	["Substitutions/substitution: %s defined as => %s"] = "替换: %s 定义为 => %s",
	["Substitutions/Substitutions"] = "置换",
	["Substitutions/TargetClass"] = "目标等级",
	["Substitutions/TargetGender"] = "目标性别",
	["Substitutions/TargetGuild"] = "目标公会",
	["Substitutions/TargetHealth"] = "目标生命",
	["Substitutions/TargetHealthDeficit"] = "目标生命不足",
	["Substitutions/TargetIcon"] = "目标图标",
	["Substitutions/TargetLevel"] = "目标等级",
	["Substitutions/TargetManaDeficit"] = "目标法力不足",
	["Substitutions/TargetName"] = "目标名称",
	["Substitutions/TargetPercentHP"] = "目标血量百分比",
	["Substitutions/TargetPossesive"] = "目标阵营",
	["Substitutions/TargetPronoun"] = "目标代词",
	["Substitutions/TargetRace"] = "目标种族",
	["Substitutions/TargetTargetName"] = "目标的目标名称",
	["Substitutions/unknown sex"] = "未知性别",
	["Substitutions/user defined substition \"%s\" not found"] = "未发现用户定义替换\"%s\" ",
	["Substitutions/User defined substitutions"] = "用户自定义置换",
	["Substitutions/user substitutions index (usersubs_idx) doesn't exist! oh dear."] = "用户替换指数(子用户_索引) 不存在!哦,亲爱的.",
	["Substitutions/usersub_"] = "子用户_",
	["TellTarget//tt"] = "/tt",
	["TellTarget/Adds telltarget slash command (/tt)."] = "添加目标告知斜杠命令(/tt).",
	["TellTarget/No target selected."] = "无目标被选取",
	["TellTarget/NoTarget"] = "无目标",
	["TellTarget/Target does not exist."] = "目标不存在",
	["TellTarget/Target is not a player."] = "目标不是一个玩家",
	["TellTarget/TellTarget"] = "告知目标",
	["Timestamps/Chat window timestamp options."] = "聊天窗口时间戳选项",
	["Timestamps/colortimestamp_desc"] = "时间戳着色开关",
	["Timestamps/colortimestamp_name"] = "彩色时间戳",
	["Timestamps/Format All Timestamps"] = "所有时间戳格式",
	["Timestamps/HH:MM (12-hour)"] = "时:分 (12-小时)",
	["Timestamps/HH:MM (24-hour)"] = "时:分 (24-小时)",
	["Timestamps/HH:MM:SS (12-hour)"] = "时:分:秒 (12-小时)",
	["Timestamps/HH:MM:SS (24-hour)"] = "时:分:秒 (24-小时)",
	["Timestamps/HH:MM:SS AM (12-hour)"] = "时:分:秒 上午(12-小时)",
	["Timestamps/localtime_desc"] = "本地时间使用开关",
	["Timestamps/localtime_name"] = "使用本地时间",
	["Timestamps/MM:SS"] = "分:秒",
	["Timestamps/Post-Timestamp"] = "后缀-时间戳",
	["Timestamps/Pre-Timestamp"] = "前缀-时间戳",
	["Timestamps/Set the timestamp format"] = "设置时间戳格式",
	["Timestamps/Set Timestamp Color"] = "设置时间戳颜色",
	["Timestamps/Sets the color of the timestamp."] = "设置时间戳颜色",
	["Timestamps/Show Timestamp"] = "显示时间戳",
	["Timestamps/show_desc"] = "为各个窗口选取显示时间戳开关",
	["Timestamps/show_name"] = "显示时间戳",
	["Timestamps/space_desc"] = "在时间戳后添加空格",
	["Timestamps/space_name"] = "显示空格",
	["Timestamps/Timestamps"] = "时间戳",
	["Timestamps/Toggle showing timestamp for each window."] = "为各个窗口切换显示时间戳",
	["Timestamps/twocolumn_desc"] = "放置时间戳在一个单独的栏，文本不包括其中",
	["Timestamps/twocolumn_name"] = "2栏聊天",
	["UrlCopy/Change the color of the URL."] = "更改链接颜色",
	["UrlCopy/Color URL"] = "彩色链接",
	["UrlCopy/Set Color"] = "设置颜色",
	["UrlCopy/Show Brackets"] = "显示括号",
	["UrlCopy/Toggle"] = "切换",
	["UrlCopy/Toggle showing brackets on and off."] = "开关显示括号",
	["UrlCopy/Toggle the module on and off."] = "模块开关",
	["UrlCopy/Toggle the URL color on and off."] = "网址颜色开关",
	["UrlCopy/URL formating options."] = "网址格式选项",
	["UrlCopy/UrlCopy"] = "网址复制",
	["UrlCopy/Use Popup"] = "使用弹出",
	["UrlCopy/Use popup window to show URL."] = "用弹出窗口显示网址"
}

PL:AddLocale(nil, "zhCN",L)


L=
{
	["display_desc"] = "Control y Aspecto del Marco del Chat",
	["display_name"] = "Mostrar Ajustes",
	["extras_desc"] = "Módulos Extra",
	["extras_name"] = "Material adicional",
	["formatting_desc"] = "Cambiar la forma del aspecto de las líneas",
	["formatting_name"] = "Formato del Chat",
	["load_desc"] = "Controla el comportamiento de carga de este módulo.",
	["load_disabled"] = "Desactivado",
	--Translation missing 
	-- ["load_disabledonrestart"] = "",
	["load_enabled"] = "Activado",
	--Translation missing 
	-- ["load_enabledonrestart"] = "",
	["load_no"] = "No cargar",
	["modulecontrol_desc"] = "Control de las cargas y activaciones de los módulos de Prat",
	["modulecontrol_name"] = "Control de módulos",
	["prat"] = "Prat",
	["reload_required"] = "Esta opción requiere que reinicies la IU para que entre en funcionamiento",
	["AddonMsgs/Addon message options."] = "Opciones de mensaje del Addon.",
	["AddonMsgs/AddonMsgs"] = "MensajesAddon",
	["AddonMsgs/show_desc"] = "Alterna el mostrar mensajes ocultos del addon en cada ventana de chat.",
	["AddonMsgs/show_name"] = "Mostrar Mensajes de Addons",
	["AddonMsgs/show_perframedesc"] = "Alterna la activación de mostrar mensajes ocultos del addon.",
	["AddonMsgs/show_perframename"] = "MarchoChat %d AddonMsgsShow",
	["Alias/ - list all aliases; supply <keyword> to search for matching aliases (cmd aliases: /listallaliases)"] = " - lista todos los alias; proporciona una <palabra clave> para buscar alias coincidentes (cmd alias: /listallaliases)",
	["Alias/%s() called with blank string!"] = "%s() llamado con cadena vacía! ",
	["Alias/%s() called with nil argument!"] = "%s() llamado con argumento nulo! ",
	["Alias//%s aliased to \"/%s\""] = "/%s alias de \"/%s\"",
	["Alias//%s aliased to: /%s"] = "/%s alias de: /%s",
	["Alias/<alias> - remove the alias <alias> (cmd aliases: /delalias, /remalias)"] = "<alias> - eliminar el <alias> (cmd alias: /delalias, /remalias",
	["Alias/<command>[ <value>] - alias <command> to be executed as <value>, or return the value of the currently defined alias for <command> if <command> has not been assigned a value. eg: \"/alias /examplehello /say hello there\" - typing \"/examplehello\" will now cause your character to say \"hello there\"; \"/alias examplehello\" - s \"/examplehello is aliased to /say hello there\" (cmd aliases: /addalias)"] = "<comando> [<valor>] - alias <comando> a ejecutarse como <valor> o devolver el valor del alias definido actualmente para <comando> si <comando> no se ha asignado un valor. p.ej.: \"/alias /ejemplohola /decir hola allí\" - tecleando \"/ejemplohola\" hará que su carácter diga \"hola allí\"; \"/alias ejemplohola\" -s \"/ejemplohola es alias de /decir hola allí\" (cmd alias: /addalias)",
	["Alias/<keyword> - finds all aliases matching <keyword> (cmd aliases: /findalias)"] = "<palabra clave> - encontrar todos los alias coincidentes con <palabra clave> (cmd alias: /findalias",
	["Alias/add"] = "Añadir",
	["Alias/add an alias"] = "Añadir un alias",
	["Alias/alias \"/%s\" does not exist"] = "El alias \"/%s\" no existe",
	--Translation missing 
	-- ["Alias/dealiasing command /%s to /%s"] = "",
	--Translation missing 
	-- ["Alias/deleting alias \"/%s\" (previously aliased as \"/%s\")"] = "",
	["Alias/Display extra information in the chat frame when commands are dealiased"] = "Muestra información extra en el marco de chat cuando los comandos no tienen alias",
	["Alias/Don't overwrite existing aliases when using /addalias"] = "No sobreescribir alias existentes usando /addalias",
	["Alias/Expand aliases as you are typing"] = "Expandir alias mientras tecleas",
	["Alias/find aliases matching a given search term"] = "encontrar alias que coinciden con un término de búsqueda dado",
	["Alias/findaliases"] = "encontraralias",
	["Alias/infinite loop detected for alias /%s - ignoring"] = "bucle infinito detectado por el alias /%s - ignorando",
	["Alias/inline"] = "en línea",
	["Alias/list all aliases"] = "Lista de todos los alias",
	["Alias/listaliases"] = "listaralias",
	["Alias/matching aliases found: %d"] = "alias coincidentes encontrados: %d",
	["Alias/module_desc"] = "Agrega el comando /alias, que puede utilizarse para comandos de la barra de alias de una manera similar a la orden de alias de UNIX.",
	["Alias/module_name"] = "Alias",
	["Alias/No aliases have been defined"] = "Ningún alias ha sido definido",
	--Translation missing 
	-- ["Alias/noclobber"] = "",
	--Translation missing 
	-- ["Alias/noclobber set - skipping new alias: /%s already expands to /%s"] = "",
	["Alias/Options"] = "Opciones",
	["Alias/Options for altering the behaviour of Alias"] = "Opciones para alterar el comportamiento de Alias",
	["Alias/overwriting existing alias \"/%s\" (was aliased to \"/%s\")"] = "sobrescribiendo alias existente \"/%s\" (era alias de \"/%s\")",
	--Translation missing 
	-- ["Alias/refusing to alias \"/%s\" to anything in the interests of Not Buggering Everything Up"] = "",
	["Alias/remove an alias"] = "Eliminar un alias",
	["Alias/There is no alias current defined for \"%s\""] = "No hay ningún alias definido para \"%s\"",
	["Alias/total aliases: %d"] = "total alias: %d",
	["Alias/tried to show value for alias \"%s\" but undefined in module.Aliases!"] = "se ha intentado mostrar un valor para el alias \"%s\" pero no está definido en el módulo. ¡Crea un Alias!",
	["Alias/unalias"] = "sin alias",
	["Alias/verbose"] = "detallado",
	["Alias/warnUser() called with nil argument!"] = "warnUser() llamado con argumento nulo!",
	["Alias/warnUser() called with zero length string!"] = "warnUser() llamado con cadena de longitud cero!",
	["AltNames/%d alts found for %s: %s"] = "%d alternativos encontrados para %s: %s",
	["AltNames/%s alts imported from LOKWhoIsWho"] = "%s alternativos importados desde LOKWhoIsWho",
	["AltNames/%s total alts linked to mains"] = "alternativos total %s vinculados a principales",
	["AltNames/(.-)'s? [Aa]lt"] = "%f[%a\\192-\\255]([%a\\192-\\255]+)%f[^%a\\128-\\255]'s [Aa]lt",
	["AltNames/([^%s%p%d%c%z]+)'s alt"] = "%f[%a\\192-\\255]([%a\\192-\\255]+)%f[^%a\\128-\\255]'s [Aa]lt",
	["AltNames/.*[Aa]lts?$"] = ".*[Aa]lts?$",
	["AltNames/<alt name> (eg, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)"] = "<nombre alt> (ej, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)",
	["AltNames/<main> (eg /altnames listalts Fin)"] = "<principal> (ej /altnames listalts Fin)",
	["AltNames/<search term> (eg, /altnames find fin)"] = "<término búsqueda> (ej, /altnames find fin)",
	["AltNames/Alt"] = "Alt",
	["AltNames/alt"] = "alt",
	["AltNames/alt name exists: %s -> %s; not overwriting as set in preferences"] = "existe el nombre alternativo: %s -> %s; sin sobrescribir como está establecido en las preferencias",
	["AltNames/AltNames"] = "AltNombres",
	["AltNames/Alts:"] = "Alts:",
	--Translation missing 
	-- ["AltNames/autoguildalts_desc"] = "",
	--Translation missing 
	-- ["AltNames/autoguildalts_name"] = "",
	["AltNames/Be quiet"] = "Silencio",
	["AltNames/character removed: %s"] = "Personaje eliminado: %s",
	["AltNames/Class colour"] = "Color Clase",
	["AltNames/Clear all"] = "Limpiar todo",
	["AltNames/Clear all links between alts and main names."] = "Borrar todos los enlaces entre nombres alternativos y principales.",
	["AltNames/Colour"] = "Color",
	--Translation missing 
	-- ["AltNames/Delete a character's link to another character as their main."] = "",
	["AltNames/Delete alt"] = "Eliminar alternativo",
	["AltNames/Disabled"] = "Desactivado",
	["AltNames/Display a player's alts in the tooltip"] = "Mostrar los alters de los jugadores en el tooltip",
	["AltNames/Display a player's main name in the tooltip"] = "Mostrar el nombre del main del jugador en el tooltip",
	["AltNames/Display main names in the same colour as that of the alt's class (taking the data from the PlayerNames module if it is enabled)"] = "Mostrar nombres de personajes principales (mains) en el mismo color que la clase del alter (obteniendo los datos del módulo PlayerNames si está habilitado)",
	["AltNames/Display main names in the same colour as that of the main's class (taking the data from the PlayerNames module if it is enabled)"] = "Mostrar nombres principales en el mismo color que el de su clase principal (tomando los datos del módulo PlayerNames si está habilitado)",
	["AltNames/Don't overwrite existing alt <-> main links when importing or adding new alts."] = "No sobreescribir enlaces alternativo <-> principal existentes al importar o añadir nuevos alternativos.",
	["AltNames/Don't overwrite existing links"] = "No sobreescribir enlaces existentes",
	["AltNames/don't use"] = "No utilizar",
	["AltNames/Don't use data from the PlayerNames module at all"] = "No utilizar datos del módulo PlayerNames en absoluto",
	["AltNames/ERROR: some function sent a blank message!"] = "ERROR: alguna función envió un mensaje en blanco!",
	["AltNames/Find characters"] = "Encontrar caracteres",
	["AltNames/Fix alts"] = "Arreglar alternativos",
	["AltNames/Fix corrupted entries in your list of alt names."] = "Arreglar entradas corruptas en su lista de nombres alternativos.",
	["AltNames/Found alt: %s => main: %s"] = "Alternativo encontrado: %s => principal: %s",
	["AltNames/guild member alts found and imported: %s"] = "Miembros de hermandad alternativos encontrados e importados: %s",
	--Translation missing 
	-- ["AltNames/Import from Guild Greet database"] = "",
	["AltNames/Import from guild roster"] = "Importar desde la lista de la hermandad",
	["AltNames/Import options"] = "Opciones de Importación",
	--Translation missing 
	-- ["AltNames/Imports alt names from a Guild Greet database, if present"] = "",
	--Translation missing 
	-- ["AltNames/Imports alt names from the guild roster by checking for members with the rank \"alt\" or \"alts\", or guild / officer notes like \"<name>'s alt\""] = "",
	["AltNames/Imports data from LOKWhoIsWho, if present (drop your SavedVariablesLOKWhoIsWho.lua in the Prat directory to be able to use this)."] = "Importa datos de LOKWhoIsWho, si está presente (colocar su SavedVariablesLOKWhoIsWho.lua en el directorio Prat para poder usar este).",
	["AltNames/Left"] = "Izquierda",
	["AltNames/link <alt name> <main name> (eg, /altnames link Fin Finjathealtoffin)"] = "enlace <nombre alt> <nombre principal> (ej, /nombrealt enlace Fin Finjathealtoffin)",
	--Translation missing 
	-- ["AltNames/Link alt"] = "",
	--Translation missing 
	-- ["AltNames/Link someone's alt character with the name of their main."] = "",
	["AltNames/linked alt %s => %s"] = "alternativo enlazado %s => %s",
	["AltNames/List all"] = "Listar todo",
	["AltNames/List all links between alts and their main names."] = "Lista todos los enlaces entre alternativos y sus nombres principales.",
	["AltNames/List alts"] = "Lista alternativos",
	["AltNames/List alts for a given character"] = "Lista alternativos para un personaje dado",
	["AltNames/LOKWhoIsWho data not found"] = "LOKWhoIsWho datos no encontrados",
	["AltNames/LOKWhoIsWho import"] = "importar LOKWhoIsWho",
	["AltNames/LOKWhoIsWho lua file not found, sorry."] = "LOKWhoIsWho archivo lua no encontrado, lo siento.",
	["AltNames/Main"] = "Principal",
	["AltNames/main"] = "principal",
	["AltNames/Main name position"] = "Posición del nombre principal",
	["AltNames/Main:"] = "Principal:",
	["AltNames/mainpos_desc"] = "Donde mostrar nombre principal de un personaje cuando es su alternativa.",
	["AltNames/mainpos_name"] = "Posición del nombre principal",
	--Translation missing 
	-- ["AltNames/module_desc"] = "",
	["AltNames/no alts found for character "] = "sin alternativos encontrados para el personaje",
	["AltNames/no alts or mains found matching \"%s\""] = "sin alternativos o principales coincidentes con \"%s\" encontrados",
	["AltNames/No arg string given to :addAlt()"] = "Sin cadena de argumento dado a: addAlt()",
	["AltNames/no characters called \"%s\" found; nothing deleted"] = "no se han encontrado personajes llamados \"%s\"; nada eliminado",
	--Translation missing 
	-- ["AltNames/No Guild Greet database found"] = "",
	["AltNames/No main name supplied to link %s to"] = "Sin nombre principal proporcionado para el enlace %s",
	["AltNames/no matches found"] = "Ninguna coincidencia encontrada",
	["AltNames/quiet"] = "Silencioso",
	["AltNames/quiet_desc"] = "Si desea informar al marco de chat o no.",
	--Translation missing 
	-- ["AltNames/quiet_name"] = "",
	["AltNames/Right"] = "Derecha",
	--Translation missing 
	-- ["AltNames/Search the list of linked characters for matching main or alt names."] = "",
	["AltNames/searched for: %s - total matches: %s"] = "buscado: %s - total de coincidencias: %s",
	["AltNames/Show alts in tooltip"] = "Muestra alternativos en ayuda contextual",
	["AltNames/Show main in tooltip"] = "Mostrar principal en ayuda contextual",
	["AltNames/Start"] = "Inicio",
	--Translation missing 
	-- ["AltNames/The colour of an alt's main name that will be displayed"] = "",
	["AltNames/Use class colour (from the PlayerNames module)"] = "Utilizar el color de clase (desde el módulo de NombresJugador)",
	["AltNames/use class colour of alt"] = "utilizar color de clase de alt",
	["AltNames/use class colour of main"] = "utilizar el color de la clase principal",
	["AltNames/Use LibAlts Data"] = "Utiilizar Datos de LibAlts",
	["AltNames/Use the data available via the shared alt information library."] = "Utilice los datos disponibles a través de la biblioteca compartida de información alternativa.",
	--Translation missing 
	-- ["AltNames/Various ways to import a main's alts from other addons"] = "",
	["AltNames/warning: alt %s already linked to %s"] = "advertencia: alt %s ya vinculado a %s",
	--Translation missing 
	-- ["AltNames/Where to display a character's main name when on their alt."] = "",
	["AltNames/Whether to report to the chat frame or not."] = "Si se debe reportar al marco de chat o no.",
	["AltNames/You are not in a guild"] = "No está en una hermandad",
	["AltNames/You have not yet linked any alts with their mains."] = "Aún no ha vinculado algún alternativo con su principal.",
	--Translation missing 
	-- ["Bubbles/color_desc"] = "",
	--Translation missing 
	-- ["Bubbles/color_name"] = "",
	--Translation missing 
	-- ["Bubbles/font_desc"] = "",
	--Translation missing 
	-- ["Bubbles/font_name"] = "",
	--Translation missing 
	-- ["Bubbles/fontsize_desc"] = "",
	--Translation missing 
	-- ["Bubbles/fontsize_name"] = "",
	--Translation missing 
	-- ["Bubbles/format_desc"] = "",
	--Translation missing 
	-- ["Bubbles/format_name"] = "",
	--Translation missing 
	-- ["Bubbles/icons_desc"] = "",
	--Translation missing 
	-- ["Bubbles/icons_name"] = "",
	--Translation missing 
	-- ["Bubbles/module_desc"] = "",
	--Translation missing 
	-- ["Bubbles/module_name"] = "",
	--Translation missing 
	-- ["Bubbles/shorten_desc"] = "",
	--Translation missing 
	-- ["Bubbles/shorten_name"] = "",
	--Translation missing 
	-- ["Bubbles/transparent_desc"] = "",
	--Translation missing 
	-- ["Bubbles/transparent_name"] = "",
	["Buttons/alpha_desc"] = "Establece la transparencia del menu del chat y de las flechas para todas las ventanas.",
	["Buttons/alpha_name"] = "Establecer Transparencia",
	["Buttons/Buttons"] = "Botones",
	["Buttons/Chat window button options."] = "Opciones de los botones de la ventana del chat",
	["Buttons/chatmenu_desc"] = "Alterna la activación del menú del chat.",
	["Buttons/chatmenu_name"] = "Mostrar Menú del Chat",
	["Buttons/Default"] = "Predeterminado",
	["Buttons/Right, Inside Frame"] = "Derecha, Dentro del Marco",
	["Buttons/Right, Outside Frame"] = "Derecha, Fuera del Marco",
	["Buttons/scrollReminder_desc"] = "Muestra el botón recordatorio cuando no se está en la parte inferior de la ventana de chat.",
	["Buttons/scrollReminder_name"] = "Mostrar Recordatorio de Desplazamiento Abajo",
	["Buttons/Set Position"] = "Establecer Posición",
	["Buttons/Sets position of chat menu and arrows for all chat windows."] = "Establece la posición del menú y de las flechas de todas las ventanas de chat.",
	["Buttons/Show Arrows"] = "Mostar Flechas",
	["Buttons/Show Chat%d Arrows"] = "Mostar Flechas del Chat %d",
	--Translation missing 
	-- ["Buttons/showbnet_desc"] = "",
	--Translation missing 
	-- ["Buttons/showbnet_name"] = "",
	--Translation missing 
	-- ["Buttons/showmenu_desc"] = "",
	--Translation missing 
	-- ["Buttons/showmenu_name"] = "",
	--Translation missing 
	-- ["Buttons/showminimize_desc"] = "",
	--Translation missing 
	-- ["Buttons/showminimize_name"] = "",
	["Buttons/Toggle showing chat arrows for each chat window."] = "Alterna el mostrar las flechas para cada ventana de chat.",
	["Buttons/Toggles navigation arrows on and off."] = "Alterna la activación de las flechas de navegación.",
	["ChannelColorMemory/(%w+)%s?(.*)"] = "(%S+)%s?(.*)",
	["ChannelColorMemory/ChannelColorMemory"] = "MemoriaColorCanal",
	["ChannelColorMemory/Remembers the colors of each channel name."] = "Recordar los colores de cada nombre de canal.",
	["ChannelNames/%s settings."] = "opciones %s.",
	["ChannelNames/<string>"] = "<cadena>",
	["ChannelNames/Add Channel Abbreviation"] = "Añadir Abreviatura del Canal",
	["ChannelNames/addnick_desc"] = "Agrega un nombre abreviado del canal. El nombre con '#' para incluir el número de canal. (por ejemplo, '#Comercio').",
	["ChannelNames/Blank"] = "Blanco",
	["ChannelNames/chanlink_desc"] = "Hacer del canal un vínculo clickable que abre el chat para ese canal.",
	["ChannelNames/chanlink_name"] = "Crear Enlace del Canal",
	["ChannelNames/Channel %d"] = "Canal %d",
	["ChannelNames/Channel name abbreviation options."] = "Opciones de abreviatura del nombre del canal.",
	["ChannelNames/ChannelNames"] = "NombresCanales",
	["ChannelNames/channelnick_desc"] = "Abreviaturas de Canal",
	["ChannelNames/channelnick_name"] = "Abreviaturas de Canal",
	["ChannelNames/Clear Channel Abbreviation"] = "Limpiar Abreviatura de Canal",
	["ChannelNames/Clears an abbreviated channel name."] = "Limpia un nombre de canal abreviado.",
	["ChannelNames/colon_desc"] = "Añade dos puntos después del canal reemplazado.",
	["ChannelNames/colon_name"] = "Mostrar dos puntos",
	["ChannelNames/Dont display the channel/chat type name"] = "No mostrar el nombre del tipo de canal/chat",
	["ChannelNames/otheropts_desc"] = "Opciones de formato de canal adicionales y controles de enlace del canal.",
	["ChannelNames/otheropts_name"] = "Otras Opciones",
	["ChannelNames/Remove Channel Abbreviation"] = "Eliminar Abreviatura de Canal",
	["ChannelNames/Removes an an abbreviated channel name."] = "Elimina un nombre de canal abreviado.",
	["ChannelNames/Replace"] = "Sustituir",
	["ChannelNames/Set"] = "Establecer",
	["ChannelNames/space_desc"] = "Alternar añadir un espacio después del canal reemplazado.",
	["ChannelNames/space_name"] = "Mostrar Espacio",
	["ChannelNames/Toggle replacing this channel."] = "Alterna reemplazar este canal.",
	["ChannelNames/Use a custom replacement for the chat %s text."] = "Utilizarr un reemplazo personalizado para el texto del chat %s.",
	["ChannelSticky/Channel"] = "Canal",
	["ChannelSticky/ChannelSticky"] = "CanalAdhesivo",
	["ChannelSticky/Chat channel sticky options."] = "Opciones de canal adhesivo de chat.",
	["ChannelSticky/ChatType"] = "TipoChat",
	["ChannelSticky/Per chat type options."] = "Opciones por tipo de chat.",
	["ChannelSticky/smartgroup_desc"] = "Agrega un comando /gr que escoge automáticamente el tipo correcto de chat, BANDA, GRUPO, o CAMPO DE BATALLA",
	["ChannelSticky/smartgroup_name"] = "Grupos Inteligentes",
	["ChannelSticky/Sticky %s"] = "Adhesivo %s",
	["ChannelSticky/Sticky Per Chat Frame"] = "Adhesivo Por Marco de Chat",
	["ChannelSticky/Toggle remembering the chat type last used per chat frame."] = "Alternar recordar el último tipo de chat utilizado por el marco de chat.",
	["ChannelSticky/Toggles sticky on and off for %s."] = "Alterna activar adhesivo para %s.",
	["ChatLink/gem_desc"] = "Activar Modo de Compatibilidad GEM",
	["ChatLink/gem_name"] = "Compatibilidad GEM",
	["ChatLink/module_desc"] = "Opciones de enlace de elementos del canal de chat.",
	--Translation missing 
	-- ["ChatLink/module_info"] = "",
	["ChatLink/module_name"] = "EnlacesCanal",
	["ChatLink/Trade"] = "Comercio",
	["ChatLog/A module to automaticaly enable chat and combat logging."] = "Un módulo que automáticamente activa el chat y el registro de combate.",
	["ChatLog/Chat log recorded to <WoW Installation>\\Logs\\WoWChatLog.txt only upon logout."] = "Registro del chat guardado en <Instalación WoW>\\Logs\\WoWChatLog.txt sólo al cierre de la sesión.",
	["ChatLog/Chat Log: Disabled"] = "Registro del Chat: Desactivado",
	["ChatLog/Chat Log: Enabled"] = "Registro del Chat: Activado",
	["ChatLog/ChatLog"] = "Registro del Chat",
	["ChatLog/Combat log recorded to <WoW Installation>\\Logs\\WoWCombatLog.txt only upon logout."] = "Registro del combate guardado en <Instalación WoW>\\Logs\\WoWCombatLog.txt sólo al cierre de la sesión.",
	["ChatLog/Combat Log: Disabled"] = "Registro de Combate: Desactivado",
	["ChatLog/Combat Log: Enabled"] = "Registro de Combate: Activado",
	["ChatLog/quiet_desc"] = "No mostrar algún mensaje cuando este mod esté activdo, o cuando cambie la configuración del registro.",
	["ChatLog/quiet_name"] = "Suprimir Mensaje de Respuesta",
	["ChatLog/Toggle Chat Log"] = "Alternar Registro del Chat",
	["ChatLog/Toggle chat log on and off."] = "Alterna la activación del registro del chat.",
	["ChatLog/Toggle Combat Log"] = "Alternar Registro de Combate",
	["ChatLog/Toggle combat log on and off."] = "Alterna la activación del registro de combate.",
	["ChatTabs/Active Alpha"] = "Activar Transparencia",
	["ChatTabs/All"] = "Todo/s",
	["ChatTabs/Always"] = "Siempre",
	["ChatTabs/Chat window tab options."] = "Opciones de la pestaña de la ventana de chat.",
	["ChatTabs/Default"] = "Predeterminado",
	["ChatTabs/disableflash_desc"] = "Deshabilitar destello de las pestañas del chat.",
	["ChatTabs/disableflash_name"] = "Desactivar Destello",
	["ChatTabs/Hidden"] = "Oculto",
	["ChatTabs/Individual"] = "Individual",
	["ChatTabs/Not Active Alpha"] = "No Activar Transparencia",
	["ChatTabs/preventdrag_desc"] = "Evitar arrastrar pestañas de chat con el ratón",
	["ChatTabs/preventdrag_name"] = "Evitar arrastrar",
	["ChatTabs/Set ChatFrame%d Display Mode"] = "Establecer Modo de Visualización del Marco de Chat %d",
	["ChatTabs/Set Display Mode"] = "Establecer Modo Visualización",
	["ChatTabs/Set tab display mode for each chat window."] = "Establecer modo de pantalla de la pestaña para cada ventana de chat. Marcado (encendido), Desmarcado (apagado), Deshabilitado (predeterminado)",
	["ChatTabs/Set tab display to always, hidden or the Blizzard default."] = "Establecer mostrar pestaña a siempre, oculta o por defecto (Blizzard).",
	["ChatTabs/Sets alpha of chat tab for active chat frame."] = "Establece la transparencia de la pestaña de chat para el marco activo.",
	["ChatTabs/Sets alpha of chat tab for not active chat frame."] = "Establece la transparencia de la pestaña de chat para el marco no activo.",
	["ChatTabs/Tabs"] = "Pestañas",
	["Clear/Adds clear text slash commands (/clear)(/cls)(/clearall)(/clsall)."] = "Añade comandos para limpiar texto (/clear)(/cls)(/clearall)(/clsall).",
	["Clear/Clear"] = "Limpiar",
	["Clear/Clearall"] = "Limpiar todo",
	["Clear/Clears all chat frames."] = "Limpiar todas las ventanas de chat",
	["Clear/Clears the current chat frame."] = "Limpiar la ventana de chat actual",
	["CopyChat/ Text"] = "Texto",
	["CopyChat/BBCode"] = "BBCode",
	--Translation missing 
	-- ["CopyChat/BOTTOMLEFT"] = "",
	--Translation missing 
	-- ["CopyChat/BOTTOMRIGHT"] = "",
	--Translation missing 
	-- ["CopyChat/buttonpos_desc"] = "",
	--Translation missing 
	-- ["CopyChat/buttonpos_name"] = "",
	["CopyChat/ChatFrame"] = "MarcoChat",
	["CopyChat/Copy all of the text in the selected chat frame into an edit box"] = "Copiar todo el texto seleccionado en el marco del chat a una caja de edición",
	["CopyChat/Copy Text"] = "Copiar Texto",
	["CopyChat/Copy Text Format"] = "Copiar Texto con fomato",
	["CopyChat/Copy text from the active chat window."] = "Copiar texto desde la ventana de chat activa.",
	--Translation missing 
	-- ["CopyChat/Copy To Editbox"] = "",
	["CopyChat/CopyChat"] = "ChatCopiar",
	["CopyChat/HTML"] = "HTML",
	["CopyChat/Message From : %s"] = "Mensaje de : %s",
	["CopyChat/Plain"] = "Liso",
	["CopyChat/Should the copied text be plain, or formatted so you can see the colors."] = "El texto copiado debería ser llano, o con formato para que pueda ver los colores. ",
	["CopyChat/showbutton_desc"] = "Muestra un botón en el marco del chat",
	["CopyChat/showbutton_name"] = "Botón Copiar",
	--Translation missing 
	-- ["CopyChat/TOPLEFT"] = "",
	--Translation missing 
	-- ["CopyChat/TOPRIGHT"] = "",
	["CopyChat/Wowace.com Forums"] = "Foros Wowace.com",
	["CustomFilters/<string>"] = "<cadena>",
	["CustomFilters/Add a pattern to search for."] = "Añadir un patrón de búsqueda.",
	["CustomFilters/Add Pattern"] = "Añadir Patrón",
	["CustomFilters/Block Message"] = "Bloque de Mensaje",
	["CustomFilters/Channel Data"] = "Datos de Canal",
	["CustomFilters/Channel to send output text to."] = "Canal a enviar el texto de salida",
	["CustomFilters/Enabled"] = "Activado",
	["CustomFilters/Extra data for WHISPER (target) and CHANNEL (channel name or num)"] = "Datos extra para SUSURRAR (objetivo) y CANAL (nombre de canal o número)",
	["CustomFilters/Filter Name"] = "Nombre del Filtro",
	["CustomFilters/Forward"] = "Reenviar",
	["CustomFilters/Forward the message to a chat channel."] = "Reenviar el mensaje a un canal de chat.",
	["CustomFilters/Forward the message to a custom chat channel."] = "Salida a un canal privado de chat",
	["CustomFilters/ForwardCustom"] = "Reenviar Personalizado",
	["CustomFilters/ForwardMessage"] = "ReenviarMensaje",
	["CustomFilters/ForwardMessageCustom"] = "Canal Privado",
	["CustomFilters/Hilight Color"] = "Color Resaltado",
	["CustomFilters/Hilight Match Text"] = "Texto Coincidente Resaltado",
	["CustomFilters/Inbound"] = "Entrante",
	["CustomFilters/inchannels_desc"] = "Buscar en algunos canales",
	["CustomFilters/inchannels_name"] = "Buscar canales",
	["CustomFilters/Is this pattern enabled for use?"] = "¿Está habilitado este patrón para su uso?",
	["CustomFilters/Match Options"] = "Opciones de Coincidencias",
	["CustomFilters/module_desc"] = "Módulo para soportar filtros personalizados.",
	["CustomFilters/module_name"] = "Filtros Personalizados",
	["CustomFilters/Only output the message portion of the chat text, leave out the channel, and playername etc."] = "Sólo mostrar la parte del mensaje del chat de texto, omitir el canal, nombre de jugador, etc.",
	["CustomFilters/Outbound"] = "Saliente",
	["CustomFilters/Output Channel"] = "Canal de Salida",
	["CustomFilters/Output Message Only"] = "Solo Mensajes Salientes",
	["CustomFilters/Pattern Info"] = "Patrón de Información",
	["CustomFilters/Pattern Options"] = "Opciones de Patrón",
	["CustomFilters/Play a sound when this message is output to the chatframe"] = "Reproducir un sonido cuando este mensaje sale en el marco de chat",
	["CustomFilters/Play Sound"] = "Reproducir Sonido",
	["CustomFilters/Prevent the message from being displayed"] = "Impedir que el mensaje sea visualizado",
	["CustomFilters/Remove an existing pattern."] = "Elimina un patrón existente.",
	["CustomFilters/Remove Pattern"] = "Eliminar Patrón",
	["CustomFilters/Replacement Text"] = "Sustitución de texto",
	["CustomFilters/Search Format String"] = "Cadena de Formato de Búsqueda",
	["CustomFilters/Search Pattern"] = "Patrón de Búsqueda",
	["CustomFilters/Secondary Output"] = "Salida Secundaria",
	["CustomFilters/Send to a secondary output"] = "Enviar a un salida secundaria",
	["CustomFilters/Supplied pattern is a format string instead of a pattern"] = "El patrón suministrado es una cadena de formato en lugar de un patrón",
	["CustomFilters/Your name for this filter"] = "Su nombre para este filtro",
	--Translation missing 
	-- ["Editbox/Attach edit box to..."] = "",
	--Translation missing 
	-- ["Editbox/Attach to..."] = "",
	["Editbox/Background color"] = "Color de fondo",
	--Translation missing 
	-- ["Editbox/Background Inset"] = "",
	["Editbox/Background texture"] = "Textura de fondo",
	["Editbox/Border color"] = "Color del borde",
	["Editbox/Border texture"] = "Textura del borde",
	["Editbox/Bottom"] = "Abajo",
	["Editbox/Color border by channel"] = "Color del borde por canal",
	--Translation missing 
	-- ["Editbox/currently_broken_alt_behavior"] = "",
	["Editbox/Edge Size"] = "Tamaño del borde",
	["Editbox/Editbox"] = "Caja de edición",
	["Editbox/Editbox options."] = "Opciones de la caja de edición.",
	["Editbox/Font"] = "Fuente",
	["Editbox/Free-floating"] = "Flotar-libre",
	["Editbox/Free-floating, Locked"] = "Flotar-libre, Bloqueado",
	--Translation missing 
	-- ["Editbox/Requires the Alt key to be held down to move the cursor in chat"] = "",
	--Translation missing 
	-- ["Editbox/Select the font to use for the edit box"] = "",
	--Translation missing 
	-- ["Editbox/Sets the frame's border color to the color of your currently active channel"] = "",
	--Translation missing 
	-- ["Editbox/Tile Size"] = "",
	["Editbox/Top"] = "Arriba",
	--Translation missing 
	-- ["Editbox/Use Alt key for cursor movement"] = "",
	--Translation missing 
	-- ["EventNames/allevents_desc"] = "",
	--Translation missing 
	-- ["EventNames/allevents_name"] = "",
	["EventNames/Chat window event name options."] = "Opciones de nombre de evento de la ventana del chat.",
	["EventNames/EventNames"] = "NombresEventos",
	["EventNames/Show"] = "Mostrar",
	["EventNames/Show events on chatframes"] = "Mostrar eventos en los marcos de chat",
	["EventNames/show_desc"] = "Alterna el mostrar nombres de eventos en cada ventana.",
	["EventNames/show_name"] = "Mostrar Nombres de Eventos",
	["Fading/duration_desc"] = "Establece el número de segundos a esperar antes de desvanecer el texto de la ventana de chat.",
	["Fading/duration_name"] = "Establecer Retraso Desvanecer (Segundos)",
	["Fading/module_desc"] = "Opciones de desvanecer texto en ventana de chat.",
	["Fading/module_name"] = "Desvanecerse",
	["Fading/textfade_desc"] = "Alterna la activación de desvanecer texto para cada ventana de chat.",
	["Fading/textfade_name"] = "Activar Desvanecerse",
	["Filtering/A module to provide basic chat filtering."] = "Un módulo que proporciona el filtrado básico del chat.",
	--Translation missing 
	-- ["Filtering/afkdnd_desc"] = "",
	--Translation missing 
	-- ["Filtering/afkdnd_name"] = "",
	["Filtering/bgjoin_desc"] = "Filtrar en canal Campo de Batlla spam ha abandonado/se ha unido",
	["Filtering/bgjoin_name"] = "Filtrar mensajes de unión/dejadas de Campos de Batalla",
	["Filtering/Filtering"] = "Filtrado",
	["Filtering/leavejoin_desc"] = "Filtrar en canal spam ha abandonado/se ha unido",
	["Filtering/leavejoin_name"] = "Filtro de Canal  Ha abandonado / Se ha unido",
	["Filtering/notices_desc"] = "Filtrar otros mensajes de notificación de canal personalizado, por ejemplo, los cambios de moderador.",
	["Filtering/notices_name"] = "Filtrar Noticias del Canal",
	--Translation missing 
	-- ["Filtering/tradespam_desc"] = "",
	--Translation missing 
	-- ["Filtering/tradespam_name"] = "",
	["Font/Auto Restore Font Size"] = "Restaurar Tamaño Fuentes Automáticamente",
	["Font/Chat window font options."] = "Opciones de la fuente de la ventana del chat.",
	["Font/Font"] = "Fuente",
	["Font/monochrome_desc"] = "Alterna el color monocromo de la fuente.",
	["Font/monochrome_name"] = "Alternar Monocromo",
	["Font/None"] = "Ninguna",
	["Font/Outline"] = "Contorno",
	["Font/outlinemode_desc"] = "Estable el modo para el contorno alrededor de la fuente.",
	["Font/outlinemode_name"] = "Establecer Modo de Cotorno",
	["Font/rememberfont_desc"] = "Recordar la elección de la fuente y restaurarla al reiniciar.",
	["Font/rememberfont_name"] = "Recordar Fuente",
	["Font/Set ChatFrame%d Font Size"] = "Establecer Tamaño Fuente de Chat %d",
	["Font/Set Font Face"] = "Establecer Tipo de Fuente",
	["Font/Set Font Size"] = "Establecer Tamaño de Fuente",
	["Font/Set Separately"] = "Establecer por separado",
	["Font/Set text font size for each chat window."] = "Establece el tamaño de la fuente del texto de cada ventana de chat.",
	["Font/Set text font size."] = "Establece el tamaño de la fuente del texto.",
	["Font/Set the text font face for all chat windows."] = "Establece el tipo de fuente de texto para todas las ventanas de chat.",
	["Font/shadowcolor_desc"] = "Establece el color del efecto de sombra.",
	["Font/shadowcolor_name"] = "Establecer Color de la Sombra",
	["Font/Thick Outline"] = "Contorno Grueso",
	["Font/Toggle setting options separately for each chat window."] = "Cambiar opciones de configuración por separado para cada ventana de chat.",
	["Font/Workaround a Blizzard bug which changes the font size when you open a system menu."] = "Solución a un error de Blizzard que cambia el tamaño de la fuente cuando se abre un menú de sistema.",
	--Translation missing 
	-- ["Frames/Chat window frame parameter options"] = "",
	--Translation missing 
	-- ["Frames/framealpha_desc"] = "",
	--Translation missing 
	-- ["Frames/framealpha_name"] = "",
	--Translation missing 
	-- ["Frames/Frames"] = "",
	--Translation missing 
	-- ["Frames/mainchatonload_desc"] = "",
	--Translation missing 
	-- ["Frames/mainchatonload_name"] = "",
	--Translation missing 
	-- ["Frames/maxchatheight_desc"] = "",
	--Translation missing 
	-- ["Frames/maxchatheight_name"] = "",
	--Translation missing 
	-- ["Frames/maxchatwidth_desc"] = "",
	--Translation missing 
	-- ["Frames/maxchatwidth_name"] = "",
	--Translation missing 
	-- ["Frames/minchatheight_desc"] = "",
	--Translation missing 
	-- ["Frames/minchatheight_name"] = "",
	--Translation missing 
	-- ["Frames/minchatwidth_desc"] = "",
	--Translation missing 
	-- ["Frames/minchatwidth_name"] = "",
	--Translation missing 
	-- ["Frames/rememberframepositions_desc"] = "",
	--Translation missing 
	-- ["Frames/rememberframepositions_name"] = "",
	--Translation missing 
	-- ["Frames/removeclamp_desc"] = "",
	--Translation missing 
	-- ["Frames/removeclamp_name"] = "",
	["History/Chat history options."] = "Opciones del historial del chat.",
	--Translation missing 
	-- ["History/Color GMOTD"] = "",
	--Translation missing 
	-- ["History/Colors the GMOTD label"] = "",
	--Translation missing 
	-- ["History/delaygmotd_desc"] = "",
	--Translation missing 
	-- ["History/delaygmotd_name"] = "",
	--Translation missing 
	-- ["History/divider"] = "",
	["History/History"] = "Historial",
	["History/Maximum number of lines of command history to save."] = "Máximo número de líneas a guardar por el comando historial.",
	["History/Save Command History"] = "Comando Guardar Historial",
	["History/Saves command history between sessions (for use with alt+up arrow or just the up arrow)"] = "Guarda el historial de comandos entre sesiones (para utilizar con alt+flecha arriba o sólo la flecha arriba)",
	--Translation missing 
	-- ["History/Scrollback"] = "",
	--Translation missing 
	-- ["History/Scrollback Options"] = "",
	--Translation missing 
	-- ["History/scrollbacklen_desc"] = "",
	--Translation missing 
	-- ["History/scrollbacklen_name"] = "",
	["History/Set Chat Lines"] = "Establecer Líneas de Chat",
	["History/Set Command History"] = "Establecer Historial de Comandos",
	["History/Set the number of lines of chat history for each window."] = "Establece el número de líneas del historial de chat para cada ventana.",
	--Translation missing 
	-- ["History/Store the chat lines between sessions"] = "",
	["KeyBindings/Channel %d"] = "Canal %d",
	["KeyBindings/Copy Selected Chat Frame"] = "Copiar el Marco de Chat Seleccionado",
	["KeyBindings/Guild Channel"] = "Canal de Hermandad",
	["KeyBindings/Instance Channel"] = "Canal Campo de Batalla",
	["KeyBindings/Next Chat Tab"] = "Siguiente Pestaña de Chat",
	["KeyBindings/Officer Channel"] = "Canal Oficial",
	["KeyBindings/Party Channel"] = "Canal del Grupo",
	["KeyBindings/Prat CopyChat"] = "Prat ChatCopiar",
	["KeyBindings/Prat Keybindings"] = "Combinaciones de teclas Prat",
	["KeyBindings/Prat TellTarget"] = "Prat DecirObjetivo",
	["KeyBindings/Raid Channel"] = "Canal de Banda",
	["KeyBindings/Raid Warning Channel"] = "Canal Aviso de Banda",
	["KeyBindings/Say"] = "Decir",
	["KeyBindings/Smart Group Channel"] = "Canal de Grupo Inteligente",
	["KeyBindings/TellTarget"] = "DecirObjetivo",
	["KeyBindings/Whisper"] = "Susurrar",
	["KeyBindings/Yell"] = "Gritar",
	["OriginalButtons/alpha_desc"] = "Establece la transparencia del menú y de las flechas en todas las ventanas de chat.",
	["OriginalButtons/alpha_name"] = "Establecer Transparencia",
	--Translation missing 
	-- ["OriginalButtons/buttonframe_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/buttonframe_name"] = "",
	["OriginalButtons/ChannelNames"] = "NombreCanales",
	["OriginalButtons/Chat window button options."] = "Opciones de los botones de la ventana de chat.",
	["OriginalButtons/chatmenu_desc"] = "Alterna activación del menú de chat.",
	["OriginalButtons/chatmenu_name"] = "Mostrar Ménu de Chat",
	["OriginalButtons/Default"] = "Predeterminado",
	["OriginalButtons/Original Buttons"] = "Botones Originales",
	["OriginalButtons/reflow_desc"] = "Flujo del texto del marco de chat alrededor de los botones no por debajo de ellos.",
	["OriginalButtons/reflow_name"] = "Flujo Texto Alrededor",
	["OriginalButtons/reminder_desc"] = "Muestra el botón de recordatorio cuando no se está en la parte inferior de la ventana de chat.",
	["OriginalButtons/reminder_name"] = "Mostrar Recordatorio de Desplazamiento Abajo",
	["OriginalButtons/Right, Inside Frame"] = "Derecha, Interior del Marco",
	["OriginalButtons/Right, Outside Frame"] = "Derecha, Exterior del Marco",
	["OriginalButtons/Set Position"] = "Establecer Posición",
	["OriginalButtons/Sets position of chat menu and arrows for all chat windows."] = "Establece la posición del menú y de las flechas para todas las ventanas de chat.",
	["OriginalButtons/Show Arrows"] = "Mostrar Flechas",
	["OriginalButtons/Show Chat%d Arrows"] = "Mostrar Flechas del Chat %d",
	["OriginalButtons/Toggle showing chat arrows for each chat window."] = "Alterna mostrar las flechas en cada ventana de chat.",
	["OriginalButtons/Toggles navigation arrows on and off."] = "Alterna activación de flechas de navegación.",
	["OriginalEditbox/Autohide"] = "Auto Ocultar",
	["OriginalEditbox/BACKGROUND"] = "FONDO",
	["OriginalEditbox/Bar colour"] = "Color de la barra",
	--Translation missing 
	-- ["OriginalEditbox/Border colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Border width"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Bottom"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Click the edit box to open it up for editing. Only available if Autohide is disabled."] = "",
	["OriginalEditbox/Clickable"] = "Clickeable",
	["OriginalEditbox/DIALOG"] = "DIÁLOGO",
	--Translation missing 
	-- ["OriginalEditbox/Editbox options."] = "",
	["OriginalEditbox/Enable Arrowkeys"] = "Habilitar flechas del teclado",
	["OriginalEditbox/Enable using arrowkeys in editbox without the alt key."] = "Permite usar las flechas del teclado en la caja de texto sin usar la tecla alt.",
	["OriginalEditbox/Hide Border"] = "Ocultar Borde",
	["OriginalEditbox/Hide the border around the edit box."] = "Ocultar el borde alrededor de la caja de edición.",
	["OriginalEditbox/Hide the edit box after you have pressed enter."] = "Oculta la caja de texto después de pulsar enter.",
	--Translation missing 
	-- ["OriginalEditbox/HIGH"] = "",
	["OriginalEditbox/Lock editbox position if undocked."] = "Bloquea la posición de la caja de texto si está desbloqueada.",
	["OriginalEditbox/Lock Position"] = "Bloquear posición",
	--Translation missing 
	-- ["OriginalEditbox/LOW"] = "",
	--Translation missing 
	-- ["OriginalEditbox/MEDIUM"] = "",
	--Translation missing 
	-- ["OriginalEditbox/OriginalEditbox"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Padding"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Alpha"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Position"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Strata"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the alpha of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the amount of padding inside the edit box"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the edit box background colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the edit box border colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the frame strata of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the position of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the texture of the chat edit box"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the width of the edit box's border"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the width of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Width (NB: only enabled if the editbox is undocked)"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Texture"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Top"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Undocked"] = "",
	["Paragraph/adjustlinks_desc"] = "Ajustar los vínculos para restaurar la capacidad de hacer click en texto centrado o alineado a la derecha.",
	["Paragraph/adjustlinks_name"] = "Corregir la colocación de enlaces de jugador/objeto",
	["Paragraph/Center"] = "Centro",
	["Paragraph/Chat window paragraph options."] = "Opciones de párrafo en ventanas de chat.",
	["Paragraph/justification_desc"] = "Establecer alineación horizontal para cada ventana de chat",
	["Paragraph/justification_name"] = "Establecer Alineación",
	["Paragraph/Left"] = "Izquierda",
	["Paragraph/Line Spacing"] = "Espaciado de Linea",
	["Paragraph/Paragraph"] = "Párrafo",
	["Paragraph/Right"] = "Derecha",
	["Paragraph/Set the line spacing for all chat windows."] = "Establece el espaciado de línea para todas las ventanas de chat.",
	["PlayerNames/Actively Query Player Info"] = "Pedir Información de Jugador Activamente",
	["PlayerNames/Angled"] = "Angulo",
	["PlayerNames/Brackets"] = "Corchetes",
	["PlayerNames/Brackets Common Color"] = "Color Común Corchetes",
	["PlayerNames/Brackets Use Common Color"] = "Utilizar Color Común Corchetes",
	["PlayerNames/Class"] = "Clase",
	["PlayerNames/Color by Level Difference"] = "Color por Diferencia de Nivel",
	["PlayerNames/coloreverywhere_desc"] = "Colorear nombres de jugadores si ellos aparecen en el texto de los mensajes del chat.",
	["PlayerNames/coloreverywhere_name"] = "Colorear Nombres Siempre",
	["PlayerNames/Enable Alt-Invite"] = "Habilitar Alt-Invitar",
	["PlayerNames/Enable Invite Links"] = "Habilitar Enlaces Invitar",
	["PlayerNames/Enable TabComplete"] = "Habilitar Ficha completa",
	["PlayerNames/hoverhilight_desc"] = "Resaltar líneas de chat de un jugador al situarse sobre su enlace de jugador",
	--Translation missing 
	-- ["PlayerNames/hoverhilight_name"] = "",
	["PlayerNames/How to color other player's level."] = "Cómo el color de otro jugador de nivel.",
	["PlayerNames/How to color player's name."] = "Cómo el color de nombre del jugador.",
	["PlayerNames/Keep Info"] = "Mantener Información",
	["PlayerNames/Keep Lots Of Info"] = "Mantener Mucha Información",
	["PlayerNames/Keep player information between session for all players except cross-server players"] = "Mantiene información de jugadores entre sesiones para todos los jugadores excepto entre servidores",
	["PlayerNames/Keep player information between session, but limit it to friends and guild members."] = "Mantiene información de jugadores entre sesiones, pero lo limita a amigos y miembros de la hermandad.",
	["PlayerNames/Let TasteTheNaimbow set the common color for unknown player names."] = "Deje a TasteTheNaimbow establecer el color común para nombres de jugador desconocidos.",
	["PlayerNames/Level Color Mode"] = "Modo Color por Nivel",
	["PlayerNames/linkifycommon_desc"] = "Linkify Common Messages",
	["PlayerNames/linkifycommon_name"] = "Enlazar Mensajes Comunes",
	["PlayerNames/No additional coloring"] = "Sin color adicional",
	["PlayerNames/None"] = "Ninguno",
	["PlayerNames/Player Color Mode"] = "Modo Color del Jugador",
	["PlayerNames/Player name formating options."] = "Opciones de formato del nombre de jugador.",
	["PlayerNames/PlayerNames"] = "Nombre del Jugador",
	["PlayerNames/Prat_Playernames: Stored Player Data Cleared"] = "Prat_Playernames: Limpiados los Datos de Jugador Guardados",
	["PlayerNames/Query the server for all player names we do not know. Note: This happpens pretty slowly, and this data is not saved."] = "Consulta el servidor para todos los nombres de jugador que desconocemos. Nota: esto sucede muy lentamente, y estos datos no se guardan.",
	["PlayerNames/Random"] = "Aleatorio",
	--Translation missing 
	-- ["PlayerNames/realidcolor_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/realidcolor_name"] = "",
	["PlayerNames/Reset Settings"] = "Restablecer Ajustes",
	["PlayerNames/Restore default settings, and delete stored character data."] = "Restablece ajustes por defecto, y eliminar información del jugador guardada.",
	["PlayerNames/Set common color of unknown player names."] = "Establece el color común para los nombres de jugadores desconocidos.",
	["PlayerNames/Sets common color of brackets to use around player names."] = "Establece el color común de los corchetes a utilizar en torno a los nombres de jugador.",
	["PlayerNames/Sets style of brackets to use around player names."] = "Establece el estilo de los corchetes a utilizar en torno a los nombres de jugador.",
	["PlayerNames/Show Group"] = "Mostrar Grupo",
	["PlayerNames/Show Level"] = "Mostrar Nivel",
	["PlayerNames/Show Raid Target Icon"] = "Mostrar Icono Objetivo Banda",
	["PlayerNames/Square"] = "Cuadrado",
	["PlayerNames/Tab completion : "] = "Finalización de Pestaña : ",
	["PlayerNames/tabcomplete_name"] = "Nombres Posibles",
	--Translation missing 
	-- ["PlayerNames/Toggle group invites by alt-clicking hyperlinked keywords like 'invite'."] = "",
	["PlayerNames/Toggle group invites by alt-clicking on player name."] = "Activa invitar a grupo al hacer alt-click en el nombre del jugador.",
	["PlayerNames/Toggle level showing."] = "Alterna mostrar nivel.",
	["PlayerNames/Toggle raid group showing."] = "Alterna mostrar grupo de raid.",
	["PlayerNames/Toggle showing the raid target icon which is currently on the player."] = "Altterna mostrar el icono de objetivo de banda que está en el jugador.",
	["PlayerNames/Toggle tab completion of player names."] = "Alterna la finalización de la pestaña de nombres de jugador.",
	["PlayerNames/Toggle using a common color for brackets around player names."] = "Alterna utilizar un color común de corchetes en torno a los nombres de jugador.",
	["PlayerNames/Toggle using a common color for unknown player names."] = "Alterna el utilizar un color común para los nombres de jugadores desconocidos.",
	["PlayerNames/Too many matches (%d possible)"] = "Demasiadas coincidencias (%d posibles)",
	["PlayerNames/Unknown Common Color"] = "Color Común Desconocido",
	["PlayerNames/Unknown Common Color From TasteTheNaimbow"] = "Color Común Desconocido de TasteTheNaimbow",
	["PlayerNames/Unknown Use Common Color"] = "Desconocido Color de Uso Común",
	["PlayerNames/Use Channel Color"] = "Utilizar Color Canal",
	["PlayerNames/Use Player Color"] = "Utilizar Color Jugador",
	--Translation missing 
	-- ["PlayerNames/Use toon name for RealID"] = "",
	["PopupMessage/Add Nickname"] = "Añadir un Apodo",
	["PopupMessage/Adds an alternate name to show in popups."] = "Añade un nombre alternativo para mostrar en las ventanas emergentes.",
	["PopupMessage/Clear Nickname"] = "Limpiar Apodo",
	["PopupMessage/Clears alternate name to show in popups."] = "Limpia el nombre alternativo a mostrar en las ventanas emergentes.",
	["PopupMessage/framealpha_desc"] = "Establece el valor de transparencia del marco emergente al desaparecer completamente.",
	["PopupMessage/framealpha_name"] = "Transparencia Marco Emergente",
	["PopupMessage/Popup"] = "Emergente",
	["PopupMessage/PopupMessage"] = "Mensaje Emergente",
	["PopupMessage/Remove Nickname"] = "Eliminar Apodo",
	["PopupMessage/Removes an alternate name to show in popups."] = "Quita un nombre alternativo para mostrar en las ventanas emergentes.",
	["PopupMessage/Set Separately"] = "Establecer por Separado",
	["PopupMessage/Show All Popups"] = "Mostrar Todas las Emergentes",
	["PopupMessage/Show Popups"] = "Mostrar Emergentes",
	["PopupMessage/Show Popups for all chat windows."] = "Mostrar Emergentes para todas las ventanas de chat.",
	["PopupMessage/Show Popups for each window."] = "Mostrar Emergentes para cada ventana.",
	["PopupMessage/show_desc"] = "Muestra Emergentes para cada ventana.",
	["PopupMessage/show_name"] = "Mostar Emergentes",
	["PopupMessage/show_perframedesc"] = "Alterna activación de mostrar ventanas emergentes.",
	["PopupMessage/show_perframename"] = "Mostrar Marcos Emergentes de Chat %d",
	["PopupMessage/showall_desc"] = "Mostrar Ventanas Emergentes para todas las ventanas de chat.",
	["PopupMessage/showall_name"] = "Mostrar Todas las Emergentes",
	["PopupMessage/Shows messages in a popup window."] = "Muestra mensajes en una ventana emergente.",
	["PopupMessage/Shows messages with your name in a popup."] = "Muestra mensajes con tu nombre en una ventana emergente.",
	["PopupMessage/Toggle setting options separately for each chat window."] = "Cambiar opciones de configuración por separado para cada ventana de chat.",
	["Scroll/Bottom"] = "De Abajo a Arriba",
	["Scroll/Chat window scrolling options."] = "Opciones de desplazamiento de la ventana de chat.",
	["Scroll/Control whether text is added to the frame at the top or the bottom."] = "Controla si el texto se añade al marco en la parte superior o inferior.",
	["Scroll/lowdown_desc"] = "Alternar saltar automáticamente a la parte inferior de cada ventana de chat.",
	["Scroll/lowdown_name"] = "Activar TheLowDown",
	--Translation missing 
	-- ["Scroll/modified_speed"] = "",
	--Translation missing 
	-- ["Scroll/modified_speed_desc"] = "",
	["Scroll/mousewheel_desc"] = "Alterna soporte para rueda de ratón para cada ventana de chat.",
	["Scroll/mousewheel_name"] = "Activar Rueda del Ratón",
	["Scroll/Scroll"] = "Desplazamiento",
	["Scroll/Set Ctrl+MouseWheel Speed"] = "Establecer Velocidad Ctrl+Rueda Ratón",
	["Scroll/Set MouseWheel Speed"] = "Establecer Velocidad de la Rueda del Ratón",
	["Scroll/Set number of lines mousewheel will scroll when ctrl is pressed."] = "Establece el número de líneas que la rueda del ratón desplazará cuando ctrl está pulsada.",
	["Scroll/Set number of lines mousewheel will scroll."] = "Establece el número de lineas que la rueda del ratón desplazará.",
	["Scroll/Set TheLowDown Delay"] = "Establecer Retraso TheLowDown",
	["Scroll/Set time to wait before jumping to the bottom of chat windows."] = "Estable el tiempo de espera antes de saltar a la parte inferior de las ventanas de chat.",
	["Scroll/Text scroll direction"] = "Dirección de desplazamiento del texto",
	["Scroll/Top"] = "De arriba a abajo",
	--Translation missing 
	-- ["Scrollback/divider"] = "",
	--Translation missing 
	-- ["Scrollback/Scrollback"] = "",
	--Translation missing 
	-- ["Scrollback/Store the chat lines between sessions"] = "",
	--Translation missing 
	-- ["Search/err_notfound"] = "",
	--Translation missing 
	-- ["Search/err_tooshort"] = "",
	--Translation missing 
	-- ["Search/find_results"] = "",
	--Translation missing 
	-- ["Search/module_desc"] = "",
	--Translation missing 
	-- ["Search/module_info"] = "",
	--Translation missing 
	-- ["Search/module_name"] = "",
	--Translation missing 
	-- ["ServerNames/autoabbreviate_desc"] = "",
	--Translation missing 
	-- ["ServerNames/autoabbreviate_name"] = "",
	["ServerNames/colon_desc"] = "Alterna añadir dos puntos despues del servidor reemplazado.",
	["ServerNames/colon_name"] = "Mostrar dos puntos",
	["ServerNames/randomclr_desc"] = "Utiliza un color aleatorio para cada servidor.",
	["ServerNames/randomclr_name"] = "Colores Aleatorios",
	["ServerNames/Server name abbreviation options."] = "Opciones de la abreviatura del nombre del servidor.",
	["ServerNames/ServerNames"] = "NombreServidor",
	["Sounds/A module to play sounds on certain chat messages."] = "Un módulo que reproduce sonidos con ciertos mensajes del chat.",
	["Sounds/Add a custom channel"] = "Añadir un canal personalizado",
	--Translation missing 
	-- ["Sounds/bn_whisper_desc"] = "",
	--Translation missing 
	-- ["Sounds/bn_whisper_name"] = "",
	["Sounds/Custom Channels"] = "Canales Personalizados",
	--Translation missing 
	-- ["Sounds/group_lead_desc"] = "",
	--Translation missing 
	-- ["Sounds/group_lead_name"] = "",
	["Sounds/guild_desc"] = "Sonido para mensajes de hermandad %s",
	["Sounds/guild_name"] = "Hermandad",
	["Sounds/incoming"] = "Recibido",
	["Sounds/Incoming Sounds"] = "Sonidos Entrantes",
	["Sounds/officer_desc"] = "Sonido para mensajes del canal oficial o personalizado %s",
	["Sounds/officer_name"] = "Oficial",
	["Sounds/outgoing"] = "Saliente",
	["Sounds/Outgoing Sounds"] = "Sonidos Salientes",
	["Sounds/party_desc"] = "Sonido para mensajes del grupo %s",
	["Sounds/party_name"] = "Grupo",
	["Sounds/Play a sound for a certain channel name (can be a substring)"] = "Reproduce un sonido para un cierto nombre de canal (puede ser una subcadena)",
	["Sounds/raid_desc"] = "Sonido para mensajes de banda %s o líder/grupo de campo de batalla",
	["Sounds/raid_name"] = "Banda",
	["Sounds/Remove a custom channel"] = "Eliminar un canal personalizado.",
	["Sounds/Reset settings"] = "Restablecer ajustes",
	["Sounds/Restore default settings and resets custom channel list"] = "Reestable ajustes por defecto y reestablece la lista de canales personalizados",
	["Sounds/Sound selection for incoming chat messages"] = "Selección de sonido para mensajes de chat entrantes",
	["Sounds/Sound selection for outgoing (from you) chat messages"] = "Selección de sonido para mensajes de chat salientes (de ti)",
	["Sounds/Sounds"] = "Sonidos",
	["Sounds/whisper_desc"] = "Sonido para susurros %s",
	["Sounds/whisper_name"] = "Susurrar",
	["Substitutions/%d total user defined substitutions"] = "Total de sustituciones definidas por el usuario %d",
	["Substitutions/|cffff0000warning:|r subtitution \"%s\" already defined as \"%s\", overwriting"] = "|cffff0000advertencia:|r sustitución \"%s\" ya definida como \"%s\", sobrescribiendo",
	["Substitutions/<noguild>"] = "<sin hermandad>",
	["Substitutions/<notarget>"] = "<sin objetivo>",
	["Substitutions/A module to provide basic chat substitutions."] = "Un módulo que proporciona sustituciones básicas del chat.",
	["Substitutions/Are you sure - this will delete all user defined substitutions and reset defaults?"] = "¿Está seguro - esto eliminará todas las sustituciones definidas por el usuario y restablece los valores predeterminados?",
	["Substitutions/Are you sure?"] = "¿Está seguro?",
	["Substitutions/can't find substitution index for a substitution named '%s'"] = "No se encuentra el índice de sustitución para una sustitución con el nombre '%s'",
	["Substitutions/current-prompt"] = [=[Valor actual: '%s'
Click para pegar en el chat.]=],
	["Substitutions/defined %s: expands to => %s"] = "definido %s: se expande a => %s",
	["Substitutions/Delete all"] = "Eliminar todo",
	["Substitutions/Delete substitution"] = "Eliminar sustitución",
	["Substitutions/Deletes a user defined substitution"] = "Elimina una sustitución del usuario",
	["Substitutions/Deletes all user defined substitutions"] = "Elimina todas las sustituciones del usuario",
	["Substitutions/female"] = "Femenino",
	["Substitutions/her"] = "ella",
	["Substitutions/hers"] = "suya",
	["Substitutions/him"] = "él",
	["Substitutions/his"] = "suyo",
	--Translation missing 
	-- ["Substitutions/it"] = "",
	--Translation missing 
	-- ["Substitutions/its"] = "",
	["Substitutions/List of available substitutions"] = "Listado de sustituciones disponibles",
	["Substitutions/List of available substitutions defined by this module. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "Lista de sustituciones definidas por este módulo. (Nota: los usuarios pueden definir valores personalizados para las sustituciones, pero volverá al valor por defecto si la definición del usuario se suprime.)",
	["Substitutions/List substitutions"] = "Listado de sustituciones",
	["Substitutions/Lists all current subtitutions in the default chat frame"] = "Lista todas las sustituciones actuales en el marco de chat por defecto.",
	["Substitutions/male"] = "Masculino",
	["Substitutions/MapLoc"] = "MapLoc",
	["Substitutions/MapPos"] = "MapPos",
	["Substitutions/MapXPos"] = "MapXPos",
	["Substitutions/MapYPos"] = "MapYPos",
	["Substitutions/MapZone"] = "MapZona",
	["Substitutions/module:buildUserSubsIndex(): warning: module patterns not defined!"] = "módulo: buildUserSubsIndex(): advertencia: ¡patrones del módulo no definidos!",
	--Translation missing 
	-- ["Substitutions/MouseoverTargetName"] = "",
	["Substitutions/NO MATCHFUNC FOUND"] = "SIN FUNCIONCOINCIDENCIAS ENCONTRADA",
	["Substitutions/no substitution name given"] = "ningún nombre de sustitución dado",
	["Substitutions/no substitution name supplied for deletion"] = "ningún nombre de sustitución proporcionado para su eliminación",
	["Substitutions/no user defined subs found"] = "sustituciones definidas por el usuario no encontradas",
	["Substitutions/no value given for subtitution \"%s\""] = "ningún valor dado para sustitución \"%s\"",
	["Substitutions/Options for setting and removing user defined substitutions. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "Opciones para establecer y eliminar sustituciones definidas por el usuario. (Nota: los usuarios pueden definir valores personalizados para las sustituciones, pero volverán al valor por defecto si las definiciones del usuario son suprimidas.)",
	--Translation missing 
	-- ["Substitutions/PlayerAverageItemLevel"] = "",
	["Substitutions/PlayerCurrentMana"] = "ManaActualJugador",
	["Substitutions/PlayerHealthDeficit"] = "DéficitSaludJugador",
	["Substitutions/PlayerHP"] = "VidaJugador",
	["Substitutions/PlayerManaDeficit"] = "DéficitManaJugador",
	["Substitutions/PlayerMaxHP"] = "VidaMaxJugador",
	["Substitutions/PlayerMaxMana"] = "ManaMaxJugador",
	["Substitutions/PlayerName"] = "NombreJugador",
	["Substitutions/PlayerPercentHP"] = "PorcentVidaJugador",
	["Substitutions/PlayerPercentMana"] = "PorcentManaJugador",
	["Substitutions/RandNum"] = "NumAleat",
	["Substitutions/removing user defined substitution \"%s\"; previously expanded to => \"%s\""] = "Quitando sustitución definida por el usuario \"%s\"; anteriormente ampliada a => \"%s\"",
	["Substitutions/Set substitution"] = "Establecer sustitución",
	["Substitutions/Set the value of a user defined substitution (NB: this may be the same as an existing default substitution; to reset it to the default, just remove the user created definition)."] = "Establecer el valor de una sustitución definida por el usuario (Nota: puede ser la misma que una sustitución predeterminada, para restablecerla a la predeterminada, sólo quitar la definición de usuario creada).",
	["Substitutions/subname -- NOTE: sub name without the prefix '%'"] = "subnombre -- NOTA: sub nombre sin el prefijo '%'",
	["Substitutions/subname = text after expansion -- NOTE: sub name without the prefix \"%\""] = "subnombre = texto después de expansión --NOTA: sub nombre sin el prefijo \"%\"",
	["Substitutions/substitution: %s defined as => %s"] = "sustitución: %s definido como => %s",
	["Substitutions/Substitutions"] = "Sustituciones",
	["Substitutions/TargetClass"] = "ClaseObjetivo",
	["Substitutions/TargetGender"] = "GéneroObjetivo",
	["Substitutions/TargetGuild"] = "HermandadObjetivo",
	["Substitutions/TargetHealth"] = "SaludObjetivo",
	["Substitutions/TargetHealthDeficit"] = "DéficitSaludObjetivo",
	["Substitutions/TargetIcon"] = "IconoObjetivo",
	["Substitutions/TargetLevel"] = "NivelObjetivo",
	["Substitutions/TargetManaDeficit"] = "DéficitManaObjetivo",
	["Substitutions/TargetName"] = "NombreObjetivo",
	["Substitutions/TargetPercentHP"] = "PorcentVidaObjetivo",
	["Substitutions/TargetPossesive"] = "PosesiónObjetivo",
	["Substitutions/TargetPronoun"] = "PronombreObjetivo",
	["Substitutions/TargetRace"] = "RazaObjetivo",
	["Substitutions/TargetTargetName"] = "ObjetivoObjetivoNombre",
	["Substitutions/unknown sex"] = "Sexo desconocido",
	["Substitutions/user defined substition \"%s\" not found"] = "sustitución definida por el usuario \"%s\" no encontrada",
	["Substitutions/User defined substitutions"] = "Sustituciones definidas por el usuario",
	["Substitutions/user substitutions index (usersubs_idx) doesn't exist! oh dear."] = "¡no existe un índice de sustituciones de usuario (usersubs_idx)!.",
	["Substitutions/usersub_"] = "sub usuario_",
	["TellTarget//tt"] = "/tt",
	["TellTarget/Adds telltarget slash command (/tt)."] = "Añade comando decir a objetivo (/tt).",
	["TellTarget/No target selected."] = "Sin objetivo seleccionado.",
	["TellTarget/NoTarget"] = "SinObjetivo",
	["TellTarget/Target does not exist."] = "El Objetivo no existe.",
	["TellTarget/Target is not a player."] = "El Objetivo no es un jugador.",
	["TellTarget/TellTarget"] = "DecirObjetivo",
	["Timestamps/Chat window timestamp options."] = "Opciones de MáscaraTiempo de la ventana de chat.",
	["Timestamps/colortimestamp_desc"] = "Alterna activación de colorear máscara de tiempo.",
	["Timestamps/colortimestamp_name"] = "Color Máscara de Tiempo",
	["Timestamps/Format All Timestamps"] = "Formatear Todas las Mascaras de Tiempo",
	["Timestamps/HH:MM (12-hour)"] = "HH:MM (12-horas)",
	["Timestamps/HH:MM (24-hour)"] = "HH:MM (24-horas)",
	["Timestamps/HH:MM:SS (12-hour)"] = "HH:MM:SS (12-horas)",
	["Timestamps/HH:MM:SS (24-hour)"] = "HH:MM:SS (24-horas)",
	["Timestamps/HH:MM:SS AM (12-hour)"] = "HH:MM:SS AM (12-horas)",
	["Timestamps/localtime_desc"] = "Activa o desactiva el uso de la hora local.",
	["Timestamps/localtime_name"] = "Utilizar Hora Local",
	["Timestamps/MM:SS"] = "MM:SS",
	["Timestamps/Post-Timestamp"] = "Post-MáscaraTiempo",
	["Timestamps/Pre-Timestamp"] = "Pre-MáscaraTiempo",
	["Timestamps/Set the timestamp format"] = "Establecer el formato de la Máscara de Tiempo",
	["Timestamps/Set Timestamp Color"] = "Establecer Color MáscaraTiempo",
	["Timestamps/Sets the color of the timestamp."] = "Establece el Color de la Máscara de Tiempo.",
	["Timestamps/Show Timestamp"] = "Mostrar MáscaraTiempo",
	["Timestamps/show_desc"] = "Alterna activación de mostrar máscara de tiempo para cada ventana.",
	["Timestamps/show_name"] = "Mostrar Máscara de Tiempo",
	["Timestamps/space_desc"] = "Alterna activación de añadir un espacio tras la máscara de tiempo.",
	["Timestamps/space_name"] = "Mostrar Espacio",
	["Timestamps/Timestamps"] = "Máscara de Tiempo",
	["Timestamps/Toggle showing timestamp for each window."] = "Alterna mostrar máscara de tiempo para cada ventana.",
	["Timestamps/twocolumn_desc"] = "Colocar las máscaras de hora en una columna separada por lo que el texto no se ajustará debajo de ellas",
	["Timestamps/twocolumn_name"] = "2 Columnas Chat",
	["UrlCopy/Change the color of the URL."] = "Cambia el color de la URL.",
	["UrlCopy/Color URL"] = "Color URL",
	["UrlCopy/Set Color"] = "Establecer Color",
	["UrlCopy/Show Brackets"] = "Mostrar Corchetes",
	["UrlCopy/Toggle"] = "Alternar",
	["UrlCopy/Toggle showing brackets on and off."] = "Alterna activación de mostrar corchetes.",
	["UrlCopy/Toggle the module on and off."] = "Alterna la activación del módulo.",
	["UrlCopy/Toggle the URL color on and off."] = "Alterna activación del color de la URL.",
	["UrlCopy/URL formating options."] = "Opciones de formateo de URL.",
	["UrlCopy/UrlCopy"] = "CopiarURL",
	["UrlCopy/Use Popup"] = "Utilizar Ventanas Emergentes",
	["UrlCopy/Use popup window to show URL."] = "Utilizar ventanas emergentes para mostrar URL."
}

PL:AddLocale(nil, "esES",L)


L=
{
	["display_desc"] = "控制及檢視聊天視窗",
	["display_name"] = "顯示設定",
	["extras_desc"] = "Msc. 模組",
	["extras_name"] = "附加擴充",
	["formatting_desc"] = "改變行的外觀以及感覺",
	["formatting_name"] = "聊天格式化",
	["load_desc"] = "控制此模組載入狀態。",
	["load_disabled"] = "已停用",
	["load_disabledonrestart"] = "已停用(重新載入)",
	["load_enabled"] = "已啟用",
	["load_enabledonrestart"] = "已啟用(重新載入)",
	["load_no"] = "不會載入",
	["modulecontrol_desc"] = "控制載入以及啟用的 Prat 模組。",
	["modulecontrol_name"] = "模組控制",
	["prat"] = "Prat",
	["reload_required"] = "變更此選項後仍無法發揮完整功能，除非你%s你的插件。",
	["AddonMsgs/Addon message options."] = "插件訊息選項",
	["AddonMsgs/AddonMsgs"] = "插件訊息",
	["AddonMsgs/show_desc"] = "切換是否在每個聊天視窗顯示隱藏的插件訊息。",
	["AddonMsgs/show_name"] = "顯示插件訊息",
	["AddonMsgs/show_perframedesc"] = "切換是否顯示隱藏的插件訊息",
	["AddonMsgs/show_perframename"] = "聊天框架%d 插件訊息顯示",
	["Alias/ - list all aliases; supply <keyword> to search for matching aliases (cmd aliases: /listallaliases)"] = "- 列出所有別稱；提供 <keyword> 以搜尋所需的別稱（別稱指令：/listallaliases）",
	["Alias/%s() called with blank string!"] = "%s() 為空白字串！",
	["Alias/%s() called with nil argument!"] = "%s() 為無效參數！",
	["Alias//%s aliased to \"/%s\""] = "/%s 別稱連結至 \"/%s\"",
	["Alias//%s aliased to: /%s"] = "/%s 別稱連結至 \"/%s\"",
	["Alias/<alias> - remove the alias <alias> (cmd aliases: /delalias, /remalias)"] = "<alias> - 移除別稱 <alias>（別稱指令： /delalias，/remalias)",
	["Alias/<command>[ <value>] - alias <command> to be executed as <value>, or return the value of the currently defined alias for <command> if <command> has not been assigned a value. eg: \"/alias /examplehello /say hello there\" - typing \"/examplehello\" will now cause your character to say \"hello there\"; \"/alias examplehello\" - s \"/examplehello is aliased to /say hello there\" (cmd aliases: /addalias)"] = "<command>[ <value>] - 以代稱指令 <command> 來執行指令 <value>, 或當 <command> 後方沒有指定指令時通報目前設定給<command>之指定指令。 例如 \"/alias /examplehello /說 打招呼\" - 輸入 \"/examplehello\" 將使你的角色說 \"hello there\"; \"/alias examplehello\" - s \"/examplehello is aliased to /say hello there\" (cmd aliases: /addalias)",
	["Alias/<keyword> - finds all aliases matching <keyword> (cmd aliases: /findalias)"] = "<keyword> - 搜尋所有符合<keyword>的別稱（別稱指令： /findalias）",
	["Alias/add"] = "新增",
	["Alias/add an alias"] = "新增別稱",
	["Alias/alias \"/%s\" does not exist"] = "別稱 \"/%s\" 不存在",
	["Alias/dealiasing command /%s to /%s"] = "別稱的指令範圍/%s到/%s",
	["Alias/deleting alias \"/%s\" (previously aliased as \"/%s\")"] = "刪除別稱 \"/%s\"（先前別稱為 \"/%s\"）",
	["Alias/Display extra information in the chat frame when commands are dealiased"] = "當候選字的指令執行時在聊天視窗中顯示額外的訊息",
	["Alias/Don't overwrite existing aliases when using /addalias"] = "當使用 /addalias 禁止複寫已存在別稱",
	["Alias/Expand aliases as you are typing"] = "輸入文字時提示別稱",
	["Alias/find aliases matching a given search term"] = "搜尋與特定搜尋條件相符合之別稱",
	["Alias/findaliases"] = "搜尋別稱",
	["Alias/infinite loop detected for alias /%s - ignoring"] = "無限循環檢測別稱 /%s - 忽視",
	["Alias/inline"] = "內建",
	["Alias/list all aliases"] = "列出所有別稱",
	["Alias/listaliases"] = "列出別稱",
	["Alias/matching aliases found: %d"] = "相符合別稱: %d",
	["Alias/module_desc"] = "新增命令 /alias，其可將被使用於快捷指令如同 Unix系統中別稱指令。",
	["Alias/module_name"] = "別稱",
	["Alias/No aliases have been defined"] = "尚未定義任何別稱",
	["Alias/noclobber"] = "禁止複寫",
	["Alias/noclobber set - skipping new alias: /%s already expands to /%s"] = "禁止複寫設定 - 跳過新別稱：/%s 已擴充至 /%s",
	["Alias/Options"] = "選項",
	["Alias/Options for altering the behaviour of Alias"] = "修改別稱執行狀態選項",
	["Alias/overwriting existing alias \"/%s\" (was aliased to \"/%s\")"] = "複寫已存在別稱 \"/%s\"（為 \"/%s\" 之別稱）",
	--Translation missing 
	-- ["Alias/refusing to alias \"/%s\" to anything in the interests of Not Buggering Everything Up"] = "",
	["Alias/remove an alias"] = "移除別稱",
	["Alias/There is no alias current defined for \"%s\""] = "\"%s\" 尚未定義至任何別稱",
	["Alias/total aliases: %d"] = "總計別稱：%d",
	["Alias/tried to show value for alias \"%s\" but undefined in module.Aliases!"] = "試圖顯示縮寫指令\"%s\"的結果，但在module.Aliases中並未定義!",
	["Alias/unalias"] = "無別稱",
	["Alias/verbose"] = "詳細",
	["Alias/warnUser() called with nil argument!"] = "warnUser() 為無效參數！",
	["Alias/warnUser() called with zero length string!"] = "warnUser() 為零字元字串！",
	["AltNames/%d alts found for %s: %s"] = "%d 分身找到於 %s: %s",
	["AltNames/%s alts imported from LOKWhoIsWho"] = "%s 分身匯入來自 LOKWhoIsWho",
	["AltNames/%s total alts linked to mains"] = "%s 總分身連結本尊",
	["AltNames/(.-)'s? [Aa]lt"] = "%f[%a\\192-\\255]([%a\\192-\\255]+)%f[^%a\\128-\\255]'s [Aa]lt",
	["AltNames/([^%s%p%d%c%z]+)'s alt"] = "%f[%a\\192-\\255]([%a\\192-\\255]+)%f[^%a\\128-\\255]'s [Aa]lt",
	["AltNames/.*[Aa]lts?$"] = ".*[Aa]lts?$",
	["AltNames/<alt name> (eg, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)"] = "<alt name> (例如, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)",
	["AltNames/<main> (eg /altnames listalts Fin)"] = "<main> (例如 /altnames listalts Fin)",
	["AltNames/<search term> (eg, /altnames find fin)"] = "<search term> (例如, /altnames find fin)",
	["AltNames/Alt"] = "分身",
	["AltNames/alt"] = "分身",
	--Translation missing 
	-- ["AltNames/alt name exists: %s -> %s; not overwriting as set in preferences"] = "",
	["AltNames/AltNames"] = "分身名字",
	["AltNames/Alts:"] = "分身:",
	--Translation missing 
	-- ["AltNames/autoguildalts_desc"] = "",
	["AltNames/autoguildalts_name"] = "自動匯入公會分身",
	["AltNames/Be quiet"] = "安靜",
	["AltNames/character removed: %s"] = "已移除角色：%s",
	["AltNames/Class colour"] = "職業色彩",
	["AltNames/Clear all"] = "清除所有",
	--Translation missing 
	-- ["AltNames/Clear all links between alts and main names."] = "",
	["AltNames/Colour"] = "顏色",
	--Translation missing 
	-- ["AltNames/Delete a character's link to another character as their main."] = "",
	["AltNames/Delete alt"] = "刪除別稱",
	["AltNames/Disabled"] = "停用",
	["AltNames/Display a player's alts in the tooltip"] = "顯示在提示玩家的分身",
	["AltNames/Display a player's main name in the tooltip"] = "顯示在提示玩家的本尊名稱",
	--Translation missing 
	-- ["AltNames/Display main names in the same colour as that of the alt's class (taking the data from the PlayerNames module if it is enabled)"] = "",
	--Translation missing 
	-- ["AltNames/Display main names in the same colour as that of the main's class (taking the data from the PlayerNames module if it is enabled)"] = "",
	--Translation missing 
	-- ["AltNames/Don't overwrite existing alt <-> main links when importing or adding new alts."] = "",
	["AltNames/Don't overwrite existing links"] = "不要覆蓋現存的連接",
	["AltNames/don't use"] = "不要使用",
	--Translation missing 
	-- ["AltNames/Don't use data from the PlayerNames module at all"] = "",
	["AltNames/ERROR: some function sent a blank message!"] = "錯誤：某些功能傳送空白訊息！",
	["AltNames/Find characters"] = "搜尋角色",
	["AltNames/Fix alts"] = "修正別稱",
	["AltNames/Fix corrupted entries in your list of alt names."] = "修正列表中別稱損毀的項目",
	["AltNames/Found alt: %s => main: %s"] = "搜尋別稱：%s => 主要名稱：%s",
	["AltNames/guild member alts found and imported: %s"] = "公會成員別稱搜尋以及匯入：%s",
	["AltNames/Import from Guild Greet database"] = "匯入來自公會問候資料庫",
	["AltNames/Import from guild roster"] = "匯入公會名冊",
	["AltNames/Import options"] = "匯入選項設定",
	--Translation missing 
	-- ["AltNames/Imports alt names from a Guild Greet database, if present"] = "",
	--Translation missing 
	-- ["AltNames/Imports alt names from the guild roster by checking for members with the rank \"alt\" or \"alts\", or guild / officer notes like \"<name>'s alt\""] = "",
	--Translation missing 
	-- ["AltNames/Imports data from LOKWhoIsWho, if present (drop your SavedVariablesLOKWhoIsWho.lua in the Prat directory to be able to use this)."] = "",
	["AltNames/Left"] = "左方",
	["AltNames/link <alt name> <main name> (eg, /altnames link Fin Finjathealtoffin)"] = "link <alt name> <main name> (例如, /altnames link Fin Finjathealtoffin)",
	["AltNames/Link alt"] = "連結分身",
	--Translation missing 
	-- ["AltNames/Link someone's alt character with the name of their main."] = "",
	["AltNames/linked alt %s => %s"] = "連結分身 %s=> %s",
	["AltNames/List all"] = "列出所有",
	--Translation missing 
	-- ["AltNames/List all links between alts and their main names."] = "",
	["AltNames/List alts"] = "列出別稱",
	--Translation missing 
	-- ["AltNames/List alts for a given character"] = "",
	["AltNames/LOKWhoIsWho data not found"] = "LOKWhoIsWho 資料找不到",
	["AltNames/LOKWhoIsWho import"] = "LOKWhoIsWho 匯入",
	["AltNames/LOKWhoIsWho lua file not found, sorry."] = " LOKWhoIsWho lua 檔案找不到, 抱歉。 ",
	["AltNames/Main"] = "主要",
	["AltNames/main"] = "主要",
	["AltNames/Main name position"] = "主要名稱位置",
	["AltNames/Main:"] = "主要：",
	--Translation missing 
	-- ["AltNames/mainpos_desc"] = "",
	["AltNames/mainpos_name"] = "主要名稱位置",
	--Translation missing 
	-- ["AltNames/module_desc"] = "",
	["AltNames/no alts found for character "] = "未發現此角色分身",
	["AltNames/no alts or mains found matching \"%s\""] = "找不到分身或本尊符合\"%s\"",
	--Translation missing 
	-- ["AltNames/No arg string given to :addAlt()"] = "",
	["AltNames/no characters called \"%s\" found; nothing deleted"] = "找不到角色\"%s\"; 沒有刪除",
	["AltNames/No Guild Greet database found"] = "找不到公會問候資料庫",
	--Translation missing 
	-- ["AltNames/No main name supplied to link %s to"] = "",
	["AltNames/no matches found"] = "找不到符合",
	["AltNames/quiet"] = "安靜",
	["AltNames/quiet_desc"] = "是否回報至聊天視窗。",
	["AltNames/quiet_name"] = "quiet_name",
	["AltNames/Right"] = "右",
	--Translation missing 
	-- ["AltNames/Search the list of linked characters for matching main or alt names."] = "",
	["AltNames/searched for: %s - total matches: %s"] = "搜索於: %s - 總符合: %s",
	["AltNames/Show alts in tooltip"] = "顯示在提示分身",
	["AltNames/Show main in tooltip"] = "顯示提示主要",
	["AltNames/Start"] = "開始",
	--Translation missing 
	-- ["AltNames/The colour of an alt's main name that will be displayed"] = "",
	["AltNames/Use class colour (from the PlayerNames module)"] = "使用職業色彩（來自玩家名稱模組）",
	["AltNames/use class colour of alt"] = "使用職業色彩於玩家次要人物",
	["AltNames/use class colour of main"] = "使用職業色彩於玩家主要人物",
	["AltNames/Use LibAlts Data"] = "使用 LibAlts 資料",
	--Translation missing 
	-- ["AltNames/Use the data available via the shared alt information library."] = "",
	["AltNames/Various ways to import a main's alts from other addons"] = "由其他插件以各種方法匯入非主要人物。",
	["AltNames/warning: alt %s already linked to %s"] = "警告: 分身 %s 已經連結至 %s",
	["AltNames/Where to display a character's main name when on their alt."] = "用以顯示人物主要名稱於其其他角色名稱。",
	["AltNames/Whether to report to the chat frame or not."] = "是否回報至聊天框架裡。",
	["AltNames/You are not in a guild"] = "你並沒有加入任何公會",
	--Translation missing 
	-- ["AltNames/You have not yet linked any alts with their mains."] = "",
	--Translation missing 
	-- ["Bubbles/color_desc"] = "",
	["Bubbles/color_name"] = "顏色氣泡",
	--Translation missing 
	-- ["Bubbles/font_desc"] = "",
	["Bubbles/font_name"] = "使用聊天字型",
	["Bubbles/fontsize_desc"] = "設定聊天氣泡字型尺寸",
	["Bubbles/fontsize_name"] = "字型尺寸",
	--Translation missing 
	-- ["Bubbles/format_desc"] = "",
	["Bubbles/format_name"] = "格式文字",
	["Bubbles/icons_desc"] = "顯示在聊天氣泡團隊圖示。",
	["Bubbles/icons_name"] = "顯示團隊圖示",
	["Bubbles/module_desc"] = "自訂對話泡泡",
	["Bubbles/module_name"] = "對話泡泡",
	--Translation missing 
	-- ["Bubbles/shorten_desc"] = "",
	["Bubbles/shorten_name"] = "縮短氣泡",
	--Translation missing 
	-- ["Bubbles/transparent_desc"] = "",
	--Translation missing 
	-- ["Bubbles/transparent_name"] = "",
	["Buttons/alpha_desc"] = "設定所有聊天視窗的聊天選單以及箭頭。",
	["Buttons/alpha_name"] = "設定透明度",
	["Buttons/Buttons"] = "按鈕",
	["Buttons/Chat window button options."] = "聊天視窗按鈕選單。",
	["Buttons/chatmenu_desc"] = "切換聊天選單的開和關。",
	["Buttons/chatmenu_name"] = "顯示聊天選單",
	["Buttons/Default"] = "預設值",
	["Buttons/Right, Inside Frame"] = "右側，內部框架",
	["Buttons/Right, Outside Frame"] = "右側，外部框架",
	["Buttons/scrollReminder_desc"] = "當不在聊天視窗底部時顯示剩餘按鈕",
	["Buttons/scrollReminder_name"] = "顯示視窗可下卷的提示信號",
	["Buttons/Set Position"] = "設定位置",
	["Buttons/Sets position of chat menu and arrows for all chat windows."] = "設定聊天選單的位置與所有聊天視窗的箭頭。",
	["Buttons/Show Arrows"] = "顯示箭頭",
	["Buttons/Show Chat%d Arrows"] = "顯示聊天 %d 的箭頭",
	["Buttons/showbnet_desc"] = "顯示社交選單",
	["Buttons/showbnet_name"] = "顯示社交選單",
	["Buttons/showmenu_desc"] = "顯示聊天選單",
	["Buttons/showmenu_name"] = "顯示選單",
	["Buttons/showminimize_desc"] = "顯示最小化按鈕",
	["Buttons/showminimize_name"] = "顯示最小化按鈕",
	["Buttons/Toggle showing chat arrows for each chat window."] = "點擊顯示每個聊天視窗的聊天箭頭",
	["Buttons/Toggles navigation arrows on and off."] = "開啟/關閉輸入箭頭",
	["ChannelColorMemory/(%w+)%s?(.*)"] = "(%S+)%s?(.*)",
	["ChannelColorMemory/ChannelColorMemory"] = "頻道顏色記憶",
	["ChannelColorMemory/Remembers the colors of each channel name."] = "記住每個頻道顏色的名稱。",
	["ChannelNames/%s settings."] = "%s 設定。",
	["ChannelNames/<string>"] = "<string>",
	["ChannelNames/Add Channel Abbreviation"] = "新增頻道縮寫",
	--Translation missing 
	-- ["ChannelNames/addnick_desc"] = "",
	["ChannelNames/Blank"] = "空白",
	--Translation missing 
	-- ["ChannelNames/chanlink_desc"] = "",
	["ChannelNames/chanlink_name"] = "新建聊天連結",
	["ChannelNames/Channel %d"] = "頻道 %d",
	["ChannelNames/Channel name abbreviation options."] = "頻道名稱縮寫選項",
	["ChannelNames/ChannelNames"] = "頻道名稱",
	["ChannelNames/channelnick_desc"] = "頻道簡稱",
	["ChannelNames/channelnick_name"] = "頻道簡稱",
	["ChannelNames/Clear Channel Abbreviation"] = "清除頻道名稱縮寫",
	["ChannelNames/Clears an abbreviated channel name."] = "清除縮短頻道名稱。",
	--Translation missing 
	-- ["ChannelNames/colon_desc"] = "",
	["ChannelNames/colon_name"] = "顯示冒號",
	["ChannelNames/Dont display the channel/chat type name"] = "不要顯示頻道/聊天類型名稱",
	--Translation missing 
	-- ["ChannelNames/otheropts_desc"] = "",
	["ChannelNames/otheropts_name"] = "其他選項",
	["ChannelNames/Remove Channel Abbreviation"] = "移除頻道縮寫",
	["ChannelNames/Removes an an abbreviated channel name."] = "移除縮短頻道名稱。",
	["ChannelNames/Replace"] = "替換",
	["ChannelNames/Set"] = "設定",
	--Translation missing 
	-- ["ChannelNames/space_desc"] = "",
	["ChannelNames/space_name"] = "顯示空格",
	["ChannelNames/Toggle replacing this channel."] = "切換替代此頻道。",
	["ChannelNames/Use a custom replacement for the chat %s text."] = "用自訂更換聊天 %s 文字。",
	["ChannelSticky/Channel"] = "頻道",
	["ChannelSticky/ChannelSticky"] = "固定頻道",
	["ChannelSticky/Chat channel sticky options."] = "聊天頻道固定選項",
	["ChannelSticky/ChatType"] = "聊天類型",
	["ChannelSticky/Per chat type options."] = "每聊天類型選項。",
	--Translation missing 
	-- ["ChannelSticky/smartgroup_desc"] = "",
	["ChannelSticky/smartgroup_name"] = "智慧化群組",
	["ChannelSticky/Sticky %s"] = "固定 %s",
	["ChannelSticky/Sticky Per Chat Frame"] = "個別聊天視窗固定",
	--Translation missing 
	-- ["ChannelSticky/Toggle remembering the chat type last used per chat frame."] = "",
	--Translation missing 
	-- ["ChannelSticky/Toggles sticky on and off for %s."] = "",
	["ChatLink/gem_desc"] = "啟用珠寶鑲嵌模式",
	["ChatLink/gem_name"] = "珠寶鑲嵌",
	["ChatLink/module_desc"] = "聊天頻道連結選項",
	--Translation missing 
	-- ["ChatLink/module_info"] = "",
	["ChatLink/module_name"] = "頻道連結",
	["ChatLink/Trade"] = "交易",
	["ChatLog/A module to automaticaly enable chat and combat logging."] = "模組：自動啟用聊天以及戰鬥紀錄。",
	["ChatLog/Chat log recorded to <WoW Installation>\\Logs\\WoWChatLog.txt only upon logout."] = "聊天紀錄至 <WoW Installation>\\Logs\\WoWChatLog.txt 僅於遊戲登出時。",
	["ChatLog/Chat Log: Disabled"] = "聊天記錄：已停用",
	["ChatLog/Chat Log: Enabled"] = "聊天記錄：已啟用",
	["ChatLog/ChatLog"] = "聊天記錄",
	["ChatLog/Combat log recorded to <WoW Installation>\\Logs\\WoWCombatLog.txt only upon logout."] = "戰鬥紀錄至 <WoW Installation>\\Logs\\WoWChatLog.txt 僅於遊戲登出時。",
	["ChatLog/Combat Log: Disabled"] = "戰鬥記錄：已停用",
	["ChatLog/Combat Log: Enabled"] = "戰鬥記錄：已啟用",
	["ChatLog/quiet_desc"] = "禁止顯示任何訊息當插件啟用時的訊息或者插件改變紀錄設定時。",
	["ChatLog/quiet_name"] = "禁止回饋訊息",
	["ChatLog/Toggle Chat Log"] = "切換聊天記錄",
	["ChatLog/Toggle chat log on and off."] = "切換聊天記錄啟用",
	["ChatLog/Toggle Combat Log"] = "切換戰鬥記錄",
	["ChatLog/Toggle combat log on and off."] = "切換戰鬥記錄啟用",
	["ChatTabs/Active Alpha"] = "使用中透明度",
	["ChatTabs/All"] = "所有",
	["ChatTabs/Always"] = "總是",
	["ChatTabs/Chat window tab options."] = "聊天視窗標籤選單",
	["ChatTabs/Default"] = "預設值",
	["ChatTabs/disableflash_desc"] = "停用聊天標籤閃爍",
	["ChatTabs/disableflash_name"] = "停用閃爍",
	["ChatTabs/Hidden"] = "隱藏",
	["ChatTabs/Individual"] = "個人",
	["ChatTabs/Not Active Alpha"] = "非使用中透明度",
	["ChatTabs/preventdrag_desc"] = "預防以滑鼠拖曳聊天標籤",
	["ChatTabs/preventdrag_name"] = "防止拖曳",
	["ChatTabs/Set ChatFrame%d Display Mode"] = "設定聊天框架 %d 的顯示模式",
	["ChatTabs/Set Display Mode"] = "設定顯示模式",
	["ChatTabs/Set tab display mode for each chat window."] = "為個別聊天標籤顯示模式設定. 核選（啟用），取消（停用），灰階（預設值）",
	["ChatTabs/Set tab display to always, hidden or the Blizzard default."] = "設定是否顯示聊天標籤或者是 Blizzard預設值",
	["ChatTabs/Sets alpha of chat tab for active chat frame."] = "設定使用中聊天視窗標籤透明度",
	["ChatTabs/Sets alpha of chat tab for not active chat frame."] = "設定非使用中聊天視窗標籤透明度",
	["ChatTabs/Tabs"] = "標籤",
	["Clear/Adds clear text slash commands (/clear)(/cls)(/clearall)(/clsall)."] = "新增清除文字的快捷命令 (/clear)(/cls)(/clearall)(/clsall)",
	["Clear/Clear"] = "清除",
	["Clear/Clearall"] = "全部清除",
	["Clear/Clears all chat frames."] = "清除所有聊天視窗。",
	["Clear/Clears the current chat frame."] = "清除當前聊天視窗。",
	["CopyChat/ Text"] = "文字",
	["CopyChat/BBCode"] = "BBCode",
	["CopyChat/BOTTOMLEFT"] = "下, 左",
	["CopyChat/BOTTOMRIGHT"] = "下, 右",
	--Translation missing 
	-- ["CopyChat/buttonpos_desc"] = "",
	["CopyChat/buttonpos_name"] = "按鈕位置",
	["CopyChat/ChatFrame"] = "聊天視窗",
	--Translation missing 
	-- ["CopyChat/Copy all of the text in the selected chat frame into an edit box"] = "",
	["CopyChat/Copy Text"] = "複製文字",
	["CopyChat/Copy Text Format"] = "複製文字格式",
	["CopyChat/Copy text from the active chat window."] = "複製使用中聊天視窗文字",
	["CopyChat/Copy To Editbox"] = "複製至編輯盒",
	["CopyChat/CopyChat"] = "CopyChat",
	["CopyChat/HTML"] = "HTML",
	["CopyChat/Message From : %s"] = "來自 %s 的訊息",
	--Translation missing 
	-- ["CopyChat/Plain"] = "",
	--Translation missing 
	-- ["CopyChat/Should the copied text be plain, or formatted so you can see the colors."] = "",
	["CopyChat/showbutton_desc"] = "於聊天視窗中顯示按鈕",
	["CopyChat/showbutton_name"] = "複製按鈕",
	["CopyChat/TOPLEFT"] = "上, 左",
	["CopyChat/TOPRIGHT"] = "上, 右",
	["CopyChat/Wowace.com Forums"] = "Wowace.com 論壇",
	["CustomFilters/<string>"] = "<string>",
	["CustomFilters/Add a pattern to search for."] = "新增模式搜索。",
	["CustomFilters/Add Pattern"] = "新增樣式",
	["CustomFilters/Block Message"] = "屏蔽訊息",
	["CustomFilters/Channel Data"] = "頻道資料",
	["CustomFilters/Channel to send output text to."] = "頻道發送輸出文字至。",
	["CustomFilters/Enabled"] = "已啟用",
	["CustomFilters/Extra data for WHISPER (target) and CHANNEL (channel name or num)"] = "額外資料密話(目標)和頻道(頻道名稱或數字)",
	["CustomFilters/Filter Name"] = "過濾名稱",
	["CustomFilters/Forward"] = "轉送",
	["CustomFilters/Forward the message to a chat channel."] = "轉送訊息至聊天頻道",
	["CustomFilters/Forward the message to a custom chat channel."] = "轉送名稱至自訂聊天頻道",
	["CustomFilters/ForwardCustom"] = "自訂轉送",
	["CustomFilters/ForwardMessage"] = "轉送訊息",
	["CustomFilters/ForwardMessageCustom"] = "私人頻道",
	["CustomFilters/Hilight Color"] = "高亮提示色彩",
	["CustomFilters/Hilight Match Text"] = "符合高亮提示文字",
	["CustomFilters/Inbound"] = "傳入",
	["CustomFilters/inchannels_desc"] = "搜尋某些頻道",
	["CustomFilters/inchannels_name"] = "搜尋頻道",
	--Translation missing 
	-- ["CustomFilters/Is this pattern enabled for use?"] = "",
	["CustomFilters/Match Options"] = "匹配選項",
	["CustomFilters/module_desc"] = "支援自訂過濾的模組",
	["CustomFilters/module_name"] = "自定義過濾",
	--Translation missing 
	-- ["CustomFilters/Only output the message portion of the chat text, leave out the channel, and playername etc."] = "",
	["CustomFilters/Outbound"] = "傳出",
	["CustomFilters/Output Channel"] = "輸出頻道",
	["CustomFilters/Output Message Only"] = "僅輸出訊息",
	["CustomFilters/Pattern Info"] = "樣式資訊",
	["CustomFilters/Pattern Options"] = "模式選項",
	--Translation missing 
	-- ["CustomFilters/Play a sound when this message is output to the chatframe"] = "",
	["CustomFilters/Play Sound"] = "播放音效",
	--Translation missing 
	-- ["CustomFilters/Prevent the message from being displayed"] = "",
	["CustomFilters/Remove an existing pattern."] = "替換文本",
	["CustomFilters/Remove Pattern"] = "移除模板",
	["CustomFilters/Replacement Text"] = "替換文字",
	["CustomFilters/Search Format String"] = "搜尋格式字串",
	["CustomFilters/Search Pattern"] = "搜尋樣式",
	["CustomFilters/Secondary Output"] = "次要輸出",
	["CustomFilters/Send to a secondary output"] = "發送次要輸出",
	--Translation missing 
	-- ["CustomFilters/Supplied pattern is a format string instead of a pattern"] = "",
	["CustomFilters/Your name for this filter"] = "你的名字此過濾",
	["Editbox/Attach edit box to..."] = "附上編輯框...",
	["Editbox/Attach to..."] = "附上...",
	["Editbox/Background color"] = "背景色彩",
	["Editbox/Background Inset"] = "背景插入",
	["Editbox/Background texture"] = "背景材質",
	["Editbox/Border color"] = "邊緣色彩",
	["Editbox/Border texture"] = "邊緣材質",
	["Editbox/Bottom"] = "底部",
	["Editbox/Color border by channel"] = "顏色邊框由道頻",
	--Translation missing 
	-- ["Editbox/currently_broken_alt_behavior"] = "",
	["Editbox/Edge Size"] = "邊框尺寸",
	["Editbox/Editbox"] = "輸入框",
	["Editbox/Editbox options."] = "輸入框選單",
	["Editbox/Font"] = "字型",
	["Editbox/Free-floating"] = "自由浮動",
	["Editbox/Free-floating, Locked"] = "自由浮動, 已鎖定",
	--Translation missing 
	-- ["Editbox/Requires the Alt key to be held down to move the cursor in chat"] = "",
	["Editbox/Select the font to use for the edit box"] = "選擇字型使用編輯框",
	--Translation missing 
	-- ["Editbox/Sets the frame's border color to the color of your currently active channel"] = "",
	["Editbox/Tile Size"] = "並排尺寸",
	["Editbox/Top"] = "頂部",
	["Editbox/Use Alt key for cursor movement"] = "使用 Alt 鍵游標移動",
	--Translation missing 
	-- ["EventNames/allevents_desc"] = "",
	--Translation missing 
	-- ["EventNames/allevents_name"] = "",
	["EventNames/Chat window event name options."] = "聊天視窗事件名稱選項。",
	["EventNames/EventNames"] = "事件名稱",
	["EventNames/Show"] = "顯示",
	["EventNames/Show events on chatframes"] = "於聊天視窗顯示事件",
	["EventNames/show_desc"] = "切換顯示在每個視窗事件名稱。",
	["EventNames/show_name"] = "顯示事件名稱",
	["Fading/duration_desc"] = "設定視窗消褪秒數",
	["Fading/duration_name"] = "設定淡化延遲（秒數）",
	["Fading/module_desc"] = "聊天室窗淡化選項",
	["Fading/module_name"] = "淡化",
	["Fading/textfade_desc"] = "切換視窗文字消褪",
	["Fading/textfade_name"] = "啟用淡化",
	["Filtering/A module to provide basic chat filtering."] = "模組：提供基本聊天過濾。",
	--Translation missing 
	-- ["Filtering/afkdnd_desc"] = "",
	--Translation missing 
	-- ["Filtering/afkdnd_name"] = "",
	["Filtering/bgjoin_desc"] = "濾除戰場頻道離開/加入訊息",
	["Filtering/bgjoin_name"] = "過濾戰場離開/參加",
	["Filtering/Filtering"] = "過濾",
	["Filtering/leavejoin_desc"] = "濾除頻道離開/加入訊息",
	["Filtering/leavejoin_name"] = "過濾頻道離開/加入",
	["Filtering/notices_desc"] = "濾除自訂頻道通知訊息，像是主持人變動",
	["Filtering/notices_name"] = "過濾頻道通知",
	--Translation missing 
	-- ["Filtering/tradespam_desc"] = "",
	--Translation missing 
	-- ["Filtering/tradespam_name"] = "",
	["Font/Auto Restore Font Size"] = "自動還原字型大小",
	["Font/Chat window font options."] = "聊天視窗字型選項。",
	["Font/Font"] = "字型",
	["Font/monochrome_desc"] = "切換字型的灰階色彩。",
	["Font/monochrome_name"] = "切換灰階",
	["Font/None"] = "無",
	["Font/Outline"] = "輪廓",
	["Font/outlinemode_desc"] = "設定字體是否加粗輪廓",
	["Font/outlinemode_name"] = "設定輪廓模式",
	["Font/rememberfont_desc"] = "記住字型設定",
	["Font/rememberfont_name"] = "記憶字型",
	["Font/Set ChatFrame%d Font Size"] = "設定聊天視窗 %d 之字型大小",
	["Font/Set Font Face"] = "設定字體",
	["Font/Set Font Size"] = "設定字型大小",
	["Font/Set Separately"] = "個別設定",
	["Font/Set text font size for each chat window."] = "設定個別聊天視窗字型大小",
	["Font/Set text font size."] = "設定文字字型大小",
	["Font/Set the text font face for all chat windows."] = "設定所有聊天視窗字體",
	["Font/shadowcolor_desc"] = "設定陰影效果色彩",
	["Font/shadowcolor_name"] = "設定陰影色彩",
	["Font/Thick Outline"] = "粗邊",
	["Font/Toggle setting options separately for each chat window."] = "切換設定選項分開地每個聊天視窗。",
	["Font/Workaround a Blizzard bug which changes the font size when you open a system menu."] = "開啟系統選單時變更Blizzard錯誤訊息的字型大小。",
	["Frames/Chat window frame parameter options"] = "聊天視窗框架參數選項",
	--Translation missing 
	-- ["Frames/framealpha_desc"] = "",
	["Frames/framealpha_name"] = "設定聊天欄透明度",
	["Frames/Frames"] = "框架",
	--Translation missing 
	-- ["Frames/mainchatonload_desc"] = "",
	["Frames/mainchatonload_name"] = "強制主聊天框在載入",
	["Frames/maxchatheight_desc"] = "設定最大高度全部聊天視窗。",
	["Frames/maxchatheight_name"] = "設定最大高度",
	["Frames/maxchatwidth_desc"] = "設定最大寬度全部聊天視窗。",
	["Frames/maxchatwidth_name"] = "設定最大寬度",
	["Frames/minchatheight_desc"] = "設定對話視窗最小高度",
	["Frames/minchatheight_name"] = "設定最小高度",
	["Frames/minchatwidth_desc"] = "設定對話視窗最小寬度",
	["Frames/minchatwidth_name"] = "設定最小寬度",
	--Translation missing 
	-- ["Frames/rememberframepositions_desc"] = "",
	--Translation missing 
	-- ["Frames/rememberframepositions_name"] = "",
	--Translation missing 
	-- ["Frames/removeclamp_desc"] = "",
	--Translation missing 
	-- ["Frames/removeclamp_name"] = "",
	["History/Chat history options."] = "歷史訊息選項。",
	["History/Color GMOTD"] = "顏色 GMOTD",
	["History/Colors the GMOTD label"] = "顏色 GMOTD 標籤",
	--Translation missing 
	-- ["History/delaygmotd_desc"] = "",
	["History/delaygmotd_name"] = "延遲 GMOTD",
	["History/divider"] = "========== 捲動結束 ==========",
	["History/History"] = "歷史訊息",
	["History/Maximum number of lines of command history to save."] = "最大行數的指令記錄儲存。",
	["History/Save Command History"] = "儲存指令歷史",
	--Translation missing 
	-- ["History/Saves command history between sessions (for use with alt+up arrow or just the up arrow)"] = "",
	["History/Scrollback"] = "捲動",
	["History/Scrollback Options"] = "捲動選項",
	--Translation missing 
	-- ["History/scrollbacklen_desc"] = "",
	["History/scrollbacklen_name"] = "捲動長度",
	["History/Set Chat Lines"] = "設定聊天行數",
	["History/Set Command History"] = "設定指令歷史",
	["History/Set the number of lines of chat history for each window."] = "設定行數的聊天記錄每個視窗。",
	--Translation missing 
	-- ["History/Store the chat lines between sessions"] = "",
	["KeyBindings/Channel %d"] = "頻道 %d",
	["KeyBindings/Copy Selected Chat Frame"] = "複製選取的聊天視窗",
	["KeyBindings/Guild Channel"] = "公會頻道",
	["KeyBindings/Instance Channel"] = "戰場頻道",
	["KeyBindings/Next Chat Tab"] = "次個聊天標籤",
	["KeyBindings/Officer Channel"] = "幹部頻道",
	["KeyBindings/Party Channel"] = "小隊頻道",
	["KeyBindings/Prat CopyChat"] = "Prat 聊天複製",
	["KeyBindings/Prat Keybindings"] = "Prat按鍵綁定",
	["KeyBindings/Prat TellTarget"] = "Prat TellTarget",
	["KeyBindings/Raid Channel"] = "團隊頻道",
	["KeyBindings/Raid Warning Channel"] = "團隊警告頻道",
	["KeyBindings/Say"] = "說",
	["KeyBindings/Smart Group Channel"] = "按鍵綁定",
	["KeyBindings/TellTarget"] = "TellTarget",
	["KeyBindings/Whisper"] = "密語",
	["KeyBindings/Yell"] = "大喊",
	["OriginalButtons/alpha_desc"] = "為所有聊天視窗選單以及箭頭設定透明度",
	["OriginalButtons/alpha_name"] = "設定透明度",
	["OriginalButtons/buttonframe_desc"] = "切換按鍵框架選項",
	["OriginalButtons/buttonframe_name"] = "顯示按鍵框架",
	["OriginalButtons/ChannelNames"] = "頻道名稱",
	["OriginalButtons/Chat window button options."] = "聊天視窗按鈕選項。",
	["OriginalButtons/chatmenu_desc"] = "切換聊天選單開啟/關閉",
	["OriginalButtons/chatmenu_name"] = "顯示聊天選單",
	["OriginalButtons/Default"] = "預設值",
	["OriginalButtons/Original Buttons"] = "預設按鈕",
	--Translation missing 
	-- ["OriginalButtons/reflow_desc"] = "",
	["OriginalButtons/reflow_name"] = "文字流動環繞",
	["OriginalButtons/reminder_desc"] = "顯示按鈕提醒當聊天視窗未在最底層時",
	["OriginalButtons/reminder_name"] = "顯示下方箭頭提示",
	["OriginalButtons/Right, Inside Frame"] = "右側，視窗內部",
	["OriginalButtons/Right, Outside Frame"] = "左側，視窗外部",
	["OriginalButtons/Set Position"] = "設置位置",
	["OriginalButtons/Sets position of chat menu and arrows for all chat windows."] = "為所有聊天視窗設定聊天選單以及箭頭位置",
	["OriginalButtons/Show Arrows"] = "顯示箭頭",
	["OriginalButtons/Show Chat%d Arrows"] = "顯示聊天 %d 箭頭",
	["OriginalButtons/Toggle showing chat arrows for each chat window."] = "為所有聊天視窗啟用聊天箭頭。",
	["OriginalButtons/Toggles navigation arrows on and off."] = "切換是否啟用導覽箭頭",
	["OriginalEditbox/Autohide"] = "自動隱藏",
	["OriginalEditbox/BACKGROUND"] = "背景",
	["OriginalEditbox/Bar colour"] = "條列顏色",
	["OriginalEditbox/Border colour"] = [=[邊框顏色
]=],
	["OriginalEditbox/Border width"] = "邊框寬度",
	["OriginalEditbox/Bottom"] = "底部",
	--Translation missing 
	-- ["OriginalEditbox/Click the edit box to open it up for editing. Only available if Autohide is disabled."] = "",
	["OriginalEditbox/Clickable"] = "可用點擊",
	["OriginalEditbox/DIALOG"] = "DIALOG",
	["OriginalEditbox/Editbox options."] = "編輯選項。",
	["OriginalEditbox/Enable Arrowkeys"] = "啟用箭頭鍵",
	--Translation missing 
	-- ["OriginalEditbox/Enable using arrowkeys in editbox without the alt key."] = "",
	["OriginalEditbox/Hide Border"] = "隱藏邊緣",
	["OriginalEditbox/Hide the border around the edit box."] = "隱藏邊框環繞編輯框。",
	--Translation missing 
	-- ["OriginalEditbox/Hide the edit box after you have pressed enter."] = "",
	["OriginalEditbox/HIGH"] = "高",
	--Translation missing 
	-- ["OriginalEditbox/Lock editbox position if undocked."] = "",
	["OriginalEditbox/Lock Position"] = "鎖住位置",
	["OriginalEditbox/LOW"] = "低",
	["OriginalEditbox/MEDIUM"] = "中",
	["OriginalEditbox/OriginalEditbox"] = "原始編輯框",
	["OriginalEditbox/Padding"] = "填料",
	["OriginalEditbox/Set Alpha"] = "設定透明度",
	["OriginalEditbox/Set Position"] = "設定位置",
	["OriginalEditbox/Set Strata"] = "設定階層",
	["OriginalEditbox/Set the alpha of the editbox."] = "設定編輯框透明度",
	--Translation missing 
	-- ["OriginalEditbox/Set the amount of padding inside the edit box"] = "",
	["OriginalEditbox/Set the edit box background colour"] = "設定編輯框背景色彩",
	["OriginalEditbox/Set the edit box border colour"] = "設定編輯框邊緣色彩",
	["OriginalEditbox/Set the frame strata of the editbox."] = "設定編輯框的顯示層級",
	["OriginalEditbox/Set the position of the editbox."] = "設定編輯框位置",
	["OriginalEditbox/Set the texture of the chat edit box"] = "設定編輯框材質",
	["OriginalEditbox/Set the width of the edit box's border"] = "設定輸入框邊緣寬度",
	["OriginalEditbox/Set the width of the editbox."] = "設定輸入框寬度",
	--Translation missing 
	-- ["OriginalEditbox/Set Width (NB: only enabled if the editbox is undocked)"] = "",
	["OriginalEditbox/Texture"] = "材質",
	["OriginalEditbox/Top"] = "頂部",
	["OriginalEditbox/Undocked"] = "取消停靠",
	["Paragraph/adjustlinks_desc"] = "在置中或靠右排列文字時，調整連結並復原點擊開啟能力",
	["Paragraph/adjustlinks_name"] = "修正玩家或物品連結",
	["Paragraph/Center"] = "中央",
	["Paragraph/Chat window paragraph options."] = "聊天視窗段落設定",
	["Paragraph/justification_desc"] = "設定所有聊天視窗水平對齊",
	["Paragraph/justification_name"] = "設定對齊",
	["Paragraph/Left"] = "左方",
	["Paragraph/Line Spacing"] = "行間距",
	["Paragraph/Paragraph"] = "段落",
	["Paragraph/Right"] = "右",
	["Paragraph/Set the line spacing for all chat windows."] = "設定聊天視窗段落間隔",
	["PlayerNames/Actively Query Player Info"] = "主動查詢玩家資訊",
	["PlayerNames/Angled"] = "角",
	["PlayerNames/Brackets"] = "括號",
	["PlayerNames/Brackets Common Color"] = "括號通用色彩",
	["PlayerNames/Brackets Use Common Color"] = "括號使用的通用色彩",
	["PlayerNames/Class"] = "職業",
	["PlayerNames/Color by Level Difference"] = "等級差異色彩",
	["PlayerNames/coloreverywhere_desc"] = "當玩家名稱出現在聊天訊息文字中時，為其上色。",
	["PlayerNames/coloreverywhere_name"] = "顏色名字到處",
	["PlayerNames/Enable Alt-Invite"] = "啟用 Alt 按鍵邀請",
	["PlayerNames/Enable Invite Links"] = "啟用邀請連結",
	["PlayerNames/Enable TabComplete"] = "啟用 TabComplete",
	--Translation missing 
	-- ["PlayerNames/hoverhilight_desc"] = "",
	["PlayerNames/hoverhilight_name"] = "滑鼠懸停高亮",
	["PlayerNames/How to color other player's level."] = "如何為玩家等級著色",
	["PlayerNames/How to color player's name."] = "如何為玩家名稱著色",
	["PlayerNames/Keep Info"] = "保存資訊",
	["PlayerNames/Keep Lots Of Info"] = "保存大量資訊",
	["PlayerNames/Keep player information between session for all players except cross-server players"] = "保存此階段所有玩家資訊，除了跨伺服器人物。",
	["PlayerNames/Keep player information between session, but limit it to friends and guild members."] = "保存此階段玩家資訊，但限制為好友以及公會成員。",
	--Translation missing 
	-- ["PlayerNames/Let TasteTheNaimbow set the common color for unknown player names."] = "",
	["PlayerNames/Level Color Mode"] = "等級色彩模式",
	["PlayerNames/linkifycommon_desc"] = "製作連結共同的訊息",
	["PlayerNames/linkifycommon_name"] = "製作連結共同的訊息",
	["PlayerNames/No additional coloring"] = "無額外著色",
	["PlayerNames/None"] = "無",
	["PlayerNames/Player Color Mode"] = "玩家色彩模式",
	["PlayerNames/Player name formating options."] = "玩家名稱格式化選項。",
	["PlayerNames/PlayerNames"] = "玩家名稱",
	["PlayerNames/Prat_Playernames: Stored Player Data Cleared"] = "Prat_Playernames：已清除儲存的玩家資料",
	["PlayerNames/Query the server for all player names we do not know. Note: This happpens pretty slowly, and this data is not saved."] = "查詢所有此伺服器我們不知道的角色名稱。備註：這個程序相當緩慢且並不會儲存此資料。",
	["PlayerNames/Random"] = "隨機",
	["PlayerNames/realidcolor_desc"] = "RealID 名稱著色",
	["PlayerNames/realidcolor_name"] = "RealID 著色",
	["PlayerNames/Reset Settings"] = "重置設定",
	["PlayerNames/Restore default settings, and delete stored character data."] = "恢復至預設值且刪除儲存的角色資料。",
	["PlayerNames/Set common color of unknown player names."] = "設定未知角色的顯示色彩",
	["PlayerNames/Sets common color of brackets to use around player names."] = "設定用來圍繞玩家名稱的括號顏色。",
	["PlayerNames/Sets style of brackets to use around player names."] = "設定用來圍繞玩家名稱的括號類型。",
	["PlayerNames/Show Group"] = "顯示隊伍編號",
	["PlayerNames/Show Level"] = "顯示等級",
	["PlayerNames/Show Raid Target Icon"] = "顯示團隊標記",
	["PlayerNames/Square"] = "方框",
	["PlayerNames/Tab completion : "] = "標籤完成:",
	["PlayerNames/tabcomplete_name"] = "可能的名稱 ",
	--Translation missing 
	-- ["PlayerNames/Toggle group invites by alt-clicking hyperlinked keywords like 'invite'."] = "",
	["PlayerNames/Toggle group invites by alt-clicking on player name."] = "組隊邀請用alt-點擊玩家名稱。",
	["PlayerNames/Toggle level showing."] = "切換等級顯示。",
	["PlayerNames/Toggle raid group showing."] = "切換團隊組隊顯示。",
	["PlayerNames/Toggle showing the raid target icon which is currently on the player."] = "顯示當前玩家的團隊目標圖標",
	["PlayerNames/Toggle tab completion of player names."] = "切換玩家名稱的標籤完成。",
	["PlayerNames/Toggle using a common color for brackets around player names."] = "選擇是否為玩家名稱外的括號使用一個通用顏色",
	["PlayerNames/Toggle using a common color for unknown player names."] = "切換未知玩家以一般色彩顯示",
	["PlayerNames/Too many matches (%d possible)"] = "太多符合 (可能 %d)",
	["PlayerNames/Unknown Common Color"] = "未知的文字通用顏色",
	["PlayerNames/Unknown Common Color From TasteTheNaimbow"] = "來自TasteTheNaimbow 的未知的文字通用顏色",
	["PlayerNames/Unknown Use Common Color"] = "未知的文字使用通用顏色",
	["PlayerNames/Use Channel Color"] = "使用頻道文字顏色",
	["PlayerNames/Use Player Color"] = "使用腳色名稱文字色彩",
	--Translation missing 
	-- ["PlayerNames/Use toon name for RealID"] = "",
	["PopupMessage/Add Nickname"] = "新增暱稱",
	--Translation missing 
	-- ["PopupMessage/Adds an alternate name to show in popups."] = "",
	["PopupMessage/Clear Nickname"] = "清除暱稱",
	--Translation missing 
	-- ["PopupMessage/Clears alternate name to show in popups."] = "",
	["PopupMessage/framealpha_desc"] = "設定彈出視窗完全淡入時的透明度值",
	["PopupMessage/framealpha_name"] = "彈出視窗透明度",
	["PopupMessage/Popup"] = "彈出",
	["PopupMessage/PopupMessage"] = "彈出訊息",
	["PopupMessage/Remove Nickname"] = "移除暱稱",
	--Translation missing 
	-- ["PopupMessage/Removes an alternate name to show in popups."] = "",
	["PopupMessage/Set Separately"] = "單獨設定",
	["PopupMessage/Show All Popups"] = "顯示所有彈出視窗",
	["PopupMessage/Show Popups"] = "顯示彈出視窗",
	["PopupMessage/Show Popups for all chat windows."] = "顯示彈出全部聊天視窗。",
	["PopupMessage/Show Popups for each window."] = "顯示彈出每個視窗。",
	["PopupMessage/show_desc"] = "顯示彈出每個視窗。",
	["PopupMessage/show_name"] = "顯示彈出",
	["PopupMessage/show_perframedesc"] = "換顯示彈出開動和關閉。",
	["PopupMessage/show_perframename"] = "顯示 ChatFrame%d 彈出",
	["PopupMessage/showall_desc"] = "顯示彈出全部聊天視窗。",
	["PopupMessage/showall_name"] = "顯示全部彈出",
	["PopupMessage/Shows messages in a popup window."] = "顯示在彈出視窗訊息。",
	--Translation missing 
	-- ["PopupMessage/Shows messages with your name in a popup."] = "",
	--Translation missing 
	-- ["PopupMessage/Toggle setting options separately for each chat window."] = "",
	["Scroll/Bottom"] = "由下而上",
	["Scroll/Chat window scrolling options."] = "聊天視窗滾動選項",
	--Translation missing 
	-- ["Scroll/Control whether text is added to the frame at the top or the bottom."] = "",
	["Scroll/lowdown_desc"] = "切換是否於個別聊天視窗自動跳轉至最新訊息",
	["Scroll/lowdown_name"] = "啟用 TheLowDown",
	["Scroll/modified_speed"] = "設定 Shift+滑鼠滾輪速度",
	--Translation missing 
	-- ["Scroll/modified_speed_desc"] = "",
	["Scroll/mousewheel_desc"] = "切換是否於個別聊天視窗支援滑鼠滾輪",
	["Scroll/mousewheel_name"] = "啟用滑鼠滾輪",
	["Scroll/Scroll"] = "滾動",
	["Scroll/Set Ctrl+MouseWheel Speed"] = "設定 Ctrl 及滑鼠滾輪速度",
	["Scroll/Set MouseWheel Speed"] = "設定滑鼠滾輪速度",
	["Scroll/Set number of lines mousewheel will scroll when ctrl is pressed."] = "設定當按下 Ctrl時滑鼠滾輪滾動的行數",
	["Scroll/Set number of lines mousewheel will scroll."] = "設定滑鼠滾輪將滾動行數數字",
	["Scroll/Set TheLowDown Delay"] = "設定上下延遲",
	--Translation missing 
	-- ["Scroll/Set time to wait before jumping to the bottom of chat windows."] = "",
	["Scroll/Text scroll direction"] = "文字滾動方向",
	["Scroll/Top"] = "由上而下",
	["Scrollback/divider"] = "========== 捲動結束 ==========",
	["Scrollback/Scrollback"] = "捲動",
	--Translation missing 
	-- ["Scrollback/Store the chat lines between sessions"] = "",
	["Search/err_notfound"] = "找不到",
	["Search/err_tooshort"] = "尋找物品太短",
	["Search/find_results"] = "找到結果:",
	--Translation missing 
	-- ["Search/module_desc"] = "",
	--Translation missing 
	-- ["Search/module_info"] = "",
	["Search/module_name"] = "尋找",
	--Translation missing 
	-- ["ServerNames/autoabbreviate_desc"] = "",
	["ServerNames/autoabbreviate_name"] = "自動縮短",
	--Translation missing 
	-- ["ServerNames/colon_desc"] = "",
	["ServerNames/colon_name"] = "顯示冒號",
	["ServerNames/randomclr_desc"] = "伺服器名稱使用隨機色彩",
	["ServerNames/randomclr_name"] = "隨機色彩",
	["ServerNames/Server name abbreviation options."] = "伺服器名稱縮寫選項",
	["ServerNames/ServerNames"] = "伺服器名稱",
	["Sounds/A module to play sounds on certain chat messages."] = "模組：於特定聊天訊息播放音效。",
	["Sounds/Add a custom channel"] = "加入自訂頻道",
	["Sounds/bn_whisper_desc"] = "聲音於 %s Battle.Net 密話訊息",
	["Sounds/bn_whisper_name"] = "Battle.Net 密話",
	["Sounds/Custom Channels"] = "自訂頻道",
	--Translation missing 
	-- ["Sounds/group_lead_desc"] = "",
	["Sounds/group_lead_name"] = "隊長",
	["Sounds/guild_desc"] = "公會訊息音效：%s",
	["Sounds/guild_name"] = "公會",
	["Sounds/incoming"] = "收入",
	["Sounds/Incoming Sounds"] = "收入聲音",
	["Sounds/officer_desc"] = "幹部頻道音效：%s",
	["Sounds/officer_name"] = "幹部",
	["Sounds/outgoing"] = "外出",
	["Sounds/Outgoing Sounds"] = "外出聲音",
	["Sounds/party_desc"] = "小隊訊息音效：%s",
	["Sounds/party_name"] = "小隊",
	["Sounds/Play a sound for a certain channel name (can be a substring)"] = "於此頻道播放音效（可為字串）",
	["Sounds/raid_desc"] = "戰場以及戰場領導訊息音效：%s",
	["Sounds/raid_name"] = "團隊",
	["Sounds/Remove a custom channel"] = "移除自訂頻道",
	["Sounds/Reset settings"] = "重置設定",
	["Sounds/Restore default settings and resets custom channel list"] = "恢復預設設定以及重置自訂聊天列表",
	["Sounds/Sound selection for incoming chat messages"] = "發送選擇收入聊天訊息",
	["Sounds/Sound selection for outgoing (from you) chat messages"] = "發送選擇外出(從你)聊天訊息",
	["Sounds/Sounds"] = "音效",
	["Sounds/whisper_desc"] = "密語訊息音效：%s",
	["Sounds/whisper_name"] = "密語",
	["Substitutions/%d total user defined substitutions"] = "%d 總使用者定義代替",
	--Translation missing 
	-- ["Substitutions/|cffff0000warning:|r subtitution \"%s\" already defined as \"%s\", overwriting"] = "",
	["Substitutions/<noguild>"] = "<無公會>",
	["Substitutions/<notarget>"] = "<無目標>",
	["Substitutions/A module to provide basic chat substitutions."] = "提供基本聊天標題的模組",
	["Substitutions/Are you sure - this will delete all user defined substitutions and reset defaults?"] = "你確定嗎 - 這將刪除所有使用者替換且重置至預設值？",
	["Substitutions/Are you sure?"] = "你確定嗎？",
	--Translation missing 
	-- ["Substitutions/can't find substitution index for a substitution named '%s'"] = "",
	["Substitutions/current-prompt"] = [=[當前值：%s
點擊以在聊天視窗中貼上]=],
	["Substitutions/defined %s: expands to => %s"] = "定義 %s：擴張至 => %s",
	["Substitutions/Delete all"] = "刪除所有",
	["Substitutions/Delete substitution"] = "刪除標題",
	["Substitutions/Deletes a user defined substitution"] = "刪除一個由使用者自定義的標題",
	["Substitutions/Deletes all user defined substitutions"] = "刪除所有由使用者自定義的標題",
	["Substitutions/female"] = "女性",
	["Substitutions/her"] = "她",
	["Substitutions/hers"] = "她的",
	["Substitutions/him"] = "他",
	["Substitutions/his"] = "他的",
	["Substitutions/it"] = "它",
	["Substitutions/its"] = "它的",
	["Substitutions/List of available substitutions"] = "可用標題清單",
	["Substitutions/List of available substitutions defined by this module. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "由此模組定義的可用標題之清單",
	["Substitutions/List substitutions"] = "標題清單",
	["Substitutions/Lists all current subtitutions in the default chat frame"] = "默認聊天框中所有現用標題清單",
	["Substitutions/male"] = "男性",
	["Substitutions/MapLoc"] = "MapLoc",
	["Substitutions/MapPos"] = "地圖位置",
	["Substitutions/MapXPos"] = "地圖X軸",
	["Substitutions/MapYPos"] = "地圖Y軸",
	["Substitutions/MapZone"] = "地圖地區",
	--Translation missing 
	-- ["Substitutions/module:buildUserSubsIndex(): warning: module patterns not defined!"] = "",
	["Substitutions/MouseoverTargetName"] = "鼠標懸停目標名字",
	["Substitutions/NO MATCHFUNC FOUND"] = "NO MATCHFUNC FOUND",
	--Translation missing 
	-- ["Substitutions/no substitution name given"] = "",
	--Translation missing 
	-- ["Substitutions/no substitution name supplied for deletion"] = "",
	["Substitutions/no user defined subs found"] = "找不到使用者定義的代替",
	--Translation missing 
	-- ["Substitutions/no value given for subtitution \"%s\""] = "",
	--Translation missing 
	-- ["Substitutions/Options for setting and removing user defined substitutions. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "",
	["Substitutions/PlayerAverageItemLevel"] = "PlayerAverageItemLevel",
	["Substitutions/PlayerCurrentMana"] = "玩家當前法力值",
	["Substitutions/PlayerHealthDeficit"] = "玩家生命不足",
	["Substitutions/PlayerHP"] = "玩家生命值",
	["Substitutions/PlayerManaDeficit"] = "玩家法力不足",
	["Substitutions/PlayerMaxHP"] = "玩家最大血量",
	["Substitutions/PlayerMaxMana"] = "玩家最大法力",
	["Substitutions/PlayerName"] = "玩家名字",
	["Substitutions/PlayerPercentHP"] = "玩家百分比血量",
	["Substitutions/PlayerPercentMana"] = "玩家百分比法力",
	["Substitutions/RandNum"] = "RandNum",
	--Translation missing 
	-- ["Substitutions/removing user defined substitution \"%s\"; previously expanded to => \"%s\""] = "",
	["Substitutions/Set substitution"] = "設定代替",
	--Translation missing 
	-- ["Substitutions/Set the value of a user defined substitution (NB: this may be the same as an existing default substitution; to reset it to the default, just remove the user created definition)."] = "",
	--Translation missing 
	-- ["Substitutions/subname -- NOTE: sub name without the prefix '%'"] = "",
	--Translation missing 
	-- ["Substitutions/subname = text after expansion -- NOTE: sub name without the prefix \"%\""] = "",
	["Substitutions/substitution: %s defined as => %s"] = "代替: %s 定義為 => %s",
	["Substitutions/Substitutions"] = "代替",
	["Substitutions/TargetClass"] = "目標職業",
	["Substitutions/TargetGender"] = "目標性別",
	["Substitutions/TargetGuild"] = "目標公會",
	["Substitutions/TargetHealth"] = "目標生命",
	["Substitutions/TargetHealthDeficit"] = "目標生命不足",
	["Substitutions/TargetIcon"] = "目標圖示",
	["Substitutions/TargetLevel"] = "目標等級",
	["Substitutions/TargetManaDeficit"] = "目標法力不足",
	["Substitutions/TargetName"] = "目標名字",
	["Substitutions/TargetPercentHP"] = "目標百比分血量",
	--Translation missing 
	-- ["Substitutions/TargetPossesive"] = "",
	["Substitutions/TargetPronoun"] = "目標代名詞",
	["Substitutions/TargetRace"] = "目標種族",
	["Substitutions/TargetTargetName"] = "目標的目標名字",
	["Substitutions/unknown sex"] = "未知的性別",
	["Substitutions/user defined substition \"%s\" not found"] = "未搜尋到使用者自定義替換 \"%s\"",
	["Substitutions/User defined substitutions"] = "使用者自定義的替換",
	["Substitutions/user substitutions index (usersubs_idx) doesn't exist! oh dear."] = "親愛的使用者自替換索引(usersubs_idx)並不存在。",
	["Substitutions/usersub_"] = "usersub_",
	["TellTarget//tt"] = "/tt",
	["TellTarget/Adds telltarget slash command (/tt)."] = "新增 telltarget 快捷命令（/tt）",
	["TellTarget/No target selected."] = "未選取目標",
	["TellTarget/NoTarget"] = "沒有目標",
	["TellTarget/Target does not exist."] = "目標並不存在",
	["TellTarget/Target is not a player."] = "目標並不是玩家",
	["TellTarget/TellTarget"] = "TellTarget",
	["Timestamps/Chat window timestamp options."] = "聊天視窗時間戳選項",
	["Timestamps/colortimestamp_desc"] = "切換是否為時間戳著色。",
	["Timestamps/colortimestamp_name"] = "時間戳色彩",
	["Timestamps/Format All Timestamps"] = "所有時間戳格式",
	["Timestamps/HH:MM (12-hour)"] = "HH:MM (12時制)",
	["Timestamps/HH:MM (24-hour)"] = "HH:MM (24時制)",
	["Timestamps/HH:MM:SS (12-hour)"] = "HH:MM:SS (12時制)",
	["Timestamps/HH:MM:SS (24-hour)"] = "HH:MM:SS (24時制)",
	["Timestamps/HH:MM:SS AM (12-hour)"] = "HH:MM:SS AM (12時制)",
	["Timestamps/localtime_desc"] = "切換是否使用本地時間",
	["Timestamps/localtime_name"] = "使用本地時間",
	["Timestamps/MM:SS"] = "MM:SS",
	["Timestamps/Post-Timestamp"] = "貼出時間戳",
	["Timestamps/Pre-Timestamp"] = "時間標籤",
	["Timestamps/Set the timestamp format"] = "設定時間戳格式",
	["Timestamps/Set Timestamp Color"] = "設定時間戳色彩",
	["Timestamps/Sets the color of the timestamp."] = "設定時間戳色彩。",
	["Timestamps/Show Timestamp"] = "顯示時間戳",
	["Timestamps/show_desc"] = "切換顯示時間標籤",
	["Timestamps/show_name"] = "顯示時間戳",
	--Translation missing 
	-- ["Timestamps/space_desc"] = "",
	["Timestamps/space_name"] = "顯示空白",
	["Timestamps/Timestamps"] = "時間戳",
	["Timestamps/Toggle showing timestamp for each window."] = "切換是否在個別視窗顯示時間戳。",
	--Translation missing 
	-- ["Timestamps/twocolumn_desc"] = "",
	["Timestamps/twocolumn_name"] = "兩欄式聊天",
	["UrlCopy/Change the color of the URL."] = "改變網址顯示的色彩",
	["UrlCopy/Color URL"] = "網址色彩",
	["UrlCopy/Set Color"] = "設定色彩",
	["UrlCopy/Show Brackets"] = "顯示括號",
	["UrlCopy/Toggle"] = "切換",
	["UrlCopy/Toggle showing brackets on and off."] = "切換是否顯示括號。",
	["UrlCopy/Toggle the module on and off."] = "切換是否啟用模組。",
	["UrlCopy/Toggle the URL color on and off."] = "切換是否顯示網址色彩。",
	["UrlCopy/URL formating options."] = "網址格式化選項",
	["UrlCopy/UrlCopy"] = "網址複製",
	["UrlCopy/Use Popup"] = "使用彈出視窗",
	["UrlCopy/Use popup window to show URL."] = "使用彈出視窗用以顯示網址"
}

PL:AddLocale(nil, "zhTW",L)


L=
{
	--Translation missing 
	-- ["display_desc"] = "",
	--Translation missing 
	-- ["display_name"] = "",
	--Translation missing 
	-- ["extras_desc"] = "",
	--Translation missing 
	-- ["extras_name"] = "",
	--Translation missing 
	-- ["formatting_desc"] = "",
	--Translation missing 
	-- ["formatting_name"] = "",
	--Translation missing 
	-- ["load_desc"] = "",
	--Translation missing 
	-- ["load_disabled"] = "",
	--Translation missing 
	-- ["load_disabledonrestart"] = "",
	--Translation missing 
	-- ["load_enabled"] = "",
	--Translation missing 
	-- ["load_enabledonrestart"] = "",
	--Translation missing 
	-- ["load_no"] = "",
	--Translation missing 
	-- ["modulecontrol_desc"] = "",
	--Translation missing 
	-- ["modulecontrol_name"] = "",
	--Translation missing 
	-- ["prat"] = "",
	--Translation missing 
	-- ["reload_required"] = "",
	--Translation missing 
	-- ["AddonMsgs/Addon message options."] = "",
	--Translation missing 
	-- ["AddonMsgs/AddonMsgs"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_desc"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_name"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_perframedesc"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_perframename"] = "",
	--Translation missing 
	-- ["Alias/ - list all aliases; supply <keyword> to search for matching aliases (cmd aliases: /listallaliases)"] = "",
	--Translation missing 
	-- ["Alias/%s() called with blank string!"] = "",
	--Translation missing 
	-- ["Alias/%s() called with nil argument!"] = "",
	--Translation missing 
	-- ["Alias//%s aliased to \"/%s\""] = "",
	--Translation missing 
	-- ["Alias//%s aliased to: /%s"] = "",
	--Translation missing 
	-- ["Alias/<alias> - remove the alias <alias> (cmd aliases: /delalias, /remalias)"] = "",
	--Translation missing 
	-- ["Alias/<command>[ <value>] - alias <command> to be executed as <value>, or return the value of the currently defined alias for <command> if <command> has not been assigned a value. eg: \"/alias /examplehello /say hello there\" - typing \"/examplehello\" will now cause your character to say \"hello there\"; \"/alias examplehello\" - s \"/examplehello is aliased to /say hello there\" (cmd aliases: /addalias)"] = "",
	--Translation missing 
	-- ["Alias/<keyword> - finds all aliases matching <keyword> (cmd aliases: /findalias)"] = "",
	--Translation missing 
	-- ["Alias/add"] = "",
	--Translation missing 
	-- ["Alias/add an alias"] = "",
	--Translation missing 
	-- ["Alias/alias \"/%s\" does not exist"] = "",
	--Translation missing 
	-- ["Alias/dealiasing command /%s to /%s"] = "",
	--Translation missing 
	-- ["Alias/deleting alias \"/%s\" (previously aliased as \"/%s\")"] = "",
	--Translation missing 
	-- ["Alias/Display extra information in the chat frame when commands are dealiased"] = "",
	--Translation missing 
	-- ["Alias/Don't overwrite existing aliases when using /addalias"] = "",
	--Translation missing 
	-- ["Alias/Expand aliases as you are typing"] = "",
	--Translation missing 
	-- ["Alias/find aliases matching a given search term"] = "",
	--Translation missing 
	-- ["Alias/findaliases"] = "",
	--Translation missing 
	-- ["Alias/infinite loop detected for alias /%s - ignoring"] = "",
	--Translation missing 
	-- ["Alias/inline"] = "",
	--Translation missing 
	-- ["Alias/list all aliases"] = "",
	--Translation missing 
	-- ["Alias/listaliases"] = "",
	--Translation missing 
	-- ["Alias/matching aliases found: %d"] = "",
	--Translation missing 
	-- ["Alias/module_desc"] = "",
	--Translation missing 
	-- ["Alias/module_name"] = "",
	--Translation missing 
	-- ["Alias/No aliases have been defined"] = "",
	--Translation missing 
	-- ["Alias/noclobber"] = "",
	--Translation missing 
	-- ["Alias/noclobber set - skipping new alias: /%s already expands to /%s"] = "",
	--Translation missing 
	-- ["Alias/Options"] = "",
	--Translation missing 
	-- ["Alias/Options for altering the behaviour of Alias"] = "",
	--Translation missing 
	-- ["Alias/overwriting existing alias \"/%s\" (was aliased to \"/%s\")"] = "",
	--Translation missing 
	-- ["Alias/refusing to alias \"/%s\" to anything in the interests of Not Buggering Everything Up"] = "",
	--Translation missing 
	-- ["Alias/remove an alias"] = "",
	--Translation missing 
	-- ["Alias/There is no alias current defined for \"%s\""] = "",
	--Translation missing 
	-- ["Alias/total aliases: %d"] = "",
	--Translation missing 
	-- ["Alias/tried to show value for alias \"%s\" but undefined in module.Aliases!"] = "",
	--Translation missing 
	-- ["Alias/unalias"] = "",
	--Translation missing 
	-- ["Alias/verbose"] = "",
	--Translation missing 
	-- ["Alias/warnUser() called with nil argument!"] = "",
	--Translation missing 
	-- ["Alias/warnUser() called with zero length string!"] = "",
	--Translation missing 
	-- ["AltNames/%d alts found for %s: %s"] = "",
	--Translation missing 
	-- ["AltNames/%s alts imported from LOKWhoIsWho"] = "",
	--Translation missing 
	-- ["AltNames/%s total alts linked to mains"] = "",
	--Translation missing 
	-- ["AltNames/(.-)'s? [Aa]lt"] = "",
	--Translation missing 
	-- ["AltNames/([^%s%p%d%c%z]+)'s alt"] = "",
	--Translation missing 
	-- ["AltNames/.*[Aa]lts?$"] = "",
	--Translation missing 
	-- ["AltNames/<alt name> (eg, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)"] = "",
	--Translation missing 
	-- ["AltNames/<main> (eg /altnames listalts Fin)"] = "",
	--Translation missing 
	-- ["AltNames/<search term> (eg, /altnames find fin)"] = "",
	--Translation missing 
	-- ["AltNames/Alt"] = "",
	--Translation missing 
	-- ["AltNames/alt"] = "",
	--Translation missing 
	-- ["AltNames/alt name exists: %s -> %s; not overwriting as set in preferences"] = "",
	--Translation missing 
	-- ["AltNames/AltNames"] = "",
	--Translation missing 
	-- ["AltNames/Alts:"] = "",
	--Translation missing 
	-- ["AltNames/autoguildalts_desc"] = "",
	--Translation missing 
	-- ["AltNames/autoguildalts_name"] = "",
	--Translation missing 
	-- ["AltNames/Be quiet"] = "",
	--Translation missing 
	-- ["AltNames/character removed: %s"] = "",
	--Translation missing 
	-- ["AltNames/Class colour"] = "",
	--Translation missing 
	-- ["AltNames/Clear all"] = "",
	--Translation missing 
	-- ["AltNames/Clear all links between alts and main names."] = "",
	--Translation missing 
	-- ["AltNames/Colour"] = "",
	--Translation missing 
	-- ["AltNames/Delete a character's link to another character as their main."] = "",
	--Translation missing 
	-- ["AltNames/Delete alt"] = "",
	--Translation missing 
	-- ["AltNames/Disabled"] = "",
	--Translation missing 
	-- ["AltNames/Display a player's alts in the tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Display a player's main name in the tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Display main names in the same colour as that of the alt's class (taking the data from the PlayerNames module if it is enabled)"] = "",
	--Translation missing 
	-- ["AltNames/Display main names in the same colour as that of the main's class (taking the data from the PlayerNames module if it is enabled)"] = "",
	--Translation missing 
	-- ["AltNames/Don't overwrite existing alt <-> main links when importing or adding new alts."] = "",
	--Translation missing 
	-- ["AltNames/Don't overwrite existing links"] = "",
	--Translation missing 
	-- ["AltNames/don't use"] = "",
	--Translation missing 
	-- ["AltNames/Don't use data from the PlayerNames module at all"] = "",
	--Translation missing 
	-- ["AltNames/ERROR: some function sent a blank message!"] = "",
	--Translation missing 
	-- ["AltNames/Find characters"] = "",
	--Translation missing 
	-- ["AltNames/Fix alts"] = "",
	--Translation missing 
	-- ["AltNames/Fix corrupted entries in your list of alt names."] = "",
	--Translation missing 
	-- ["AltNames/Found alt: %s => main: %s"] = "",
	--Translation missing 
	-- ["AltNames/guild member alts found and imported: %s"] = "",
	--Translation missing 
	-- ["AltNames/Import from Guild Greet database"] = "",
	--Translation missing 
	-- ["AltNames/Import from guild roster"] = "",
	--Translation missing 
	-- ["AltNames/Import options"] = "",
	--Translation missing 
	-- ["AltNames/Imports alt names from a Guild Greet database, if present"] = "",
	--Translation missing 
	-- ["AltNames/Imports alt names from the guild roster by checking for members with the rank \"alt\" or \"alts\", or guild / officer notes like \"<name>'s alt\""] = "",
	--Translation missing 
	-- ["AltNames/Imports data from LOKWhoIsWho, if present (drop your SavedVariablesLOKWhoIsWho.lua in the Prat directory to be able to use this)."] = "",
	--Translation missing 
	-- ["AltNames/Left"] = "",
	--Translation missing 
	-- ["AltNames/link <alt name> <main name> (eg, /altnames link Fin Finjathealtoffin)"] = "",
	--Translation missing 
	-- ["AltNames/Link alt"] = "",
	--Translation missing 
	-- ["AltNames/Link someone's alt character with the name of their main."] = "",
	--Translation missing 
	-- ["AltNames/linked alt %s => %s"] = "",
	--Translation missing 
	-- ["AltNames/List all"] = "",
	--Translation missing 
	-- ["AltNames/List all links between alts and their main names."] = "",
	--Translation missing 
	-- ["AltNames/List alts"] = "",
	--Translation missing 
	-- ["AltNames/List alts for a given character"] = "",
	--Translation missing 
	-- ["AltNames/LOKWhoIsWho data not found"] = "",
	--Translation missing 
	-- ["AltNames/LOKWhoIsWho import"] = "",
	--Translation missing 
	-- ["AltNames/LOKWhoIsWho lua file not found, sorry."] = "",
	--Translation missing 
	-- ["AltNames/Main"] = "",
	--Translation missing 
	-- ["AltNames/main"] = "",
	--Translation missing 
	-- ["AltNames/Main name position"] = "",
	--Translation missing 
	-- ["AltNames/Main:"] = "",
	--Translation missing 
	-- ["AltNames/mainpos_desc"] = "",
	--Translation missing 
	-- ["AltNames/mainpos_name"] = "",
	--Translation missing 
	-- ["AltNames/module_desc"] = "",
	--Translation missing 
	-- ["AltNames/no alts found for character "] = "",
	--Translation missing 
	-- ["AltNames/no alts or mains found matching \"%s\""] = "",
	--Translation missing 
	-- ["AltNames/No arg string given to :addAlt()"] = "",
	--Translation missing 
	-- ["AltNames/no characters called \"%s\" found; nothing deleted"] = "",
	--Translation missing 
	-- ["AltNames/No Guild Greet database found"] = "",
	--Translation missing 
	-- ["AltNames/No main name supplied to link %s to"] = "",
	--Translation missing 
	-- ["AltNames/no matches found"] = "",
	--Translation missing 
	-- ["AltNames/quiet"] = "",
	--Translation missing 
	-- ["AltNames/quiet_desc"] = "",
	--Translation missing 
	-- ["AltNames/quiet_name"] = "",
	--Translation missing 
	-- ["AltNames/Right"] = "",
	--Translation missing 
	-- ["AltNames/Search the list of linked characters for matching main or alt names."] = "",
	--Translation missing 
	-- ["AltNames/searched for: %s - total matches: %s"] = "",
	--Translation missing 
	-- ["AltNames/Show alts in tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Show main in tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Start"] = "",
	--Translation missing 
	-- ["AltNames/The colour of an alt's main name that will be displayed"] = "",
	--Translation missing 
	-- ["AltNames/Use class colour (from the PlayerNames module)"] = "",
	--Translation missing 
	-- ["AltNames/use class colour of alt"] = "",
	--Translation missing 
	-- ["AltNames/use class colour of main"] = "",
	--Translation missing 
	-- ["AltNames/Use LibAlts Data"] = "",
	--Translation missing 
	-- ["AltNames/Use the data available via the shared alt information library."] = "",
	--Translation missing 
	-- ["AltNames/Various ways to import a main's alts from other addons"] = "",
	--Translation missing 
	-- ["AltNames/warning: alt %s already linked to %s"] = "",
	--Translation missing 
	-- ["AltNames/Where to display a character's main name when on their alt."] = "",
	--Translation missing 
	-- ["AltNames/Whether to report to the chat frame or not."] = "",
	--Translation missing 
	-- ["AltNames/You are not in a guild"] = "",
	--Translation missing 
	-- ["AltNames/You have not yet linked any alts with their mains."] = "",
	--Translation missing 
	-- ["Bubbles/color_desc"] = "",
	--Translation missing 
	-- ["Bubbles/color_name"] = "",
	--Translation missing 
	-- ["Bubbles/font_desc"] = "",
	--Translation missing 
	-- ["Bubbles/font_name"] = "",
	--Translation missing 
	-- ["Bubbles/fontsize_desc"] = "",
	--Translation missing 
	-- ["Bubbles/fontsize_name"] = "",
	--Translation missing 
	-- ["Bubbles/format_desc"] = "",
	--Translation missing 
	-- ["Bubbles/format_name"] = "",
	--Translation missing 
	-- ["Bubbles/icons_desc"] = "",
	--Translation missing 
	-- ["Bubbles/icons_name"] = "",
	--Translation missing 
	-- ["Bubbles/module_desc"] = "",
	--Translation missing 
	-- ["Bubbles/module_name"] = "",
	--Translation missing 
	-- ["Bubbles/shorten_desc"] = "",
	--Translation missing 
	-- ["Bubbles/shorten_name"] = "",
	--Translation missing 
	-- ["Bubbles/transparent_desc"] = "",
	--Translation missing 
	-- ["Bubbles/transparent_name"] = "",
	--Translation missing 
	-- ["Buttons/alpha_desc"] = "",
	--Translation missing 
	-- ["Buttons/alpha_name"] = "",
	--Translation missing 
	-- ["Buttons/Buttons"] = "",
	--Translation missing 
	-- ["Buttons/Chat window button options."] = "",
	--Translation missing 
	-- ["Buttons/chatmenu_desc"] = "",
	--Translation missing 
	-- ["Buttons/chatmenu_name"] = "",
	--Translation missing 
	-- ["Buttons/Default"] = "",
	--Translation missing 
	-- ["Buttons/Right, Inside Frame"] = "",
	--Translation missing 
	-- ["Buttons/Right, Outside Frame"] = "",
	--Translation missing 
	-- ["Buttons/scrollReminder_desc"] = "",
	--Translation missing 
	-- ["Buttons/scrollReminder_name"] = "",
	--Translation missing 
	-- ["Buttons/Set Position"] = "",
	--Translation missing 
	-- ["Buttons/Sets position of chat menu and arrows for all chat windows."] = "",
	--Translation missing 
	-- ["Buttons/Show Arrows"] = "",
	--Translation missing 
	-- ["Buttons/Show Chat%d Arrows"] = "",
	--Translation missing 
	-- ["Buttons/showbnet_desc"] = "",
	--Translation missing 
	-- ["Buttons/showbnet_name"] = "",
	--Translation missing 
	-- ["Buttons/showmenu_desc"] = "",
	--Translation missing 
	-- ["Buttons/showmenu_name"] = "",
	--Translation missing 
	-- ["Buttons/showminimize_desc"] = "",
	--Translation missing 
	-- ["Buttons/showminimize_name"] = "",
	--Translation missing 
	-- ["Buttons/Toggle showing chat arrows for each chat window."] = "",
	--Translation missing 
	-- ["Buttons/Toggles navigation arrows on and off."] = "",
	--Translation missing 
	-- ["ChannelColorMemory/(%w+)%s?(.*)"] = "",
	--Translation missing 
	-- ["ChannelColorMemory/ChannelColorMemory"] = "",
	--Translation missing 
	-- ["ChannelColorMemory/Remembers the colors of each channel name."] = "",
	--Translation missing 
	-- ["ChannelNames/%s settings."] = "",
	--Translation missing 
	-- ["ChannelNames/<string>"] = "",
	--Translation missing 
	-- ["ChannelNames/Add Channel Abbreviation"] = "",
	--Translation missing 
	-- ["ChannelNames/addnick_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/Blank"] = "",
	--Translation missing 
	-- ["ChannelNames/chanlink_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/chanlink_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Channel %d"] = "",
	--Translation missing 
	-- ["ChannelNames/Channel name abbreviation options."] = "",
	--Translation missing 
	-- ["ChannelNames/ChannelNames"] = "",
	--Translation missing 
	-- ["ChannelNames/channelnick_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/channelnick_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Clear Channel Abbreviation"] = "",
	--Translation missing 
	-- ["ChannelNames/Clears an abbreviated channel name."] = "",
	--Translation missing 
	-- ["ChannelNames/colon_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/colon_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Dont display the channel/chat type name"] = "",
	--Translation missing 
	-- ["ChannelNames/otheropts_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/otheropts_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Remove Channel Abbreviation"] = "",
	--Translation missing 
	-- ["ChannelNames/Removes an an abbreviated channel name."] = "",
	--Translation missing 
	-- ["ChannelNames/Replace"] = "",
	--Translation missing 
	-- ["ChannelNames/Set"] = "",
	--Translation missing 
	-- ["ChannelNames/space_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/space_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Toggle replacing this channel."] = "",
	--Translation missing 
	-- ["ChannelNames/Use a custom replacement for the chat %s text."] = "",
	--Translation missing 
	-- ["ChannelSticky/Channel"] = "",
	--Translation missing 
	-- ["ChannelSticky/ChannelSticky"] = "",
	--Translation missing 
	-- ["ChannelSticky/Chat channel sticky options."] = "",
	--Translation missing 
	-- ["ChannelSticky/ChatType"] = "",
	--Translation missing 
	-- ["ChannelSticky/Per chat type options."] = "",
	--Translation missing 
	-- ["ChannelSticky/smartgroup_desc"] = "",
	--Translation missing 
	-- ["ChannelSticky/smartgroup_name"] = "",
	--Translation missing 
	-- ["ChannelSticky/Sticky %s"] = "",
	--Translation missing 
	-- ["ChannelSticky/Sticky Per Chat Frame"] = "",
	--Translation missing 
	-- ["ChannelSticky/Toggle remembering the chat type last used per chat frame."] = "",
	--Translation missing 
	-- ["ChannelSticky/Toggles sticky on and off for %s."] = "",
	--Translation missing 
	-- ["ChatLink/gem_desc"] = "",
	--Translation missing 
	-- ["ChatLink/gem_name"] = "",
	--Translation missing 
	-- ["ChatLink/module_desc"] = "",
	--Translation missing 
	-- ["ChatLink/module_info"] = "",
	--Translation missing 
	-- ["ChatLink/module_name"] = "",
	--Translation missing 
	-- ["ChatLink/Trade"] = "",
	--Translation missing 
	-- ["ChatLog/A module to automaticaly enable chat and combat logging."] = "",
	--Translation missing 
	-- ["ChatLog/Chat log recorded to <WoW Installation>\\Logs\\WoWChatLog.txt only upon logout."] = "",
	--Translation missing 
	-- ["ChatLog/Chat Log: Disabled"] = "",
	--Translation missing 
	-- ["ChatLog/Chat Log: Enabled"] = "",
	--Translation missing 
	-- ["ChatLog/ChatLog"] = "",
	--Translation missing 
	-- ["ChatLog/Combat log recorded to <WoW Installation>\\Logs\\WoWCombatLog.txt only upon logout."] = "",
	--Translation missing 
	-- ["ChatLog/Combat Log: Disabled"] = "",
	--Translation missing 
	-- ["ChatLog/Combat Log: Enabled"] = "",
	--Translation missing 
	-- ["ChatLog/quiet_desc"] = "",
	--Translation missing 
	-- ["ChatLog/quiet_name"] = "",
	--Translation missing 
	-- ["ChatLog/Toggle Chat Log"] = "",
	--Translation missing 
	-- ["ChatLog/Toggle chat log on and off."] = "",
	--Translation missing 
	-- ["ChatLog/Toggle Combat Log"] = "",
	--Translation missing 
	-- ["ChatLog/Toggle combat log on and off."] = "",
	--Translation missing 
	-- ["ChatTabs/Active Alpha"] = "",
	--Translation missing 
	-- ["ChatTabs/All"] = "",
	--Translation missing 
	-- ["ChatTabs/Always"] = "",
	--Translation missing 
	-- ["ChatTabs/Chat window tab options."] = "",
	--Translation missing 
	-- ["ChatTabs/Default"] = "",
	--Translation missing 
	-- ["ChatTabs/disableflash_desc"] = "",
	--Translation missing 
	-- ["ChatTabs/disableflash_name"] = "",
	--Translation missing 
	-- ["ChatTabs/Hidden"] = "",
	--Translation missing 
	-- ["ChatTabs/Individual"] = "",
	--Translation missing 
	-- ["ChatTabs/Not Active Alpha"] = "",
	--Translation missing 
	-- ["ChatTabs/preventdrag_desc"] = "",
	--Translation missing 
	-- ["ChatTabs/preventdrag_name"] = "",
	--Translation missing 
	-- ["ChatTabs/Set ChatFrame%d Display Mode"] = "",
	--Translation missing 
	-- ["ChatTabs/Set Display Mode"] = "",
	--Translation missing 
	-- ["ChatTabs/Set tab display mode for each chat window."] = "",
	--Translation missing 
	-- ["ChatTabs/Set tab display to always, hidden or the Blizzard default."] = "",
	--Translation missing 
	-- ["ChatTabs/Sets alpha of chat tab for active chat frame."] = "",
	--Translation missing 
	-- ["ChatTabs/Sets alpha of chat tab for not active chat frame."] = "",
	--Translation missing 
	-- ["ChatTabs/Tabs"] = "",
	--Translation missing 
	-- ["Clear/Adds clear text slash commands (/clear)(/cls)(/clearall)(/clsall)."] = "",
	--Translation missing 
	-- ["Clear/Clear"] = "",
	--Translation missing 
	-- ["Clear/Clearall"] = "",
	--Translation missing 
	-- ["Clear/Clears all chat frames."] = "",
	--Translation missing 
	-- ["Clear/Clears the current chat frame."] = "",
	--Translation missing 
	-- ["CopyChat/ Text"] = "",
	--Translation missing 
	-- ["CopyChat/BBCode"] = "",
	--Translation missing 
	-- ["CopyChat/BOTTOMLEFT"] = "",
	--Translation missing 
	-- ["CopyChat/BOTTOMRIGHT"] = "",
	--Translation missing 
	-- ["CopyChat/buttonpos_desc"] = "",
	--Translation missing 
	-- ["CopyChat/buttonpos_name"] = "",
	--Translation missing 
	-- ["CopyChat/ChatFrame"] = "",
	--Translation missing 
	-- ["CopyChat/Copy all of the text in the selected chat frame into an edit box"] = "",
	--Translation missing 
	-- ["CopyChat/Copy Text"] = "",
	--Translation missing 
	-- ["CopyChat/Copy Text Format"] = "",
	--Translation missing 
	-- ["CopyChat/Copy text from the active chat window."] = "",
	--Translation missing 
	-- ["CopyChat/Copy To Editbox"] = "",
	--Translation missing 
	-- ["CopyChat/CopyChat"] = "",
	--Translation missing 
	-- ["CopyChat/HTML"] = "",
	--Translation missing 
	-- ["CopyChat/Message From : %s"] = "",
	--Translation missing 
	-- ["CopyChat/Plain"] = "",
	--Translation missing 
	-- ["CopyChat/Should the copied text be plain, or formatted so you can see the colors."] = "",
	--Translation missing 
	-- ["CopyChat/showbutton_desc"] = "",
	--Translation missing 
	-- ["CopyChat/showbutton_name"] = "",
	--Translation missing 
	-- ["CopyChat/TOPLEFT"] = "",
	--Translation missing 
	-- ["CopyChat/TOPRIGHT"] = "",
	--Translation missing 
	-- ["CopyChat/Wowace.com Forums"] = "",
	--Translation missing 
	-- ["CustomFilters/<string>"] = "",
	--Translation missing 
	-- ["CustomFilters/Add a pattern to search for."] = "",
	--Translation missing 
	-- ["CustomFilters/Add Pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Block Message"] = "",
	--Translation missing 
	-- ["CustomFilters/Channel Data"] = "",
	--Translation missing 
	-- ["CustomFilters/Channel to send output text to."] = "",
	--Translation missing 
	-- ["CustomFilters/Enabled"] = "",
	--Translation missing 
	-- ["CustomFilters/Extra data for WHISPER (target) and CHANNEL (channel name or num)"] = "",
	--Translation missing 
	-- ["CustomFilters/Filter Name"] = "",
	--Translation missing 
	-- ["CustomFilters/Forward"] = "",
	--Translation missing 
	-- ["CustomFilters/Forward the message to a chat channel."] = "",
	--Translation missing 
	-- ["CustomFilters/Forward the message to a custom chat channel."] = "",
	--Translation missing 
	-- ["CustomFilters/ForwardCustom"] = "",
	--Translation missing 
	-- ["CustomFilters/ForwardMessage"] = "",
	--Translation missing 
	-- ["CustomFilters/ForwardMessageCustom"] = "",
	--Translation missing 
	-- ["CustomFilters/Hilight Color"] = "",
	--Translation missing 
	-- ["CustomFilters/Hilight Match Text"] = "",
	--Translation missing 
	-- ["CustomFilters/Inbound"] = "",
	--Translation missing 
	-- ["CustomFilters/inchannels_desc"] = "",
	--Translation missing 
	-- ["CustomFilters/inchannels_name"] = "",
	--Translation missing 
	-- ["CustomFilters/Is this pattern enabled for use?"] = "",
	--Translation missing 
	-- ["CustomFilters/Match Options"] = "",
	--Translation missing 
	-- ["CustomFilters/module_desc"] = "",
	--Translation missing 
	-- ["CustomFilters/module_name"] = "",
	--Translation missing 
	-- ["CustomFilters/Only output the message portion of the chat text, leave out the channel, and playername etc."] = "",
	--Translation missing 
	-- ["CustomFilters/Outbound"] = "",
	--Translation missing 
	-- ["CustomFilters/Output Channel"] = "",
	--Translation missing 
	-- ["CustomFilters/Output Message Only"] = "",
	--Translation missing 
	-- ["CustomFilters/Pattern Info"] = "",
	--Translation missing 
	-- ["CustomFilters/Pattern Options"] = "",
	--Translation missing 
	-- ["CustomFilters/Play a sound when this message is output to the chatframe"] = "",
	--Translation missing 
	-- ["CustomFilters/Play Sound"] = "",
	--Translation missing 
	-- ["CustomFilters/Prevent the message from being displayed"] = "",
	--Translation missing 
	-- ["CustomFilters/Remove an existing pattern."] = "",
	--Translation missing 
	-- ["CustomFilters/Remove Pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Replacement Text"] = "",
	--Translation missing 
	-- ["CustomFilters/Search Format String"] = "",
	--Translation missing 
	-- ["CustomFilters/Search Pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Secondary Output"] = "",
	--Translation missing 
	-- ["CustomFilters/Send to a secondary output"] = "",
	--Translation missing 
	-- ["CustomFilters/Supplied pattern is a format string instead of a pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Your name for this filter"] = "",
	--Translation missing 
	-- ["Editbox/Attach edit box to..."] = "",
	--Translation missing 
	-- ["Editbox/Attach to..."] = "",
	--Translation missing 
	-- ["Editbox/Background color"] = "",
	--Translation missing 
	-- ["Editbox/Background Inset"] = "",
	--Translation missing 
	-- ["Editbox/Background texture"] = "",
	--Translation missing 
	-- ["Editbox/Border color"] = "",
	--Translation missing 
	-- ["Editbox/Border texture"] = "",
	--Translation missing 
	-- ["Editbox/Bottom"] = "",
	--Translation missing 
	-- ["Editbox/Color border by channel"] = "",
	--Translation missing 
	-- ["Editbox/currently_broken_alt_behavior"] = "",
	--Translation missing 
	-- ["Editbox/Edge Size"] = "",
	--Translation missing 
	-- ["Editbox/Editbox"] = "",
	--Translation missing 
	-- ["Editbox/Editbox options."] = "",
	--Translation missing 
	-- ["Editbox/Font"] = "",
	--Translation missing 
	-- ["Editbox/Free-floating"] = "",
	--Translation missing 
	-- ["Editbox/Free-floating, Locked"] = "",
	--Translation missing 
	-- ["Editbox/Requires the Alt key to be held down to move the cursor in chat"] = "",
	--Translation missing 
	-- ["Editbox/Select the font to use for the edit box"] = "",
	--Translation missing 
	-- ["Editbox/Sets the frame's border color to the color of your currently active channel"] = "",
	--Translation missing 
	-- ["Editbox/Tile Size"] = "",
	--Translation missing 
	-- ["Editbox/Top"] = "",
	--Translation missing 
	-- ["Editbox/Use Alt key for cursor movement"] = "",
	--Translation missing 
	-- ["EventNames/allevents_desc"] = "",
	--Translation missing 
	-- ["EventNames/allevents_name"] = "",
	--Translation missing 
	-- ["EventNames/Chat window event name options."] = "",
	--Translation missing 
	-- ["EventNames/EventNames"] = "",
	--Translation missing 
	-- ["EventNames/Show"] = "",
	--Translation missing 
	-- ["EventNames/Show events on chatframes"] = "",
	--Translation missing 
	-- ["EventNames/show_desc"] = "",
	--Translation missing 
	-- ["EventNames/show_name"] = "",
	--Translation missing 
	-- ["Fading/duration_desc"] = "",
	--Translation missing 
	-- ["Fading/duration_name"] = "",
	--Translation missing 
	-- ["Fading/module_desc"] = "",
	--Translation missing 
	-- ["Fading/module_name"] = "",
	--Translation missing 
	-- ["Fading/textfade_desc"] = "",
	--Translation missing 
	-- ["Fading/textfade_name"] = "",
	--Translation missing 
	-- ["Filtering/A module to provide basic chat filtering."] = "",
	--Translation missing 
	-- ["Filtering/afkdnd_desc"] = "",
	--Translation missing 
	-- ["Filtering/afkdnd_name"] = "",
	--Translation missing 
	-- ["Filtering/bgjoin_desc"] = "",
	--Translation missing 
	-- ["Filtering/bgjoin_name"] = "",
	--Translation missing 
	-- ["Filtering/Filtering"] = "",
	--Translation missing 
	-- ["Filtering/leavejoin_desc"] = "",
	--Translation missing 
	-- ["Filtering/leavejoin_name"] = "",
	--Translation missing 
	-- ["Filtering/notices_desc"] = "",
	--Translation missing 
	-- ["Filtering/notices_name"] = "",
	--Translation missing 
	-- ["Filtering/tradespam_desc"] = "",
	--Translation missing 
	-- ["Filtering/tradespam_name"] = "",
	--Translation missing 
	-- ["Font/Auto Restore Font Size"] = "",
	--Translation missing 
	-- ["Font/Chat window font options."] = "",
	--Translation missing 
	-- ["Font/Font"] = "",
	--Translation missing 
	-- ["Font/monochrome_desc"] = "",
	--Translation missing 
	-- ["Font/monochrome_name"] = "",
	--Translation missing 
	-- ["Font/None"] = "",
	--Translation missing 
	-- ["Font/Outline"] = "",
	--Translation missing 
	-- ["Font/outlinemode_desc"] = "",
	--Translation missing 
	-- ["Font/outlinemode_name"] = "",
	--Translation missing 
	-- ["Font/rememberfont_desc"] = "",
	--Translation missing 
	-- ["Font/rememberfont_name"] = "",
	--Translation missing 
	-- ["Font/Set ChatFrame%d Font Size"] = "",
	--Translation missing 
	-- ["Font/Set Font Face"] = "",
	--Translation missing 
	-- ["Font/Set Font Size"] = "",
	--Translation missing 
	-- ["Font/Set Separately"] = "",
	--Translation missing 
	-- ["Font/Set text font size for each chat window."] = "",
	--Translation missing 
	-- ["Font/Set text font size."] = "",
	--Translation missing 
	-- ["Font/Set the text font face for all chat windows."] = "",
	--Translation missing 
	-- ["Font/shadowcolor_desc"] = "",
	--Translation missing 
	-- ["Font/shadowcolor_name"] = "",
	--Translation missing 
	-- ["Font/Thick Outline"] = "",
	--Translation missing 
	-- ["Font/Toggle setting options separately for each chat window."] = "",
	--Translation missing 
	-- ["Font/Workaround a Blizzard bug which changes the font size when you open a system menu."] = "",
	--Translation missing 
	-- ["Frames/Chat window frame parameter options"] = "",
	--Translation missing 
	-- ["Frames/framealpha_desc"] = "",
	--Translation missing 
	-- ["Frames/framealpha_name"] = "",
	--Translation missing 
	-- ["Frames/Frames"] = "",
	--Translation missing 
	-- ["Frames/mainchatonload_desc"] = "",
	--Translation missing 
	-- ["Frames/mainchatonload_name"] = "",
	--Translation missing 
	-- ["Frames/maxchatheight_desc"] = "",
	--Translation missing 
	-- ["Frames/maxchatheight_name"] = "",
	--Translation missing 
	-- ["Frames/maxchatwidth_desc"] = "",
	--Translation missing 
	-- ["Frames/maxchatwidth_name"] = "",
	--Translation missing 
	-- ["Frames/minchatheight_desc"] = "",
	--Translation missing 
	-- ["Frames/minchatheight_name"] = "",
	--Translation missing 
	-- ["Frames/minchatwidth_desc"] = "",
	--Translation missing 
	-- ["Frames/minchatwidth_name"] = "",
	--Translation missing 
	-- ["Frames/rememberframepositions_desc"] = "",
	--Translation missing 
	-- ["Frames/rememberframepositions_name"] = "",
	--Translation missing 
	-- ["Frames/removeclamp_desc"] = "",
	--Translation missing 
	-- ["Frames/removeclamp_name"] = "",
	--Translation missing 
	-- ["History/Chat history options."] = "",
	--Translation missing 
	-- ["History/Color GMOTD"] = "",
	--Translation missing 
	-- ["History/Colors the GMOTD label"] = "",
	--Translation missing 
	-- ["History/delaygmotd_desc"] = "",
	--Translation missing 
	-- ["History/delaygmotd_name"] = "",
	--Translation missing 
	-- ["History/divider"] = "",
	--Translation missing 
	-- ["History/History"] = "",
	--Translation missing 
	-- ["History/Maximum number of lines of command history to save."] = "",
	--Translation missing 
	-- ["History/Save Command History"] = "",
	--Translation missing 
	-- ["History/Saves command history between sessions (for use with alt+up arrow or just the up arrow)"] = "",
	--Translation missing 
	-- ["History/Scrollback"] = "",
	--Translation missing 
	-- ["History/Scrollback Options"] = "",
	--Translation missing 
	-- ["History/scrollbacklen_desc"] = "",
	--Translation missing 
	-- ["History/scrollbacklen_name"] = "",
	--Translation missing 
	-- ["History/Set Chat Lines"] = "",
	--Translation missing 
	-- ["History/Set Command History"] = "",
	--Translation missing 
	-- ["History/Set the number of lines of chat history for each window."] = "",
	--Translation missing 
	-- ["History/Store the chat lines between sessions"] = "",
	--Translation missing 
	-- ["KeyBindings/Channel %d"] = "",
	--Translation missing 
	-- ["KeyBindings/Copy Selected Chat Frame"] = "",
	--Translation missing 
	-- ["KeyBindings/Guild Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Instance Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Next Chat Tab"] = "",
	--Translation missing 
	-- ["KeyBindings/Officer Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Party Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Prat CopyChat"] = "",
	--Translation missing 
	-- ["KeyBindings/Prat Keybindings"] = "",
	--Translation missing 
	-- ["KeyBindings/Prat TellTarget"] = "",
	--Translation missing 
	-- ["KeyBindings/Raid Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Raid Warning Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Say"] = "",
	--Translation missing 
	-- ["KeyBindings/Smart Group Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/TellTarget"] = "",
	--Translation missing 
	-- ["KeyBindings/Whisper"] = "",
	--Translation missing 
	-- ["KeyBindings/Yell"] = "",
	--Translation missing 
	-- ["OriginalButtons/alpha_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/alpha_name"] = "",
	--Translation missing 
	-- ["OriginalButtons/buttonframe_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/buttonframe_name"] = "",
	--Translation missing 
	-- ["OriginalButtons/ChannelNames"] = "",
	--Translation missing 
	-- ["OriginalButtons/Chat window button options."] = "",
	--Translation missing 
	-- ["OriginalButtons/chatmenu_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/chatmenu_name"] = "",
	--Translation missing 
	-- ["OriginalButtons/Default"] = "",
	--Translation missing 
	-- ["OriginalButtons/Original Buttons"] = "",
	--Translation missing 
	-- ["OriginalButtons/reflow_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/reflow_name"] = "",
	--Translation missing 
	-- ["OriginalButtons/reminder_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/reminder_name"] = "",
	--Translation missing 
	-- ["OriginalButtons/Right, Inside Frame"] = "",
	--Translation missing 
	-- ["OriginalButtons/Right, Outside Frame"] = "",
	--Translation missing 
	-- ["OriginalButtons/Set Position"] = "",
	--Translation missing 
	-- ["OriginalButtons/Sets position of chat menu and arrows for all chat windows."] = "",
	--Translation missing 
	-- ["OriginalButtons/Show Arrows"] = "",
	--Translation missing 
	-- ["OriginalButtons/Show Chat%d Arrows"] = "",
	--Translation missing 
	-- ["OriginalButtons/Toggle showing chat arrows for each chat window."] = "",
	--Translation missing 
	-- ["OriginalButtons/Toggles navigation arrows on and off."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Autohide"] = "",
	--Translation missing 
	-- ["OriginalEditbox/BACKGROUND"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Bar colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Border colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Border width"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Bottom"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Click the edit box to open it up for editing. Only available if Autohide is disabled."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Clickable"] = "",
	--Translation missing 
	-- ["OriginalEditbox/DIALOG"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Editbox options."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Enable Arrowkeys"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Enable using arrowkeys in editbox without the alt key."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Hide Border"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Hide the border around the edit box."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Hide the edit box after you have pressed enter."] = "",
	--Translation missing 
	-- ["OriginalEditbox/HIGH"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Lock editbox position if undocked."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Lock Position"] = "",
	--Translation missing 
	-- ["OriginalEditbox/LOW"] = "",
	--Translation missing 
	-- ["OriginalEditbox/MEDIUM"] = "",
	--Translation missing 
	-- ["OriginalEditbox/OriginalEditbox"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Padding"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Alpha"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Position"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Strata"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the alpha of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the amount of padding inside the edit box"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the edit box background colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the edit box border colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the frame strata of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the position of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the texture of the chat edit box"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the width of the edit box's border"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the width of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Width (NB: only enabled if the editbox is undocked)"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Texture"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Top"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Undocked"] = "",
	--Translation missing 
	-- ["Paragraph/adjustlinks_desc"] = "",
	--Translation missing 
	-- ["Paragraph/adjustlinks_name"] = "",
	--Translation missing 
	-- ["Paragraph/Center"] = "",
	--Translation missing 
	-- ["Paragraph/Chat window paragraph options."] = "",
	--Translation missing 
	-- ["Paragraph/justification_desc"] = "",
	--Translation missing 
	-- ["Paragraph/justification_name"] = "",
	--Translation missing 
	-- ["Paragraph/Left"] = "",
	--Translation missing 
	-- ["Paragraph/Line Spacing"] = "",
	--Translation missing 
	-- ["Paragraph/Paragraph"] = "",
	--Translation missing 
	-- ["Paragraph/Right"] = "",
	--Translation missing 
	-- ["Paragraph/Set the line spacing for all chat windows."] = "",
	--Translation missing 
	-- ["PlayerNames/Actively Query Player Info"] = "",
	--Translation missing 
	-- ["PlayerNames/Angled"] = "",
	--Translation missing 
	-- ["PlayerNames/Brackets"] = "",
	--Translation missing 
	-- ["PlayerNames/Brackets Common Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Brackets Use Common Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Class"] = "",
	--Translation missing 
	-- ["PlayerNames/Color by Level Difference"] = "",
	--Translation missing 
	-- ["PlayerNames/coloreverywhere_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/coloreverywhere_name"] = "",
	--Translation missing 
	-- ["PlayerNames/Enable Alt-Invite"] = "",
	--Translation missing 
	-- ["PlayerNames/Enable Invite Links"] = "",
	--Translation missing 
	-- ["PlayerNames/Enable TabComplete"] = "",
	--Translation missing 
	-- ["PlayerNames/hoverhilight_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/hoverhilight_name"] = "",
	--Translation missing 
	-- ["PlayerNames/How to color other player's level."] = "",
	--Translation missing 
	-- ["PlayerNames/How to color player's name."] = "",
	--Translation missing 
	-- ["PlayerNames/Keep Info"] = "",
	--Translation missing 
	-- ["PlayerNames/Keep Lots Of Info"] = "",
	--Translation missing 
	-- ["PlayerNames/Keep player information between session for all players except cross-server players"] = "",
	--Translation missing 
	-- ["PlayerNames/Keep player information between session, but limit it to friends and guild members."] = "",
	--Translation missing 
	-- ["PlayerNames/Let TasteTheNaimbow set the common color for unknown player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Level Color Mode"] = "",
	--Translation missing 
	-- ["PlayerNames/linkifycommon_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/linkifycommon_name"] = "",
	--Translation missing 
	-- ["PlayerNames/No additional coloring"] = "",
	--Translation missing 
	-- ["PlayerNames/None"] = "",
	--Translation missing 
	-- ["PlayerNames/Player Color Mode"] = "",
	--Translation missing 
	-- ["PlayerNames/Player name formating options."] = "",
	--Translation missing 
	-- ["PlayerNames/PlayerNames"] = "",
	--Translation missing 
	-- ["PlayerNames/Prat_Playernames: Stored Player Data Cleared"] = "",
	--Translation missing 
	-- ["PlayerNames/Query the server for all player names we do not know. Note: This happpens pretty slowly, and this data is not saved."] = "",
	--Translation missing 
	-- ["PlayerNames/Random"] = "",
	--Translation missing 
	-- ["PlayerNames/realidcolor_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/realidcolor_name"] = "",
	--Translation missing 
	-- ["PlayerNames/Reset Settings"] = "",
	--Translation missing 
	-- ["PlayerNames/Restore default settings, and delete stored character data."] = "",
	--Translation missing 
	-- ["PlayerNames/Set common color of unknown player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Sets common color of brackets to use around player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Sets style of brackets to use around player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Show Group"] = "",
	--Translation missing 
	-- ["PlayerNames/Show Level"] = "",
	--Translation missing 
	-- ["PlayerNames/Show Raid Target Icon"] = "",
	--Translation missing 
	-- ["PlayerNames/Square"] = "",
	--Translation missing 
	-- ["PlayerNames/Tab completion : "] = "",
	--Translation missing 
	-- ["PlayerNames/tabcomplete_name"] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle group invites by alt-clicking hyperlinked keywords like 'invite'."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle group invites by alt-clicking on player name."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle level showing."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle raid group showing."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle showing the raid target icon which is currently on the player."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle tab completion of player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle using a common color for brackets around player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle using a common color for unknown player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Too many matches (%d possible)"] = "",
	--Translation missing 
	-- ["PlayerNames/Unknown Common Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Unknown Common Color From TasteTheNaimbow"] = "",
	--Translation missing 
	-- ["PlayerNames/Unknown Use Common Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Use Channel Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Use Player Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Use toon name for RealID"] = "",
	--Translation missing 
	-- ["PopupMessage/Add Nickname"] = "",
	--Translation missing 
	-- ["PopupMessage/Adds an alternate name to show in popups."] = "",
	--Translation missing 
	-- ["PopupMessage/Clear Nickname"] = "",
	--Translation missing 
	-- ["PopupMessage/Clears alternate name to show in popups."] = "",
	--Translation missing 
	-- ["PopupMessage/framealpha_desc"] = "",
	--Translation missing 
	-- ["PopupMessage/framealpha_name"] = "",
	--Translation missing 
	-- ["PopupMessage/Popup"] = "",
	--Translation missing 
	-- ["PopupMessage/PopupMessage"] = "",
	--Translation missing 
	-- ["PopupMessage/Remove Nickname"] = "",
	--Translation missing 
	-- ["PopupMessage/Removes an alternate name to show in popups."] = "",
	--Translation missing 
	-- ["PopupMessage/Set Separately"] = "",
	--Translation missing 
	-- ["PopupMessage/Show All Popups"] = "",
	--Translation missing 
	-- ["PopupMessage/Show Popups"] = "",
	--Translation missing 
	-- ["PopupMessage/Show Popups for all chat windows."] = "",
	--Translation missing 
	-- ["PopupMessage/Show Popups for each window."] = "",
	--Translation missing 
	-- ["PopupMessage/show_desc"] = "",
	--Translation missing 
	-- ["PopupMessage/show_name"] = "",
	--Translation missing 
	-- ["PopupMessage/show_perframedesc"] = "",
	--Translation missing 
	-- ["PopupMessage/show_perframename"] = "",
	--Translation missing 
	-- ["PopupMessage/showall_desc"] = "",
	--Translation missing 
	-- ["PopupMessage/showall_name"] = "",
	--Translation missing 
	-- ["PopupMessage/Shows messages in a popup window."] = "",
	--Translation missing 
	-- ["PopupMessage/Shows messages with your name in a popup."] = "",
	--Translation missing 
	-- ["PopupMessage/Toggle setting options separately for each chat window."] = "",
	--Translation missing 
	-- ["Scroll/Bottom"] = "",
	--Translation missing 
	-- ["Scroll/Chat window scrolling options."] = "",
	--Translation missing 
	-- ["Scroll/Control whether text is added to the frame at the top or the bottom."] = "",
	--Translation missing 
	-- ["Scroll/lowdown_desc"] = "",
	--Translation missing 
	-- ["Scroll/lowdown_name"] = "",
	--Translation missing 
	-- ["Scroll/modified_speed"] = "",
	--Translation missing 
	-- ["Scroll/modified_speed_desc"] = "",
	--Translation missing 
	-- ["Scroll/mousewheel_desc"] = "",
	--Translation missing 
	-- ["Scroll/mousewheel_name"] = "",
	--Translation missing 
	-- ["Scroll/Scroll"] = "",
	--Translation missing 
	-- ["Scroll/Set Ctrl+MouseWheel Speed"] = "",
	--Translation missing 
	-- ["Scroll/Set MouseWheel Speed"] = "",
	--Translation missing 
	-- ["Scroll/Set number of lines mousewheel will scroll when ctrl is pressed."] = "",
	--Translation missing 
	-- ["Scroll/Set number of lines mousewheel will scroll."] = "",
	--Translation missing 
	-- ["Scroll/Set TheLowDown Delay"] = "",
	--Translation missing 
	-- ["Scroll/Set time to wait before jumping to the bottom of chat windows."] = "",
	--Translation missing 
	-- ["Scroll/Text scroll direction"] = "",
	--Translation missing 
	-- ["Scroll/Top"] = "",
	--Translation missing 
	-- ["Scrollback/divider"] = "",
	--Translation missing 
	-- ["Scrollback/Scrollback"] = "",
	--Translation missing 
	-- ["Scrollback/Store the chat lines between sessions"] = "",
	--Translation missing 
	-- ["Search/err_notfound"] = "",
	--Translation missing 
	-- ["Search/err_tooshort"] = "",
	--Translation missing 
	-- ["Search/find_results"] = "",
	--Translation missing 
	-- ["Search/module_desc"] = "",
	--Translation missing 
	-- ["Search/module_info"] = "",
	--Translation missing 
	-- ["Search/module_name"] = "",
	--Translation missing 
	-- ["ServerNames/autoabbreviate_desc"] = "",
	--Translation missing 
	-- ["ServerNames/autoabbreviate_name"] = "",
	--Translation missing 
	-- ["ServerNames/colon_desc"] = "",
	--Translation missing 
	-- ["ServerNames/colon_name"] = "",
	--Translation missing 
	-- ["ServerNames/randomclr_desc"] = "",
	--Translation missing 
	-- ["ServerNames/randomclr_name"] = "",
	--Translation missing 
	-- ["ServerNames/Server name abbreviation options."] = "",
	--Translation missing 
	-- ["ServerNames/ServerNames"] = "",
	--Translation missing 
	-- ["Sounds/A module to play sounds on certain chat messages."] = "",
	--Translation missing 
	-- ["Sounds/Add a custom channel"] = "",
	--Translation missing 
	-- ["Sounds/bn_whisper_desc"] = "",
	--Translation missing 
	-- ["Sounds/bn_whisper_name"] = "",
	--Translation missing 
	-- ["Sounds/Custom Channels"] = "",
	--Translation missing 
	-- ["Sounds/group_lead_desc"] = "",
	--Translation missing 
	-- ["Sounds/group_lead_name"] = "",
	--Translation missing 
	-- ["Sounds/guild_desc"] = "",
	--Translation missing 
	-- ["Sounds/guild_name"] = "",
	--Translation missing 
	-- ["Sounds/incoming"] = "",
	--Translation missing 
	-- ["Sounds/Incoming Sounds"] = "",
	--Translation missing 
	-- ["Sounds/officer_desc"] = "",
	--Translation missing 
	-- ["Sounds/officer_name"] = "",
	--Translation missing 
	-- ["Sounds/outgoing"] = "",
	--Translation missing 
	-- ["Sounds/Outgoing Sounds"] = "",
	--Translation missing 
	-- ["Sounds/party_desc"] = "",
	--Translation missing 
	-- ["Sounds/party_name"] = "",
	--Translation missing 
	-- ["Sounds/Play a sound for a certain channel name (can be a substring)"] = "",
	--Translation missing 
	-- ["Sounds/raid_desc"] = "",
	--Translation missing 
	-- ["Sounds/raid_name"] = "",
	--Translation missing 
	-- ["Sounds/Remove a custom channel"] = "",
	--Translation missing 
	-- ["Sounds/Reset settings"] = "",
	--Translation missing 
	-- ["Sounds/Restore default settings and resets custom channel list"] = "",
	--Translation missing 
	-- ["Sounds/Sound selection for incoming chat messages"] = "",
	--Translation missing 
	-- ["Sounds/Sound selection for outgoing (from you) chat messages"] = "",
	--Translation missing 
	-- ["Sounds/Sounds"] = "",
	--Translation missing 
	-- ["Sounds/whisper_desc"] = "",
	--Translation missing 
	-- ["Sounds/whisper_name"] = "",
	--Translation missing 
	-- ["Substitutions/%d total user defined substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/|cffff0000warning:|r subtitution \"%s\" already defined as \"%s\", overwriting"] = "",
	--Translation missing 
	-- ["Substitutions/<noguild>"] = "",
	--Translation missing 
	-- ["Substitutions/<notarget>"] = "",
	--Translation missing 
	-- ["Substitutions/A module to provide basic chat substitutions."] = "",
	--Translation missing 
	-- ["Substitutions/Are you sure - this will delete all user defined substitutions and reset defaults?"] = "",
	--Translation missing 
	-- ["Substitutions/Are you sure?"] = "",
	--Translation missing 
	-- ["Substitutions/can't find substitution index for a substitution named '%s'"] = "",
	--Translation missing 
	-- ["Substitutions/current-prompt"] = "",
	--Translation missing 
	-- ["Substitutions/defined %s: expands to => %s"] = "",
	--Translation missing 
	-- ["Substitutions/Delete all"] = "",
	--Translation missing 
	-- ["Substitutions/Delete substitution"] = "",
	--Translation missing 
	-- ["Substitutions/Deletes a user defined substitution"] = "",
	--Translation missing 
	-- ["Substitutions/Deletes all user defined substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/female"] = "",
	--Translation missing 
	-- ["Substitutions/her"] = "",
	--Translation missing 
	-- ["Substitutions/hers"] = "",
	--Translation missing 
	-- ["Substitutions/him"] = "",
	--Translation missing 
	-- ["Substitutions/his"] = "",
	--Translation missing 
	-- ["Substitutions/it"] = "",
	--Translation missing 
	-- ["Substitutions/its"] = "",
	--Translation missing 
	-- ["Substitutions/List of available substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/List of available substitutions defined by this module. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "",
	--Translation missing 
	-- ["Substitutions/List substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/Lists all current subtitutions in the default chat frame"] = "",
	--Translation missing 
	-- ["Substitutions/male"] = "",
	--Translation missing 
	-- ["Substitutions/MapLoc"] = "",
	--Translation missing 
	-- ["Substitutions/MapPos"] = "",
	--Translation missing 
	-- ["Substitutions/MapXPos"] = "",
	--Translation missing 
	-- ["Substitutions/MapYPos"] = "",
	--Translation missing 
	-- ["Substitutions/MapZone"] = "",
	--Translation missing 
	-- ["Substitutions/module:buildUserSubsIndex(): warning: module patterns not defined!"] = "",
	--Translation missing 
	-- ["Substitutions/MouseoverTargetName"] = "",
	--Translation missing 
	-- ["Substitutions/NO MATCHFUNC FOUND"] = "",
	--Translation missing 
	-- ["Substitutions/no substitution name given"] = "",
	--Translation missing 
	-- ["Substitutions/no substitution name supplied for deletion"] = "",
	--Translation missing 
	-- ["Substitutions/no user defined subs found"] = "",
	--Translation missing 
	-- ["Substitutions/no value given for subtitution \"%s\""] = "",
	--Translation missing 
	-- ["Substitutions/Options for setting and removing user defined substitutions. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerAverageItemLevel"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerCurrentMana"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerHealthDeficit"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerHP"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerManaDeficit"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerMaxHP"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerMaxMana"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerName"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerPercentHP"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerPercentMana"] = "",
	--Translation missing 
	-- ["Substitutions/RandNum"] = "",
	--Translation missing 
	-- ["Substitutions/removing user defined substitution \"%s\"; previously expanded to => \"%s\""] = "",
	--Translation missing 
	-- ["Substitutions/Set substitution"] = "",
	--Translation missing 
	-- ["Substitutions/Set the value of a user defined substitution (NB: this may be the same as an existing default substitution; to reset it to the default, just remove the user created definition)."] = "",
	--Translation missing 
	-- ["Substitutions/subname -- NOTE: sub name without the prefix '%'"] = "",
	--Translation missing 
	-- ["Substitutions/subname = text after expansion -- NOTE: sub name without the prefix \"%\""] = "",
	--Translation missing 
	-- ["Substitutions/substitution: %s defined as => %s"] = "",
	--Translation missing 
	-- ["Substitutions/Substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/TargetClass"] = "",
	--Translation missing 
	-- ["Substitutions/TargetGender"] = "",
	--Translation missing 
	-- ["Substitutions/TargetGuild"] = "",
	--Translation missing 
	-- ["Substitutions/TargetHealth"] = "",
	--Translation missing 
	-- ["Substitutions/TargetHealthDeficit"] = "",
	--Translation missing 
	-- ["Substitutions/TargetIcon"] = "",
	--Translation missing 
	-- ["Substitutions/TargetLevel"] = "",
	--Translation missing 
	-- ["Substitutions/TargetManaDeficit"] = "",
	--Translation missing 
	-- ["Substitutions/TargetName"] = "",
	--Translation missing 
	-- ["Substitutions/TargetPercentHP"] = "",
	--Translation missing 
	-- ["Substitutions/TargetPossesive"] = "",
	--Translation missing 
	-- ["Substitutions/TargetPronoun"] = "",
	--Translation missing 
	-- ["Substitutions/TargetRace"] = "",
	--Translation missing 
	-- ["Substitutions/TargetTargetName"] = "",
	--Translation missing 
	-- ["Substitutions/unknown sex"] = "",
	--Translation missing 
	-- ["Substitutions/user defined substition \"%s\" not found"] = "",
	--Translation missing 
	-- ["Substitutions/User defined substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/user substitutions index (usersubs_idx) doesn't exist! oh dear."] = "",
	--Translation missing 
	-- ["Substitutions/usersub_"] = "",
	--Translation missing 
	-- ["TellTarget//tt"] = "",
	--Translation missing 
	-- ["TellTarget/Adds telltarget slash command (/tt)."] = "",
	--Translation missing 
	-- ["TellTarget/No target selected."] = "",
	--Translation missing 
	-- ["TellTarget/NoTarget"] = "",
	--Translation missing 
	-- ["TellTarget/Target does not exist."] = "",
	--Translation missing 
	-- ["TellTarget/Target is not a player."] = "",
	--Translation missing 
	-- ["TellTarget/TellTarget"] = "",
	--Translation missing 
	-- ["Timestamps/Chat window timestamp options."] = "",
	--Translation missing 
	-- ["Timestamps/colortimestamp_desc"] = "",
	--Translation missing 
	-- ["Timestamps/colortimestamp_name"] = "",
	--Translation missing 
	-- ["Timestamps/Format All Timestamps"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM (12-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM (24-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM:SS (12-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM:SS (24-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM:SS AM (12-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/localtime_desc"] = "",
	--Translation missing 
	-- ["Timestamps/localtime_name"] = "",
	--Translation missing 
	-- ["Timestamps/MM:SS"] = "",
	--Translation missing 
	-- ["Timestamps/Post-Timestamp"] = "",
	--Translation missing 
	-- ["Timestamps/Pre-Timestamp"] = "",
	--Translation missing 
	-- ["Timestamps/Set the timestamp format"] = "",
	--Translation missing 
	-- ["Timestamps/Set Timestamp Color"] = "",
	--Translation missing 
	-- ["Timestamps/Sets the color of the timestamp."] = "",
	--Translation missing 
	-- ["Timestamps/Show Timestamp"] = "",
	--Translation missing 
	-- ["Timestamps/show_desc"] = "",
	--Translation missing 
	-- ["Timestamps/show_name"] = "",
	--Translation missing 
	-- ["Timestamps/space_desc"] = "",
	--Translation missing 
	-- ["Timestamps/space_name"] = "",
	--Translation missing 
	-- ["Timestamps/Timestamps"] = "",
	--Translation missing 
	-- ["Timestamps/Toggle showing timestamp for each window."] = "",
	--Translation missing 
	-- ["Timestamps/twocolumn_desc"] = "",
	--Translation missing 
	-- ["Timestamps/twocolumn_name"] = "",
	--Translation missing 
	-- ["UrlCopy/Change the color of the URL."] = "",
	--Translation missing 
	-- ["UrlCopy/Color URL"] = "",
	--Translation missing 
	-- ["UrlCopy/Set Color"] = "",
	--Translation missing 
	-- ["UrlCopy/Show Brackets"] = "",
	--Translation missing 
	-- ["UrlCopy/Toggle"] = "",
	--Translation missing 
	-- ["UrlCopy/Toggle showing brackets on and off."] = "",
	--Translation missing 
	-- ["UrlCopy/Toggle the module on and off."] = "",
	--Translation missing 
	-- ["UrlCopy/Toggle the URL color on and off."] = "",
	--Translation missing 
	-- ["UrlCopy/URL formating options."] = "",
	--Translation missing 
	-- ["UrlCopy/UrlCopy"] = "",
	--Translation missing 
	-- ["UrlCopy/Use Popup"] = "",
	--Translation missing 
	-- ["UrlCopy/Use popup window to show URL."] = ""
}

PL:AddLocale(nil, "itIT",L)


L=
{
	["display_desc"] = "Controle de Visualização de Frame de Chat",
	["display_name"] = "Configurações de Visualização",
	["extras_desc"] = "Módulos Diversos",
	--Translation missing 
	-- ["extras_name"] = "",
	--Translation missing 
	-- ["formatting_desc"] = "",
	["formatting_name"] = "Formatação do Chat",
	--Translation missing 
	-- ["load_desc"] = "",
	["load_disabled"] = "Desativado",
	--Translation missing 
	-- ["load_disabledonrestart"] = "",
	["load_enabled"] = "Ativado",
	--Translation missing 
	-- ["load_enabledonrestart"] = "",
	["load_no"] = "Não Carregar",
	["modulecontrol_desc"] = "Controlar carregamento de módulos permitidos pelo Prat",
	["modulecontrol_name"] = "Controle de Módulo",
	["prat"] = "Prat",
	["reload_required"] = "Essa alteração pode não ter efeitos até você %s sua IU.",
	--Translation missing 
	-- ["AddonMsgs/Addon message options."] = "",
	--Translation missing 
	-- ["AddonMsgs/AddonMsgs"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_desc"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_name"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_perframedesc"] = "",
	--Translation missing 
	-- ["AddonMsgs/show_perframename"] = "",
	--Translation missing 
	-- ["Alias/ - list all aliases; supply <keyword> to search for matching aliases (cmd aliases: /listallaliases)"] = "",
	--Translation missing 
	-- ["Alias/%s() called with blank string!"] = "",
	--Translation missing 
	-- ["Alias/%s() called with nil argument!"] = "",
	--Translation missing 
	-- ["Alias//%s aliased to \"/%s\""] = "",
	--Translation missing 
	-- ["Alias//%s aliased to: /%s"] = "",
	--Translation missing 
	-- ["Alias/<alias> - remove the alias <alias> (cmd aliases: /delalias, /remalias)"] = "",
	--Translation missing 
	-- ["Alias/<command>[ <value>] - alias <command> to be executed as <value>, or return the value of the currently defined alias for <command> if <command> has not been assigned a value. eg: \"/alias /examplehello /say hello there\" - typing \"/examplehello\" will now cause your character to say \"hello there\"; \"/alias examplehello\" - s \"/examplehello is aliased to /say hello there\" (cmd aliases: /addalias)"] = "",
	--Translation missing 
	-- ["Alias/<keyword> - finds all aliases matching <keyword> (cmd aliases: /findalias)"] = "",
	--Translation missing 
	-- ["Alias/add"] = "",
	--Translation missing 
	-- ["Alias/add an alias"] = "",
	--Translation missing 
	-- ["Alias/alias \"/%s\" does not exist"] = "",
	--Translation missing 
	-- ["Alias/dealiasing command /%s to /%s"] = "",
	--Translation missing 
	-- ["Alias/deleting alias \"/%s\" (previously aliased as \"/%s\")"] = "",
	--Translation missing 
	-- ["Alias/Display extra information in the chat frame when commands are dealiased"] = "",
	--Translation missing 
	-- ["Alias/Don't overwrite existing aliases when using /addalias"] = "",
	--Translation missing 
	-- ["Alias/Expand aliases as you are typing"] = "",
	--Translation missing 
	-- ["Alias/find aliases matching a given search term"] = "",
	--Translation missing 
	-- ["Alias/findaliases"] = "",
	--Translation missing 
	-- ["Alias/infinite loop detected for alias /%s - ignoring"] = "",
	--Translation missing 
	-- ["Alias/inline"] = "",
	--Translation missing 
	-- ["Alias/list all aliases"] = "",
	--Translation missing 
	-- ["Alias/listaliases"] = "",
	--Translation missing 
	-- ["Alias/matching aliases found: %d"] = "",
	--Translation missing 
	-- ["Alias/module_desc"] = "",
	--Translation missing 
	-- ["Alias/module_name"] = "",
	--Translation missing 
	-- ["Alias/No aliases have been defined"] = "",
	--Translation missing 
	-- ["Alias/noclobber"] = "",
	--Translation missing 
	-- ["Alias/noclobber set - skipping new alias: /%s already expands to /%s"] = "",
	--Translation missing 
	-- ["Alias/Options"] = "",
	--Translation missing 
	-- ["Alias/Options for altering the behaviour of Alias"] = "",
	--Translation missing 
	-- ["Alias/overwriting existing alias \"/%s\" (was aliased to \"/%s\")"] = "",
	--Translation missing 
	-- ["Alias/refusing to alias \"/%s\" to anything in the interests of Not Buggering Everything Up"] = "",
	--Translation missing 
	-- ["Alias/remove an alias"] = "",
	--Translation missing 
	-- ["Alias/There is no alias current defined for \"%s\""] = "",
	--Translation missing 
	-- ["Alias/total aliases: %d"] = "",
	--Translation missing 
	-- ["Alias/tried to show value for alias \"%s\" but undefined in module.Aliases!"] = "",
	--Translation missing 
	-- ["Alias/unalias"] = "",
	--Translation missing 
	-- ["Alias/verbose"] = "",
	--Translation missing 
	-- ["Alias/warnUser() called with nil argument!"] = "",
	--Translation missing 
	-- ["Alias/warnUser() called with zero length string!"] = "",
	--Translation missing 
	-- ["AltNames/%d alts found for %s: %s"] = "",
	--Translation missing 
	-- ["AltNames/%s alts imported from LOKWhoIsWho"] = "",
	--Translation missing 
	-- ["AltNames/%s total alts linked to mains"] = "",
	--Translation missing 
	-- ["AltNames/(.-)'s? [Aa]lt"] = "",
	--Translation missing 
	-- ["AltNames/([^%s%p%d%c%z]+)'s alt"] = "",
	--Translation missing 
	-- ["AltNames/.*[Aa]lts?$"] = "",
	--Translation missing 
	-- ["AltNames/<alt name> (eg, /altnames del Personyouthoughtwassomeonesaltbutreallyisnt)"] = "",
	--Translation missing 
	-- ["AltNames/<main> (eg /altnames listalts Fin)"] = "",
	--Translation missing 
	-- ["AltNames/<search term> (eg, /altnames find fin)"] = "",
	--Translation missing 
	-- ["AltNames/Alt"] = "",
	--Translation missing 
	-- ["AltNames/alt"] = "",
	--Translation missing 
	-- ["AltNames/alt name exists: %s -> %s; not overwriting as set in preferences"] = "",
	--Translation missing 
	-- ["AltNames/AltNames"] = "",
	--Translation missing 
	-- ["AltNames/Alts:"] = "",
	--Translation missing 
	-- ["AltNames/autoguildalts_desc"] = "",
	--Translation missing 
	-- ["AltNames/autoguildalts_name"] = "",
	--Translation missing 
	-- ["AltNames/Be quiet"] = "",
	--Translation missing 
	-- ["AltNames/character removed: %s"] = "",
	--Translation missing 
	-- ["AltNames/Class colour"] = "",
	--Translation missing 
	-- ["AltNames/Clear all"] = "",
	--Translation missing 
	-- ["AltNames/Clear all links between alts and main names."] = "",
	--Translation missing 
	-- ["AltNames/Colour"] = "",
	--Translation missing 
	-- ["AltNames/Delete a character's link to another character as their main."] = "",
	--Translation missing 
	-- ["AltNames/Delete alt"] = "",
	--Translation missing 
	-- ["AltNames/Disabled"] = "",
	--Translation missing 
	-- ["AltNames/Display a player's alts in the tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Display a player's main name in the tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Display main names in the same colour as that of the alt's class (taking the data from the PlayerNames module if it is enabled)"] = "",
	--Translation missing 
	-- ["AltNames/Display main names in the same colour as that of the main's class (taking the data from the PlayerNames module if it is enabled)"] = "",
	--Translation missing 
	-- ["AltNames/Don't overwrite existing alt <-> main links when importing or adding new alts."] = "",
	--Translation missing 
	-- ["AltNames/Don't overwrite existing links"] = "",
	--Translation missing 
	-- ["AltNames/don't use"] = "",
	--Translation missing 
	-- ["AltNames/Don't use data from the PlayerNames module at all"] = "",
	--Translation missing 
	-- ["AltNames/ERROR: some function sent a blank message!"] = "",
	--Translation missing 
	-- ["AltNames/Find characters"] = "",
	--Translation missing 
	-- ["AltNames/Fix alts"] = "",
	--Translation missing 
	-- ["AltNames/Fix corrupted entries in your list of alt names."] = "",
	--Translation missing 
	-- ["AltNames/Found alt: %s => main: %s"] = "",
	--Translation missing 
	-- ["AltNames/guild member alts found and imported: %s"] = "",
	--Translation missing 
	-- ["AltNames/Import from Guild Greet database"] = "",
	--Translation missing 
	-- ["AltNames/Import from guild roster"] = "",
	--Translation missing 
	-- ["AltNames/Import options"] = "",
	--Translation missing 
	-- ["AltNames/Imports alt names from a Guild Greet database, if present"] = "",
	--Translation missing 
	-- ["AltNames/Imports alt names from the guild roster by checking for members with the rank \"alt\" or \"alts\", or guild / officer notes like \"<name>'s alt\""] = "",
	--Translation missing 
	-- ["AltNames/Imports data from LOKWhoIsWho, if present (drop your SavedVariablesLOKWhoIsWho.lua in the Prat directory to be able to use this)."] = "",
	--Translation missing 
	-- ["AltNames/Left"] = "",
	--Translation missing 
	-- ["AltNames/link <alt name> <main name> (eg, /altnames link Fin Finjathealtoffin)"] = "",
	--Translation missing 
	-- ["AltNames/Link alt"] = "",
	--Translation missing 
	-- ["AltNames/Link someone's alt character with the name of their main."] = "",
	--Translation missing 
	-- ["AltNames/linked alt %s => %s"] = "",
	--Translation missing 
	-- ["AltNames/List all"] = "",
	--Translation missing 
	-- ["AltNames/List all links between alts and their main names."] = "",
	--Translation missing 
	-- ["AltNames/List alts"] = "",
	--Translation missing 
	-- ["AltNames/List alts for a given character"] = "",
	--Translation missing 
	-- ["AltNames/LOKWhoIsWho data not found"] = "",
	--Translation missing 
	-- ["AltNames/LOKWhoIsWho import"] = "",
	--Translation missing 
	-- ["AltNames/LOKWhoIsWho lua file not found, sorry."] = "",
	--Translation missing 
	-- ["AltNames/Main"] = "",
	--Translation missing 
	-- ["AltNames/main"] = "",
	--Translation missing 
	-- ["AltNames/Main name position"] = "",
	--Translation missing 
	-- ["AltNames/Main:"] = "",
	--Translation missing 
	-- ["AltNames/mainpos_desc"] = "",
	--Translation missing 
	-- ["AltNames/mainpos_name"] = "",
	--Translation missing 
	-- ["AltNames/module_desc"] = "",
	--Translation missing 
	-- ["AltNames/no alts found for character "] = "",
	--Translation missing 
	-- ["AltNames/no alts or mains found matching \"%s\""] = "",
	--Translation missing 
	-- ["AltNames/No arg string given to :addAlt()"] = "",
	--Translation missing 
	-- ["AltNames/no characters called \"%s\" found; nothing deleted"] = "",
	--Translation missing 
	-- ["AltNames/No Guild Greet database found"] = "",
	--Translation missing 
	-- ["AltNames/No main name supplied to link %s to"] = "",
	--Translation missing 
	-- ["AltNames/no matches found"] = "",
	--Translation missing 
	-- ["AltNames/quiet"] = "",
	--Translation missing 
	-- ["AltNames/quiet_desc"] = "",
	--Translation missing 
	-- ["AltNames/quiet_name"] = "",
	--Translation missing 
	-- ["AltNames/Right"] = "",
	--Translation missing 
	-- ["AltNames/Search the list of linked characters for matching main or alt names."] = "",
	--Translation missing 
	-- ["AltNames/searched for: %s - total matches: %s"] = "",
	--Translation missing 
	-- ["AltNames/Show alts in tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Show main in tooltip"] = "",
	--Translation missing 
	-- ["AltNames/Start"] = "",
	--Translation missing 
	-- ["AltNames/The colour of an alt's main name that will be displayed"] = "",
	--Translation missing 
	-- ["AltNames/Use class colour (from the PlayerNames module)"] = "",
	--Translation missing 
	-- ["AltNames/use class colour of alt"] = "",
	--Translation missing 
	-- ["AltNames/use class colour of main"] = "",
	--Translation missing 
	-- ["AltNames/Use LibAlts Data"] = "",
	--Translation missing 
	-- ["AltNames/Use the data available via the shared alt information library."] = "",
	--Translation missing 
	-- ["AltNames/Various ways to import a main's alts from other addons"] = "",
	--Translation missing 
	-- ["AltNames/warning: alt %s already linked to %s"] = "",
	--Translation missing 
	-- ["AltNames/Where to display a character's main name when on their alt."] = "",
	--Translation missing 
	-- ["AltNames/Whether to report to the chat frame or not."] = "",
	--Translation missing 
	-- ["AltNames/You are not in a guild"] = "",
	--Translation missing 
	-- ["AltNames/You have not yet linked any alts with their mains."] = "",
	--Translation missing 
	-- ["Bubbles/color_desc"] = "",
	--Translation missing 
	-- ["Bubbles/color_name"] = "",
	--Translation missing 
	-- ["Bubbles/font_desc"] = "",
	--Translation missing 
	-- ["Bubbles/font_name"] = "",
	--Translation missing 
	-- ["Bubbles/fontsize_desc"] = "",
	--Translation missing 
	-- ["Bubbles/fontsize_name"] = "",
	--Translation missing 
	-- ["Bubbles/format_desc"] = "",
	--Translation missing 
	-- ["Bubbles/format_name"] = "",
	--Translation missing 
	-- ["Bubbles/icons_desc"] = "",
	--Translation missing 
	-- ["Bubbles/icons_name"] = "",
	--Translation missing 
	-- ["Bubbles/module_desc"] = "",
	--Translation missing 
	-- ["Bubbles/module_name"] = "",
	--Translation missing 
	-- ["Bubbles/shorten_desc"] = "",
	--Translation missing 
	-- ["Bubbles/shorten_name"] = "",
	--Translation missing 
	-- ["Bubbles/transparent_desc"] = "",
	--Translation missing 
	-- ["Bubbles/transparent_name"] = "",
	--Translation missing 
	-- ["Buttons/alpha_desc"] = "",
	--Translation missing 
	-- ["Buttons/alpha_name"] = "",
	--Translation missing 
	-- ["Buttons/Buttons"] = "",
	--Translation missing 
	-- ["Buttons/Chat window button options."] = "",
	--Translation missing 
	-- ["Buttons/chatmenu_desc"] = "",
	--Translation missing 
	-- ["Buttons/chatmenu_name"] = "",
	--Translation missing 
	-- ["Buttons/Default"] = "",
	--Translation missing 
	-- ["Buttons/Right, Inside Frame"] = "",
	--Translation missing 
	-- ["Buttons/Right, Outside Frame"] = "",
	--Translation missing 
	-- ["Buttons/scrollReminder_desc"] = "",
	--Translation missing 
	-- ["Buttons/scrollReminder_name"] = "",
	--Translation missing 
	-- ["Buttons/Set Position"] = "",
	--Translation missing 
	-- ["Buttons/Sets position of chat menu and arrows for all chat windows."] = "",
	--Translation missing 
	-- ["Buttons/Show Arrows"] = "",
	--Translation missing 
	-- ["Buttons/Show Chat%d Arrows"] = "",
	--Translation missing 
	-- ["Buttons/showbnet_desc"] = "",
	--Translation missing 
	-- ["Buttons/showbnet_name"] = "",
	--Translation missing 
	-- ["Buttons/showmenu_desc"] = "",
	--Translation missing 
	-- ["Buttons/showmenu_name"] = "",
	--Translation missing 
	-- ["Buttons/showminimize_desc"] = "",
	--Translation missing 
	-- ["Buttons/showminimize_name"] = "",
	--Translation missing 
	-- ["Buttons/Toggle showing chat arrows for each chat window."] = "",
	--Translation missing 
	-- ["Buttons/Toggles navigation arrows on and off."] = "",
	--Translation missing 
	-- ["ChannelColorMemory/(%w+)%s?(.*)"] = "",
	--Translation missing 
	-- ["ChannelColorMemory/ChannelColorMemory"] = "",
	--Translation missing 
	-- ["ChannelColorMemory/Remembers the colors of each channel name."] = "",
	--Translation missing 
	-- ["ChannelNames/%s settings."] = "",
	--Translation missing 
	-- ["ChannelNames/<string>"] = "",
	--Translation missing 
	-- ["ChannelNames/Add Channel Abbreviation"] = "",
	--Translation missing 
	-- ["ChannelNames/addnick_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/Blank"] = "",
	--Translation missing 
	-- ["ChannelNames/chanlink_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/chanlink_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Channel %d"] = "",
	--Translation missing 
	-- ["ChannelNames/Channel name abbreviation options."] = "",
	--Translation missing 
	-- ["ChannelNames/ChannelNames"] = "",
	--Translation missing 
	-- ["ChannelNames/channelnick_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/channelnick_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Clear Channel Abbreviation"] = "",
	--Translation missing 
	-- ["ChannelNames/Clears an abbreviated channel name."] = "",
	--Translation missing 
	-- ["ChannelNames/colon_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/colon_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Dont display the channel/chat type name"] = "",
	--Translation missing 
	-- ["ChannelNames/otheropts_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/otheropts_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Remove Channel Abbreviation"] = "",
	--Translation missing 
	-- ["ChannelNames/Removes an an abbreviated channel name."] = "",
	--Translation missing 
	-- ["ChannelNames/Replace"] = "",
	--Translation missing 
	-- ["ChannelNames/Set"] = "",
	--Translation missing 
	-- ["ChannelNames/space_desc"] = "",
	--Translation missing 
	-- ["ChannelNames/space_name"] = "",
	--Translation missing 
	-- ["ChannelNames/Toggle replacing this channel."] = "",
	--Translation missing 
	-- ["ChannelNames/Use a custom replacement for the chat %s text."] = "",
	--Translation missing 
	-- ["ChannelSticky/Channel"] = "",
	--Translation missing 
	-- ["ChannelSticky/ChannelSticky"] = "",
	--Translation missing 
	-- ["ChannelSticky/Chat channel sticky options."] = "",
	--Translation missing 
	-- ["ChannelSticky/ChatType"] = "",
	--Translation missing 
	-- ["ChannelSticky/Per chat type options."] = "",
	--Translation missing 
	-- ["ChannelSticky/smartgroup_desc"] = "",
	--Translation missing 
	-- ["ChannelSticky/smartgroup_name"] = "",
	--Translation missing 
	-- ["ChannelSticky/Sticky %s"] = "",
	--Translation missing 
	-- ["ChannelSticky/Sticky Per Chat Frame"] = "",
	--Translation missing 
	-- ["ChannelSticky/Toggle remembering the chat type last used per chat frame."] = "",
	--Translation missing 
	-- ["ChannelSticky/Toggles sticky on and off for %s."] = "",
	--Translation missing 
	-- ["ChatLink/gem_desc"] = "",
	--Translation missing 
	-- ["ChatLink/gem_name"] = "",
	--Translation missing 
	-- ["ChatLink/module_desc"] = "",
	--Translation missing 
	-- ["ChatLink/module_info"] = "",
	--Translation missing 
	-- ["ChatLink/module_name"] = "",
	--Translation missing 
	-- ["ChatLink/Trade"] = "",
	--Translation missing 
	-- ["ChatLog/A module to automaticaly enable chat and combat logging."] = "",
	--Translation missing 
	-- ["ChatLog/Chat log recorded to <WoW Installation>\\Logs\\WoWChatLog.txt only upon logout."] = "",
	--Translation missing 
	-- ["ChatLog/Chat Log: Disabled"] = "",
	--Translation missing 
	-- ["ChatLog/Chat Log: Enabled"] = "",
	--Translation missing 
	-- ["ChatLog/ChatLog"] = "",
	--Translation missing 
	-- ["ChatLog/Combat log recorded to <WoW Installation>\\Logs\\WoWCombatLog.txt only upon logout."] = "",
	--Translation missing 
	-- ["ChatLog/Combat Log: Disabled"] = "",
	--Translation missing 
	-- ["ChatLog/Combat Log: Enabled"] = "",
	--Translation missing 
	-- ["ChatLog/quiet_desc"] = "",
	--Translation missing 
	-- ["ChatLog/quiet_name"] = "",
	--Translation missing 
	-- ["ChatLog/Toggle Chat Log"] = "",
	--Translation missing 
	-- ["ChatLog/Toggle chat log on and off."] = "",
	--Translation missing 
	-- ["ChatLog/Toggle Combat Log"] = "",
	--Translation missing 
	-- ["ChatLog/Toggle combat log on and off."] = "",
	--Translation missing 
	-- ["ChatTabs/Active Alpha"] = "",
	--Translation missing 
	-- ["ChatTabs/All"] = "",
	--Translation missing 
	-- ["ChatTabs/Always"] = "",
	--Translation missing 
	-- ["ChatTabs/Chat window tab options."] = "",
	--Translation missing 
	-- ["ChatTabs/Default"] = "",
	--Translation missing 
	-- ["ChatTabs/disableflash_desc"] = "",
	--Translation missing 
	-- ["ChatTabs/disableflash_name"] = "",
	--Translation missing 
	-- ["ChatTabs/Hidden"] = "",
	--Translation missing 
	-- ["ChatTabs/Individual"] = "",
	--Translation missing 
	-- ["ChatTabs/Not Active Alpha"] = "",
	--Translation missing 
	-- ["ChatTabs/preventdrag_desc"] = "",
	--Translation missing 
	-- ["ChatTabs/preventdrag_name"] = "",
	--Translation missing 
	-- ["ChatTabs/Set ChatFrame%d Display Mode"] = "",
	--Translation missing 
	-- ["ChatTabs/Set Display Mode"] = "",
	--Translation missing 
	-- ["ChatTabs/Set tab display mode for each chat window."] = "",
	--Translation missing 
	-- ["ChatTabs/Set tab display to always, hidden or the Blizzard default."] = "",
	--Translation missing 
	-- ["ChatTabs/Sets alpha of chat tab for active chat frame."] = "",
	--Translation missing 
	-- ["ChatTabs/Sets alpha of chat tab for not active chat frame."] = "",
	--Translation missing 
	-- ["ChatTabs/Tabs"] = "",
	--Translation missing 
	-- ["Clear/Adds clear text slash commands (/clear)(/cls)(/clearall)(/clsall)."] = "",
	--Translation missing 
	-- ["Clear/Clear"] = "",
	--Translation missing 
	-- ["Clear/Clearall"] = "",
	--Translation missing 
	-- ["Clear/Clears all chat frames."] = "",
	--Translation missing 
	-- ["Clear/Clears the current chat frame."] = "",
	--Translation missing 
	-- ["CopyChat/ Text"] = "",
	--Translation missing 
	-- ["CopyChat/BBCode"] = "",
	--Translation missing 
	-- ["CopyChat/BOTTOMLEFT"] = "",
	--Translation missing 
	-- ["CopyChat/BOTTOMRIGHT"] = "",
	--Translation missing 
	-- ["CopyChat/buttonpos_desc"] = "",
	--Translation missing 
	-- ["CopyChat/buttonpos_name"] = "",
	--Translation missing 
	-- ["CopyChat/ChatFrame"] = "",
	--Translation missing 
	-- ["CopyChat/Copy all of the text in the selected chat frame into an edit box"] = "",
	--Translation missing 
	-- ["CopyChat/Copy Text"] = "",
	--Translation missing 
	-- ["CopyChat/Copy Text Format"] = "",
	--Translation missing 
	-- ["CopyChat/Copy text from the active chat window."] = "",
	--Translation missing 
	-- ["CopyChat/Copy To Editbox"] = "",
	--Translation missing 
	-- ["CopyChat/CopyChat"] = "",
	--Translation missing 
	-- ["CopyChat/HTML"] = "",
	--Translation missing 
	-- ["CopyChat/Message From : %s"] = "",
	--Translation missing 
	-- ["CopyChat/Plain"] = "",
	--Translation missing 
	-- ["CopyChat/Should the copied text be plain, or formatted so you can see the colors."] = "",
	--Translation missing 
	-- ["CopyChat/showbutton_desc"] = "",
	--Translation missing 
	-- ["CopyChat/showbutton_name"] = "",
	--Translation missing 
	-- ["CopyChat/TOPLEFT"] = "",
	--Translation missing 
	-- ["CopyChat/TOPRIGHT"] = "",
	--Translation missing 
	-- ["CopyChat/Wowace.com Forums"] = "",
	--Translation missing 
	-- ["CustomFilters/<string>"] = "",
	--Translation missing 
	-- ["CustomFilters/Add a pattern to search for."] = "",
	--Translation missing 
	-- ["CustomFilters/Add Pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Block Message"] = "",
	--Translation missing 
	-- ["CustomFilters/Channel Data"] = "",
	--Translation missing 
	-- ["CustomFilters/Channel to send output text to."] = "",
	--Translation missing 
	-- ["CustomFilters/Enabled"] = "",
	--Translation missing 
	-- ["CustomFilters/Extra data for WHISPER (target) and CHANNEL (channel name or num)"] = "",
	--Translation missing 
	-- ["CustomFilters/Filter Name"] = "",
	--Translation missing 
	-- ["CustomFilters/Forward"] = "",
	--Translation missing 
	-- ["CustomFilters/Forward the message to a chat channel."] = "",
	--Translation missing 
	-- ["CustomFilters/Forward the message to a custom chat channel."] = "",
	--Translation missing 
	-- ["CustomFilters/ForwardCustom"] = "",
	--Translation missing 
	-- ["CustomFilters/ForwardMessage"] = "",
	--Translation missing 
	-- ["CustomFilters/ForwardMessageCustom"] = "",
	--Translation missing 
	-- ["CustomFilters/Hilight Color"] = "",
	--Translation missing 
	-- ["CustomFilters/Hilight Match Text"] = "",
	--Translation missing 
	-- ["CustomFilters/Inbound"] = "",
	--Translation missing 
	-- ["CustomFilters/inchannels_desc"] = "",
	--Translation missing 
	-- ["CustomFilters/inchannels_name"] = "",
	--Translation missing 
	-- ["CustomFilters/Is this pattern enabled for use?"] = "",
	--Translation missing 
	-- ["CustomFilters/Match Options"] = "",
	--Translation missing 
	-- ["CustomFilters/module_desc"] = "",
	--Translation missing 
	-- ["CustomFilters/module_name"] = "",
	--Translation missing 
	-- ["CustomFilters/Only output the message portion of the chat text, leave out the channel, and playername etc."] = "",
	--Translation missing 
	-- ["CustomFilters/Outbound"] = "",
	--Translation missing 
	-- ["CustomFilters/Output Channel"] = "",
	--Translation missing 
	-- ["CustomFilters/Output Message Only"] = "",
	--Translation missing 
	-- ["CustomFilters/Pattern Info"] = "",
	--Translation missing 
	-- ["CustomFilters/Pattern Options"] = "",
	--Translation missing 
	-- ["CustomFilters/Play a sound when this message is output to the chatframe"] = "",
	--Translation missing 
	-- ["CustomFilters/Play Sound"] = "",
	--Translation missing 
	-- ["CustomFilters/Prevent the message from being displayed"] = "",
	--Translation missing 
	-- ["CustomFilters/Remove an existing pattern."] = "",
	--Translation missing 
	-- ["CustomFilters/Remove Pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Replacement Text"] = "",
	--Translation missing 
	-- ["CustomFilters/Search Format String"] = "",
	--Translation missing 
	-- ["CustomFilters/Search Pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Secondary Output"] = "",
	--Translation missing 
	-- ["CustomFilters/Send to a secondary output"] = "",
	--Translation missing 
	-- ["CustomFilters/Supplied pattern is a format string instead of a pattern"] = "",
	--Translation missing 
	-- ["CustomFilters/Your name for this filter"] = "",
	--Translation missing 
	-- ["Editbox/Attach edit box to..."] = "",
	--Translation missing 
	-- ["Editbox/Attach to..."] = "",
	--Translation missing 
	-- ["Editbox/Background color"] = "",
	--Translation missing 
	-- ["Editbox/Background Inset"] = "",
	--Translation missing 
	-- ["Editbox/Background texture"] = "",
	--Translation missing 
	-- ["Editbox/Border color"] = "",
	--Translation missing 
	-- ["Editbox/Border texture"] = "",
	--Translation missing 
	-- ["Editbox/Bottom"] = "",
	--Translation missing 
	-- ["Editbox/Color border by channel"] = "",
	--Translation missing 
	-- ["Editbox/currently_broken_alt_behavior"] = "",
	--Translation missing 
	-- ["Editbox/Edge Size"] = "",
	--Translation missing 
	-- ["Editbox/Editbox"] = "",
	--Translation missing 
	-- ["Editbox/Editbox options."] = "",
	--Translation missing 
	-- ["Editbox/Font"] = "",
	--Translation missing 
	-- ["Editbox/Free-floating"] = "",
	--Translation missing 
	-- ["Editbox/Free-floating, Locked"] = "",
	--Translation missing 
	-- ["Editbox/Requires the Alt key to be held down to move the cursor in chat"] = "",
	--Translation missing 
	-- ["Editbox/Select the font to use for the edit box"] = "",
	--Translation missing 
	-- ["Editbox/Sets the frame's border color to the color of your currently active channel"] = "",
	--Translation missing 
	-- ["Editbox/Tile Size"] = "",
	--Translation missing 
	-- ["Editbox/Top"] = "",
	--Translation missing 
	-- ["Editbox/Use Alt key for cursor movement"] = "",
	--Translation missing 
	-- ["EventNames/allevents_desc"] = "",
	--Translation missing 
	-- ["EventNames/allevents_name"] = "",
	--Translation missing 
	-- ["EventNames/Chat window event name options."] = "",
	--Translation missing 
	-- ["EventNames/EventNames"] = "",
	--Translation missing 
	-- ["EventNames/Show"] = "",
	--Translation missing 
	-- ["EventNames/Show events on chatframes"] = "",
	--Translation missing 
	-- ["EventNames/show_desc"] = "",
	--Translation missing 
	-- ["EventNames/show_name"] = "",
	--Translation missing 
	-- ["Fading/duration_desc"] = "",
	--Translation missing 
	-- ["Fading/duration_name"] = "",
	--Translation missing 
	-- ["Fading/module_desc"] = "",
	--Translation missing 
	-- ["Fading/module_name"] = "",
	--Translation missing 
	-- ["Fading/textfade_desc"] = "",
	--Translation missing 
	-- ["Fading/textfade_name"] = "",
	--Translation missing 
	-- ["Filtering/A module to provide basic chat filtering."] = "",
	--Translation missing 
	-- ["Filtering/afkdnd_desc"] = "",
	--Translation missing 
	-- ["Filtering/afkdnd_name"] = "",
	--Translation missing 
	-- ["Filtering/bgjoin_desc"] = "",
	--Translation missing 
	-- ["Filtering/bgjoin_name"] = "",
	--Translation missing 
	-- ["Filtering/Filtering"] = "",
	--Translation missing 
	-- ["Filtering/leavejoin_desc"] = "",
	--Translation missing 
	-- ["Filtering/leavejoin_name"] = "",
	--Translation missing 
	-- ["Filtering/notices_desc"] = "",
	--Translation missing 
	-- ["Filtering/notices_name"] = "",
	--Translation missing 
	-- ["Filtering/tradespam_desc"] = "",
	--Translation missing 
	-- ["Filtering/tradespam_name"] = "",
	--Translation missing 
	-- ["Font/Auto Restore Font Size"] = "",
	--Translation missing 
	-- ["Font/Chat window font options."] = "",
	--Translation missing 
	-- ["Font/Font"] = "",
	--Translation missing 
	-- ["Font/monochrome_desc"] = "",
	--Translation missing 
	-- ["Font/monochrome_name"] = "",
	--Translation missing 
	-- ["Font/None"] = "",
	--Translation missing 
	-- ["Font/Outline"] = "",
	--Translation missing 
	-- ["Font/outlinemode_desc"] = "",
	--Translation missing 
	-- ["Font/outlinemode_name"] = "",
	--Translation missing 
	-- ["Font/rememberfont_desc"] = "",
	--Translation missing 
	-- ["Font/rememberfont_name"] = "",
	--Translation missing 
	-- ["Font/Set ChatFrame%d Font Size"] = "",
	--Translation missing 
	-- ["Font/Set Font Face"] = "",
	--Translation missing 
	-- ["Font/Set Font Size"] = "",
	--Translation missing 
	-- ["Font/Set Separately"] = "",
	--Translation missing 
	-- ["Font/Set text font size for each chat window."] = "",
	--Translation missing 
	-- ["Font/Set text font size."] = "",
	--Translation missing 
	-- ["Font/Set the text font face for all chat windows."] = "",
	--Translation missing 
	-- ["Font/shadowcolor_desc"] = "",
	--Translation missing 
	-- ["Font/shadowcolor_name"] = "",
	--Translation missing 
	-- ["Font/Thick Outline"] = "",
	--Translation missing 
	-- ["Font/Toggle setting options separately for each chat window."] = "",
	--Translation missing 
	-- ["Font/Workaround a Blizzard bug which changes the font size when you open a system menu."] = "",
	--Translation missing 
	-- ["Frames/Chat window frame parameter options"] = "",
	--Translation missing 
	-- ["Frames/framealpha_desc"] = "",
	--Translation missing 
	-- ["Frames/framealpha_name"] = "",
	--Translation missing 
	-- ["Frames/Frames"] = "",
	--Translation missing 
	-- ["Frames/mainchatonload_desc"] = "",
	--Translation missing 
	-- ["Frames/mainchatonload_name"] = "",
	--Translation missing 
	-- ["Frames/maxchatheight_desc"] = "",
	--Translation missing 
	-- ["Frames/maxchatheight_name"] = "",
	--Translation missing 
	-- ["Frames/maxchatwidth_desc"] = "",
	--Translation missing 
	-- ["Frames/maxchatwidth_name"] = "",
	--Translation missing 
	-- ["Frames/minchatheight_desc"] = "",
	--Translation missing 
	-- ["Frames/minchatheight_name"] = "",
	--Translation missing 
	-- ["Frames/minchatwidth_desc"] = "",
	--Translation missing 
	-- ["Frames/minchatwidth_name"] = "",
	--Translation missing 
	-- ["Frames/rememberframepositions_desc"] = "",
	--Translation missing 
	-- ["Frames/rememberframepositions_name"] = "",
	--Translation missing 
	-- ["Frames/removeclamp_desc"] = "",
	--Translation missing 
	-- ["Frames/removeclamp_name"] = "",
	--Translation missing 
	-- ["History/Chat history options."] = "",
	--Translation missing 
	-- ["History/Color GMOTD"] = "",
	--Translation missing 
	-- ["History/Colors the GMOTD label"] = "",
	--Translation missing 
	-- ["History/delaygmotd_desc"] = "",
	--Translation missing 
	-- ["History/delaygmotd_name"] = "",
	--Translation missing 
	-- ["History/divider"] = "",
	--Translation missing 
	-- ["History/History"] = "",
	--Translation missing 
	-- ["History/Maximum number of lines of command history to save."] = "",
	--Translation missing 
	-- ["History/Save Command History"] = "",
	--Translation missing 
	-- ["History/Saves command history between sessions (for use with alt+up arrow or just the up arrow)"] = "",
	--Translation missing 
	-- ["History/Scrollback"] = "",
	--Translation missing 
	-- ["History/Scrollback Options"] = "",
	--Translation missing 
	-- ["History/scrollbacklen_desc"] = "",
	--Translation missing 
	-- ["History/scrollbacklen_name"] = "",
	--Translation missing 
	-- ["History/Set Chat Lines"] = "",
	--Translation missing 
	-- ["History/Set Command History"] = "",
	--Translation missing 
	-- ["History/Set the number of lines of chat history for each window."] = "",
	--Translation missing 
	-- ["History/Store the chat lines between sessions"] = "",
	--Translation missing 
	-- ["KeyBindings/Channel %d"] = "",
	--Translation missing 
	-- ["KeyBindings/Copy Selected Chat Frame"] = "",
	--Translation missing 
	-- ["KeyBindings/Guild Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Instance Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Next Chat Tab"] = "",
	--Translation missing 
	-- ["KeyBindings/Officer Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Party Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Prat CopyChat"] = "",
	--Translation missing 
	-- ["KeyBindings/Prat Keybindings"] = "",
	--Translation missing 
	-- ["KeyBindings/Prat TellTarget"] = "",
	--Translation missing 
	-- ["KeyBindings/Raid Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Raid Warning Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/Say"] = "",
	--Translation missing 
	-- ["KeyBindings/Smart Group Channel"] = "",
	--Translation missing 
	-- ["KeyBindings/TellTarget"] = "",
	--Translation missing 
	-- ["KeyBindings/Whisper"] = "",
	--Translation missing 
	-- ["KeyBindings/Yell"] = "",
	--Translation missing 
	-- ["OriginalButtons/alpha_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/alpha_name"] = "",
	--Translation missing 
	-- ["OriginalButtons/buttonframe_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/buttonframe_name"] = "",
	["OriginalButtons/ChannelNames"] = "ChannelNames",
	--Translation missing 
	-- ["OriginalButtons/Chat window button options."] = "",
	--Translation missing 
	-- ["OriginalButtons/chatmenu_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/chatmenu_name"] = "",
	["OriginalButtons/Default"] = "Padrão",
	["OriginalButtons/Original Buttons"] = "Botões Original",
	--Translation missing 
	-- ["OriginalButtons/reflow_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/reflow_name"] = "",
	--Translation missing 
	-- ["OriginalButtons/reminder_desc"] = "",
	--Translation missing 
	-- ["OriginalButtons/reminder_name"] = "",
	["OriginalButtons/Right, Inside Frame"] = "Direito, Dentro do Frame",
	--Translation missing 
	-- ["OriginalButtons/Right, Outside Frame"] = "",
	["OriginalButtons/Set Position"] = "Definir Posição",
	--Translation missing 
	-- ["OriginalButtons/Sets position of chat menu and arrows for all chat windows."] = "",
	["OriginalButtons/Show Arrows"] = "Mostar Setas",
	--Translation missing 
	-- ["OriginalButtons/Show Chat%d Arrows"] = "",
	--Translation missing 
	-- ["OriginalButtons/Toggle showing chat arrows for each chat window."] = "",
	--Translation missing 
	-- ["OriginalButtons/Toggles navigation arrows on and off."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Autohide"] = "",
	--Translation missing 
	-- ["OriginalEditbox/BACKGROUND"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Bar colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Border colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Border width"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Bottom"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Click the edit box to open it up for editing. Only available if Autohide is disabled."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Clickable"] = "",
	--Translation missing 
	-- ["OriginalEditbox/DIALOG"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Editbox options."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Enable Arrowkeys"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Enable using arrowkeys in editbox without the alt key."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Hide Border"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Hide the border around the edit box."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Hide the edit box after you have pressed enter."] = "",
	--Translation missing 
	-- ["OriginalEditbox/HIGH"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Lock editbox position if undocked."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Lock Position"] = "",
	--Translation missing 
	-- ["OriginalEditbox/LOW"] = "",
	--Translation missing 
	-- ["OriginalEditbox/MEDIUM"] = "",
	--Translation missing 
	-- ["OriginalEditbox/OriginalEditbox"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Padding"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Alpha"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Position"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Strata"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the alpha of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the amount of padding inside the edit box"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the edit box background colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the edit box border colour"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the frame strata of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the position of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the texture of the chat edit box"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the width of the edit box's border"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set the width of the editbox."] = "",
	--Translation missing 
	-- ["OriginalEditbox/Set Width (NB: only enabled if the editbox is undocked)"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Texture"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Top"] = "",
	--Translation missing 
	-- ["OriginalEditbox/Undocked"] = "",
	--Translation missing 
	-- ["Paragraph/adjustlinks_desc"] = "",
	--Translation missing 
	-- ["Paragraph/adjustlinks_name"] = "",
	--Translation missing 
	-- ["Paragraph/Center"] = "",
	--Translation missing 
	-- ["Paragraph/Chat window paragraph options."] = "",
	--Translation missing 
	-- ["Paragraph/justification_desc"] = "",
	--Translation missing 
	-- ["Paragraph/justification_name"] = "",
	--Translation missing 
	-- ["Paragraph/Left"] = "",
	--Translation missing 
	-- ["Paragraph/Line Spacing"] = "",
	--Translation missing 
	-- ["Paragraph/Paragraph"] = "",
	--Translation missing 
	-- ["Paragraph/Right"] = "",
	--Translation missing 
	-- ["Paragraph/Set the line spacing for all chat windows."] = "",
	--Translation missing 
	-- ["PlayerNames/Actively Query Player Info"] = "",
	--Translation missing 
	-- ["PlayerNames/Angled"] = "",
	--Translation missing 
	-- ["PlayerNames/Brackets"] = "",
	--Translation missing 
	-- ["PlayerNames/Brackets Common Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Brackets Use Common Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Class"] = "",
	--Translation missing 
	-- ["PlayerNames/Color by Level Difference"] = "",
	--Translation missing 
	-- ["PlayerNames/coloreverywhere_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/coloreverywhere_name"] = "",
	--Translation missing 
	-- ["PlayerNames/Enable Alt-Invite"] = "",
	--Translation missing 
	-- ["PlayerNames/Enable Invite Links"] = "",
	--Translation missing 
	-- ["PlayerNames/Enable TabComplete"] = "",
	--Translation missing 
	-- ["PlayerNames/hoverhilight_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/hoverhilight_name"] = "",
	--Translation missing 
	-- ["PlayerNames/How to color other player's level."] = "",
	--Translation missing 
	-- ["PlayerNames/How to color player's name."] = "",
	--Translation missing 
	-- ["PlayerNames/Keep Info"] = "",
	--Translation missing 
	-- ["PlayerNames/Keep Lots Of Info"] = "",
	--Translation missing 
	-- ["PlayerNames/Keep player information between session for all players except cross-server players"] = "",
	--Translation missing 
	-- ["PlayerNames/Keep player information between session, but limit it to friends and guild members."] = "",
	--Translation missing 
	-- ["PlayerNames/Let TasteTheNaimbow set the common color for unknown player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Level Color Mode"] = "",
	--Translation missing 
	-- ["PlayerNames/linkifycommon_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/linkifycommon_name"] = "",
	--Translation missing 
	-- ["PlayerNames/No additional coloring"] = "",
	--Translation missing 
	-- ["PlayerNames/None"] = "",
	--Translation missing 
	-- ["PlayerNames/Player Color Mode"] = "",
	--Translation missing 
	-- ["PlayerNames/Player name formating options."] = "",
	--Translation missing 
	-- ["PlayerNames/PlayerNames"] = "",
	--Translation missing 
	-- ["PlayerNames/Prat_Playernames: Stored Player Data Cleared"] = "",
	--Translation missing 
	-- ["PlayerNames/Query the server for all player names we do not know. Note: This happpens pretty slowly, and this data is not saved."] = "",
	--Translation missing 
	-- ["PlayerNames/Random"] = "",
	--Translation missing 
	-- ["PlayerNames/realidcolor_desc"] = "",
	--Translation missing 
	-- ["PlayerNames/realidcolor_name"] = "",
	--Translation missing 
	-- ["PlayerNames/Reset Settings"] = "",
	--Translation missing 
	-- ["PlayerNames/Restore default settings, and delete stored character data."] = "",
	--Translation missing 
	-- ["PlayerNames/Set common color of unknown player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Sets common color of brackets to use around player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Sets style of brackets to use around player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Show Group"] = "",
	--Translation missing 
	-- ["PlayerNames/Show Level"] = "",
	--Translation missing 
	-- ["PlayerNames/Show Raid Target Icon"] = "",
	--Translation missing 
	-- ["PlayerNames/Square"] = "",
	--Translation missing 
	-- ["PlayerNames/Tab completion : "] = "",
	--Translation missing 
	-- ["PlayerNames/tabcomplete_name"] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle group invites by alt-clicking hyperlinked keywords like 'invite'."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle group invites by alt-clicking on player name."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle level showing."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle raid group showing."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle showing the raid target icon which is currently on the player."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle tab completion of player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle using a common color for brackets around player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Toggle using a common color for unknown player names."] = "",
	--Translation missing 
	-- ["PlayerNames/Too many matches (%d possible)"] = "",
	--Translation missing 
	-- ["PlayerNames/Unknown Common Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Unknown Common Color From TasteTheNaimbow"] = "",
	--Translation missing 
	-- ["PlayerNames/Unknown Use Common Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Use Channel Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Use Player Color"] = "",
	--Translation missing 
	-- ["PlayerNames/Use toon name for RealID"] = "",
	--Translation missing 
	-- ["PopupMessage/Add Nickname"] = "",
	--Translation missing 
	-- ["PopupMessage/Adds an alternate name to show in popups."] = "",
	--Translation missing 
	-- ["PopupMessage/Clear Nickname"] = "",
	--Translation missing 
	-- ["PopupMessage/Clears alternate name to show in popups."] = "",
	--Translation missing 
	-- ["PopupMessage/framealpha_desc"] = "",
	--Translation missing 
	-- ["PopupMessage/framealpha_name"] = "",
	--Translation missing 
	-- ["PopupMessage/Popup"] = "",
	--Translation missing 
	-- ["PopupMessage/PopupMessage"] = "",
	--Translation missing 
	-- ["PopupMessage/Remove Nickname"] = "",
	--Translation missing 
	-- ["PopupMessage/Removes an alternate name to show in popups."] = "",
	--Translation missing 
	-- ["PopupMessage/Set Separately"] = "",
	--Translation missing 
	-- ["PopupMessage/Show All Popups"] = "",
	--Translation missing 
	-- ["PopupMessage/Show Popups"] = "",
	--Translation missing 
	-- ["PopupMessage/Show Popups for all chat windows."] = "",
	--Translation missing 
	-- ["PopupMessage/Show Popups for each window."] = "",
	--Translation missing 
	-- ["PopupMessage/show_desc"] = "",
	--Translation missing 
	-- ["PopupMessage/show_name"] = "",
	--Translation missing 
	-- ["PopupMessage/show_perframedesc"] = "",
	--Translation missing 
	-- ["PopupMessage/show_perframename"] = "",
	--Translation missing 
	-- ["PopupMessage/showall_desc"] = "",
	--Translation missing 
	-- ["PopupMessage/showall_name"] = "",
	--Translation missing 
	-- ["PopupMessage/Shows messages in a popup window."] = "",
	--Translation missing 
	-- ["PopupMessage/Shows messages with your name in a popup."] = "",
	--Translation missing 
	-- ["PopupMessage/Toggle setting options separately for each chat window."] = "",
	--Translation missing 
	-- ["Scroll/Bottom"] = "",
	--Translation missing 
	-- ["Scroll/Chat window scrolling options."] = "",
	--Translation missing 
	-- ["Scroll/Control whether text is added to the frame at the top or the bottom."] = "",
	--Translation missing 
	-- ["Scroll/lowdown_desc"] = "",
	--Translation missing 
	-- ["Scroll/lowdown_name"] = "",
	--Translation missing 
	-- ["Scroll/modified_speed"] = "",
	--Translation missing 
	-- ["Scroll/modified_speed_desc"] = "",
	--Translation missing 
	-- ["Scroll/mousewheel_desc"] = "",
	--Translation missing 
	-- ["Scroll/mousewheel_name"] = "",
	--Translation missing 
	-- ["Scroll/Scroll"] = "",
	--Translation missing 
	-- ["Scroll/Set Ctrl+MouseWheel Speed"] = "",
	--Translation missing 
	-- ["Scroll/Set MouseWheel Speed"] = "",
	--Translation missing 
	-- ["Scroll/Set number of lines mousewheel will scroll when ctrl is pressed."] = "",
	--Translation missing 
	-- ["Scroll/Set number of lines mousewheel will scroll."] = "",
	--Translation missing 
	-- ["Scroll/Set TheLowDown Delay"] = "",
	--Translation missing 
	-- ["Scroll/Set time to wait before jumping to the bottom of chat windows."] = "",
	--Translation missing 
	-- ["Scroll/Text scroll direction"] = "",
	--Translation missing 
	-- ["Scroll/Top"] = "",
	--Translation missing 
	-- ["Scrollback/divider"] = "",
	--Translation missing 
	-- ["Scrollback/Scrollback"] = "",
	--Translation missing 
	-- ["Scrollback/Store the chat lines between sessions"] = "",
	--Translation missing 
	-- ["Search/err_notfound"] = "",
	--Translation missing 
	-- ["Search/err_tooshort"] = "",
	--Translation missing 
	-- ["Search/find_results"] = "",
	--Translation missing 
	-- ["Search/module_desc"] = "",
	--Translation missing 
	-- ["Search/module_info"] = "",
	--Translation missing 
	-- ["Search/module_name"] = "",
	--Translation missing 
	-- ["ServerNames/autoabbreviate_desc"] = "",
	--Translation missing 
	-- ["ServerNames/autoabbreviate_name"] = "",
	--Translation missing 
	-- ["ServerNames/colon_desc"] = "",
	--Translation missing 
	-- ["ServerNames/colon_name"] = "",
	--Translation missing 
	-- ["ServerNames/randomclr_desc"] = "",
	--Translation missing 
	-- ["ServerNames/randomclr_name"] = "",
	--Translation missing 
	-- ["ServerNames/Server name abbreviation options."] = "",
	--Translation missing 
	-- ["ServerNames/ServerNames"] = "",
	--Translation missing 
	-- ["Sounds/A module to play sounds on certain chat messages."] = "",
	--Translation missing 
	-- ["Sounds/Add a custom channel"] = "",
	--Translation missing 
	-- ["Sounds/bn_whisper_desc"] = "",
	--Translation missing 
	-- ["Sounds/bn_whisper_name"] = "",
	--Translation missing 
	-- ["Sounds/Custom Channels"] = "",
	--Translation missing 
	-- ["Sounds/group_lead_desc"] = "",
	--Translation missing 
	-- ["Sounds/group_lead_name"] = "",
	--Translation missing 
	-- ["Sounds/guild_desc"] = "",
	--Translation missing 
	-- ["Sounds/guild_name"] = "",
	--Translation missing 
	-- ["Sounds/incoming"] = "",
	--Translation missing 
	-- ["Sounds/Incoming Sounds"] = "",
	--Translation missing 
	-- ["Sounds/officer_desc"] = "",
	--Translation missing 
	-- ["Sounds/officer_name"] = "",
	--Translation missing 
	-- ["Sounds/outgoing"] = "",
	--Translation missing 
	-- ["Sounds/Outgoing Sounds"] = "",
	--Translation missing 
	-- ["Sounds/party_desc"] = "",
	--Translation missing 
	-- ["Sounds/party_name"] = "",
	--Translation missing 
	-- ["Sounds/Play a sound for a certain channel name (can be a substring)"] = "",
	--Translation missing 
	-- ["Sounds/raid_desc"] = "",
	--Translation missing 
	-- ["Sounds/raid_name"] = "",
	--Translation missing 
	-- ["Sounds/Remove a custom channel"] = "",
	--Translation missing 
	-- ["Sounds/Reset settings"] = "",
	--Translation missing 
	-- ["Sounds/Restore default settings and resets custom channel list"] = "",
	--Translation missing 
	-- ["Sounds/Sound selection for incoming chat messages"] = "",
	--Translation missing 
	-- ["Sounds/Sound selection for outgoing (from you) chat messages"] = "",
	--Translation missing 
	-- ["Sounds/Sounds"] = "",
	--Translation missing 
	-- ["Sounds/whisper_desc"] = "",
	--Translation missing 
	-- ["Sounds/whisper_name"] = "",
	--Translation missing 
	-- ["Substitutions/%d total user defined substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/|cffff0000warning:|r subtitution \"%s\" already defined as \"%s\", overwriting"] = "",
	--Translation missing 
	-- ["Substitutions/<noguild>"] = "",
	--Translation missing 
	-- ["Substitutions/<notarget>"] = "",
	--Translation missing 
	-- ["Substitutions/A module to provide basic chat substitutions."] = "",
	--Translation missing 
	-- ["Substitutions/Are you sure - this will delete all user defined substitutions and reset defaults?"] = "",
	--Translation missing 
	-- ["Substitutions/Are you sure?"] = "",
	--Translation missing 
	-- ["Substitutions/can't find substitution index for a substitution named '%s'"] = "",
	--Translation missing 
	-- ["Substitutions/current-prompt"] = "",
	--Translation missing 
	-- ["Substitutions/defined %s: expands to => %s"] = "",
	--Translation missing 
	-- ["Substitutions/Delete all"] = "",
	--Translation missing 
	-- ["Substitutions/Delete substitution"] = "",
	--Translation missing 
	-- ["Substitutions/Deletes a user defined substitution"] = "",
	--Translation missing 
	-- ["Substitutions/Deletes all user defined substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/female"] = "",
	--Translation missing 
	-- ["Substitutions/her"] = "",
	--Translation missing 
	-- ["Substitutions/hers"] = "",
	--Translation missing 
	-- ["Substitutions/him"] = "",
	--Translation missing 
	-- ["Substitutions/his"] = "",
	--Translation missing 
	-- ["Substitutions/it"] = "",
	--Translation missing 
	-- ["Substitutions/its"] = "",
	--Translation missing 
	-- ["Substitutions/List of available substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/List of available substitutions defined by this module. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "",
	--Translation missing 
	-- ["Substitutions/List substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/Lists all current subtitutions in the default chat frame"] = "",
	--Translation missing 
	-- ["Substitutions/male"] = "",
	--Translation missing 
	-- ["Substitutions/MapLoc"] = "",
	--Translation missing 
	-- ["Substitutions/MapPos"] = "",
	--Translation missing 
	-- ["Substitutions/MapXPos"] = "",
	--Translation missing 
	-- ["Substitutions/MapYPos"] = "",
	--Translation missing 
	-- ["Substitutions/MapZone"] = "",
	--Translation missing 
	-- ["Substitutions/module:buildUserSubsIndex(): warning: module patterns not defined!"] = "",
	--Translation missing 
	-- ["Substitutions/MouseoverTargetName"] = "",
	--Translation missing 
	-- ["Substitutions/NO MATCHFUNC FOUND"] = "",
	--Translation missing 
	-- ["Substitutions/no substitution name given"] = "",
	--Translation missing 
	-- ["Substitutions/no substitution name supplied for deletion"] = "",
	--Translation missing 
	-- ["Substitutions/no user defined subs found"] = "",
	--Translation missing 
	-- ["Substitutions/no value given for subtitution \"%s\""] = "",
	--Translation missing 
	-- ["Substitutions/Options for setting and removing user defined substitutions. (NB: users may define custom values for existing substitutions, but they will revert to the default value if the user definition is deleted.)"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerAverageItemLevel"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerCurrentMana"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerHealthDeficit"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerHP"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerManaDeficit"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerMaxHP"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerMaxMana"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerName"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerPercentHP"] = "",
	--Translation missing 
	-- ["Substitutions/PlayerPercentMana"] = "",
	--Translation missing 
	-- ["Substitutions/RandNum"] = "",
	--Translation missing 
	-- ["Substitutions/removing user defined substitution \"%s\"; previously expanded to => \"%s\""] = "",
	--Translation missing 
	-- ["Substitutions/Set substitution"] = "",
	--Translation missing 
	-- ["Substitutions/Set the value of a user defined substitution (NB: this may be the same as an existing default substitution; to reset it to the default, just remove the user created definition)."] = "",
	--Translation missing 
	-- ["Substitutions/subname -- NOTE: sub name without the prefix '%'"] = "",
	--Translation missing 
	-- ["Substitutions/subname = text after expansion -- NOTE: sub name without the prefix \"%\""] = "",
	--Translation missing 
	-- ["Substitutions/substitution: %s defined as => %s"] = "",
	--Translation missing 
	-- ["Substitutions/Substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/TargetClass"] = "",
	--Translation missing 
	-- ["Substitutions/TargetGender"] = "",
	--Translation missing 
	-- ["Substitutions/TargetGuild"] = "",
	--Translation missing 
	-- ["Substitutions/TargetHealth"] = "",
	--Translation missing 
	-- ["Substitutions/TargetHealthDeficit"] = "",
	--Translation missing 
	-- ["Substitutions/TargetIcon"] = "",
	--Translation missing 
	-- ["Substitutions/TargetLevel"] = "",
	--Translation missing 
	-- ["Substitutions/TargetManaDeficit"] = "",
	--Translation missing 
	-- ["Substitutions/TargetName"] = "",
	--Translation missing 
	-- ["Substitutions/TargetPercentHP"] = "",
	--Translation missing 
	-- ["Substitutions/TargetPossesive"] = "",
	--Translation missing 
	-- ["Substitutions/TargetPronoun"] = "",
	--Translation missing 
	-- ["Substitutions/TargetRace"] = "",
	--Translation missing 
	-- ["Substitutions/TargetTargetName"] = "",
	--Translation missing 
	-- ["Substitutions/unknown sex"] = "",
	--Translation missing 
	-- ["Substitutions/user defined substition \"%s\" not found"] = "",
	--Translation missing 
	-- ["Substitutions/User defined substitutions"] = "",
	--Translation missing 
	-- ["Substitutions/user substitutions index (usersubs_idx) doesn't exist! oh dear."] = "",
	--Translation missing 
	-- ["Substitutions/usersub_"] = "",
	--Translation missing 
	-- ["TellTarget//tt"] = "",
	--Translation missing 
	-- ["TellTarget/Adds telltarget slash command (/tt)."] = "",
	--Translation missing 
	-- ["TellTarget/No target selected."] = "",
	--Translation missing 
	-- ["TellTarget/NoTarget"] = "",
	--Translation missing 
	-- ["TellTarget/Target does not exist."] = "",
	--Translation missing 
	-- ["TellTarget/Target is not a player."] = "",
	--Translation missing 
	-- ["TellTarget/TellTarget"] = "",
	--Translation missing 
	-- ["Timestamps/Chat window timestamp options."] = "",
	--Translation missing 
	-- ["Timestamps/colortimestamp_desc"] = "",
	--Translation missing 
	-- ["Timestamps/colortimestamp_name"] = "",
	--Translation missing 
	-- ["Timestamps/Format All Timestamps"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM (12-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM (24-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM:SS (12-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM:SS (24-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/HH:MM:SS AM (12-hour)"] = "",
	--Translation missing 
	-- ["Timestamps/localtime_desc"] = "",
	--Translation missing 
	-- ["Timestamps/localtime_name"] = "",
	--Translation missing 
	-- ["Timestamps/MM:SS"] = "",
	--Translation missing 
	-- ["Timestamps/Post-Timestamp"] = "",
	--Translation missing 
	-- ["Timestamps/Pre-Timestamp"] = "",
	--Translation missing 
	-- ["Timestamps/Set the timestamp format"] = "",
	--Translation missing 
	-- ["Timestamps/Set Timestamp Color"] = "",
	--Translation missing 
	-- ["Timestamps/Sets the color of the timestamp."] = "",
	--Translation missing 
	-- ["Timestamps/Show Timestamp"] = "",
	--Translation missing 
	-- ["Timestamps/show_desc"] = "",
	--Translation missing 
	-- ["Timestamps/show_name"] = "",
	--Translation missing 
	-- ["Timestamps/space_desc"] = "",
	--Translation missing 
	-- ["Timestamps/space_name"] = "",
	--Translation missing 
	-- ["Timestamps/Timestamps"] = "",
	--Translation missing 
	-- ["Timestamps/Toggle showing timestamp for each window."] = "",
	--Translation missing 
	-- ["Timestamps/twocolumn_desc"] = "",
	--Translation missing 
	-- ["Timestamps/twocolumn_name"] = "",
	--Translation missing 
	-- ["UrlCopy/Change the color of the URL."] = "",
	--Translation missing 
	-- ["UrlCopy/Color URL"] = "",
	--Translation missing 
	-- ["UrlCopy/Set Color"] = "",
	--Translation missing 
	-- ["UrlCopy/Show Brackets"] = "",
	--Translation missing 
	-- ["UrlCopy/Toggle"] = "",
	--Translation missing 
	-- ["UrlCopy/Toggle showing brackets on and off."] = "",
	--Translation missing 
	-- ["UrlCopy/Toggle the module on and off."] = "",
	--Translation missing 
	-- ["UrlCopy/Toggle the URL color on and off."] = "",
	--Translation missing 
	-- ["UrlCopy/URL formating options."] = "",
	--Translation missing 
	-- ["UrlCopy/UrlCopy"] = "",
	--Translation missing 
	-- ["UrlCopy/Use Popup"] = "",
	--Translation missing 
	-- ["UrlCopy/Use popup window to show URL."] = ""
}

PL:AddLocale(nil, "ptBR",L)


end
--@end-non-debug@


local AceConfig = LibStub("AceConfig-3.0")
--local AceConfigDialog = LibStub("AceConfigDialog-3.0")
--local AceConfigCmd = LibStub("AceConfigCmd-3.0")

local moduleControlArgs = {}

Options = {
  type = "group",
  childGroups = "tab",
  get = "GetValue",
  set = "SetValue",
  args = {
    display = {
      type = "group",
      name = PL["display_name"],
      desc = PL["display_desc"],
      hidden = function(info) end,
      get = "GetValue",
      set = "SetValue",
      args = {},
      order = 1,
    },
    formatting = {
      type = "group",
      name = PL["formatting_name"],
      desc = PL["formatting_desc"],
      hidden = function(info) end,
      get = "GetValue",
      set = "SetValue",
      args = {},
      order = 2,
    },
    extras = {
      type = "group",
      name = PL["extras_name"],
      desc = PL["extras_desc"],
      hidden = function(info) end,
      get = "GetValue",
      set = "SetValue",
      args = {},
      order = 3,
    },
    modulecontrol = {
      type = "group",
      name = PL["modulecontrol_name"],
      desc = PL["modulecontrol_desc"],
      get = "GetValue",
      set = "SetValue",
      args = moduleControlArgs,
      order = 4,
    }
  }
}

--[[ WitchHunt: [Ammo] ]] --
tinsert(EnableTasks, function(self)

  local acreg = LibStub("AceConfigRegistry-3.0")
  acreg:RegisterOptionsTable(PL.prat, Options)
  acreg:RegisterOptionsTable(PL.prat .. ": " .. Options.args.display.name, Options.args.display)
  acreg:RegisterOptionsTable(PL.prat .. ": " .. Options.args.formatting.name, Options.args.formatting)
  acreg:RegisterOptionsTable(PL.prat .. ": " .. Options.args.extras.name, Options.args.extras)
  acreg:RegisterOptionsTable(PL.prat .. ": " .. Options.args.modulecontrol.name, Options.args.modulecontrol)
  acreg:RegisterOptionsTable("Prat: " .. Options.args.profiles.name, Options.args.profiles)

  local acdia = LibStub("AceConfigDialog-3.0")
  acdia:AddToBlizOptions(PL.prat, PL.prat)
  acdia:AddToBlizOptions(PL.prat .. ": " .. Options.args.display.name, Options.args.display.name, PL.prat)
  acdia:AddToBlizOptions(PL.prat .. ": " .. Options.args.formatting.name, Options.args.formatting.name, PL.prat)
  acdia:AddToBlizOptions(PL.prat .. ": " .. Options.args.extras.name, Options.args.extras.name, PL.prat)
  acdia:AddToBlizOptions(PL.prat .. ": " .. Options.args.modulecontrol.name, Options.args.modulecontrol.name, PL.prat)
  acdia:AddToBlizOptions(PL.prat .. ": " .. Options.args.profiles.name, Options.args.profiles.name, PL.prat)

  self:RegisterChatCommand(PL.prat, function() ToggleOptionsWindow() end)
end)


do
  local function getModuleFromShortName(shortname)
    for k,v in Addon:IterateModules() do
      if v.moduleName == shortname then
        return v
      end
    end
  end

  local lastReloadMessage = 0
  local function PrintReloadMessage()
    local tm = _G.GetTime()
    if tm - lastReloadMessage > 60 then
      Prat:Print(PL.reload_required:format(GetReloadUILink()))
      lastReloadMessage = tm
    end
  end

  local function setValue(info, b)
    local old = Prat.db.profile.modules[info[#info]]
    Prat.db.profile.modules[info[#info]] = b

    if old == 1 or b == 1 then
      PrintReloadMessage()
    end

    local m = getModuleFromShortName(info[#info])
    if not m then
    --            Prat.db.profile.modules[info[#info]] = b
      return
    end

    if b == 2 or b == 1 then
      m.db.profile.on = false
      m:Disable()
    elseif b == 3 then
      m.db.profile.on = true
      m:Enable()
    end
  end

  local function getValue(info)
    local v, m
    v = Prat.db.profile.modules[info[#info]]

    --		if v ~= 1 then
    --			m = getModuleFromShortName(info[#info])
    --			if m then
    --                -- Allow us to set enabled/disabled while the moduel is "dont load"
    --                if v > 3 then
    --                    v = v - 2
    ----                    m.db.profile.on = v
    --                else
    --    				v = m.db.profile.on and 3 or 2
    --                end
    --			end
    --		end

    return v
  end


  do
    local moduleControlOption = {
      name = function(info) return info[#info] end,
      desc = PL.load_desc,
      type = "select",
--      style = "radio",
      values = function(info) local v = Prat.db.profile.modules[info[#info]] if v == 1 or v > 3 then
        return {
          [1] = "|cffA0A0A0" .. PL.load_no .. "|r",
          [4] = "|cffffff80" .. PL.load_disabledonrestart .. "|r",
          [5] = "|cff80ffff" .. PL.load_enabledonrestart .. "|r"
        }
      else
        return {
          "|cffA0A0A0" .. PL.load_no .. "|r", "|cffff8080" .. PL.load_disabled .. "|r", "|cff80ff80" .. PL.load_enabled .. "|r"
        }
      end end,
      get = getValue,
      set = setValue
    }

    function CreateModuleControlOption(name)
      moduleControlArgs[name] = moduleControlOption
    end
  end
end

FrameList = {}
HookedFrameList = {}


local function updateFrameNames()
  for k,v in pairs(HookedFrames) do
    if (v.isDocked == 1) or v:IsShown() then
      HookedFrameList[k] = (v.name)
    else
      HookedFrameList[k] = nil
    end
  end
  for k,v in pairs(Frames) do
    if (v.isDocked == 1) or v:IsShown() then
      FrameList[k] = (v.name)
    else
      FrameList[k] = nil
    end
  end
  LibStub("AceConfigRegistry-3.0"):NotifyChange(PL.prat)
end

tinsert(EnableTasks, function(self)
  self:SecureHook("FCF_SetWindowName", updateFrameNames)

  _G.FCF_SetWindowName(_G.ChatFrame1, (_G.GetChatWindowInfo(1)), 1)
end)

function ToggleOptionsWindow()
  local acd = LibStub("AceConfigDialog-3.0")
  if acd.OpenFrames[PL.prat] then
    acd:Close(PL.prat)
  else
    acd:Open(PL.prat)
  end
end

	
