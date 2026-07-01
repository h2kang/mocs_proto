(*---Category1---*)

TYPE
	Para_typ : 	STRUCT  (*Comm[0..199], Indiv[0..99]*8*)
		Common : ParaCommon_typ;
		No1 : ParaIndiv_typ;
		No2 : ParaIndiv_typ;
		No3 : ParaIndiv_typ;
		No4 : ParaIndiv_typ;
		No5 : ParaIndiv_typ;
		No6 : ParaIndiv_typ;
		No7 : ParaIndiv_typ;
		No8 : ParaIndiv_typ;
	END_STRUCT;
END_TYPE

(*---Category2---*)

TYPE
	ParaCommon_typ : 	STRUCT  (*Comm[0..199]*)
		System : System_typ; (*Comm[0..49]*)
		StateFlag : StateFlag_typ; (*Comm[50..99]: 50*)
		Main : Main_typ; (*Comm[100..149]: 50*)
		FODS : FODS_typ; (*Comm[150..179]*)
		CommonReservedCat2 : CommonReservedCat2_typ; (*Comm[180..199]*)
	END_STRUCT;
	ParaIndiv_typ : 	STRUCT  (*Indiv[0..99]*)
		FODSFeedforward : FODSFeedforward_typ; (*[0..49]: 50*)
		FODSFeedback : FODSFeedback_typ; (*[50..74]: 25*)
		IndivReservedCat2 : IndivReservedCat2_typ; (*[75..99]*)
	END_STRUCT;
END_TYPE

(*---Category3---*)

TYPE
	System_typ : 	STRUCT  (*Comm[0..49]: 50*)
		SystemType : SystemType_typ;
		CommSetting : CommSetting_typ;
		SystemReserved : SystemReserved_typ;
	END_STRUCT;
	StateFlag_typ : 	STRUCT  (*Comm[50..99]: 50*)
		MSSNormalFlag : MSSNormalFlag_typ; (*[50..54]: 5*)
		LoadChangeFlag : LoadChangeFlag_typ; (*[55:59]: 5*)
		SystemWarmedUpFlag : SystemWarmedUpFlag_typ; (*[60..64]: 5*)
		TMBFlag : TMBFlag_typ; (*[65..99]: 35*)
		FlagReserved : FlagReserved_typ; (*[65..99]: 35*)
	END_STRUCT;
	Main_typ : 	STRUCT  (*Comm[100..149]: 50*)
		Init : Init_typ;
		Sealing : Sealing_typ;
		Engage : Engage_typ;
		Active : Active_typ;
		TMB : TMB_typ;
		Disengage : Disengage_typ;
		Airventing : Airventing_typ;
		MOCSshutdown : MOCSshutdown_typ;
		Valveshutdown : Valveshutdown_typ;
	END_STRUCT;
	FODS_typ : 	STRUCT  (*Comm[150..179]: 30*)
		FODSInitReady : FODSInitReady_typ;
		FODSCooling : FODSCooling_typ;
		FODSDosing : FODSDosing_typ;
		FODSFlushing : FODSFlushing_typ;
	END_STRUCT;
	CommonReservedCat2_typ : 	STRUCT 
		CommonReservedCat3 : CommonReservedCat3_typ;
	END_STRUCT;
	FODSFeedforward_typ : 	STRUCT  (*Indiv[0..49]: 50*)
		FFpara : FFpara_typ;
		EngineLoad : EngineLoad_typ;
		ExhFlowrate : ExhFlowrate_typ;
		HUInletRefTemp : HUInletRefTemp_typ;
		CorrectionFactor : CorrectionFactor_typ;
	END_STRUCT;
	FODSFeedback_typ : 	STRUCT  (*Indiv[50..74]: 25*)
		MOCSTempPgain : MOCSTempPgain_typ;
		APIDgain : APIDgain_typ;
	END_STRUCT;
	IndivReservedCat2_typ : 	STRUCT  (*Indiv[75..99]: 25*)
		IndivReservedCat3 : IndivReservedCat3_typ;
	END_STRUCT;
