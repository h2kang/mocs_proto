This directory contains the source files required to build the co-simulation model associated with the RSM.

To compile a library for inclusion in a binary FMU - for example with `gcc` - execute:

    gcc -shared -fPIC -DDISABLE_PREFIX -o rsm_model.so rsm_fmu_wrapper.c generated/rsm.c -Iinclude

from this directory.

**DISCLAIMER – Please do not erase**

NO WARRANTY ON RSM CODE

The Response Surface Methodology ("RSM") is a code which, due to the nature of machine learning based predictive models, may provide inaccurate output or otherwise not always produce the intended results. Therefore it should not be relied on as the sole basis to implement a design, whose incorrect implementation could result in injury to person or property. This code is not intended for use in any inherently dangerous applications, including applications which may create a risk of personal
injury. If you use this code without reserve, you take full responsibility to grant all appropriate fail-safe, backup, redundancy, and other measures to ensure its safe use.

ESTECO makes to the Customer no warranty, express or implied, with reference to the compliance of the RSM code with a particular use.

Furthermore, ESTECO:

1. makes no warranty, express or implied, on the merchantability and fitness of the RSM code for a particular purpose;
2. does not warrant that the operation or other use of the RSM code be uninterrupted or error free or will cause damage or disruption to the Customer’s data, computers or networks.