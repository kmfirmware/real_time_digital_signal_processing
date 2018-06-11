/*
 * Filter Coefficients (C Source) generated by the Filter Design and Analysis Tool
 * Generated by MATLAB(R) 8.5 and the DSP System Toolbox 9.0.
 * Generated on: 24-May-2015 20:30:10
 */

/*
 * Discrete-Time IIR Filter (real)
 * -------------------------------
 * Filter Structure    : Direct-Form II, Second-Order Sections
 * Number of Sections  : 4
 * Stable              : Yes
 * Linear Phase        : No
 * Arithmetic          : single
 */

/* General type conversion for MATLAB generated C-code  */
#include "tmwtypes.h"
/* 
 * Expected path to tmwtypes.h 
 * /usr/local/share/MATLAB/extern/include/tmwtypes.h 
 */
#define MWSPT_NSEC 9
#define Q_NUM 0x7fff
const int NL[MWSPT_NSEC] = { 1,3,1,3,1,3,1,3,1 };
const int16_T NUM[MWSPT_NSEC][3] = {
  {
     (int16_T)(0.7293642163*Q_NUM),              0,              0 
  },
  {
     (int16_T)(1*Q_NUM), (int16_T)(1.589385033*Q_NUM),(int16_T)(1*Q_NUM) 
  },
  {
     (int16_T)(0.6446273923*Q_NUM),              0,              0 
  },
  {
     (int16_T)(1*Q_NUM), (int16_T)(1.357007384*Q_NUM),(int16_T)(1*Q_NUM) 
  },
  {
     (int16_T)(0.4486868083*Q_NUM),              0,              0 
  },
  {
     (int16_T)(1*Q_NUM), (int16_T)(-0.1982931495*Q_NUM), (int16_T)(1*Q_NUM) 
  },
  {
     (int16_T)(0.009912354872*Q_NUM),              0,              0 
  },
  {
     (int16_T)(1*Q_NUM), (int16_T)(1.642092824*Q_NUM),(int16_T)(1*Q_NUM) 
  },
  {
     (int16_T)(1*Q_NUM),              0,              0 
  }
};
const int DL[MWSPT_NSEC] = { 1,3,1,3,1,3,1,3,1 };
const int16_T DEN[MWSPT_NSEC][3] = {
  {
     (int16_T)(1*Q_NUM),              0,              0 
  },
  {
     (int16_T)(1*Q_NUM), (int16_T)(1.690624952*Q_NUM), (int16_T)(0.9433159232*Q_NUM) 
  },
  {
     (int16_T)(1*Q_NUM),              0,              0 
  },
  {
     (int16_T)(1*Q_NUM), (int16_T)(1.700703144*Q_NUM), (int16_T)(0.8594093919*Q_NUM) 
  },
  {
     (int16_T)(1*Q_NUM),              0,              0 
  },
  {
     (int16_T)(1*Q_NUM), (int16_T)(1.715894341*Q_NUM), (int16_T)(0.7574751377*Q_NUM) 
  },
  {
     (int16_T)(1*Q_NUM),              0,              0 
  },
  {
     (int16_T)(1*Q_NUM), (int16_T)(1.693609357*Q_NUM), (int16_T)(0.985886097*Q_NUM) 
  },
  {
     (int16_T)(1*Q_NUM),              0,              0 
  }
};