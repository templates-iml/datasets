biopsy

R Documentation

##  Biopsy Data on Breast Cancer Patients

### Description

This breast cancer database was obtained from the University of Wisconsin
Hospitals, Madison from Dr. William H. Wolberg. He assessed biopsies of breast
tumours for 699 patients up to 15 July 1992; each of nine attributes has been
scored on a scale of 1 to 10, and the outcome is also known. There are 699
rows and 11 columns.

### Usage

    
    biopsy

### Format

This data frame contains the following columns:

`ID`

sample code number (not unique).

`V1`

clump thickness.

`V2`

uniformity of cell size.

`V3`

uniformity of cell shape.

`V4`

marginal adhesion.

`V5`

single epithelial cell size.

`V6`

bare nuclei (16 values are missing).

`V7`

bland chromatin.

`V8`

normal nucleoli.

`V9`

mitoses.

`class`

`"benign"` or `"malignant"`.

### Source

P. M. Murphy and D. W. Aha (1992). UCI Repository of machine learning
databases. [Machine-readable data repository]. Irvine, CA: University of
California, Department of Information and Computer Science.

O. L. Mangasarian and W. H. Wolberg (1990) Cancer diagnosis via linear
programming. _SIAM News_ **23**, pp 1 & 18.

William H. Wolberg and O.L. Mangasarian (1990) Multisurface method of pattern
separation for medical diagnosis applied to breast cytology. _Proceedings of
the National Academy of Sciences, U.S.A._ **87**, pp. 9193–9196.

O. L. Mangasarian, R. Setiono and W.H. Wolberg (1990) Pattern recognition via
linear programming: Theory and application to medical diagnosis. In _Large-
scale Numerical Optimization_ eds Thomas F. Coleman and Yuying Li, SIAM
Publications, Philadelphia, pp 22–30.

K. P. Bennett and O. L. Mangasarian (1992) Robust linear programming
discrimination of two linearly inseparable sets. _Optimization Methods and
Software_ **1**, pp. 23–34 (Gordon & Breach Science Publishers).

### References

Venables, W. N. and Ripley, B. D. (1999) _Modern Applied Statistics with
S-PLUS._ Third Edition. Springer.

