/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1764723204_1_
#define _BUR_1764723204_1_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct SystemType_typ
{	float MOCSType;
	float NumofGE;
	float HeatingSystem;
	float FOSuppUnit;
	float SystemTypeReserved4;
	float SystemTypeReserved5;
	float SystemTypeReserved6;
	float SystemTypeReserved7;
	float SystemTypeReserved8;
	float SystemTypeReserved9;
} SystemType_typ;

typedef struct CommSetting_typ
{	float ValveStatusCriteria;
	float FOPumpChangeOverTime;
	float CommSettingReserved2;
	float CommSettingReserved3;
	float CommSettingReserved4;
} CommSetting_typ;

typedef struct SystemReserved_typ
{	float SystemReserved15;
	float SystemReserved16;
	float SystemReserved17;
	float SystemReserved18;
	float SystemReserved19;
	float SystemReserved20;
	float SystemReserved21;
	float SystemReserved22;
	float SystemReserved23;
	float SystemReserved24;
	float SystemReserved25;
	float SystemReserved26;
	float SystemReserved27;
	float SystemReserved28;
	float SystemReserved29;
	float SystemReserved30;
	float SystemReserved31;
	float SystemReserved32;
	float SystemReserved33;
	float SystemReserved34;
	float SystemReserved35;
	float SystemReserved36;
	float SystemReserved37;
	float SystemReserved38;
	float SystemReserved39;
	float SystemReserved40;
	float SystemReserved41;
	float SystemReserved42;
	float SystemReserved43;
	float SystemReserved44;
	float SystemReserved45;
	float SystemReserved46;
	float SystemReserved47;
	float SystemReserved48;
	float SystemReserved49;
} SystemReserved_typ;

typedef struct System_typ
{	struct SystemType_typ SystemType;
	struct CommSetting_typ CommSetting;
	struct SystemReserved_typ SystemReserved;
} System_typ;

typedef struct MSSNormalFlag_typ
{	float MOCSMinEngineLoad;
	float MOCSReadyEngineLoad;
	float MSSNormalFallingHysteresis;
	float MSSNormalFallingDelay;
	float MSSFlagReserved4;
} MSSNormalFlag_typ;

typedef struct LoadChangeFlag_typ
{	float MovAvgPeriod;
	float ComparePoint;
	float LoadChangeThreshold;
	float LoadChangeFlagReserved3;
	float LoadChangeFlagReserved4;
} LoadChangeFlag_typ;

typedef struct SystemWarmedUpFlag_typ
{	float WarmUpDTemp;
	float WarmUpITemp;
	float WarmUpChITemp;
	float WarmUpChMTemp;
	float WarmUpChOTemp;
} SystemWarmedUpFlag_typ;

typedef struct TMBFlag_typ
{	float TMBFlagFallingDelay;
	float TMBFlagReserved1;
	float TMBFlagReserved2;
	float TMBFlagReserved3;
	float TMBFlagReserved4;
} TMBFlag_typ;

typedef struct FlagReserved_typ
{	float FlagReserved20;
	float FlagReserved21;
	float FlagReserved22;
	float FlagReserved23;
	float FlagReserved24;
	float FlagReserved25;
	float FlagReserved26;
	float FlagReserved27;
	float FlagReserved28;
	float FlagReserved29;
	float FlagReserved30;
	float FlagReserved31;
	float FlagReserved32;
	float FlagReserved33;
	float FlagReserved34;
	float FlagReserved35;
	float FlagReserved36;
	float FlagReserved37;
	float FlagReserved38;
	float FlagReserved39;
	float FlagReserved40;
	float FlagReserved41;
	float FlagReserved42;
	float FlagReserved43;
	float FlagReserved44;
	float FlagReserved45;
	float FlagReserved46;
	float FlagReserved47;
	float FlagReserved48;
	float FlagReserved49;
} FlagReserved_typ;

typedef struct StateFlag_typ
{	struct MSSNormalFlag_typ MSSNormalFlag;
	struct LoadChangeFlag_typ LoadChangeFlag;
	struct SystemWarmedUpFlag_typ SystemWarmedUpFlag;
	struct TMBFlag_typ TMBFlag;
	struct FlagReserved_typ FlagReserved;
} StateFlag_typ;

typedef struct Init_typ
{	float InitReserved0;
	float InitReserved1;
	float InitReserved2;
	float InitReserved3;
	float InitReserved4;
} Init_typ;

typedef struct Sealing_typ
{	float VSSolValveOpenDP;
	float VSSolValveCloseDP;
	float RTVOpenDP;
	float RTVCloseDP;
	float SealRTVSetpoint;
	float VSSolValveOpenDuration;
	float VSSolValveCloseDuration;
	float SealingReserved7;
	float SealingReserved8;
	float SealingReserved9;
} Sealing_typ;

