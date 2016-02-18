PatentsHGH

R Documentation

## Dynamic Relation Between Patents and R\&D

### Description

a panel of 346 observations from 1975 to 1979

_number of observations_ : 1730

_observation_ : production units

_country_ : United States

### Usage

    data(PatentsHGH)

### Format

A dataframe containing :

obsno

firm index

year

year

cusip

Compustat's identifying number for the firm (Committee on Uniform Security
Identification Procedures number)

ardsic

a two-digit code for the applied R&D industrial classification (roughly that
in Bound, Cummins, Griliches, Hall, and Jaffe, in the Griliches R&D, Patents,
and Productivity volume)

scisect

is the firm in the scientific sector ?

logk

the logarithm of the book value of capital in 1972.

sumpat

the sum of patents applied for between 1972-1979.

logr

the logarithm of R&D spending during the year (in 1972 dollars)

logr1

the logarithm of R&D spending (one year lag)

logr2

the logarithm of R&D spending (two years lag)

logr3

the logarithm of R&D spending (three years lag)

logr4

the logarithm of R&D spending (four years lag)

logr5

the logarithm of R&D spending (five years lag)

pat

the number of patents applied for during the year that were eventually granted

pat1

the number of patents (one year lag)

pat2

the number of patents (two years lag)

pat3

the number of patents (three years lag)

pat4

the number of patents (four years lag)

### Source

Hall, Bronwyn , Zvi Griliches and Jerry Hausman (1986) “Patents and R&D: Is
There a Lag?”, _International Economic Review_, **27**, 265-283.

### References

Cameron, A.C. and Trivedi P.K. (1998) _Regression analysis of count data_,
Cambridge University Press,
<http://cameron.econ.ucdavis.edu/racd/racddata.html>, chapter 9.

Cameron, A.C. and P.K. Trivedi (2005) _Microeconometrics : methods and
applications_, Cambridge, pp. 792–5.

### See Also

`Index.Source`, `Index.Economics`, `Index.Econometrics`, `Index.Observations`,

`Index.Time.Series`

