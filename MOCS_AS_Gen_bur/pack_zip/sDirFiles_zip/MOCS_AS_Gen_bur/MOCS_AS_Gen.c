/********************************************************************
 * COPYRIGHT -- B&R Industrial Automation GmbH
 ********************************************************************
 * Program: MOCS_AS_Gen
 * File: MOCS_AS_Gen.c
 * Author: HHI
 * Last modified by: HHI
 * Created: Mon Nov 17 13:23:17 2025
 * Last modified: Fri Nov 21 16:29:48 2025
 * Model Version: 5.11
 * Description:
 * modified Comment:
 ********************************************************************
 * Implementation of program MOCS_AS_Gen
 ********************************************************************
 * Generated with B&R Automation Studio Target for Simulink V7.1.1
 * (ERT based)
 ********************************************************************/

#include "MOCS_AS_Gen.h"

/*  Defines */

/*  Data Types */

/**************************** GLOBAL DATA *************************************/
/*  Definitions */

/* Block signals (default storage) */
BlockIO_MOCS_AS_Gen MOCS_AS_Gen_B;

/* Real-time model */
static RT_MODEL_MOCS_AS_Gen MOCS_AS_Gen_M_;
RT_MODEL_MOCS_AS_Gen *const MOCS_AS_Gen_M = &MOCS_AS_Gen_M_;

/*  Declarations  */

/***************************** FILE SCOPE DATA ********************************/

/*************************** FUNCTIONS ****************************************/

/* Model output function */
void MOCS_AS_Gen_output(void)
{
  /* S-Function (bur_ext_struct_out): '<Root>/Ext Struct Out' */
  Test_out = MOCS_AS_Gen_B.BusConversion_InsertedFor_ExtSt;

  /* S-Function (bur_ext_struct_in): '<Root>/Ext Struct In2' */
  MOCS_AS_Gen_B.System = Test_In;

  /* BusCreator generated from: '<Root>/Ext Struct Out' incorporates:
   *  DataTypeConversion: '<Root>/Cast To Double'
   *  DataTypeConversion: '<Root>/Cast To Double1'
   *  DataTypeConversion: '<Root>/Cast To Double2'
   *  Logic: '<Root>/NOT'
   */
  MOCS_AS_Gen_B.BusConversion_InsertedFor_ExtSt.MOCSCommonAlarm =
    !MOCS_AS_Gen_B.System.MOCSCommonAlarmLamp;
  MOCS_AS_Gen_B.BusConversion_InsertedFor_ExtSt.MOCSCommonAlarmLamp =
    MOCS_AS_Gen_B.System.MOCSCommonAlarmBuzzer;
  MOCS_AS_Gen_B.BusConversion_InsertedFor_ExtSt.MOCSCommonAlarmBuzzer =
    MOCS_AS_Gen_B.System.MOCSCommonAlarm;
}

/* Model update function */
void MOCS_AS_Gen_update(void)
{
  /* (no update code required) */
}

/* Model initialize function */
void MOCS_AS_Gen_initialize(void)
{
  /* (no initialization code required) */
}

/* Model terminate function */
void MOCS_AS_Gen_terminate(void)
{
  /* (no terminate code required) */
}

/*======================== TOOL VERSION INFORMATION ==========================*
 * MATLAB 24.2 (R2024b)21-Jun-2024                                            *
 * Simulink 24.2 (R2024b)21-Jun-2024                                          *
 * Simulink Coder 24.2 (R2024b)21-Jun-2024                                    *
 * Embedded Coder 24.2 (R2024b)21-Jun-2024                                    *
 * Stateflow 24.2 (R2024b)21-Jun-2024                                         *
 * Fixed-Point Designer 24.2 (R2024b)21-Jun-2024                              *
 *============================================================================*/

/*======================= LICENSE IN USE INFORMATION =========================*
 * matlab                                                                     *
 * matlab_coder                                                               *
 * real-time_workshop                                                         *
 * rtw_embedded_coder                                                         *
 * simulink                                                                   *
 *============================================================================*/