typedef struct Engage_typ
{	float EnRTVSlope;
	float EngageReserved1;
	float EngageReserved2;
	float EngageReserved3;
	float EngageReserved4;
} Engage_typ;

typedef struct Active_typ
{	float HUTargetTemp;
	float HUActiveTemp;
	float HUInactiveOffsetTemp;
	float ActiveReserved3;
	float ActiveReserved4;
} Active_typ;

typedef struct TMB_typ
{	float TMBBypassMinDuration;
	float TMBTimeoutThreshold;
	float TMBReserved2;
	float TMBReserved3;
	float TMBReserved4;
} TMB_typ;

typedef struct Disengage_typ
{	float DisenRTVSlope;
	float DisengageReserved1;
	float DisengageReserved2;
	float DisengageReserved3;
	float DisengageReserved4;
} Disengage_typ;

typedef struct Airventing_typ
{	float VentRTVSetpoint;
	float VentDuration;
	float AirVentingReserved2;
	float AirVentingReserved3;
	float AirVentingReserved4;
} Airventing_typ;

typedef struct MOCSshutdown_typ
{	float MOCSShutdownReserved0;
	float MOCSShutdownReserved1;
	float MOCSShutdownReserved2;
	float MOCSShutdownReserved3;
	float MOCSShutdownReserved4;
} MOCSshutdown_typ;

typedef struct Valveshutdown_typ
{	float ValveShutdownReserved0;
	float ValveShutdownReserved1;
	float ValveShutdownReserved2;
	float ValveShutdownReserved3;
	float ValveShutdownReserved4;
} Valveshutdown_typ;

typedef struct Main_typ
{	struct Init_typ Init;
	struct Sealing_typ Sealing;
	struct Engage_typ Engage;
	struct Active_typ Active;
	struct TMB_typ TMB;
	struct Disengage_typ Disengage;
	struct Airventing_typ Airventing;
	struct MOCSshutdown_typ MOCSshutdown;
	struct Valveshutdown_typ Valveshutdown;
} Main_typ;

typedef struct FODSInitReady_typ
{	float FODSInitReserved0;
	float FODSInitReserved1;
	float FODSInitReserved2;
	float FODSInitReserved3;
	float FODSInitReserved4;
} FODSInitReady_typ;

typedef struct FODSCooling_typ
{	float FOCoolDuration;
	float FODSCoolingReserved1;
	float FODSCoolingReserved2;
	float FODSCoolingReserved3;
	float FODSCoolingReserved4;
} FODSCooling_typ;

typedef struct FODSDosing_typ
{	float PumpChangeOverTime;
	float SolVVDelay;
	float LowRefQFOTimeout;
	float QFOLowLimitTimeout;
	float SFFlowrateThHigh;
	float SFFlowrateThLow;
	float QFOHighLimitGain;
	float QFOHighLimitMin;
	float QFOLowLimitValue;
	float FOCValHighLimitValue;
	float FOCValLowLimitValue;
	float FODSDosingReserved11;
	float FODSDosingReserved12;
	float FODSDosingReserved13;
	float FODSDosingReserved14;
} FODSDosing_typ;

typedef struct FODSFlushing_typ
{	float FOReturnDelay;
	float FOPurgingDuration;
	float FODSFlushingReserved2;
	float FODSFlushingReserved3;
	float FODSFlushingReserved4;
} FODSFlushing_typ;

typedef struct FODS_typ
{	struct FODSInitReady_typ FODSInitReady;
	struct FODSCooling_typ FODSCooling;
	struct FODSDosing_typ FODSDosing;
	struct FODSFlushing_typ FODSFlushing;
} FODS_typ;

typedef struct CommonReservedCat3_typ
{	float CommReserved180;
	float CommReserved181;
	float CommReserved182;
	float CommReserved183;
	float CommReserved184;
	float CommReserved185;
	float CommReserved186;
	float CommReserved187;
	float CommReserved188;
	float CommReserved189;
	float CommReserved190;
	float CommReserved191;
	float CommReserved192;
	float CommReserved193;
	float CommReserved194;
	float CommReserved195;
	float CommReserved196;
	float CommReserved197;
	float CommReserved198;
	float CommReserved199;
} CommonReservedCat3_typ;

typedef struct CommonReservedCat2_typ
{	struct CommonReservedCat3_typ CommonReservedCat3;
} CommonReservedCat2_typ;

typedef struct ParaCommon_typ
{	struct System_typ System;
	struct StateFlag_typ StateFlag;
	struct Main_typ Main;
	struct FODS_typ FODS;
	struct CommonReservedCat2_typ CommonReservedCat2;
} ParaCommon_typ;

typedef struct FFpara_typ
{	float NumTableRow;
	float HeatLossTemp;
} FFpara_typ;

typedef struct EngineLoad_typ
{	float EngineLoad0;
	float EngineLoad1;
	float EngineLoad2;
	float EngineLoad3;
	float EngineLoad4;
	float EngineLoad5;
	float EngineLoad6;
	float EngineLoad7;
	float EngineLoad8;
	float EngineLoad9;
	float EngineLoad10;
	float EngineLoad11;
} EngineLoad_typ;

