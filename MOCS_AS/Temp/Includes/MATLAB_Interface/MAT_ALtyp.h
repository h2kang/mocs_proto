/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1764723252_2_
#define _BUR_1764723252_2_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct DIAlarm_typ
{	plcbit DH;
	plcbit DL;
} DIAlarm_typ;

typedef struct AIAlarm_typ
{	plcbit SF;
	plcbit LL;
	plcbit LO;
	plcbit HO;
	plcbit HH;
} AIAlarm_typ;

typedef struct CHD_typ
{	plcbit CommonAI1ModuleFault;
	plcbit CommonDI1ModuleFault;
	plcbit CommonDO1ModuleFault;
	struct DIAlarm_typ FOSupplypumpAutomode_HA;
	struct DIAlarm_typ AlarmReset_HR;
	struct DIAlarm_typ LCpowerFail_LF;
	struct DIAlarm_typ InternalpowerFail_LF;
	struct DIAlarm_typ ExternalpowerFail_LF;
	struct DIAlarm_typ FanpowerFail_LF;
	struct DIAlarm_typ ESDcircuitpowerFail_LF;
	struct DIAlarm_typ No1FOSupplypumpRemote_HR;
	struct DIAlarm_typ No1FOSupplypumpAbnormal_LA;
	struct DIAlarm_typ No1FOSupplypumpRunning_HR;
	struct DIAlarm_typ No2FOSupplypumpRemote_HR;
	struct DIAlarm_typ No2FOSupplypumpAbnormal_LA;
	struct DIAlarm_typ No2FOSupplypumpRunning_HR;
	struct DIAlarm_typ CDI1CH14Reserved_HR;
	struct DIAlarm_typ CDI1CH15Reserved_HR;
	struct DIAlarm_typ CDI1CH16Reserved_HR;
	struct AIAlarm_typ FOSupplyInletPress;
	struct AIAlarm_typ FOSupplyOutletPress;
	struct AIAlarm_typ CAI1CH3Reserved;
	struct AIAlarm_typ CAI1CH4Reserved;
	struct AIAlarm_typ CAI1CH5Reserved;
	struct AIAlarm_typ CAI1CH6Reserved;
	struct AIAlarm_typ CAI1CH7Reserved;
	struct AIAlarm_typ CAI1CH8Reserved;
} CHD_typ;

typedef struct CUD_typ
{	plcbit CommunicationFailwithHMI;
} CUD_typ;

typedef struct CommAlarm_typ
{	struct CHD_typ CHD;
	struct CUD_typ CUD;
} CommAlarm_typ;

typedef struct IHD_typ
{	plcbit AI1ModuleFault;
	plcbit AI2ModuleFault;
	plcbit AI3ModuleFault;
	plcbit AO1ModuleFault;
	plcbit DI1ModuleFault;
	plcbit DO1ModuleFault;
	struct DIAlarm_typ GELowSulfurfuelsupplied_H0;
	struct DIAlarm_typ MOCSRemoteLocal_HR;
	struct DIAlarm_typ MOCSEmcystopFrompanel_LE;
	struct DIAlarm_typ MOCSEmcystopFromECR_LE;
	struct DIAlarm_typ MOCSEmcystopFromBridge_LE;
	struct DIAlarm_typ MOCSStart_HS;
	struct DIAlarm_typ MOCSPreparation_HP;
	struct DIAlarm_typ MOCSStop_HS;
	struct DIAlarm_typ RSVFeedback_HO;
	struct DIAlarm_typ RSVFeedback_HC;
	struct DIAlarm_typ RBVFeedback_HO;
	struct DIAlarm_typ RBVFeedback_HC;
	struct DIAlarm_typ FODosingFuelOilInletTemp_L;
	struct DIAlarm_typ SCRValveFeedback_HO;
	struct DIAlarm_typ SCRValveFeedback_HC;
	struct DIAlarm_typ DI1CH16Reserved_HC;
	struct AIAlarm_typ MixerInletTemp;
	struct AIAlarm_typ ChamberInletTemp;
	struct AIAlarm_typ ChamberMiddleTemp;
	struct AIAlarm_typ ChamberOutletTemp;
	struct AIAlarm_typ ChamberDiffPress;
	struct AIAlarm_typ VentingSealingAirInletPress;
	struct AIAlarm_typ AI1CH7Reserved;
	struct AIAlarm_typ AI1CH8Reserved;
	struct AIAlarm_typ RBVPDT;
	struct AIAlarm_typ RTVPDT;
	struct AIAlarm_typ RTVFeedback;
	struct AIAlarm_typ AI2CH4Reserved;
	struct AIAlarm_typ AI2CH5Reserved;
	struct AIAlarm_typ AI2CH6Reserved;
	struct AIAlarm_typ AI2CH7Reserved;
	struct AIAlarm_typ AI2CH8Reserved;
	struct AIAlarm_typ FODosingAtomizingAirInletPress;
	struct AIAlarm_typ FODosingAtomizingAirOutletPress;
	struct AIAlarm_typ FODosingFuelOilInletPress;
	struct AIAlarm_typ FODosingFuelOilMiddlePress;
	struct AIAlarm_typ FODosingFuelOilFlowrateFeedback;
	struct AIAlarm_typ FODosingFuelOilOutletPress;
	struct AIAlarm_typ AI3CH7Reserved;
	struct AIAlarm_typ AI3CH8Reserved;
} IHD_typ;

typedef struct IUD_typ
{	plcbit CommunicationFailwithAMS;
	plcbit EngineSuddenDieselTransfer;
	plcbit Enginestoppedduringgasoperation;
	plcbit MSSNormalFail;
	plcbit TMBTimeout;
	plcbit RemoteStopcommandInputwhileTMB;
	plcbit MOCSNotReady;
	plcbit RSVFail;
	plcbit RSVFeedbackSF;
	plcbit RBVFail;
	plcbit RBVFeedbackSF;
	plcbit SCRValveFail;
	plcbit SCRValveFeedbackSF;
	plcbit RTVFail;
	plcbit RTVDeviation;
	plcbit DosingFOFlowDeviation;
	plcbit DosingFOFlowDeviationTimeout;
	plcbit DosingFOLimitSaturationTimeout;
	plcbit RTVPDTSFSealingrequired;
} IUD_typ;

typedef struct IndivAlarm_typ
{	struct IHD_typ IHD;
	struct IUD_typ IUD;
} IndivAlarm_typ;

typedef struct Alarm_typ
{	struct CommAlarm_typ Comm;
	struct IndivAlarm_typ No1;
	struct IndivAlarm_typ No2;
	struct IndivAlarm_typ No3;
	struct IndivAlarm_typ No4;
	struct IndivAlarm_typ No5;
	struct IndivAlarm_typ No6;
	struct IndivAlarm_typ No7;
	struct IndivAlarm_typ No8;
} Alarm_typ;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MATLAB_Interface/MAT_AL.typ\\\" scope \\\"restricted\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1764723252_2_ */

