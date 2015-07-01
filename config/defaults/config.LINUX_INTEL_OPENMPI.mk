# ----------------------------------------------------------------------
# Config file for Intel ifort  with OpenMPI_
# ----------------------------------------------------------------------

# ------- Define a possible parallel make ------------------------------
PMAKE = make -j 4

# ------- Define the MPI Compilers--------------------------------------
FF90 = mpif90
CC   = mpicc

# ------- Define CGNS Inlcude and linker flags -------------------------
CGNS_INCLUDE_FLAGS = -I/usr/local/include
CGNS_LINKER_FLAGS = -Wl,-rpath,/usr/local/lib -lcgns

# ------- Define Compiler Flags ----------------------------------------
FF90_GEN_FLAGS = 
CC_GEN_FLAGS   =

FF90_OPT_FLAGS   =  -fPIC -r8 -O2  
CC_OPT_FLAGS     = -O2 -fPIC

# ------- Define Linker Flags ------------------------------------------
LINKER_FLAGS = -nofor_main

# ------- Define Petsc Info --- Should not need to modify this -----
include ${PETSC_DIR}/lib/petsc/conf/variables # PETSc 3.6
#include ${PETSC_DIR}/conf/variables # PETSc 3.5
PETSC_INCLUDE_FLAGS=${PETSC_CC_INCLUDES} -I$(PETSC_DIR)
PETSC_LINKER_FLAGS=${PETSC_LIB}


