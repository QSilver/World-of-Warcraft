function AAP_Scenarios()
		if (AAP1 and AAP1[AAP.Realm] and AAP1[AAP.Realm][AAP.Name] and AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]) then
			if (AAP.ActiveZone and AAP.QuestList[AAP.ActiveZone] and AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]) then
				if (AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Scenario1"]) then
					local text, nr = C_Scenario.GetInfo()
					local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
					if (ddda == true) then
						infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(2)
					end
					if (ddda2 == true) then
						infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(3)
					end
					if (nr == 1) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 2202.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 240.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 2202.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 240.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 140
						return infoz1
					elseif (nr == 2) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 2038.2
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 225.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 2038.2
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 225.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 140
						local ader, infoz2, derp, ddda3, asd3, asd4, qsw2, asd2, asdaa, procent = C_Scenario.GetStepInfo()
						return "[".. procent .."%] "..infoz2
					elseif (nr == 3) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 2008.4
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 226.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 2008.4
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 226.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 41
						return infoz1
					elseif (nr == 4) then
						return infoz1
					elseif (nr == 5) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 2038.2
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 225.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 2038.2
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 225.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 140
						local infoz12, derp, ddda3, procent = C_Scenario.GetCriteriaInfo(1)
						return "[".. procent .."%] "..infoz1
					elseif (nr == 6) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1796
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 390.7
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1796
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 390.7
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 10
						return infoz1
					elseif (nr == 7) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1796
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 390.7
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1796
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 390.7
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 10
						infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(2)
						return infoz1
					elseif (nr == 8) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1737.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 420.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1737.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 420.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 10
						local infoz2, derp, ddda3, procent = C_Scenario.GetCriteriaInfo(2)
						if (ddda3 == true) then
							return infoz1
						else
							return "[".. procent .."%] "..infoz2
						end

					elseif (nr == 9) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1631.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 421.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1631.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 421.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 10
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 10) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1537.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 383.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1537.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 383.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 10
						local ader, infoz2, derp, ddda3, asd3, asd4, qsw2, asd2, asdaa, procent = C_Scenario.GetStepInfo()
						return "[".. procent .."%] "..infoz2
					elseif (nr == 11) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1482
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 215.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1482
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 215.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 0.01
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 12) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1482
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 215.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1482
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 215.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 20
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 13) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1786.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 239.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1786.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 239.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 20
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 14) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1693.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 240
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1693.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 240
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 0.01
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					else
						return ""
					end
				end
				if (AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Scenario2"]) then
					local text, nr = C_Scenario.GetInfo()
					local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
					if (ddda == true) then
						infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(2)
					end
					if (ddda2 == true) then
						infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(3)
					end
					if (nr == 1) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1708.7
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 65.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1708.7
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 65.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 40
						return infoz1
					elseif (nr == 2) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1689.7
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 82.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1689.7
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 82.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 30
						local ader, infoz2, derp, ddda3, asd3, asd4, qsw2, asd2, asdaa, procent = C_Scenario.GetStepInfo()
						return "[".. procent .."%] "..infoz2
					elseif (nr == 3) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1597
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 107.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1597
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 107.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 41
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 4) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1579.4
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 223.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1579.4
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 223.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 140
						local ader, infoz2, derp, ddda3, asd3, asd4, qsw2, asd2, asdaa, procent = C_Scenario.GetStepInfo()
						return "[".. procent .."%] "..infoz2
					elseif (nr == 5) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1584
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 229.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1584
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 229.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 10
						return infoz1
					elseif (nr == 6) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1951.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 234.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1951.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 234.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 40
						local ader, infoz2, derp, ddda3, asd3, asd4, qsw2, asd2, asdaa, procent = C_Scenario.GetStepInfo()
						return "[".. procent .."%] "..infoz2
					elseif (nr == 7) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1951.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 234.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1951.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 234.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 40
						local infoz1, derp, ddda, asda1, asdga1 = C_Scenario.GetCriteriaInfo(1)
						return asda1.."/"..asdga1 .." ".. infoz1
					elseif (nr == 8) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1923.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 233.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1923.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 233.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 10
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						local ader, infoz2, derp, ddda3, asd3, asd4, qsw2, asd2, asdaa, procent = C_Scenario.GetStepInfo()
						return "[".. procent .."%] "..infoz1
					elseif (nr == 9) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1798.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 137.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1798.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 137.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 30
						return infoz1
					elseif (nr == 10) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1464.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 231
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1464.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 231
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 30
						return infoz1
					elseif (nr == 11) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1482
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 215.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1482
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 215.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 120
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						local ader, infoz2, derp, ddda3, asd3, asd4, qsw2, asd2, asdaa, procent = C_Scenario.GetStepInfo()
						return "[".. procent .."%] "..infoz1
					elseif (nr == 12) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1805.7
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 189.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1805.7
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 189.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 20
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 13) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = 1689.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 240.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = 1689.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 240.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 0.01
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					else
						return ""
					end
				end
				if (AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Scenario3"]) then
					local text, nr = C_Scenario.GetInfo()
					local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
					if (ddda == true) then
						infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(2)
					end
					if (ddda2 == true) then
						infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(3)
					end
					if (nr == 1) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -8685.2
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 903.4
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -8685.2
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 903.4
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 20
						return infoz1
					elseif (nr == 2) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -8668.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 919.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -8668.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 919.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 10
						infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(2)
						if (ddda2 == true) then
							infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(1)
						end
						return infoz1
					elseif (nr == 3) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -8688.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 907.2
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -8688.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 907.2
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 5
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 4) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -8673
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 918.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -8673
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 918.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 5
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 5) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -8735.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 876.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -8735.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 876.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 5
						infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(1)
						if (ddda2 == true) then
							infoz1, derp, ddda21 = C_Scenario.GetCriteriaInfo(2)
						end
						return infoz1
					elseif (nr == 6) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -8534.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 486.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -8534.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 486.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 40
						infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 7) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -8654
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 750.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -8654
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 750.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 40
						local text, nr = C_Scenario.GetInfo()
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						if (ddda == true) then
							infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(2)
						end
						return infoz1
					elseif (nr == 8) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -8466.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 1029.2
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -8466.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 1029.2
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 20
						return infoz1
					elseif (nr == 9) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -8293
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 1249.4
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -8293
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 1249.4
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 30
						return infoz1
					elseif (nr == 10) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -8335
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 1370.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -8335
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 1370.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 6
						return infoz1
					else
						return ""
					end
				end
				if (AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Scenario4"]) then
					local text, nr = C_Scenario.GetInfo()
					local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
					if (ddda == true) then
						infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(2)
					end
					if (ddda2 == true) then
						infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(3)
					end
					if (nr == 1) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -2026.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2140
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -2026.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2140
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 10
						return infoz1
					elseif (nr == 2) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -2026.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2140
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -2026.6
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2140
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 50
						local infoz1, derp, ddda, f1, f2 = C_Scenario.GetCriteriaInfo(1)
						return f1.."/"..f2.." "..infoz1
					elseif (nr == 3) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -1782
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2289.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -1782
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2289.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 20
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 4) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -1782
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2289.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -1782
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2289.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 40
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 5) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -1897.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2446.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -1897.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2446.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 15
						infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 6) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -1897.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2446.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -1897.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2446.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 50
						local infoz1, derp, ddda, f1, f2 = C_Scenario.GetCriteriaInfo(1)
						return f1.."/"..f2.." "..infoz1
					elseif (nr == 7) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -2062.4
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2187.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -2062.4
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2187.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 40
						infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					else
						return ""
					end
				end
				if (AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Scenario5"]) then
					local text, nr = C_Scenario.GetInfo()
					local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
					if (ddda == true) then
						infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(2)
					end
					if (ddda2 == true) then
						infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(3)
					end
print(nr)
					if (nr == 1) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -2004.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2157.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -2004.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2157.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 10
						return infoz1
					elseif (nr == 2) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -2004.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2157.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -2004.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2157.3
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 50
						local infoz1, derp, ddda, f1, f2 = C_Scenario.GetCriteriaInfo(1)
						return f1.."/"..f2.." "..infoz1
					elseif (nr == 3) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -1782
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2289.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -1782
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2289.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 20
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 4) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -1782
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2289.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -1782
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2289.9
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 40
						local infoz1, derp, ddda = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 5) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -1897.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2446.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -1897.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2446.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 15
						infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					elseif (nr == 6) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -1897.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2446.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -1897.5
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2446.1
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 50
						local infoz1, derp, ddda, f1, f2 = C_Scenario.GetCriteriaInfo(1)
						return f1.."/"..f2.." "..infoz1
					elseif (nr == 7) then
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["y"] = -2062.4
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["TT"]["x"] = 2187.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["y"] = -2062.4
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Trigger"]["x"] = 2187.8
						AAP.QuestList[AAP.ActiveZone][AAP1[AAP.Realm][AAP.Name][AAP.ActiveZone]]["Range"] = 40
						infoz1, derp, ddda2 = C_Scenario.GetCriteriaInfo(1)
						return infoz1
					else
						return ""
					end
				end
			end
		end
end