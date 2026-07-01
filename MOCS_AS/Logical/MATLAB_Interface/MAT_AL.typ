(*---Category1---*)

TYPE
	Alarm_typ :	STRUCT
		Comm : CommAlarm_typ;
		No1 : IndivAlarm_typ;
		No2 : IndivAlarm_typ;
		No3 : IndivAlarm_typ;
		No4 : IndivAlarm_typ;
		No5 : IndivAlarm_typ;
		No6 : IndivAlarm_typ;
		No7 : IndivAlarm_typ;
		No8 : IndivAlarm_typ;
	END_STRUCT;
END_TYPE

(*---Category2---*)

TYPE
	CommAlarm_typ :	STRUCT
		CHD : CHD_typ;
		CUD : CUD_typ;
	END_STRUCT;
	IndivAlarm_typ :	STRUCT
		IHD : IHD_typ;
		IUD : IUD_typ;
	END_STRUCT;
END_TYPE

(*---Category3---*)

TYPE
	CHD_typ :	STRUCT
		CommonAI1ModuleFault : BOOL;
		CommonDI1ModuleFault : BOOL;
		CommonDO1ModuleFault : BOOL;
		FOpumpAutomode_HA : DIAlarm_typ;
		AlarmReset_HR : DIAlarm_typ;
		LCpowerFail_LF : DIAlarm_typ;
		InternalpowerFail_LF : DIAlarm_typ;
		ExternalpowerFail_LF : DIAlarm_typ;
		FanpowerFail_LF : DIAlarm_typ;
		ESDcircuitpowerFail_LF : DIAlarm_typ;
		No1FOpumpRemote_HR : DIAlarm_typ;
		No1FOpumpAbnormal_LA : DIAlarm_typ;
		No1FOpumpRunning_HR : DIAlarm_typ;
		No2FOpumpRemote_HR : DIAlarm_typ;
		No2FOpumpAbnormal_LA : DIAlarm_typ;
		No2FOpumpRunning_HR : DIAlarm_typ;
		CDI1CH14Reserved_HR : DIAlarm_typ;
		CDI1CH15Reserved_HR : DIAlarm_typ;
		CDI1CH16Reserved_HR : DIAlarm_typ;
		FOSupplyInletPress : AIAlarm_typ;
		FOSupplyOutletPress : AIAlarm_typ;
		CAI1CH3Reserved : AIAlarm_typ;
		CAI1CH4Reserved : AIAlarm_typ;
		CAI1CH5Reserved : AIAlarm_typ;
		CAI1CH6Reserved : AIAlarm_typ;
		CAI1CH7Reserved : AIAlarm_typ;
		CAI1CH8Reserved : AIAlarm_typ;
	END_STRUCT;
	CUD_typ :	STRUCT
		CommunicationFailwithHMI : BOOL;
		No1FOsupplypumpFail : BOOL;
		No2FOsupplypumpFail : BOOL;
	END_STRUCT;
	IHD_typ :	STRUCT
		AI1ModuleFault : BOOL;
		AI2ModuleFault : BOOL;
		AI3ModuleFault : BOOL;
		AO1ModuleFault : BOOL;
		DI1ModuleFault : BOOL;
		DO1ModuleFault : BOOL;
		LowSulfurfuelsupplied_H0 : DIAlarm_typ;
		MOCSRemoteLocal_HR : DIAlarm_typ;
		MOCSEmcystopFpanel_LE : DIAlarm_typ;
		MOCSEmcystopFECR_LE : DIAlarm_typ;
		MOCSEmcystopFBridge_LE : DIAlarm_typ;
		MOCSStart_HS : DIAlarm_typ;
		MOCSPreparation_HP : DIAlarm_typ;
		MOCSStop_HS : DIAlarm_typ;
		RSVFeedback_HO : DIAlarm_typ;
		RSVFeedback_HC : DIAlarm_typ;
		RBVFeedback_HO : DIAlarm_typ;
		RBVFeedback_HC : DIAlarm_typ;
		FODosFOInletTemp_L  : DIAlarm_typ;
		SCRValveFeedback_HO : DIAlarm_typ;
		SCRValveFeedback_HC : DIAlarm_typ;
		DI1CH16Reserved_HC : DIAlarm_typ;
		MixerInletTemp : AIAlarm_typ;
		ChamberInletTemp : AIAlarm_typ;
		ChamberMiddleTemp : AIAlarm_typ;
		ChamberOutletTemp : AIAlarm_typ;
		ChamberDiffPress : AIAlarm_typ;
		VnSAirInletPress : AIAlarm_typ;
		AI1CH7Reserved : AIAlarm_typ;
		AI1CH8Reserved : AIAlarm_typ;
		RBVPDT : AIAlarm_typ;
		RTVPDT : AIAlarm_typ;
		RTVFeedback : AIAlarm_typ;
		AI2CH4Reserved : AIAlarm_typ;
		AI2CH5Reserved : AIAlarm_typ;
		AI2CH6Reserved : AIAlarm_typ;
		AI2CH7Reserved : AIAlarm_typ;
		AI2CH8Reserved : AIAlarm_typ;
		FODosAirInletPress : AIAlarm_typ;
		FODosAirOutletPress : AIAlarm_typ;
		FODosFOInletPress : AIAlarm_typ;
		FODosFOMiddlePress : AIAlarm_typ;
		FODosFOFlowrateFeedback : AIAlarm_typ;
		FODosFOOutletPress : AIAlarm_typ;
		AI3CH7Reserved : AIAlarm_typ;
		AI3CH8Reserved : AIAlarm_typ;
	END_STRUCT;
	IUD_typ :	STRUCT
		CommunicationFailwithAMS : BOOL;
		EGSuddenDieselTransfer : BOOL;
		EGstoppedduringgas : BOOL;
		MSSNormalFail : BOOL;
		TMBTimeout : BOOL;
		RemoteStopWhileTMB : BOOL;
		MOCSNotReady : BOOL;
		RSVFail : BOOL;
		RSVFeedbackSF : BOOL;
		RBVFail : BOOL;
		RBVFeedbackSF : BOOL;
		SCRValveFail : BOOL;
		SCRValveFeedbackSF : BOOL;
		RTVFail : BOOL;
		RTVDev : BOOL;
		DosingFOFlowDev : BOOL;
		DosingFOFlowDevTimeout : BOOL;
		DosingFOLimitSatTimeout : BOOL;
		RTVPDTSFMOCSNotready : BOOL;
	END_STRUCT;
END_TYPE

(*---Category3---*)

TYPE
	AIAlarm_typ :	STRUCT
		SF : BOOL;
		LL : BOOL;
		LO : BOOL;
		HO : BOOL;
		HH : BOOL;
	END_STRUCT;
	DIAlarm_typ :	STRUCT
		DH : BOOL;
		DL : BOOL;
	END_STRUCT;
END_TYPE

