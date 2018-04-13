local ZygorGuidesViewer=ZygorGuidesViewer
if not ZygorGuidesViewer then return end
if ZGV:DoMutex("PetsCWOD") then return end
if ZGV:DoMutex("PetsCommonWOD") then return end
ZygorGuidesViewer:RegisterGuide("Zygor's Alliance Pets & Mounts Guide\\Pets\\Junglebeak",[[
description This guide will walk you through obtaining
description the Flying pet:Junglebeak
pet 1469
step
goto Gorgrond 42.4,73.6
.' The _Junglebeaks_ are level 25.
..' Challenge one to a pet battle and capture it.
..learnpet Junglebeak##85192
]])
