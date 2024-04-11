FA 8
================
Cuerdo, Naomi Hannah A.
2024-04-11

## Number 1

An analogue signal received at a detector, measured in microvolts, is
normally distributed with mean of 200 and variance of 256.

``` r
mean <- 200
variance <- 256
sd_signal <- sqrt(variance)
```

1)  What is the probability that the signal will exceed 224 µV?

``` r
prob_a <- 1 - pnorm(224, mean, sd_signal)
```

2)  What is the probability that it will be between 186 and 224 µV?

``` r
prob_b <- pnorm(224, mean, sd_signal) - pnorm(186, mean, sd_signal)
```

3)  What is the micro voltage below which 25% of the signals will be?

``` r
prob_c <- qnorm(0.25, mean, sd_signal)
```

4)  What is the probability that the signal will be less than 240 µV,
    given that it is larger than 210 µV?

``` r
prob_d <- pnorm(240, mean, sd_signal) - pnorm(210, mean, sd_signal)
```

5)  Estimate the interquartile range.

``` r
interquartileRange <- qnorm(c(0.25, 0.75), mean, sd_signal)
```

6)  What is the probability that the signal will be less than 220 µV,
    given that it is larger than 210 µV?

``` r
prob_f <- pnorm(220, mean, sd_signal) - pnorm(210, mean, sd_signal)
```

7)  If we know that a received signal is greater than 200 µV, what is
    the probability that it is in fact greater than 220 µV?

``` r
prob_g <- 1 - pnorm(220, mean, sd_signal)
```

### results

``` r
cat("a. Probability that the signal will exceed 224 µV:", prob_a, "\n")
```

    ## a. Probability that the signal will exceed 224 µV: 0.0668072

``` r
cat("b. Probability that the signal will will be between 186 and 224 µV:", prob_b, "\n")
```

    ## b. Probability that the signal will will be between 186 and 224 µV: 0.7424058

``` r
cat("c. Micro voltage below 25% of the signals will be:", prob_c, "\n")
```

    ## c. Micro voltage below 25% of the signals will be: 189.2082

``` r
cat("d. Probability that the signal will be less than 240 µV:", prob_d, "\n")
```

    ## d. Probability that the signal will be less than 240 µV: 0.2597759

``` r
cat("e. Estimated interquartile range:", interquartileRange, "\n")
```

    ## e. Estimated interquartile range: 189.2082 210.7918

``` r
cat("f. Probability that the signal will be less than 220 µV but larger than 210 µV:", prob_f, "\n")
```

    ## f. Probability that the signal will be less than 220 µV but larger than 210 µV: 0.1603358

``` r
cat("f. Probability that a received signal is greater than 200 µV but greater than 220 µV:", prob_f, "\n")
```

    ## f. Probability that a received signal is greater than 200 µV but greater than 220 µV: 0.1603358

## Number 2

A manufacturer of a particular type of computer system is interested in
improving its customer support services. As a first step, its marketing
department has been charged with the responsibility of summarizing the
extent of customer problems in terms of system failures. Over a period
of six months, customers were surveyed and the amount of downtime (in
minutes) due to system failures they had experienced during the previous
month was collected. The average downtime was found to be 25 minutes and
a variance of 144. If it can be assumed that downtime is normally
distributed:

``` r
mean_two <- 25
variance_two <- 144
sd_two <- sqrt(variance_two)
```

1)  obtain bounds which will include 95% of the downtime of all the
    customers;

``` r
two_a <- qnorm(0.95, mean_two, sd_two)
```

2)  obtain the bound above which 10% of the downtime is included.

``` r
two_b <-qnorm(0.10, mean_two, sd_two, lower.tail = FALSE)
```

### Results

``` r
cat("a.bound which will include 95% of the downtime of all the customers:", two_a, "\n")
```

    ## a.bound which will include 95% of the downtime of all the customers: 44.73824

``` r
cat("a.bound bound above which 10% of the downtime is included:", two_a, "\n")
```

    ## a.bound bound above which 10% of the downtime is included: 44.73824
