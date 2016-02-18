epi

R Documentation

## Eysenck Personality Inventory (EPI) data for 3570 participants

### Description

The EPI is and has been a very frequently administered personality test with
57 measuring two broad dimensions, Extraversion-Introversion and Stability-
Neuroticism, with an additional Lie scale. Developed by Eysenck and Eysenck,
1964. Eventually replaced with the EPQ which measures three broad dimensions.
This data set represents 3570 observations collected in the early 1990s at the
Personality, Motivation and Cognition lab at Northwestern. The data are
included here as demonstration of scale construction.

### Usage

    data(epi)
    data(epi.dictionary)

### Format

A data frame with 3570 observations on the following 57 variables.

Variable|Type|Content
--
V1|Numeric vector|Do you often long for excitement?
V2|Numeric vector|Do you often need understanding friends to cheer you up?
V3|Numeric vector|Are you usually carefree?
V4|Numeric vector|Do you find it very hard to take no for an answer?
V5|Numeric vector|Do you stop and think things over before doing anything?
V6|Numeric vector|If you say you will do something do you always keep your promise,no matter how inconvenient it might be to do so?
V7|Numeric vector|Do your moods go up and down?
V8|Numeric vector|Do you generally do and say things quickly without stopping to think?
V9|Numeric vector|Do you ever feel just miserable for no good reason?
V10|Numeric vector|Would you do almost anything for a dare?
V11|Numeric vector|Do you suddenly feel shy when you want to talk to an attractive stranger?
V12|Numeric vector|Once in a while do you lose your temper and get angry?
V13|Numeric vector|Do you often do things on the spur of the moment?
V14|Numeric vector|Do you often worry about things you should have done or said?
V15|Numeric vector|Generally do you prefer reading to meeting people?
V16|Numeric vector|Are your feelings rather easily hurt?
V17|Numeric vector|Do you like going out a lot?
V18|Numeric vector|Do you occasionally have thoughts and ideas that you would not like otherpeople to know about?
V19|Numeric vector|Are you sometimes bubbling over with energy and sometimes very sluggish?
V20|Numeric vector|Do you prefer to have few but special friends?
V21|Numeric vector|Do you daydream a lot?
V22|Numeric vector|When people shout at you do you shout back?
V23|Numeric vector|Are you often troubled about feelings of guilt?
V24|Numeric vector|Are all your habits good and desirable ones?
V25|Numeric vector|Can you usually let yourself go and enjoy yourself a lot at a lively party?
V26|Numeric vector|Would you call yourself tense or highly strung?
V27|Numeric vector|Do other people think of you as being very lively?
V28|Numeric vector|After you have done something important, do you come away feelingyou could have done better?
V29|Numeric vector|Are you mostly quiet when you are with other people?
V30|Numeric vector|Do you sometimes gossip?
V31|Numeric vector|Do ideas run through your head so that you cannot sleep?
V32|Numeric vector|If there is something you want to know about, would you rather look it upin a book than talk to someone about it?
V33|Numeric vector|Do you get palpitations or thumping in your hear?
V34|Numeric vector|Do you like the kind of work that you need to pay close attention to?
V35|Numeric vector|Do you get attacks of shaking or trembling?
V36|Numeric vector|Would you always declare everything at customs, even if you knewyou could never be found out?
V37|Numeric vector|Do you hate being with a crowd who play jokes on one another?
V38|Numeric vector|Are you an irritable person?
V39|Numeric vector|Do you like doing things in which you have to act quickly?
V40|Numeric vector|Do you worry about awful things that might happen?
V41|Numeric vector|Are you slow and unhurried in the way you move?
V42|Numeric vector|Have you ever been late for an appointment or work?
V43|Numeric vector|Do you have many nightmares?
V44|Numeric vector|Do you like talking to people so much that you never miss a chance of talking to a stranger?
V45|Numeric vector|Are you troubled by aches and pains?
V46|Numeric vector|Would you be very unhappy if you could not see lots of people most of the time?
V47|Numeric vector|Would you call yourself a nervous person?
V48|Numeric vector|Of all the people you know, are there some whom you definitely do not like?
V49|Numeric vector|Would you say that you were fairly self-confident?
V50|Numeric vector|Are you easily hurt when people find fault with you or your work?
V51|Numeric vector|Do you find it hard to really enjoy yourself at a lively party?
V52|Numeric vector|Are you troubled by feelings of inferiority?
V53|Numeric vector|Can you easily get some life into a dull party?
V54|Numeric vector|Do you sometimes talk about things you know nothing about?
V55|Numeric vector|Do you worry about your health?
V56|Numeric vector|Do you like playing pranks on others?
V57|Numeric vector|Do you suffer from sleeplessness?

### Details

The original data were collected in a group testing framework for screening
participants for subsequent studies. The participants were enrolled in an
introductory psychology class between Fall, 1991 and Spring, 1995.

The structure of the E scale has been shown by Revelle and Rocklin to have two
subcomponents, Impulsivity and Sociability. These were subsequently used by
Revelle, Humphreys, Simon and Gilliland to examine the relationship between
personality, caffeine induced arousal, and cognitive performance.

### Source

Data from the PMC laboratory at Northwestern.

### References

Eysenck, H.J. and Eysenck, S. B.G. (1968). Manual for the Eysenck Personality
Inventory.Educational and Industrial Testing Service, San Diego, CA.

### Examples

    
    data(epi)
    epi.keys <- make.keys(epi,list(E = c(1, 3, -5, 8, 10, 13, -15, 17, -20, 22, 25, 27,
                    -29, -32, -34, -37, 39, -41, 44, 46, 49, -51, 53, 56),
       N=c(2, 4, 7, 9, 11, 14, 16, 19, 21, 23, 26, 28, 31, 33, 35, 38, 40,
         43, 45, 47, 50, 52, 55, 57),
       L = c(6, -12, -18, 24, -30, 36, -42, -48, -54),
       I =c(1, 3, -5, 8, 10, 13, 22, 39, -41), 
       S = c(-11, -15, 17, -20, 25, 27, -29, -32, -37, 44, 46, -51, 53)))
    scores <- scoreItems(epi.keys,epi)
      N <- epi[abs(epi.keys[,"N"]) >0]
      E <- epi[abs(epi.keys[,"E"]) >0]
      fa.lookup(epi.keys[,1:3],epi.dictionary) #show the items and keying information

