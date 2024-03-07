FA5
================
MORILLO, JADE MARCO S. & CUERDO, NAOMI HANNAH
2024-03-03

## Example 6

An email message can travel through one of three server routes. The
percentage of errors in each of the servers and the percentage of
messages that travel through each route are shown in the following
table. Assume that the servers are independent.
<pre>               Percentage of Messages        Percentage of Errors
server 1                40                             1
server 2                25                             2
server 3                35                            1.5</pre>

``` r
mess_ser1 <- 40
err_ser1 <- 1

mess_ser2 <- 25
err_ser2 <- 2

mess_ser3 <- 35
err_ser3 <- 1.5

probability_err_ser1 <- err_ser1 / 100
probability_err_ser2 <- err_ser2 / 100
probability_err_ser3 <- err_ser3 / 100

probability_route1 <- probability_err_ser1 * (mess_ser1 / 100)
probability_route2 <- probability_err_ser2 * (mess_ser2 / 100)
probability_route3 <- probability_err_ser3 * (mess_ser3 / 100)

cat("Probability of errors for Route 1:", probability_route1, "\n")
```

    ## Probability of errors for Route 1: 0.004

``` r
cat("Probability of errors for Route 2:", probability_route2, "\n")
```

    ## Probability of errors for Route 2: 0.005

``` r
cat("Probability of errors for Route 3:", probability_route3, "\n")
```

    ## Probability of errors for Route 3: 0.00525

## Example 9

A software company surveyed managers to determine the probability that
they would buy a new graphics package that includes three-dimensional
graphics. About 20% of office managers were certain that they would not
buy the package, 70% claimed that they would buy, and the others were
undecided. Of those who said that they would not buy the package, only
10% said that they were interested in upgrading their computer hardware.
Of those interested in buying the graphics package, 40% were also
interested in upgrading their computer hardware, Of those undecided, 20%
were interested in upgrading their computer hardware.

Let A denote the intention of not buying, B the intention of buying, C
the undecided, and G the intention of upgrading the computer hardware.

3)  Construct a tree diagram and use it to calculate the following
    probabilities: P(G), P(B\|G), P(B\|Gbar), P(C\|G), P(Cbar\|Gbar)

``` r
#Given probabilities
prob_A <- 0.20 #not buying the package
prob_B <- 0.70 # buying the package
prob_C <- 1 - (0.20 +0.70) # undecided

#probability of upgrading computer hardware 
PG_A <- 0.10 #interested in upgrading computer hardware but will not buy the package
PG_B <- 0.4 #interested in upgrading computer hardware and buying the package
PG_C <- 0.2 #interested in upgrading their computer hardware but not buying

# P(G)
P_G <- prob_A * PG_A + prob_B * PG_B + prob_C * PG_C
cat("P(G): ", P_G, "\n")
```

    ## P(G):  0.32

1)  Calculate the probability that a manager chosen at random will not
    upgrade the computer hardware (P(Gbar)).

``` r
PG_bar <- 1-P_G
cat("P(Ḡ): ", PG_bar, "\n")
```

    ## P(Ḡ):  0.68

2)  Explain what is meant by the posterior probability of B given G,
    P(B\|G).

``` r
P_BandG <- prob_B * PG_B
P_BgivenG <- P_BandG / P_G
cat("P(B|G): ", P_BgivenG)
```

    ## P(B|G):  0.875

3)  Construct a tree diagram and use it to calculate the following
    probabilities: P(G), P(B\|G), P(B\|Gbar), P(C\|G), P(Cbar\|Gbar)

``` r
P_CandG <- prob_C * PG_C
P_CgivenG <- P_CandG / P_G
cat("P(C|G): ", P_CgivenG)
```

    ## P(C|G):  0.0625

### tree diagram

``` r
library(webshot2)
```

    ## Warning: package 'webshot2' was built under R version 4.3.3

``` r
library(data.tree)
```

    ## Warning: package 'data.tree' was built under R version 4.3.3

``` r
root <- Node$new("Manager")

not_buying <- root$AddChild("Not Buying (0.20)")
buying <- root$AddChild("Buying (0.70)")
undecided <- root$AddChild("Undecided (0.10)")

buying$AddChild("Interested in upgrading (0.40)")

plot(root)
```

![](CUERDO-NAOMI-HANNAH-A.-MORILLO-JADE-MARCO-S.-FA5_files/figure-gfm/9tree%201-1.png)<!-- -->

## Example 13

A malicious spyware can infect a computer system through the Internet or
through email. The spyware comes through the Internet 70% of the time
and 30% of the time, it gets in through email. If it enters via the
Internet the anti-virus detector will detect it with probability 0.6,
and via email, it is detected with probability 0.8.

1)  What is the probability that this spyware infects the system?
2)  If the spyware is detected, what is the probability that it came
    through the Internet?

``` r
# Given probabilities
P_I <- 0.7
P_E <- 0.3
P_D_given_I <- 0.6
P_D_given_E <- 0.8

# (a) Probability that the spyware infects the system
P_Infection <- P_I * (1 - P_D_given_I) + P_E * (1 - P_D_given_E)

# (b) Probability that it came through the Internet given that it was detected
P_I_given_D <- (P_I * P_D_given_I) / P_Infection

# Displaying the results
cat("Probability that the spyware infects the system:", P_Infection, "\n")
```

    ## Probability that the spyware infects the system: 0.34

``` r
cat("Probability that it came through the Internet given that it was detected:", P_I_given_D, "\n")
```

    ## Probability that it came through the Internet given that it was detected: 1.235294
