# Raider.IO Mythic Plus

## Overview

This is a companion addon to go along with the Raid and Mythic+ Rankings site, Raider.IO: https://raider.io. With this addon installed, you'll gain access to an easy way to view the Mythic Keystone scores and activity for players-- all without leaving the game!

Simply hover over a player with your mouse, your guild roster, or even the Group Finder list where you see queued people; if they meet the minimum qualifications then you'll see their score and best run in the tooltip.

![Raider.IO Tooltip Example](https://assets.raider.io/images/addon/tooltip_details.jpg "Raider.IO Tooltip Example")

Additionally, you can right-click players from the standard target unit frame to `Copy Raider.IO URL` and then easily look up their full profile on the site. With this functionality you can directly paste these URLs anywhere on Raider.IO to navigate to that player's profile page.

If you have run into any problems, check out our FAQ at https://raider.io/faq, or join us on Discord at: https://discord.gg/raider #addon-discussions -- we always have people around willing to help.

[![Become a Patron](https://assets.raider.io/images/patreon/become_a_patron_button.png "Become a Patron")](https://www.patreon.com/RaiderIO)

## Getting Started

The easiest way to get started is to use the RaiderIO Desktop App: https://raider.io/addon

Once installed you can load into the game and you will start seeing Scores and Best Runs on players around you. This AddOn works by storing a snapshot of character data from Raider.IO and then using that to populate information on qualified players. To qualify for inclusion in a snapshot, players must meet this criteria:

- Have earned at least 500 points in any of the currently relevant seasons (8.0). _[Honored and higher patrons](https://www.patreon.com/RaiderIO) do not have a minimum score requirement in order to be shown in the addon._
- Have logged in to the game within the past 30 days


**Remember**: We update the addon with the latest scores and top runs **every day**. Update regularly to ensure you are seeing the freshest information. _Using the RaiderIO Client you can keep your addon updated automatically!_

## Patreon Rewards

Interested in supporting development of Raider.IO and getting some rewards while you're at it? We offer multiple levels of rewards.

__Friendly:__

- Browse Raider.IO AD-FREE!
- Friendly Patron rank in Discord

__Honored:__

- Exclusive profile header background options
- Minimum score requirement removed from addon for your characters
- Elevated queue priority
- Honored Patron rank in Discord
- Plus all rewards from Friendly tier

__Revered:__

- Participation in votes for upcoming Raider.IO features 
- Custom Vanity URL for your guild or character
- Queue priority elevated above Honored level
- Revered Patron rank in Discord
- Plus all rewards from Friendly and Honored tiers

[Become a Patron Now!](https://www.patreon.com/RaiderIO)

## Detailed Addon Usage

Our intent with this AddOn is to provide an easy way for people to get some information at a glance when forming groups. There is no substitute for talking with your fellow players, so be a pal and listen if an applicant whispers you. These are the fields we show, and when we show them:

- `Raider.IO M+ Score`: This is the overall score for the player in the current season. If the player's shown score ends in a `(*)` then it was earned in a previous season. Experience from previous seasons is typically applicable to the current season.
- `Best Run`: This will indicate the Mythic+ level for the player's best scoring run, along with the specific dungeon. Note: Sometimes, players on high pop servers may show a value of `(KSM)` or `(KSC)`. This  means that we have validated via achievement criteria that they have completed and **timed** a +15 (KSM = Keystone Master) or +10 (KSC = Keystone Conqueror) in the past. When this keyword is highlighted green it means that the player's `Best For Dungeon` is also the same as their overall `Best Run`.
- `Best For Dungeon`: You'll see this line when using LFD to form or join a Keystone group. This will show the Mythic+ level of the player's best scoring run for the chosen dungeon. Note: If someone's highest run is only visible from KSM/KSC, they may have run any dungeon to earn that, but we will not know which specific dungeon they cleared.
- `Timed 10-14+ Runs` / `Timed 15+ Runs`: These lines indicate how many M+ runs have been completed by this player within the timer over the course of their entire history. This number is recorded even for runs that do not make it onto the realm's leaderboard, so high population realms will not be disadvantaged here.
- `Main's Score`: This indicates a player's score on the Main they have chosen on Raider.IO. This will only show if the Main's Score is greater than the current character's score. If someone has a good score on their main, then much of their prior experience will help them perform better in dungeons while on their alt.
- `DPS Score`, `Tank Score`, `Healer Score`: These are the role-specific scores for the player in the current season. These are only shown if greater than zero. By default, role scores are not shown, and you must hold down a modifier key (e.g. alt) to show them. If desired, you can make it so Role scores always show by turning on the option *Always Show Role Scores*.
- `Avg. Timed +X Player Score`: This is the rounded median score of players who have successfully completed Mythic+ runs **in time** at this level. This data is sampled from the past 60 days of runs tracked on Raider.IO, and it excludes the top and bottom 1% of scores at each level. This is intended to provide a guide for the type of score you might consider when forming or joining a group based on data seen across all players.

## Configuring the AddOn

Our recommended settings are enabled by default, but we've provided several options to customize how and where the tooltips might show while in-game. Type ``/raiderio`` to open the Raider.IO options frame. Alternatively, you can also find a shortcut in the ``Interface > AddOn`` settings frame.

Here you can easily enable or disable various features, including whether to show scores from each faction, and various tooltip customization options.

_Remember to click Save to save the changes, or Cancel to abort and close the dialog._

## Score Color Tiers

Scores map to a specific color based on their range. We've followed the standard WoW quality colors, but added additional gradients between the base values to provide more brackets to ascend through. See the full tiers here:

![Raider.IO AddOn Score Tiers](https://cdnassets.raider.io/images/addon/score_tiers_800.png "Raider.IO AddOn Score Tiers")

## Developer API

We love our fellow developers! We wanted to provide anyone in the community a simple way to tap into the scores that are a part of this addon. Addon developers can do this by utilizing the ``RaiderIO`` table to access certain APIs we provide.

### RaiderIO.ProfileOutput

A collection of bit fields you can use to combine different types of data you wish to retrieve, or customize the tooltip drawn on the specific GameTooltip widget.

### RaiderIO.TooltipProfileOutput

A collection of functions you can call to dynamically build a combination of bit fields used in ProfileOutput that also respect the modifier key usage and config.

### RaiderIO.DataProvider

A collection of different ID's that are the supported data providers. The profile function if multiple data types are queried will return a group back with dataType properties defined.

### RaiderIO.HasPlayerProfile

A function that can be used to figure out if Raider.IO knows about a specific unit or player, or not. If true it means there is data that can be queried using the profile function.

```
RaiderIO.HasPlayerProfile(unitOrNameOrNameRealm, realmOrNil, factionOrNil) => true | false
  unitOrNameOrNameRealm = "player", "target", "raid1", "Joe" or "Joe-ArgentDawn"
  realmOrNil            = "ArgentDawn" or nil. Can be nil if realm is part of unitOrNameOrNameRealm, or if it's the same realm as the currently logged in character
  factionOrNil          = 1 for Aliance, 2 for Horde, or nil for automatic (looks up both factions, first found is used)
```

### RaiderIO.GetPlayerProfile

A function that returns a table with different data types, based on the type of query specified. Use the explanations above to build the query you need.

```
RaiderIO.GetPlayerProfile(unitOrNameOrNameRealm, realmOrNil, factionOrNil, ...) => nil | profile, hasData, isCached, hasDataFromMultipleProviders

RaiderIO.GetPlayerProfile(0, "target")
RaiderIO.GetPlayerProfile(0, "Joe")
RaiderIO.GetPlayerProfile(0, "Joe-ArgentDawn")
RaiderIO.GetPlayerProfile(0, "Joe", "ArgentDawn")
```

### RaiderIO.ShowTooltip

Use this to draw on a specific GameTooltip widget the same way Raider.IO draws its own tooltips.

```
ShowTooltip(GameTooltip, outputFlag, ...) => true | false
  Use the same API as used in GetPlayerProfile, with the exception of the first two arguments:
    GameTooltip = the tooltip widget you wish to work with
    outputFlag  = a number generated by one of the functions in TooltipProfileOutput, or a bit.bor you create using ProfileOutput as described above.

RaiderIO.ShowTooltip(GameTooltip, RaiderIO.TooltipProfileOutput.DEFAULT(), "target")
```

### RaiderIO.GetScoreColor

Returns a table containing the RGB values for the specified score.

```
RaiderIO.GetScoreColor(5000) => { 1, 0.5, 0 }
```

### Deprecated

Please refrain from using these API as they will be removed in future updates.

```
RaiderIO.GetScore
RaiderIO.GetProfile
```