END_TYPE

(*---Category4---*)

TYPE
	SystemType_typ : 	STRUCT  (*Comm[0..9]: 10*)
		MOCSType : REAL; (*[0]*)
		NumofGE : REAL; (*[1]*)
		HeatingSystem : REAL; (*[2]*)
		FOSuppUnit : REAL; (*[4]*)
		SystemTypeReserved4 : REAL;
		SystemTypeReserved5 : REAL;
		SystemTypeReserved6 : REAL;
		SystemTypeReserved7 : REAL;
		SystemTypeReserved8 : REAL;
		SystemTypeReserved9 : REAL;
	END_STRUCT;
	CommSetting_typ : 	STRUCT  (*Comm[10..14]: 5*)
		ValveStatusCriteria : REAL;
		FOPumpChangeOverTime : REAL;
		FOPumpChangeOverDelay : REAL;
		CommSettingReserved3 : REAL;
		CommSettingReserved4 : REAL;
	END_STRUCT;
	SystemReserved_typ : 	STRUCT  (*Comm[15..49]: 35*)
		SystemReserved15 : REAL;
		SystemReserved16 : REAL;
		SystemReserved17 : REAL;
		SystemReserved18 : REAL;
		SystemReserved19 : REAL;
		SystemReserved20 : REAL;
		SystemReserved21 : REAL;
		SystemReserved22 : REAL;
		SystemReserved23 : REAL;
		SystemReserved24 : REAL;
		SystemReserved25 : REAL;
		SystemReserved26 : REAL;
		SystemReserved27 : REAL;
		SystemReserved28 : REAL;
		SystemReserved29 : REAL;
		SystemReserved30 : REAL;
		SystemReserved31 : REAL;
		SystemReserved32 : REAL;
		SystemReserved33 : REAL;
		SystemReserved34 : REAL;
		SystemReserved35 : REAL;
		SystemReserved36 : REAL;
		SystemReserved37 : REAL;
		SystemReserved38 : REAL;
		SystemReserved39 : REAL;
		SystemReserved40 : REAL;
		SystemReserved41 : REAL;
		SystemReserved42 : REAL;
		SystemReserved43 : REAL;
		SystemReserved44 : REAL;
		SystemReserved45 : REAL;
		SystemReserved46 : REAL;
		SystemReserved47 : REAL;
		SystemReserved48 : REAL;
		SystemReserved49 : REAL;
	END_STRUCT;
	MSSNormalFlag_typ : 	STRUCT  (*Comm[50..54]: 5*)
		MOCSMinEngineLoad : REAL;
		MOCSReadyEngineLoad : REAL;
		MSSNormalFallingHysteresis : REAL;
		MSSNormalFallingDelay : REAL;
		MSSFlagReserved4 : REAL;
	END_STRUCT;
	LoadChangeFlag_typ : 	STRUCT  (*Comm[55..59]: 5*)
		MovAvgPeriod : REAL;
		ComparePoint : REAL;
		LoadChangeThreshold : REAL;
		LoadChangeFlagReserved3 : REAL;
		LoadChangeFlagReserved4 : REAL;
	END_STRUCT;
	SystemWarmedUpFlag_typ : 	STRUCT  (*Comm[60..64]: 5*)
		WarmUpDTemp : REAL;
		WarmUpITemp : REAL;
		WarmUpChITemp : REAL;
		WarmUpChMTemp : REAL;
		WarmUpChOTemp : REAL;
	END_STRUCT;
	TMBFlag_typ : 	STRUCT  (*Comm[65..69]: 5*)
		TMBFlagFallingDelay : REAL;
		TMBFlagReserved1 : REAL;
		TMBFlagReserved2 : REAL;
		TMBFlagReserved3 : REAL;
		TMBFlagReserved4 : REAL;
	END_STRUCT;
	FlagReserved_typ : 	STRUCT  (*Comm[70..99]: 30*)
		FlagReserved20 : REAL;
		FlagReserved21 : REAL;
		FlagReserved22 : REAL;
		FlagReserved23 : REAL;
		FlagReserved24 : REAL;
		FlagReserved25 : REAL;
		FlagReserved26 : REAL;
		FlagReserved27 : REAL;
		FlagReserved28 : REAL;
		FlagReserved29 : REAL;
		FlagReserved30 : REAL;
		FlagReserved31 : REAL;
		FlagReserved32 : REAL;
		FlagReserved33 : REAL;
		FlagReserved34 : REAL;
		FlagReserved35 : REAL;
		FlagReserved36 : REAL;
		FlagReserved37 : REAL;
		FlagReserved38 : REAL;
		FlagReserved39 : REAL;
		FlagReserved40 : REAL;
		FlagReserved41 : REAL;
		FlagReserved42 : REAL;
		FlagReserved43 : REAL;
		FlagReserved44 : REAL;
		FlagReserved45 : REAL;
		FlagReserved46 : REAL;
		FlagReserved47 : REAL;
		FlagReserved48 : REAL;
		FlagReserved49 : REAL;
	END_STRUCT;
	Init_typ : 	STRUCT  (*Comm[100..104]: 5*)
		InitReserved0 : REAL;
		InitReserved1 : REAL;
		InitReserved2 : REAL;
		InitReserved3 : REAL;
		InitReserved4 : REAL;
	END_STRUCT;
	Sealing_typ : 	STRUCT  (*Comm[105..114]: 10*)
		VSSolValveOpenDP : REAL;
		VSSolValveCloseDP : REAL;
		RTVOpenDP : REAL;
		RTVCloseDP : REAL;
		SealRTVSetpoint : REAL;
		VSSolValveOpenDuration : REAL;
		VSSolValveCloseDuration : REAL;
		SealingReserved7 : REAL;
		SealingReserved8 : REAL;
		SealingReserved9 : REAL;
	END_STRUCT;
	Engage_typ : 	STRUCT  (*Comm[115..119]: 5*)
		EnRTVSlope : REAL;
		EngageReserved1 : REAL;
		EngageReserved2 : REAL;
		EngageReserved3 : REAL;
		EngageReserved4 : REAL;
	END_STRUCT;
	Active_typ : 	STRUCT  (*Comm[120..124]: 5*)
		HUTargetTemp : REAL;
		HUActiveTemp : REAL;
		HUInactiveOffsetTemp : REAL;
		ActiveReserved3 : REAL;
		ActiveReserved4 : REAL;
	END_STRUCT;
	TMB_typ : 	STRUCT  (*Comm[125..129]: 5*)
		TMBBypassMinDuration : REAL;
		TMBTimeoutThreshold : REAL;
		TMBReserved2 : REAL;
		TMBReserved3 : REAL;
		TMBReserved4 : REAL;
	END_STRUCT;
	Disengage_typ : 	STRUCT  (*Comm[130..134]: 5*)
		DisenRTVSlope : REAL;
		DisengageReserved1 : REAL;
		DisengageReserved2 : REAL;
		DisengageReserved3 : REAL;
		DisengageReserved4 : REAL;
	END_STRUCT;
	Airventing_typ : 	STRUCT  (*Comm[135..139]: 5*)
		VentRTVSetpoint : REAL;
		VentDuration : REAL;
		AirVentingReserved2 : REAL;
		AirVentingReserved3 : REAL;
		AirVentingReserved4 : REAL;
	END_STRUCT;
	MOCSshutdown_typ : 	STRUCT  (*Comm[140..144]: 5*)
		MOCSShutdownReserved0 : REAL;
		MOCSShutdownReserved1 : REAL;
		MOCSShutdownReserved2 : REAL;
		MOCSShutdownReserved3 : REAL;
		MOCSShutdownReserved4 : REAL;
	END_STRUCT;
	Valveshutdown_typ : 	STRUCT  (*Comm[145..149]: 5*)
		ValveShutdownReserved0 : REAL;
		ValveShutdownReserved1 : REAL;
		ValveShutdownReserved2 : REAL;
		ValveShutdownReserved3 : REAL;
		ValveShutdownReserved4 : REAL;
	END_STRUCT;
	FODSInitReady_typ : 	STRUCT  (*Comm[150..154]: 5*)
		FODSInitReserved0 : REAL;
		FODSInitReserved1 : REAL;
		FODSInitReserved2 : REAL;
		FODSInitReserved3 : REAL;
		FODSInitReserved4 : REAL;
	END_STRUCT;
	FODSCooling_typ : 	STRUCT  (*Comm[155..159]: 5*)
		FOCoolDuration : REAL;
		FODSCoolingReserved1 : REAL;
		FODSCoolingReserved2 : REAL;
		FODSCoolingReserved3 : REAL;
		FODSCoolingReserved4 : REAL;
	END_STRUCT;
	FODSDosing_typ : 	STRUCT  (*Comm[160..174]: 15*)
		PumpChangeOverTime : REAL;
		SolVVDelay : REAL;
		LowRefQFOTimeout : REAL;
		QFOLowLimitTimeout : REAL;
		SFFlowrateThHigh : REAL;
		SFFlowrateThLow : REAL;
		QFOHighLimitGain : REAL;
		QFOHighLimitMin : REAL;
		QFOLowLimitValue : REAL;
		FOCValHighLimitValue : REAL;
		FOCValLowLimitValue : REAL;
		FODSDosingReserved11 : REAL;
		FODSDosingReserved12 : REAL;
		FODSDosingReserved13 : REAL;
		FODSDosingReserved14 : REAL;
	END_STRUCT;
	FODSFlushing_typ : 	STRUCT  (*Comm[175..179]: 5*)
		FOReturnDelay : REAL;
		FOPurgingDuration : REAL;
		FODSFlushingReserved2 : REAL;
		FODSFlushingReserved3 : REAL;
		FODSFlushingReserved4 : REAL;
	END_STRUCT;
	CommonReservedCat3_typ : 	STRUCT 
		CommReserved180 : REAL;
		CommReserved181 : REAL;
		CommReserved182 : REAL;
		CommReserved183 : REAL;
		CommReserved184 : REAL;
		CommReserved185 : REAL;
		CommReserved186 : REAL;
		CommReserved187 : REAL;
		CommReserved188 : REAL;
		CommReserved189 : REAL;
		CommReserved190 : REAL;
		CommReserved191 : REAL;
		CommReserved192 : REAL;
		CommReserved193 : REAL;
		CommReserved194 : REAL;
		CommReserved195 : REAL;
		CommReserved196 : REAL;
		CommReserved197 : REAL;
		CommReserved198 : REAL;
		CommReserved199 : REAL;
	END_STRUCT;
	FFpara_typ : 	STRUCT 
		NumTableRow : REAL;
		HeatLossTemp : REAL;
	END_STRUCT;
	EngineLoad_typ : 	STRUCT 
		EngineLoad0 : REAL;
		EngineLoad1 : REAL;
		EngineLoad2 : REAL;
		EngineLoad3 : REAL;
		EngineLoad4 : REAL;
		EngineLoad5 : REAL;
		EngineLoad6 : REAL;
		EngineLoad7 : REAL;
		EngineLoad8 : REAL;
		EngineLoad9 : REAL;
		EngineLoad10 : REAL;
		EngineLoad11 : REAL;
	END_STRUCT;
	ExhFlowrate_typ : 	STRUCT 
		ExhFlowrate0 : REAL;
		ExhFlowrate1 : REAL;
		ExhFlowrate2 : REAL;
		ExhFlowrate3 : REAL;
		ExhFlowrate4 : REAL;
		ExhFlowrate5 : REAL;
		ExhFlowrate6 : REAL;
		ExhFlowrate7 : REAL;
		ExhFlowrate8 : REAL;
		ExhFlowrate9 : REAL;
		ExhFlowrate10 : REAL;
		ExhFlowrate11 : REAL;
	END_STRUCT;
	HUInletRefTemp_typ : 	STRUCT 
		HUInletRefTemp0 : REAL;
		HUInletRefTemp1 : REAL;
		HUInletRefTemp2 : REAL;
		HUInletRefTemp3 : REAL;
		HUInletRefTemp4 : REAL;
		HUInletRefTemp5 : REAL;
		HUInletRefTemp6 : REAL;
		HUInletRefTemp7 : REAL;
		HUInletRefTemp8 : REAL;
		HUInletRefTemp9 : REAL;
		HUInletRefTemp10 : REAL;
		HUInletRefTemp11 : REAL;
	END_STRUCT;
	CorrectionFactor_typ : 	STRUCT 
		CorrectionFactor0 : REAL;
		CorrectionFactor1 : REAL;
		CorrectionFactor2 : REAL;
		CorrectionFactor3 : REAL;
		CorrectionFactor4 : REAL;
		CorrectionFactor5 : REAL;
		CorrectionFactor6 : REAL;
		CorrectionFactor7 : REAL;
		CorrectionFactor8 : REAL;
		CorrectionFactor9 : REAL;
		CorrectionFactor10 : REAL;
		CorrectionFactor11 : REAL;
	END_STRUCT;
	MOCSTempPgain_typ : 	STRUCT 
		MOCSTempPgain0 : REAL;
		MOCSTempPgain1 : REAL;
		MOCSTempPgain2 : REAL;
		MOCSTempPgain3 : REAL;
		MOCSTempPgain4 : REAL;
		MOCSTempPgain5 : REAL;
		MOCSTempPgain6 : REAL;
		MOCSTempPgain7 : REAL;
		MOCSTempPgain8 : REAL;
		MOCSTempPgain9 : REAL;
		MOCSTempPgain10 : REAL;
		MOCSTempPgain11 : REAL;
	END_STRUCT;
	APIDgain_typ : 	STRUCT 
		MOCSTempIgain : REAL;
		MOCSTempDgain : REAL;
		MOCSTempNoiseSup : REAL;
		QFOPgain : REAL;
		QFOIgain : REAL;
		QFODgain : REAL;
		QFONoiseSup : REAL;
		FODSFeedbackReserved19 : REAL;
		FODSFeedbackReserved20 : REAL;
		FODSFeedbackReserved21 : REAL;
		FODSFeedbackReserved22 : REAL;
		FODSFeedbackReserved23 : REAL;
		FODSFeedbackReserved24 : REAL;
	END_STRUCT;
	IndivReservedCat3_typ : 	STRUCT 
		IndivReserved75 : REAL;
		IndivReserved76 : REAL;
		IndivReserved77 : REAL;
		IndivReserved78 : REAL;
		IndivReserved79 : REAL;
		IndivReserved80 : REAL;
		IndivReserved81 : REAL;
		IndivReserved82 : REAL;
		IndivReserved83 : REAL;
		IndivReserved84 : REAL;
		IndivReserved85 : REAL;
		IndivReserved86 : REAL;
		IndivReserved87 : REAL;
		IndivReserved88 : REAL;
		IndivReserved89 : REAL;
		IndivReserved90 : REAL;
		IndivReserved91 : REAL;
		IndivReserved92 : REAL;
		IndivReserved93 : REAL;
		IndivReserved94 : REAL;
		IndivReserved95 : REAL;
		IndivReserved96 : REAL;
		IndivReserved97 : REAL;
		IndivReserved98 : REAL;
		IndivReserved99 : REAL;
	END_STRUCT;
END_TYPE
