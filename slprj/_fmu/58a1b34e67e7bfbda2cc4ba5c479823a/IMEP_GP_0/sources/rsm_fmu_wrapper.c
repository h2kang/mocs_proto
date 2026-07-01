/* ---------------------------------------------------------------------------*
 * Sample implementation of an FMU - the Van der Pol oscillator.
 * See http://en.wikipedia.org/wiki/Van_der_Pol_oscillator
 *  
 *   der(x0) = x1
 *   der(x1) = mu * ((1 - x0 ^ 2) * x1) - x0;
 *
 *   start values: x0=2, x1=0, mue=1
 * Copyright QTronic GmbH. All rights reserved.
 * ---------------------------------------------------------------------------*/

// define class name and unique id
#include "generated/constants.h"
#include "generated/snippets.h"

// define model size
#define NUMBER_OF_REALS  (RSM_INPUTS + 1)
#define NUMBER_OF_INTEGERS 1
#define NUMBER_OF_BOOLEANS 0
#define NUMBER_OF_STRINGS 0
#define NUMBER_OF_STATES 1
#define NUMBER_OF_EVENT_INDICATORS 0

// include fmu header files, typedefs and macros
#include "fmuTemplate.h"
#include "rsm.h"


// define all model variables and their value references
// conventions used here:
// - if x is a variable, then macro x_ is its variable reference
// - the vr of a variable is its index in array  r, i, b or s
// - if k is the vr of a real state, then k+1 is the vr of its derivative

#define rsm_output_ 0

// define state vector as vector of value references
#define t_ 0
#define STATES { t_ }
//#include "snippets.h" //todo se si incazza prova qui

// called by fmi2Instantiate
// Set values for all variables that define a start value
// Settings used unless changed by fmi2SetX before fmi2EnterInitializationMode
void setStartValues(ModelInstance *comp) {
  i(t_)      = 0;
  r(rsm_output_) = 0;
  __SET_START_VALUES__    
}

// called by fmi2GetReal, fmi2GetInteger, fmi2GetBoolean, fmi2GetString, fmi2ExitInitialization
// if setStartValues or environment set new values through fmi2SetXXX.
// Lazy set values for all variable that are computed from other variables.
void calculateValues(ModelInstance *comp) {
    if (comp->state == modelInitializationMode) {
    //  initialization code here
    //  set first time event, if any, using comp->eventInfo.nextEventTime
        comp->eventInfo.nextEventTimeDefined = fmi2True;
        comp->eventInfo.nextEventTime        = 1 + comp->time;
    }
}

double rsm_evaluation_wrapper(ModelInstance *comp) {

  double arguments[] = {
    __ARRAY_ELEMENTS__
    0
  };

    initialization();

  return evaluate(arguments);
}


// called by fmi2GetReal, fmi2GetContinuousStates and fmi2GetDerivatives
fmi2Real getReal(ModelInstance* comp, fmi2ValueReference vr){
    switch(vr) {
    __CASE_LABELS__
    case rsm_output_: return rsm_evaluation_wrapper(comp);
    default: return 0;
  }
}

// used to set the next time event, if any.
void eventUpdate(ModelInstance *comp, fmi2EventInfo *eventInfo, int isTimeEvent, int isNewEventIteration) {
    r(rsm_output_) = rsm_evaluation_wrapper(comp);    
    i(t_) = i(t_) + 1;
    eventInfo->nextEventTimeDefined   = fmi2True;
    eventInfo->nextEventTime = 1 + comp->time;
} 

// include code that implements the FMI based on the above definitions
#include "fmuTemplate.c"
//#include "generated/rsm.c"
