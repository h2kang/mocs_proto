/********************************************************************
 * COPYRIGHT -- B&R Industrial Automation GmbH
 ********************************************************************
 * Program: MOCS_AS_Gen
 * File: CtrlLogic.c
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

#define _ASMATH_
#define ASMATH_
#define _ASMATH_H
#define ASMATH_H
#define _ASMATH_H_
#define ASMATH_H_
#define _ASSTRING_
#define ASSTRING_
#define _ASSTRING_H
#define ASSTRING_H
#define _ASSTRING_H_
#define ASSTRING_H_
#include <bur/plctypes.h>
#ifdef _DEFAULT_INCLUDES
#include <AsDefault.h>
#endif

#include "MOCS_AS_Gen.h"
#include "rtwtypes.h"

/*  Defines */

/*  Data Types */

/**************************** GLOBAL DATA *************************************/
/*  Definitions */

/*  Declarations  */

/***************************** FILE SCOPE DATA ********************************/

/*************************** FUNCTIONS ****************************************/
#ifdef __cplusplus

unsigned long bur_heap_size = 6553500;

#endif


  void _INIT mainINIT(void)
{
  
    UDINT st_ident;
  RTInfo_typ rt_info;
  rt_info.enable = 1;
  RTInfo(&rt_info);
  if (rt_info.cycle_time != 100000) {
    /* cycle time does not match Simulink fixed-step size */
    ST_ident("CtrlLogic", 0, &st_ident);
    ST_tmp_suspend(st_ident);
    ERR_warning(33310, 0);
  }

  /* initialize model */
  MOCS_AS_Gen_initialize();
  
} void _CYCLIC mainCYCLIC(void)
{
  /* call model step function */
  MOCS_AS_Gen_output();

  
  MOCS_AS_Gen_update();
  
} void _EXIT mainEXIT(void)
{
  /* terminate model */
  MOCS_AS_Gen_terminate();
  
} /*****************************************************************************
     Task sample time: 0.099999999999999992s
   *****************************************************************************/
/*****************************************************************************
   B&R Automation Studio Target for Simulink Version: V7.1.1 (19-Sep-2025)
 *****************************************************************************/

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
