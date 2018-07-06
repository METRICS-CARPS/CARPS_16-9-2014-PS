 
** Re-creating analyses from Axt, Ebersole and Nosek (2014): Study 1

** Selecting only American citizens or residents with less than 10% of responses being too fast

USE ALL.
COMPUTE filter_$=((AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1).
VARIABLE LABELS filter_$ '(AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

** Recreating Table 1

USE ALL.
COMPUTE filter_$=((AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1).
VARIABLE LABELS filter_$ '(AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SORT CASES  BY Race.
SPLIT FILE LAYERED BY Race.

DESCRIPTIVES VARIABLES=WhiteImplicit BlackImplicit AsianImplicit HispImplicit
  /STATISTICS=MEAN STDDEV.

Split file off.

** Recreating Table 2

USE ALL.
COMPUTE filter_$=((AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1).
VARIABLE LABELS filter_$ '(AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SORT CASES  BY Race.
SPLIT FILE LAYERED BY Race.

T-TEST PAIRS=WhiteImplicit WhiteImplicit WhiteImplicit BlackImplicit AsianImplicit BlackImplicit 
    WITH AsianImplicit BlackImplicit HispImplicit AsianImplicit HispImplicit HispImplicit (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

Split file off.

** Recreating Table S1

USE ALL.
COMPUTE filter_$=((AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1).
VARIABLE LABELS filter_$ '(AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SORT CASES  BY Race.
SPLIT FILE LAYERED BY Race.

DESCRIPTIVES VARIABLES=WhiteExplicit BlackExplicit AsianExplicit HispanicExplicit
  /STATISTICS=MEAN STDDEV.

split file off.

** Recreating Table S2

USE ALL.
COMPUTE filter_$=((AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1).
VARIABLE LABELS filter_$ '(AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SORT CASES  BY Race.
SPLIT FILE LAYERED BY Race.

T-TEST PAIRS=WhiteExplicit WhiteExplicit WhiteExplicit BlackExplicit AsianExplicit BlackExplicit 
    WITH AsianExplicit BlackExplicit HispanicExplicit AsianExplicit HispanicExplicit HispanicExplicit 
    (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

split file off.

** Recreating Table S3

USE ALL.
COMPUTE filter_$=(TooFastPct<.1).
VARIABLE LABELS filter_$ '(AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SORT CASES  BY Race.
SPLIT FILE LAYERED BY Race.

DESCRIPTIVES VARIABLES=WhiteImplicit BlackImplicit AsianImplicit HispImplicit
  /STATISTICS=MEAN STDDEV.

Split file off.

** Recreating Table S4

USE ALL.
COMPUTE filter_$=(TooFastPct<.1).
VARIABLE LABELS filter_$ '(AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SORT CASES  BY Race.
SPLIT FILE LAYERED BY Race.

T-TEST PAIRS=WhiteImplicit WhiteImplicit WhiteImplicit BlackImplicit AsianImplicit BlackImplicit 
    WITH AsianImplicit BlackImplicit HispImplicit AsianImplicit HispImplicit HispImplicit (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

Split file off.

** Recreating Table S5

USE ALL.
COMPUTE filter_$=(TooFastPct<.1).
VARIABLE LABELS filter_$ '(AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SORT CASES  BY Race.
SPLIT FILE LAYERED BY Race.

DESCRIPTIVES VARIABLES=WhiteExplicit BlackExplicit AsianExplicit HispanicExplicit
  /STATISTICS=MEAN STDDEV.

split file off.

** Recreating Table S6

USE ALL.
COMPUTE filter_$=(TooFastPct<.1).
VARIABLE LABELS filter_$ '(AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SORT CASES  BY Race.
SPLIT FILE LAYERED BY Race.

T-TEST PAIRS=WhiteExplicit WhiteExplicit WhiteExplicit BlackExplicit AsianExplicit BlackExplicit 
    WITH AsianExplicit BlackExplicit HispanicExplicit AsianExplicit HispanicExplicit HispanicExplicit 
    (PAIRED)
  /CRITERIA=CI(.9500)
  /MISSING=ANALYSIS.

split file off.

** Recreating Table S7

USE ALL.
COMPUTE filter_$=((AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1).
VARIABLE LABELS filter_$ '(AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SORT CASES  BY Race.
SPLIT FILE LAYERED BY Race.

DESCRIPTIVES VARIABLES=WhitevsAsianBIAT WhitevsHispanicBIAT WhitevsBlackBIAT AsianvsHispanicBIAT 
    AsianvsBlackBIAT HispanicvsBlackBIAT
  /STATISTICS=MEAN STDDEV.

split file off.

** Recreating Table S8

USE ALL.
COMPUTE filter_$=((AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1).
VARIABLE LABELS filter_$ '(AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

SORT CASES  BY Race.
SPLIT FILE LAYERED BY Race.

DESCRIPTIVES VARIABLES=WhitevsAsianExp WhitevsHispanicExp WhitevsBlackExp AsianvsBlackExp 
    AsianvsHispanicExp BlackvsHispanicExp
  /STATISTICS=MEAN STDDEV.

split file off.

** Recreating Table S10

USE ALL.
COMPUTE filter_$=((AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1).
VARIABLE LABELS filter_$ '(AmericanCitizen=1 OR AmericanResidence=1)  & TooFastPct<.1 (FILTER)'.
VALUE LABELS filter_$ 0 'Not Selected' 1 'Selected'.
FORMATS filter_$ (f1.0).
FILTER BY filter_$.
EXECUTE.

CORRELATIONS
  /VARIABLES=WhiteExplicit WhiteImplicit
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

CORRELATIONS
  /VARIABLES=AsianExplicit AsianImplicit
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

CORRELATIONS
  /VARIABLES=BlackExplicit BlackImplicit
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.

CORRELATIONS
  /VARIABLES=HispanicExplicit HispImplicit
  /PRINT=TWOTAIL NOSIG
  /MISSING=PAIRWISE.



