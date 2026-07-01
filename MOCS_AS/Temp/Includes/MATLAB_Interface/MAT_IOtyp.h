/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1764723252_4_
#define _BUR_1764723252_4_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef struct CAI_typ
{	float FOSupplyInletPress;
	float FOSupplyOutletPress;
	float CAI1Reserved3;
	float CAI1Reserved4;
	float CAI1Reserved5;
	float CAI1Reserved6;
	float CAI1Reserved7;
	float CAI1Reserved8;
} CAI_typ;

typedef struct CDI_typ
{	plcbit FOSupplypumpAutomode;
	plcbit AlarmReset;
	plcbit PLCpowerFail_Reserved;
	plcbit InternalpowerFail;
	plcbit ExternalpowerFail;
	plcbit FanpowerFail;
	plcbit ESDcircuitpowerFail;
	plcbit No1FOSupplypumpRemote;
	plcbit No1FOSupplypumpAbnormal;
	plcbit No1FOSupplypumpRunning;
	plcbit No2FOSupplypumpRemote;
	plcbit No2FOSupplypumpAbnormal;
	plcbit No2FOSupplypumpRunning;
	plcbit CDI1Reserved14;
	plcbit CDI1Reserved15;
	plcbit CDI1Reserved16;
} CDI_typ;

typedef struct CDO_typ
{	plcbit MOCSCommonAlarm;
	plcbit MOCSCommonAlarmLamp;
	plcbit MOCSCommonAlarmBuzzer;
	plcbit No1FOSupplypumpRunCommand;
	plcbit No2FOSupplypumpRunCommand;
	plcbit CDO1Reserved6;
	plcbit CDO1Reserved7;
	plcbit CDO1Reserved8;
	plcbit CDO1Reserved9;
	plcbit CDO1Reserved10;
	plcbit CDO1Reserved11;
	plcbit CDO1Reserved12;
	plcbit CDO1Reserved13;
	plcbit CDO1Reserved14;
	plcbit CDO1Reserved15;
	plcbit CDO1Reserved16;
} CDO_typ;

typedef struct CommIO_typ
{	struct CAI_typ CAI;
	struct CDI_typ CDI;
	struct CDO_typ CDO;
} CommIO_typ;

typedef struct IAI_typ
{	float MixerInletTemp;
	float ChamberInletTemp;
	float ChamberMiddleTemp;
	float ChamberOutletTemp;
	float ChamberDiffPress;
	float VentingSealingAirInletPress;
	float IAI1Reserved7;
	float IAI1Reserved8;
	float RBVPDT;
	float RTVPDT;
	float RTVFeedback;
	float IAI2Reserved4;
	float IAI2Reserved5;
	float IAI2Reserved6;
	float IAI2Reserved7;
	float IAI2Reserved8;
	float FODAtomizingAirInletPress;
	float FODAtomizingAirOutletPress;
	float FODFuelOilInletPress;
	float FODFuelOilMiddlePress;
	float FODFuelOilFlowrate_Feedback;
	float FODFuelOilOutletPress;
	float IAI3Reserved7;
	float IAI3Reserved8;
} IAI_typ;

typedef struct IDI_typ
{	plcbit GELowSulfurfuelsupplied;
	plcbit MOCSRemoteLocal;
	plcbit MOCSEmcystopFrompanel;
	plcbit MOCSEmcystopFromECR;
	plcbit MOCSEmcystopFromBridge;
	plcbit MOCSStart;
	plcbit MOCSPreparation;
	plcbit MOCSStop;
	plcbit RSVFeedback_Open;
	plcbit RSVFeedback_Closed;
	plcbit RBVFeedback_Open;
	plcbit RBVFeedback_Closed;
	plcbit FODFuelOilInletTemp;
	plcbit SCRValveFeedback_Open;
	plcbit SCRValveFeedback_Close;
	plcbit IDI1Reserved16;
} IDI_typ;

typedef struct IAO_typ
{	float FODFuelOilControlVV_Setpoint;
	float RTVSetpoint;
	float IAO1Reserved3;
	float IAO1Reserved4;
} IAO_typ;

typedef struct IDO_typ
{	plcbit MOCSReady;
	plcbit AllFlowThroughMOCS;
	plcbit MOCSActive;
	plcbit MOCSFODsystemFlushRun;
	plcbit FODAtomizingAirSolVV;
	plcbit FODPurgingAirSolVV;
	plcbit FODFuelOilInletSolVV;
	plcbit FODFuelOilOutletSolVV;
	plcbit FODFuelOilReturnSolVV;
	plcbit RSVSetpoint;
	plcbit RBVSetpoint;
	plcbit VentingSealingSolVV;
	plcbit SCRValveSetpoint;
	plcbit IDO1Reserved14;
	plcbit IDO1Reserved15;
	plcbit IDO1Reserved16;
} IDO_typ;

typedef struct IndivIO_typ
{	struct IAI_typ IAI;
	struct IDI_typ IDI;
	struct IAO_typ IAO;
	struct IDO_typ IDO;
} IndivIO_typ;

typedef struct IO_typ
{	struct CommIO_typ Comm;
	struct IndivIO_typ No1;
	struct IndivIO_typ No2;
	struct IndivIO_typ No3;
	struct IndivIO_typ No4;
	struct IndivIO_typ No5;
	struct IndivIO_typ No6;
	struct IndivIO_typ No7;
	struct IndivIO_typ No8;
} IO_typ;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MATLAB_Interface/MAT_IO.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1764723252_4_ */

