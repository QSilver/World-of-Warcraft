local L = KuiNameplatesCoreConfig:Locale('enGB')
if not L then return end

L.page_names = {
    general     = 'General',
    fade_rules  = 'Fade rules',
    healthbars  = 'Health bars',
    castbars    = 'Cast bars',
    text        = 'Text',
    nameonly    = 'Name-only',
    framesizes  = 'Frame sizes',
    auras       = 'Auras',
    classpowers = 'Class powers',
    threat      = 'Threat',
    bossmod     = 'Boss mods',
    cvars       = 'CVars',
}
L.titles = {
    profile = 'Profile',
    new_profile = 'New profile...',
    new_profile_label = 'Enter profile name',
    delete_profile_title = 'Delete profile',
    delete_profile_label = 'Delete profile |cffffffff%s|r?',
    reset_profile_title = 'Reset profile',
    reset_profile_label = 'Reset profile |cffffffff%s|r?',
    rename_profile_title = 'Rename profile',
    rename_profile_label = 'Enter new name for |cffffffff%s',
    copy_profile_title = 'Copy profile',
    copy_profile_label = 'Enter name for new profile',
    version = '%s by %s @ Curse, version %s',

    bar_texture = 'Bar texture',
    bar_animation = 'Bar animation',
    dd_bar_animation_smooth = 'Smooth',
    dd_bar_animation_cutaway = 'Cutaway',

    combat_hostile = 'Combat action: hostile',
    combat_friendly = 'Combat action: friendly',
    dd_combat_toggle_nothing = 'Do nothing',
    dd_combat_toggle_hide = 'Hide, then show',
    dd_combat_toggle_show = 'Show, then hide',

    ignore_uiscale = 'Ignore UI scale',
    use_blizzard_personal = 'Ignore personal nameplate',

    clickthrough_sep = 'Clickthrough frames',
    clickthrough_self = 'Personal',
    clickthrough_friend = 'Friendly',
    clickthrough_enemy = 'Enemy',

    nameonly = 'Use name-only mode',
    nameonly_no_font_style = 'No text outline',
    nameonly_health_colour = 'Health colour',
    nameonly_damaged_friends = 'On damaged friends',
    nameonly_enemies = 'On unattackable enemies',
    nameonly_target = 'On target',
    nameonly_all_enemies = 'On enemies',
    nameonly_neutral = 'On neutral enemies',
    nameonly_in_combat = 'On units in combat with you',
    guild_text_npcs = 'Show NPC titles',
    guild_text_players = 'Show player guilds',
    title_text_players = 'Show player titles',
    nameonly_visibility_sep = 'Visibility',
    nameonly_text_sep = 'Text',

    glow_as_shadow = 'Show frame shadow',
    state_icons = 'Show state icons',
    target_glow = 'Show target glow',
    target_glow_colour = 'Target glow colour',
    target_arrows = 'Show target arrows',
    frame_glow_size = 'Frame glow size',
    target_arrows_size = 'Target arrow size',

    fade_non_target_alpha = 'Non-target alpha',
    fade_conditional_alpha = 'Conditional alpha',
    fade_speed = 'Animation speed',
    fade_all = 'Fade out by default',
    fade_friendly_npc = 'Fade friendly NPCs',
    fade_neutral_enemy = 'Fade neutral enemies',
    fade_untracked = 'Fade non-tracked units',
    fade_avoid_nameonly = 'Avoid name-only',
    fade_avoid_raidicon = 'Avoid raid icon',
    fade_avoid_execute_friend = 'Avoid low health friends',
    fade_avoid_execute_hostile = 'Avoid low health enemies',
    fade_avoid_tracked = 'Avoid tracked or in combat',
    fade_avoid_combat = 'Avoid in combat',
    fade_avoid_casting_friendly = 'Avoid casting (friendly)',
    fade_avoid_casting_hostile = 'Avoid casting (hostile)',
    fade_avoid_casting_interruptible = 'Interruptible',
    fade_avoid_casting_uninterruptible = 'Uninterruptible',

    reaction_colour_sep = 'Colours',
    colour_hated = 'Hated',
    colour_neutral = 'Neutral',
    colour_friendly = 'Friendly',
    colour_friendly_pet = 'Friendly player pet',
    colour_tapped = 'Tapped',
    colour_player_class = 'Class colour friendly players',
    colour_player = 'Player',
    colour_self_class = 'Class colour self',
    colour_self = 'Self',
    colour_enemy_class = 'Class colour hostile players',
    colour_enemy_player = 'Hostile player',
    colour_enemy_pet = 'Hostile player pet',

    absorb_enable = 'Show absorbs',
    absorb_striped = 'Striped absorb texture',
    colour_absorb = 'Absorb overlay',

    execute_sep = 'Execute range',
    execute_enabled = 'Enable execute range',
    execute_auto = 'Auto-detect range',
    execute_colour = 'Execute colour',
    execute_percent = 'Execute range',

    font_face = 'Font face',
    font_style = 'Font style',
    dd_font_style_none = 'None',
    dd_font_style_outline = 'Outline',
    dd_font_style_shadow = 'Shadow',
    dd_font_style_shadowandoutline = 'Shadow+Outline',
    dd_font_style_monochrome = 'Monochrome',
    font_size_normal = 'Normal font size',
    font_size_small = 'Small font size',
    name_text = 'Show name text',
    hide_names = 'Hide non-tracked names',
    level_text = 'Show level text',
    health_text = 'Show health text',
    text_vertical_offset = 'Text v.offset',
    name_vertical_offset = 'Name v.offset',
    bot_vertical_offset = 'Level/health v.offset',

    name_colour_sep = 'Name text colour',
    name_colour_white_in_bar_mode = 'White names with visible health bar',
    class_colour_friendly_names = 'Class colour friendly names',
    class_colour_enemy_names = 'Class colour enemy names',
    name_colour_player_friendly = 'Friendly player',
    name_colour_player_hostile = 'Hostile player',
    name_colour_npc_hostile = 'Hostile',
    name_colour_npc_neutral = 'Neutral',
    name_colour_npc_friendly = 'Friendly',

    health_text_sep = 'Health text',
    health_text_friend_max = 'Max. health friend',
    health_text_friend_dmg = 'Damaged friend',
    health_text_hostile_max = 'Max. health hostile',
    health_text_hostile_dmg = 'Damaged hostile',
    dd_health_text_current = 'Current',
    dd_health_text_maximum = 'Maximum',
    dd_health_text_percent = 'Percent',
    dd_health_text_deficit = 'Deficit',
    dd_health_text_blank = 'Blank',
    dd_health_text_current_percent = 'Current + percent',
    dd_health_text_current_deficit = 'Current + deficit',

    frame_width = 'Frame width',
    frame_height = 'Frame height',
    frame_width_minus = 'Minus frame width',
    frame_height_minus = 'Minus frame height',
    frame_width_personal = 'Personal frame width',
    frame_height_personal = 'Personal frame height',
    powerbar_height = 'Power bar height',
    castbar_height = 'Cast bar height',
    castbar_name_vertical_offset = 'Spell name v.offset',

    auras_enabled = 'Show auras',
    auras_on_personal = 'Show on personal frame',
    auras_pulsate = 'Pulsate icons',
    auras_centre = 'Centre align icons',
    auras_sort = 'Sorting method',
    dd_auras_sort_index = 'Aura index',
    dd_auras_sort_time = 'Time remaining',
    auras_show_all_self = 'Whitelist all own auras',
    auras_hide_all_other = 'Blacklist all other auras',
    auras_filtering_sep = 'Filtering',
    auras_time_threshold = 'Timer threshold',
    auras_kslc_hint = 'KuiSpellListConfig from Curse can be used to whitelist or blacklist auras from any caster.',
    auras_minimum_length = 'Minimum effect length',
    auras_maximum_length = 'Maximum effect length',
    auras_icons_sep = 'Icons',
    auras_icon_normal_size = 'Icon size (normal)',
    auras_icon_minus_size = 'Icon size (minus)',
    auras_icon_squareness = 'Icon squareness',

    castbar_enable = 'Enable',
    castbar_colour = 'Cast bar colour',
    castbar_unin_colour = 'Uninterruptible colour',
    castbar_showpersonal = 'Show own cast bar',
    castbar_icon = 'Show spell icon',
    castbar_name = 'Show spell name',
    castbar_shield = 'Show uninterruptible shield',
    castbar_showall = 'Show cast bars on all nameplates',
    castbar_showfriend = 'Show friendly cast bars',
    castbar_showenemy = 'Show enemy cast bars',

    tank_mode = 'Enable tank mode',
    tankmode_force_enable = 'Force tank mode',
    tankmode_force_offtank = 'Force off-tank detection',
    threat_brackets = 'Show threat brackets',
    frame_glow_threat = 'Show threat glow',
    tankmode_colour_sep = 'Tank mode bar colours',
    tankmode_tank_colour = 'Tanking',
    tankmode_trans_colour = 'Transitional',
    tankmode_other_colour = 'Off-tank',

    classpowers_enable = 'Show class resources',
    classpowers_on_target = 'Show on target',
    classpowers_size = 'Icon size',
    classpowers_bar_width = 'Stagger bar width',
    classpowers_bar_height = 'Stagger bar height',
    classpowers_colour = 'Icon colour',
    classpowers_colour_overflow = 'Overflow colour',
    classpowers_colour_inactive = 'Inactive colour',

    bossmod_enable = 'Enable boss mod communication module',
    bossmod_control_visibility = 'Allow boss mods to control visibility of nameplates',
    bossmod_icon_size = 'Icon size',
    bossmod_x_offset = 'Horizontal offset',
    bossmod_y_offset = 'Vertical offset',
    bossmod_clickthrough = 'Enable clickthrough when automatically shown',

    cvar_enable = 'Allow Kui Nameplates to modify CVars',
    cvar_show_friendly_npcs = 'Always show friendly NPCs\' nameplates',
    cvar_name_only = 'Hide default health bar',
    cvar_personal_show_always = 'Always show personal nameplate',
    cvar_personal_show_combat = 'Show personal nameplate when in combat',
    cvar_personal_show_target = 'Show personal nameplate with a target',
    cvar_max_distance = 'Max render distance',
    cvar_clamp_top = 'Top clamp distance',
    cvar_clamp_bottom = 'Bottom clamp distance',
    cvar_overlap_v = 'Vertical overlap',
}
L.tooltips = {
    bar_texture = 'The texture used for status bars (provided by LibSharedMedia)',
    bar_animation = 'The style of animation to use on health/power bars',

    combat_hostile = 'Action to take on hostile frames upon entering and leaving combat.',
    combat_friendly = 'Action to take on friendly frames upon entering and leaving combat.',

    ignore_uiscale = 'Ignore the default UI\'s scaling. This allows nameplates to retain pixel-perfectness regardless of resolution.',
    use_blizzard_personal = 'Don\'t skin the personal nameplate or its class powers.|n|nWhen using this option, the width of the personal frame can still be adjusted with the "Personal frame width" slider under "Frame sizes", however a UI reload is required for it to take full effect.|n|nIn order for this frame to display, you must check the option "Personal Resource Display" under Esc > Interface > Names > Unit Nameplates.|nIn order to show unmodified class resources on it, uncheck the option "Show Special Resources on Targets" on the same page.|n|n|cffff6666Requires a UI reload if the frame is currently visible.',
    state_icons = 'Show an icon on bosses and rare units (hidden when level text is shown)',

    clickthrough_self = 'Disable the click-box of your personal nameplate',
    clickthrough_friend = 'Disable the click-box of friendly nameplates',
    clickthrough_enemy = 'Disable the click-box of enemy nameplates',

    nameonly = 'Enable name-only mode, which hides the health bars of the frames it applies to',
    nameonly_no_font_style = 'Hide text outline when in name-only mode (by setting the font style to nil)',
    nameonly_health_colour = 'Partially colour text to represent health percentage',
    nameonly_damaged_friends = 'Use name-only mode even on damaged friendly frames',
    nameonly_enemies = 'Use name-only mode on unattackable enemies (not including enemy players under effects such as Ice Block)',
    nameonly_target = 'Also use name-only mode on your target',
    nameonly_all_enemies = 'Use name-only mode on all enemies',
    nameonly_neutral = 'Use name-only mode on attackable neutral units',
    nameonly_in_combat = 'Use name-only mode even when a unit is in combat with you (also allows name-only mode to be enabled on enemy players).|n|nNote that this doesn\'t apply to training dummies or other units which don\'t have a threat table.',
    guild_text_npcs = 'Show NPCs titles, such as Quartermaster, etc.',
    guild_text_players = 'Show guilds on players in name-only mode',
    title_text_players = 'Show players\' titles in name-only mode',

    target_arrows = 'Show arrows around your current target. These inherit the target glow colour',
    frame_glow_size = 'Size of the frame glow used for target highlighting and threat indication',

    fade_non_target_alpha = 'Opacity other frames will fade to when you have a target.|nIf set to 0, the nameplate will still be clickable despite being invisible. Addons cannot arbitrarily disable nameplate clickboxes',
    fade_conditional_alpha = 'Opacity frames will fade to when matching one of the conditions below',
    fade_speed = 'Speed of the frame fading animation, where 1 is slowest and 0 is instant',
    fade_all = 'Fade all frames to the non-target alpha by default',
    fade_avoid_nameonly = 'Don\'t fade nameplates which are currently in name-only mode',
    fade_avoid_raidicon = 'Don\'t fade nameplates which have a raid icon visible',
    fade_friendly_npc = 'Fade friendly NPC nameplates by default (including those in name-only mode)',
    fade_neutral_enemy = 'Fade attackable neutral nameplates by default (including those in name-only mode)',
    fade_untracked = 'Fade non-tracked nameplates by default (including those in name-only mode).|n|nWhether or not a unit is tracked can by set by changing the "NPC Names" dropdown and other checkboxes in the default interface options under Esc > Interface > Names',
    fade_avoid_execute_friend = 'Don\'t fade friendly nameplates in execute range (set in the "Health bars" page)',
    fade_avoid_execute_hostile = 'Don\'t fade hostile nameplates in execute range (set in the "Health bars" page)',
    fade_avoid_tracked = 'Don\'t fade tracked nameplates, or nameplates which are affecting combat with you.|n|nWhether or not a unit is tracked can by set by changing the "NPC Names" dropdown and other checkboxes in the default interface options under Esc > Interface > Names',
    fade_avoid_combat = 'Don\'t fade nameplates which are affecting combat with you',
    fade_avoid_casting_friendly = 'Don\'t fade friendly nameplates when they are casting',
    fade_avoid_casting_hostile = 'Don\'t fade hostile nameplates when they are casting',

    colour_self_class = 'Use your class colour on your personal nameplate',
    colour_self = 'The health bar colour of your personal nameplate',

    absorb_enable = 'Show an absorb overlay on health bars',
    absorb_striped = 'Use a striped texture for the absorb overlay. If unchecked, inherit the health bar texture',

    execute_enabled = 'Recolour health bars when units are within execute range',
    execute_auto = 'Automatically detect the appropriate execute range from your talents, defaulting to 20% on a character with no execute',
    execute_colour = 'Colour to use within execute range',
    execute_percent = 'Manually set execute range',

    colour_friendly_pet = 'Note that friendly pets do not generally have nameplates rendered',
    colour_player = 'The colour of other friendly players\' health bars',

    hide_names = 'Whether or not a unit is tracked can be set by changing the "NPC Names" dropdown and other checkboxes in the default interface options under Esc > Interface > Names.|n|nThis does not affect name-only mode.',
    font_face = 'The font used for all strings on nameplates (provided by LibSharedMedia)',
    font_size_normal = 'Standard font size (name, etc)',
    font_size_small = 'Smaller font size (vendor, spell name, etc)',
    text_vertical_offset = 'Vertical offset applied to all strings. Used as some fonts render at odd vertical positions in WoW. Note that this value ends in .5 by default as this helps to reduce vertical jittering when frames are moving',
    name_vertical_offset = 'Vertical offset of the name text',
    bot_vertical_offset = 'Vertical offset of the level and health text strings',

    name_colour_white_in_bar_mode = 'Colour NPC\'s and player\'s names white (unless class colour is enabled).|n|nIf this is enabled, the colours below only apply to name-only mode.',
    class_colour_friendly_names = 'Colour the names of friendly players by their class.',
    class_colour_enemy_names = 'Colour the names of enemy players by their class.',

    health_text_friend_max = 'Health text format used on friendly units at full health',
    health_text_friend_dmg = 'Health text format used on damaged friendly units',
    health_text_hostile_max = 'Health text format used on hostile units at full health',
    health_text_hostile_dmg = 'Health text format used on damaged hostile units',

    frame_width = 'Width of the standard nameplates',
    frame_height = 'Height of the standard nameplates',
    frame_width_minus = 'Width of nameplates used on mobs flagged as "minus" (previously referred to as trivial)',
    frame_height_minus = 'Height of nameplates used on mobs flagged as "minus" (previously referred to as trivial), as well as nameless frames (i.e. "unimportant" units)',
    frame_width_personal = 'Width of the personal nameplate (enabled by Esc > Interface > Names > Personal Resource Display)',
    frame_height_personal = 'Height of the personal nameplate (enabled by Esc > Interface > Names > Personal Resource Display)',
    powerbar_height = 'Height of the power bar on the personal frame. Will not increase beyond frame height',

    auras_enabled = 'Show auras that you cast on nameplates - buffs on friends, debuffs on enemies',
    auras_on_personal = 'Show auras on your character\'s nameplate if it is enabled',
    auras_pulsate = 'Pulsate icons when they are about to expire',
    auras_centre = 'Align icons to horizontal centre relative to the frame, rather than left',
    auras_show_all_self = 'Show all auras which you cast, rather than just those flagged as important by Blizzard.|n|nNote that this option is applied after the KuiSpellList filter, so you can still use |cffffff88KuiSpellListConfig from Curse|r to alter the spells displayed.',
    auras_hide_all_other = 'Do not show any auras cast by other players (such as CC or slows).|n|nNote that this option is applied after the KuiSpellList filter, so you can still use |cffffff88KuiSpellListConfig from Curse|r to alter the spells displayed.',
    auras_time_threshold = 'The countdown text will display when there is less than or equal to this amount of time left on an aura. Set to -1 to always display the timer',
    auras_minimum_length = 'Don\'t show auras with an initial length less than this value',
    auras_maximum_length = 'Don\'t show auras with an initial length greater than this value. Set to -1 to ignore',
    auras_icon_normal_size = 'Icon size on normal-size frames',
    auras_icon_minus_size = 'Icon size on smaller frames',
    auras_icon_squareness = 'Size ratio of the aura icons, where 1 means a perfect square',

    castbar_enable = 'Enable the castbar element',
    castbar_showpersonal = 'Show the castbar on your character\'s nameplate if it is enabled',
    castbar_shield = 'Show a shield icon on the castbar during casts which cannot be interrupted',
    castbar_showall = 'Show castbars on all nameplates, rather than on just the current target',
    castbar_showfriend = 'Show castbars on friendly nameplates (note that castbars are not shown on frames which have name-only mode active)',
    castbar_showenemy = 'Show castbars on enemy nameplates',
    castbar_unin_colour = 'Colour of the castbar when a cast cannot be interrupted',
    castbar_name_vertical_offset = 'Vertical offset of the spell name text',

    tank_mode = 'Recolour the health bars of units you are actively tanking when in a tanking specialisation',
    tankmode_force_enable = 'Always use tank mode, even if you\'re not currently in a tanking specialisation',
    tankmode_force_offtank = 'Colour bars being tanked by other tanks in your group, even if you\'re not currently in a tanking specialisation',
    threat_brackets = 'Show triangles around nameplates to indicate threat status',
    frame_glow_threat = 'Change the colour of the frame glow to indicate threat status',
    tankmode_tank_colour = 'Health bar colour to use when securely tanking',
    tankmode_trans_colour = 'Health bar colour to use when gaining or losing threat',
    tankmode_other_colour = 'Health bar colour to use when another tank is tanking.|n|nThis is only used if you are currently in a tanking specialisation, and requires the other tank to be in your group and to have their group role set to tank.',

    classpowers_enable = 'Show your class\' special resource, such as combo points, holy power, etc.',
    classpowers_on_target = 'Show on the frame of your target, rather than on the personal nameplate',
    classpowers_size = 'Size of the class powers icons',
    classpowers_bar_width = 'Width of the stagger bar',
    classpowers_bar_height = 'Height of the stagger bar',
    classpowers_colour = 'Colour of the class powers icons for the current class',
    classpowers_colour_overflow = 'Colour of class powers "overflow"',
    classpowers_colour_inactive = 'Colour of inactive class power icons',

    bossmod_enable = 'Boss mod addons can communicate with nameplate addons to display extra information on nameplates in relevant encounters, such as important buffs or debuffs cast by bosses.',
    bossmod_control_visibility = 'Boss mod addons can send a message to nameplate addons informing them to keep nameplates enabled during an encounter, ignoring other settings like automatic combat toggling, so that extra information can be displayed on them.|n|n|cffff6666If you disable this option and you do not usually have nameplates enabled, boss mods will not be able to show you this information.',
    bossmod_icon_size = 'Size of the boss aura icons',
    bossmod_x_offset = 'Horizontal offset of the boss aura icons',
    bossmod_y_offset = 'Vertical offset of the boss aura icons',
    bossmod_clickthrough = 'Disable the click-box of nameplates which are automatically enabled',

    cvar_enable = 'When enabled, Kui Nameplates will attempt to lock the CVars on this page to the values set here.|n|nIf this option is disabled, KNP will not modify CVars, even to return them to defaults.',
    cvar_show_friendly_npcs = '|cffffcc00nameplateShowFriendlyNPCs|r',
    cvar_name_only = '|cffffcc00nameplateShowOnlyNames|r|n|nHide the health bar of the default nameplates in situations where friendly nameplates cannot be otherwise modified by addons.',
    cvar_personal_show_always = '|cffffcc00nameplatePersonalShowAlways|r',
    cvar_personal_show_combat = '|cffffcc00nameplatePersonalShowInCombat|r',
    cvar_personal_show_target = '|cffffcc00nameplatePersonalShowWithTarget|r|n|nShow the personal nameplate whenever you have an attackable target.',
    cvar_max_distance = '|cffffcc00nameplateMaxDistance|r|n|nMaximum distance at which to render nameplates (not including your current target).',
    cvar_clamp_top = '|cffffcc00nameplate{Other,Large}TopInset|r|n|nHow close nameplates will be rendered to the top edge of the screen, where 0 means on the edge. Set to -0.1 to disable clamping on the top of the screen.|n|nClamping only affects your current target.',
    cvar_clamp_bottom = '|cffffcc00nameplate{Other,Large}BottomInset|r',
    cvar_overlap_v = '|cffffcc00nameplateOverlapV|r|n|nVertical distance between nameplates (only valid when motion type is set to stacking in the default interface options).',
}