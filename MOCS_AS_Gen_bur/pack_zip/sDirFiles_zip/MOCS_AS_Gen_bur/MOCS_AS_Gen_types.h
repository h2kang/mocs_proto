/********************************************************************
 * COPYRIGHT -- B&R Industrial Automation GmbH
 ********************************************************************
 * Program: MOCS_AS_Gen
 * File: MOCS_AS_Gen_types.h
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

#ifndef MOCS_AS_Gen_types_h_
#define MOCS_AS_Gen_types_h_
#include "rtwtypes.h"
#ifndef MIN
#define MIN(a,b)                       ((a) < (b) ? (a) : (b))
#endif

#ifndef MAX
#define MAX(a,b)                       ((a) > (b) ? (a) : (b))
#endif

#ifndef AST_ROUND
#define AST_ROUND(x)                   ((x)>=0?(long long)((x)+0.5):(long long)((x)-0.5))
#endif

#ifndef DEFINED_TYPEDEF_FOR_CMDO_typ_
#define DEFINED_TYPEDEF_FOR_CMDO_typ_

typedef struct {
  boolean_T MOCSCommonAlarm;
  boolean_T MOCSCommonAlarmLamp;
  boolean_T MOCSCommonAlarmBuzzer;
} CMDO_typ;

#endif

/* Forward declaration for rtModel */
typedef struct tag_RTM_MOCS_AS_Gen RT_MODEL_MOCS_AS_Gen;

#endif                                 /* MOCS_AS_Gen_types_h_ */