typedef struct ExhFlowrate_typ
{	float ExhFlowrate0;
	float ExhFlowrate1;
	float ExhFlowrate2;
	float ExhFlowrate3;
	float ExhFlowrate4;
	float ExhFlowrate5;
	float ExhFlowrate6;
	float ExhFlowrate7;
	float ExhFlowrate8;
	float ExhFlowrate9;
	float ExhFlowrate10;
	float ExhFlowrate11;
} ExhFlowrate_typ;

typedef struct HUInletRefTemp_typ
{	float HUInletRefTemp0;
	float HUInletRefTemp1;
	float HUInletRefTemp2;
	float HUInletRefTemp3;
	float HUInletRefTemp4;
	float HUInletRefTemp5;
	float HUInletRefTemp6;
	float HUInletRefTemp7;
	float HUInletRefTemp8;
	float HUInletRefTemp9;
	float HUInletRefTemp10;
	float HUInletRefTemp11;
} HUInletRefTemp_typ;

typedef struct CorrectionFactor_typ
{	float CorrectionFactor0;
	float CorrectionFactor1;
	float CorrectionFactor2;
	float CorrectionFactor3;
	float CorrectionFactor4;
	float CorrectionFactor5;
	float CorrectionFactor6;
	float CorrectionFactor7;
	float CorrectionFactor8;
	float CorrectionFactor9;
	float CorrectionFactor10;
	float CorrectionFactor11;
} CorrectionFactor_typ;

typedef struct FODSFeedforward_typ
{	struct FFpara_typ FFpara;
	struct EngineLoad_typ EngineLoad;
	struct ExhFlowrate_typ ExhFlowrate;
	struct HUInletRefTemp_typ HUInletRefTemp;
	struct CorrectionFactor_typ CorrectionFactor;
} FODSFeedforward_typ;

typedef struct MOCSTempPgain_typ
{	float MOCSTempPgain0;
	float MOCSTempPgain1;
	float MOCSTempPgain2;
	float MOCSTempPgain3;
	float MOCSTempPgain4;
	float MOCSTempPgain5;
	float MOCSTempPgain6;
	float MOCSTempPgain7;
	float MOCSTempPgain8;
	float MOCSTempPgain9;
	float MOCSTempPgain10;
	float MOCSTempPgain11;
} MOCSTempPgain_typ;

typedef struct APIDgain_typ
{	float MOCSTempIgain;
	float MOCSTempDgain;
	float MOCSTempNoiseSup;
	float QFOPgain;
	float QFOIgain;
	float QFODgain;
	float QFONoiseSup;
	float FODSFeedbackReserved19;
	float FODSFeedbackReserved20;
	float FODSFeedbackReserved21;
	float FODSFeedbackReserved22;
	float FODSFeedbackReserved23;
	float FODSFeedbackReserved24;
} APIDgain_typ;

typedef struct FODSFeedback_typ
{	struct MOCSTempPgain_typ MOCSTempPgain;
	struct APIDgain_typ APIDgain;
} FODSFeedback_typ;

typedef struct IndivReservedCat3_typ
{	float IndivReserved75;
	float IndivReserved76;
	float IndivReserved77;
	float IndivReserved78;
	float IndivReserved79;
	float IndivReserved80;
	float IndivReserved81;
	float IndivReserved82;
	float IndivReserved83;
	float IndivReserved84;
	float IndivReserved85;
	float IndivReserved86;
	float IndivReserved87;
	float IndivReserved88;
	float IndivReserved89;
	float IndivReserved90;
	float IndivReserved91;
	float IndivReserved92;
	float IndivReserved93;
	float IndivReserved94;
	float IndivReserved95;
	float IndivReserved96;
	float IndivReserved97;
	float IndivReserved98;
	float IndivReserved99;
} IndivReservedCat3_typ;

typedef struct IndivReservedCat2_typ
{	struct IndivReservedCat3_typ IndivReservedCat3;
} IndivReservedCat2_typ;

typedef struct ParaIndiv_typ
{	struct FODSFeedforward_typ FODSFeedforward;
	struct FODSFeedback_typ FODSFeedback;
	struct IndivReservedCat2_typ IndivReservedCat2;
} ParaIndiv_typ;

typedef struct Para_typ
{	struct ParaCommon_typ Common;
	struct ParaIndiv_typ No1;
	struct ParaIndiv_typ No2;
	struct ParaIndiv_typ No3;
	struct ParaIndiv_typ No4;
	struct ParaIndiv_typ No5;
	struct ParaIndiv_typ No6;
	struct ParaIndiv_typ No7;
	struct ParaIndiv_typ No8;
} Para_typ;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/RcpTypes.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1764723204_1_ */

