Saxony

R Documentation

## Families in Saxony

### Description

Data from Geissler, cited in Sokal & Rohlf (1969) and Lindsey (1995) on gender
distributions in families in Saxony in the 19th century.

### Usage

    
    data("Saxony")

### Format

A 1-way table giving the number of male children in 6115 families of size 12.
The variable and its levels are

No

Name

Levels

1

nMales

0, 1, ..., 12

### Source

M. Friendly (2000), Visualizing Categorical Data, pages 40–42.

### References

J. K. Lindsey (1995), _Analysis of Frequency and Count Data_. Oxford
University Press, Oxford, UK.

R. R. Sokal & F. J. Rohlf (1969), _Biometry. The Principles and Practice of
Statistics_. W. H. Freeman, San Francisco, CA.

M. Friendly (2000), _Visualizing Categorical Data_. SAS Institute, Cary, NC.

### Examples

    
    data("Saxony")
    gf <- goodfit(Saxony, type = "binomial")
    summary(gf)
    plot(gf)

