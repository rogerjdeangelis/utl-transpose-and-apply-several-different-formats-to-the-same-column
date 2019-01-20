Transpose and apply several different formats to the same column

github
https://tinyurl.com/y77y4s3f
https://github.com/rogerjdeangelis/utl-transpose-and-apply-several-different-formats-to-the-same-column

SAS Forum
https://tinyurl.com/y9na52jt
https://communities.sas.com/t5/SAS-Programming/How-to-handle-different-date-formats-when-I-transpose-a-table/m-p/528456

Alea Iacta (gather macro)
https://github.com/clindocu/sas-macros-r-functions
Also take a look at str2(gather2) macro

macros
https://tinyurl.com/y9nfugth
https://github.com/rogerjdeangelis/utl-macros-used-in-many-of-rogerjdeangelis-repositories

INPUT
=====

Data have;
     var1 = 20165;
     var2 = 20165;
     var3 = 20165;
     format var1 date7. var2 date9. var3 date11.;
run;quit;

 WORK.HAVE total obs=1 (VARS are numeric)

   VAR1        VAR2          VAR3

  18MAR15    18MAR2015    18-MAR-2015


 VARIABLES in Creation Order

  Variable    Type    Len    Format

  VAR1        Num       8    DATE7.
  VAR2        Num       8    DATE9.
  VAR3        Num       8    DATE11.

EXAMPLE OUTPUT
--------------

 WORK.HAVXPO total obs=3

   VAR     VAL            _COLFORMAT    _COLTYP

   VAR1    18MAR15         DATE7.          N
   VAR2    18MAR2015       DATE9.          N
   VAR3    18-MAR-2015     DATE11.         N


PROCESS
========

%utl_gather(have,var,val,,havXpo,valformat=$16.,withformats=Y);


OUTPUT
======
see above

