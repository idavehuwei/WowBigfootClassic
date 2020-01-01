function WebDKP_Options_ToggleUI()if WebDKP_OptionsFrame:IsShown()then WebDKP_OptionsFrame:Hide()else WebDKP_Options_Autofill_DropDown_OnLoad()WebDKP_Options_Autofill_DropDown_Init()WebDKP_OptionsFrame:Show()end end;function WebDKP_Options_ShowUI()WebDKP_Options_Autofill_DropDown_OnLoad()WebDKP_Options_Autofill_DropDown_Init()WebDKP_OptionsFrame:Show()end;function WebDKP_Options_HideUI()WebDKP_OptionsFrame:Hide()end;function WebDKP_Options_Init()if WebDKP_Options["AutofillEnabled"]==1 then WebDKP_GeneralOptions_FrameToggleAutofillEnabled:SetChecked(true)WebDKP_GeneralOptions_FrameAutofillDropDown:Show()WebDKP_GeneralOptions_FrameToggleAutoAwardEnabled:Show()else WebDKP_GeneralOptions_FrameToggleAutofillEnabled:SetChecked(false)WebDKP_GeneralOptions_FrameAutofillDropDown:Hide()WebDKP_GeneralOptions_FrameToggleAutoAwardEnabled:Hide()end;WebDKP_Options_InitOption("GeneralOptions","AutoAwardEnabled",1)WebDKP_Options_InitOption("GeneralOptions","ZeroSumEnabled",0)WebDKP_Options_InitOption("GeneralOptions","AwardBossDKP",0)WebDKP_Options_InitOption("GeneralOptions","AwardBossDKP_Include_Standby",0)WebDKP_Options_InitOption("GeneralOptions","AwardBossDKPIgnoreZero",1)WebDKP_Options_InitOption("GeneralOptions","AwardBossDKPMCAndOL",0)WebDKP_Options_InitOption("GeneralOptions","AwardBossDKPBWL",0)WebDKP_Options_InitOption("GeneralOptions","AwardBossDKPTAQ",0)WebDKP_Options_InitOption("GeneralOptions","AwardBossDKPNAXX",0)WebDKP_Options_InitOption("GeneralOptions","AltClick",1)WebDKP_Options_InitOption("GeneralOptions","IgnWhispers",0)WebDKP_Options_InitOption("GeneralOptions","dkpCap",0)WebDKP_Options_InitOption("BiddingOptions","BidAnnounceRaid",0)WebDKP_Options_InitOption("BiddingOptions","BidConfirmPopup",1)WebDKP_Options_InitOption("BiddingOptions","BidAllowNegativeBids",0)WebDKP_Options_InitOption("BiddingOptions","BidFixedBidding",0)WebDKP_Options_InitOption("BiddingOptions","BidNotifyLowBids",0)WebDKP_Options_InitOption("BiddingOptions","TurnBase",0)WebDKP_Options_InitOption("BiddingOptions","SilentBidding",0)WebDKP_Options_InitOption("BiddingOptions","BidandRoll",0)WebDKP_Options_InitOption("BiddingOptions","FiftyGreed",0)WebDKP_Options_InitOption("BiddingOptions","AllNeed",0)WebDKP_Options_InitOption("BiddingOptions","DisableBid",0)WebDKP_Options_InitOption("BiddingOptions","AutoGive",0)WebDKP_BiddingOptions_FrameGreedDKP:SetText(WebDKP_GetOptionValue("GreedDKP","50"))WebDKP_BiddingOptions_FrameNeedDKP:SetText(WebDKP_GetOptionValue("NeedDKP","100"))WebDKP_Options_InitOption("GeneralOptions","Enabled",1)WebDKP_Options_InitOption("AnnouncementsOptions","Announcements",0)WebDKP_GeneralOptions_FrameToggleAwardBossDKP:SetChecked(WebDKP_GetOptionValue("AwardBossDKP",0)==1)WebDKP_GeneralOptions_FrameToggleAwardBossDKPIgnoreZero:SetChecked(WebDKP_GetOptionValue("AwardBossDKPIgnoreZero",1)==1)WebDKP_GeneralOptions_FrameBossDKPMCAndOL:SetText(WebDKP_GetOptionValue("BossDKPMCAndOLValue",0))WebDKP_GeneralOptions_FrameBossDKPBWL:SetText(WebDKP_GetOptionValue("BossDKPBWLValue",0))WebDKP_GeneralOptions_FrameBossDKPTAQ:SetText(WebDKP_GetOptionValue("BossDKPTAQValue",0))WebDKP_GeneralOptions_FrameBossDKPNAXX:SetText(WebDKP_GetOptionValue("BossDKPNAXXValue",0))WebDKP_GeneralOptions_FramedkpCapLimit:SetText(WebDKP_GetOptionValue("dkpCapLimit",0))WebDKP_FiltersFrameLimitRaid:SetChecked(WebDKP_Filters["Group"]==1)WebDKP_FiltersFrameStandby1:SetChecked(WebDKP_Filters["Standby1"]==1)if WebDKP_Filters["Others"]==nil then WebDKP_Filters["Others"]=0 end;WebDKP_FiltersFrameOthers:SetChecked(WebDKP_Filters["Others"]==1)WebDKP_Standby_FrameEnableStandbyZeroSum:SetChecked(WebDKP_GetOptionValue("ZeroSumStandby",1)==1)WebDKP_Standby_FrameEnableStandbyTimed:SetChecked(WebDKP_GetOptionValue("TimedStandby",1)==1)WebDKP_AnnouncementsOptions_FrameEditStartAnnounce:SetText(WebDKP_GetOptionValue("EditStartAnnounce",""))WebDKP_AnnouncementsOptions_FrameEditDuringAnnounce:SetText(WebDKP_GetOptionValue("EditDuringAnnounce",""))WebDKP_AnnouncementsOptions_FrameEditEndAnnounce:SetText(WebDKP_GetOptionValue("EditEndAnnounce",""))WebDKP_AnnouncementsOptions_FrameEditSRollAnnounce:SetText(WebDKP_GetOptionValue("EditSRollAnnounce",""))WebDKP_AnnouncementsOptions_FrameEditRollAnnounce:SetText(WebDKP_GetOptionValue("EditRollAnnounce",""))WebDKP_AnnouncementsOptions_FrameEditERollAnnounce:SetText(WebDKP_GetOptionValue("EditERollAnnounce",""))WebDKP_SynchFramePassword:SetText(WebDKP_GetOptionValue("SynchPassword",""))WebDKP_SynchFrameEnableSynch:SetChecked(WebDKP_GetOptionValue("EnableSynch",1)==1)WebDKP_SynchFrameSynchFrom:SetText(WebDKP_GetOptionValue("SynchFrom",""))WebDKP_CharRaidInfoFrameInGroup:SetChecked(WebDKP_GetOptionValue("InGroup",1)==1)WebDKP_TimedAwardFrameLoopTimer:SetChecked(WebDKP_GetOptionValue("TimedAwardRepeat",1)==1)WebDKP_TimedAwardFrameDkp:SetText(WebDKP_GetOptionValue("TimedAwardDkp",0))WebDKP_TimedAwardFrameTime:SetText(WebDKP_GetOptionValue("TimedAwardTotalTime",5))WebDKP_GetOptionValue("TimedAwardTimer",0)local a=WebDKP_GetOptionValue("TimedAwardInProgress",false)if a==true then WebDKP_TimedAward_UpdateFrame:Show()WebDKP_TimedAwardFrameStartStopButton:SetText("Stop")end;WebDKP_GetOptionValue("TimedAwardMiniTimer",0)if WebDKP_Options["TimedAwardMiniTimer"]==1 then WebDKP_TimedAward_MiniFrame:Show()end end;function WebDKP_Options_InitOption(b,c,d)local e=WebDKP_GetOptionValue(c,d)local f=_G["WebDKP_"..b.."_FrameToggle"..c]if f~=nil then f:SetChecked(e==1)end end;function WebDKP_Options_Tab_OnClick(self)local g=self;if g:GetID()==1 then _G["WebDKP_GeneralOptions_Frame"]:Show()_G["WebDKP_BiddingOptions_Frame"]:Hide()_G["WebDKP_AnnouncementsOptions_Frame"]:Hide()elseif g:GetID()==2 then _G["WebDKP_GeneralOptions_Frame"]:Hide()_G["WebDKP_BiddingOptions_Frame"]:Show()_G["WebDKP_AnnouncementsOptions_Frame"]:Hide()elseif g:GetID()==3 then _G["WebDKP_GeneralOptions_Frame"]:Hide()_G["WebDKP_BiddingOptions_Frame"]:Hide()_G["WebDKP_AnnouncementsOptions_Frame"]:Show()elseif g:GetID()==4 then _G["WebDKP_GeneralOptions_Frame"]:Hide()_G["WebDKP_BiddingOptions_Frame"]:Hide()_G["WebDKP_AnnouncementsOptions_Frame"]:Hide()elseif g:GetID()==5 then _G["WebDKP_GeneralOptions_Frame"]:Hide()_G["WebDKP_BiddingOptions_Frame"]:Hide()_G["WebDKP_AnnouncementsOptions_Frame"]:Hide()end;PlaySound(841)end;function WebDKP_ToggleAutofill()if WebDKP_Options["AutofillEnabled"]==1 then WebDKP_GeneralOptions_FrameToggleAutofillEnabled:SetChecked(false)WebDKP_Options["AutofillEnabled"]=0;WebDKP_GeneralOptions_FrameAutofillDropDown:Hide()WebDKP_GeneralOptions_FrameToggleAutoAwardEnabled:Hide()else WebDKP_GeneralOptions_FrameToggleAutofillEnabled:SetChecked(true)WebDKP_Options["AutofillEnabled"]=1;WebDKP_GeneralOptions_FrameAutofillDropDown:Show()WebDKP_GeneralOptions_FrameToggleAutoAwardEnabled:Show()end end;function WebDKP_Options_Autofill_DropDown_OnLoad()UIDropDownMenu_Initialize(WebDKP_GeneralOptions_FrameAutofillDropDown,WebDKP_Options_Autofill_DropDown_Init)end;function WebDKP_Options_Autofill_DropDown_Init()local info;local h=""WebDKP_AddAutofillChoice(WebDKP.translations.itemquality,-1)WebDKP_AddAutofillChoice(WebDKP.translations.itemquality2,0)WebDKP_AddAutofillChoice(WebDKP.translations.itemquality3,1)WebDKP_AddAutofillChoice(WebDKP.translations.itemquality4,2)WebDKP_AddAutofillChoice(WebDKP.translations.itemquality5,3)WebDKP_AddAutofillChoice(WebDKP.translations.itemquality6,4)UIDropDownMenu_SetWidth(WebDKP_GeneralOptions_FrameAutofillDropDown,130)end;function WebDKP_AddAutofillChoice(i,j)info={}info.text=i;info.value=j;info.func=WebDKP_Options_Autofill_DropDown_OnClick;if j==WebDKP_Options["AutofillThreshold"]then info.checked=1==1;UIDropDownMenu_SetSelectedName(WebDKP_GeneralOptions_FrameAutofillDropDown,info.text)end;UIDropDownMenu_AddButton(info)end;function WebDKP_Options_Autofill_DropDown_OnClick(self)local g=self;WebDKP_Options["AutofillThreshold"]=g.value;WebDKP_Options_Autofill_DropDown_Init()end;function WebDKP_Options_ToggleOption(k)if WebDKP_WebOptions[k]~=nil then WebDKP_WebOptions[k]=abs(WebDKP_WebOptions[k]-1)elseif WebDKP_Options[k]~=nil then WebDKP_Options[k]=abs(WebDKP_Options[k]-1)if k=="Enabled"then if WebDKP_Options["Enabled"]==1 then WebDKP_Print("WebDKP Enabled")else WebDKP_Print("WebDKP Disabled")end end;if k=="AwardBossDKP"then if WebDKP_Options["AwardBossDKP"]==1 then WebDKP_Print(WebDKP.translations.Bossrewardenable_Print)else WebDKP_Print(WebDKP.translations.Bossrewarddisable_Print)end end;if k=="AwardBossDKP_Include_Standby"then if WebDKP_Options["AwardBossDKP_Include_Standby"]==1 then else end end elseif k=="AwardBossDKP_Include_Standby"then WebDKP_Options["AwardBossDKP_Include_Standby"]=1 end end