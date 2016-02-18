crimtab

R Documentation

## Student's 3000 Criminals Data

### Description

Data of 3000 male criminals over 20 years old undergoing their sentences in
the chief prisons of England and Wales.

### Usage

    crimtab

### Format

A `table` object of `integer` counts, of dimension _42 * 22_ with a total
count, `sum(crimtab)` of 3000\.

The 42 `rownames` (`"9.4"`, `"9.5"`, ...) correspond to midpoints of intervals
of finger lengths whereas the 22 column names (`colnames`) (`"142.24"`,
`"144.78"`, ...) correspond to (body) heights of 3000 criminals, see also
below.

### Details

Student is the pseudonym of William Sealy Gosset. In his 1908 paper he wrote
(on page 13) at the beginning of section VI entitled _Practical Test of the
forgoing Equations_:

“Before I had succeeded in solving my problem analytically, I had endeavoured
to do so empirically. The material used was a correlation table containing the
height and left middle finger measurements of 3000 criminals, from a paper by
W. R. MacDonell (_Biometrika_, Vol. I., p. 219). The measurements were written
out on 3000 pieces of cardboard, which were then very thoroughly shuffled and
drawn at random. As each card was drawn its numbers were written down in a
book, which thus contains the measurements of 3000 criminals in a random
order. Finally, each consecutive set of 4 was taken as a sample—750 in all—and
the mean, standard deviation, and correlation of each sample determined. The
difference between the mean of each sample and the mean of the population was
then divided by the standard deviation of the sample, giving us the _z_ of
Section III.”

The table is in fact page 216 and not page 219 in MacDonell(1902). In the
MacDonell table, the middle finger lengths were given in mm and the heights in
feet/inches intervals, they are both converted into cm here. The midpoints of
intervals were used, e.g., where MacDonell has _4' 7''9/16 -- 8''9/16_, we
have 142.24 which is 2.54*56 = 2.54*(_4' 8''_).

MacDonell credited the source of data (page 178) as follows: _The data on
which the memoir is based were obtained, through the kindness of Dr Garson,
from the Central Metric Office, New Scotland Yard..._ He pointed out on page
179 that : _The forms were drawn at random from the mass on the office
shelves; we are therefore dealing with a random sampling._

### Source

<http://pbil.univ-lyon1.fr/R/donnees/criminals1902.txt> thanks to Jean R.
Lobry and Anne-Béatrice Dufour.

### References

Garson, J.G. (1900) The metric system of identification of criminals, as used
in in Great Britain and Ireland. _The Journal of the Anthropological Institute
of Great Britain and Ireland_ **30**, 161–198.

MacDonell, W.R. (1902) On criminal anthropometry and the identification of
criminals. _Biometrika_ **1**, 2, 177–227.

Student (1908) The probable error of a mean. _Biometrika_ **6**, 1–25.

### Examples

    
    require(stats)
    dim(crimtab)
    utils::str(crimtab)
    ## for nicer printing:
    local({cT <- crimtab
           colnames(cT) <- substring(colnames(cT), 2, 3)
           print(cT, zero.print = " ")
    })
    
    ## Repeat Student's experiment:
    
    # 1) Reconstitute 3000 raw data for heights in inches and rounded to
    #    nearest integer as in Student's paper:
    
    (heIn <- round(as.numeric(colnames(crimtab)) / 2.54))
    d.hei <- data.frame(height = rep(heIn, colSums(crimtab)))
    
    # 2) shuffle the data:
    
    set.seed(1)
    d.hei <- d.hei[sample(1:3000), , drop = FALSE]
    
    # 3) Make 750 samples each of size 4:
    
    d.hei$sample <- as.factor(rep(1:750, each = 4))
    
    # 4) Compute the means and standard deviations (n) for the 750 samples:
    
    h.mean <- with(d.hei, tapply(height, sample, FUN = mean))
    h.sd   <- with(d.hei, tapply(height, sample, FUN = sd)) * sqrt(3/4)
    
    # 5) Compute the difference between the mean of each sample and
    #    the mean of the population and then divide by the
    #    standard deviation of the sample:
    
    zobs <- (h.mean - mean(d.hei[,"height"]))/h.sd
    
    # 6) Replace infinite values by +/- 6 as in Student's paper:
    
    zobs[infZ <- is.infinite(zobs)] # 3 of them
    zobs[infZ] <- 6 * sign(zobs[infZ])
    
    # 7) Plot the distribution:
    
    require(grDevices); require(graphics)
    hist(x = zobs, probability = TRUE, xlab = "Student's z",
         col = grey(0.8), border = grey(0.5),
         main = "Distribution of Student's z score  for 'crimtab' data")
