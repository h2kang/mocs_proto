/********************************************************************
 * COPYRIGHT -- B&R Industrial Automation GmbH
 ********************************************************************
 * Program: MOCS_AS_Gen
 * File: MOCS_AS_Gen.h
 * Author: HHI
 * Last modified by: HHI
 * Created: Mon Nov 17 13:23:17 2025
 * Last modified: Fri Nov 21 16:29:48 2025
 * Model Version: 5.11
 * Description:
 * modified Comment:
 ********************************************************************
 * Header for program MOCS_AS_Gen
 ********************************************************************
 * Generated with B&R Automation Studio Target for Simulink V7.1.1
 * (ERT based)
 ********************************************************************/

#ifndef MOCS_AS_Gen_h_
#define MOCS_AS_Gen_h_
#ifndef MOCS_AS_Gen_COMMON_INCLUDES_
#define MOCS_AS_Gen_COMMON_INCLUDES_
#include "rtwtypes.h"
#include "rtw_continuous.h"
#include "rtw_solver.h"
#endif                                 /* MOCS_AS_Gen_COMMON_INCLUDES_ */

#include "MOCS_AS_Gen_types.h"

/* Macros for accessing real-time model data structure */
#ifndef rtmGetErrorStatus
#define rtmGetErrorStatus(rtm)         ((rtm)->errorStatus)
#endif

#ifndef rtmSetErrorStatus
#define rtmSetErrorStatus(rtm, val)    ((rtm)->errorStatus = (val))
#endif

#ifndef MIN
#define MIN(a,b)                       ((a) < (b) ? (a) : (b))
#endif

#ifndef MAX
#define MAX(a,b)                       ((a) > (b) ? (a) : (b))
#endif

#ifndef AST_ROUND
#define AST_ROUND(x)                   ((x)>=0?(long long)((x)+0.5):(long long)((x)-0.5))
#endif

/* Block signals (default storage) */
typedef struct {
  CMDO_typ System;                     /* '<Root>/Ext Struct In2' */
  CMDO_typ BusConversion_InsertedFor_ExtSt;
} BlockIO_MOCS_AS_Gen;

/* Real-time Model Data Structure */
struct tag_RTM_MOCS_AS_Gen {
  const char_T * volatile errorStatus;
};

/* Block signals (default storage) */
extern BlockIO_MOCS_AS_Gen MOCS_AS_Gen_B;

/* Model entry point functions */
extern void MOCS_AS_Gen_initialize(void);
extern void MOCS_AS_Gen_output(void);
extern void MOCS_AS_Gen_update(void);
extern void MOCS_AS_Gen_terminate(void);

/* Real-time Model object */
extern RT_MODEL_MOCS_AS_Gen *const MOCS_AS_Gen_M;

/*-
 * The generated code includes comments that allow you to trace directly
 * back to the appropriate location in the model.  The basic format
 * is <system>/block_name, where system is the system number (uniquely
 * assigned by Simulink) and block_name is the name of the block.
 *
 * Use the MATLAB hilite_system command to trace the generated code back
 * to the model.  For example,
 *
 * hilite_system('<S3>')    - opens system 3
 * hilite_system('<S3>/Kp') - opens and selects block Kp which resides in S3
 *
 * Here is the system hierarchy for this model
 *
 * '<Root>' : 'MOCS_AS_Gen'
 */
#endif                                 /* MOCS_AS_Gen_h_ */
