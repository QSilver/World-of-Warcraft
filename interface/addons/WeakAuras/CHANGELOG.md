# [2.7.0](https://github.com/WeakAuras/WeakAuras2/tree/2.7.0) (2018-08-12)

[Full Changelog](https://github.com/WeakAuras/WeakAuras2/compare/2.6.6...2.7.0)

Alex Marcotte (1):

- Fixing the Luminous Barrier CD template that uses the wrong talent loading condition

Allen Faure (40):

- Hide child thumbnail regions when they're no longer useful
- tweak some phrases for the update tooltip
- drop an unused library
- Use 'Import as Copy' phrase for identical import
- reorder update categories
- UI tweaks for update tooltip
- Fix nil errors due to AddMany
- Fix false negative on sortHybridTable change
- add dynamic group control settings to arrangement category
- categorize regionType as a display property
- Pass the region into getrect, to ensure the correct bounding box
- Save internalVersion when compressing
- remove tableAdd and DecompressDisplay
- Back out of DeleteOption if the data has already been deleted.
- add metadata update category
- if mode is 1, then we should ignore hybrid sorting on old data
- Use UpdateGroupOrders instead of iterating twice on installedData
- only preserve old order when Group arrangement is *not* checked
- Don't ignore ID changes in WeakAuras.diff.
- use the correct translation phrase for diabled import
- Don't add the newid to sorthybrid table if the oldid wasn't there
- Fallback to region.height/width if data.height/width don't exist
- use an if block to special case arrangement instead of and/or chain
- auras from chat links must be sent through the PreAdd process too
- Combine child anchor category with child order category
- fix options frame moversizer and child anchoring on import
- fix some false positives in WeakAuras.diff
- hide radio buttons when they're not needed
- tweaks to DisplayToTableString
- Fix templates after renaming show on
- fix migration
- Fix regression on tableSubtract
- ensure activeCategories exists
- index the cache before iterating
- hello this is the tab police
- stringify tables into an array of lines, instead of using .. 100x times
- simplify FindBestMatch
- customHiden is not a word
- remove unused default value
- remove an unnecessary loop

Benjamin Staneck (7):

- add a few new APIs to luacheckrc
- fix a typo
- increase git clone depth to 150
- remove old aura name from the single diff tooltip as well
- adjust readme text
- tconcat => table.concat
- showActiveOrMissing => show Always

Buds (5):

- fix autoHide for custom event w/ custom duration
- fix rangecheck condition threat nil as false #598
- aura trigger with fullscan support remainingTime
- fix nil error with use tooltip size instead of stacks
- range check condition for spell and item cooldown

Causese (1):

- Templates: Fixes specified unit for Lingering Sporepods trinket

Infus (34):

- Move setting of db.displays a bit earlier
- Guard the multi-selection trigger code against different trigger counts
- Fix schedule ConditionsTimers
- Chat Trigger: Add the CHAT_EMOTE event
- Fix another bug in the animation function loading
- Fix regression in Item Cooldown tracking caused by 82208fba
- BuffTrigger: Reorder some group options
- Only run scamCheck once over the new data
- Fix internalVersion handling and fix importing certain group settings
- Add a dynamic hide duration for event triggers
- Fix nil error in Animation code
- Rewrite SetFrameLevel code to be more robust for clones
- Add a "WarMode Active" load condition
- Fix a problem in updating group clones
- Fix logic in recurseDiff for values that are newly false
- Icon: Workaround the SetTextOnText workaround...
- Fix error on adding a buff template
- Add another And Talent selected load condition
- Fix Conditions remaining time check
- Condition Options: Remove DELETE condition from combobox
- Fix importing not positing childs correctly
- Tweak FrameChooser to choose child auras over groups
- Fix MoverResizer not getting the right size after import
- Fix error in CreatePvpTalentCache if the player has no spec
- Use WeakAuras.data_stub for New From Templates auras
- Be more consistent about icons in templates
- Setup various bits, e.g. init scripts before SetRegion
- Add a "Insufficient Resources" condition
- BuffTrigger: Only set state if we are showing the state
- Fix recheck timers for conditions
- Add the ability to have spell/item tooltips via TSU
- Icon: Fix several typos for Color setting
- Fix interaction of new Alpha property and Animations
- Fix a bug where || would duplicate

Janick Gerstenberger (1):

- Register "ACTIONBAR_UPDATE_COOLDOWN" in cdReadyFrame to extend coverage

Lothrik (1):

- Fix text shaking animation bug

asakawa-k (2):

- Further integration of group role options
- Add group unit options (#578)

emptyrivers (1):

- Basic aura update support (#450)

lqnrd (1):

- add securecall to blocked functions, remove ForceQuit

