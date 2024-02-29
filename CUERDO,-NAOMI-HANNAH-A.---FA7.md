FA 7
================
Cuerdo, Naomi Hannah A.
2024-02-29

## Number 1

In Example 16.3 with lambda = 4 per minute, use R to obtain:

1)  P(T \< 0.25) = P(time between submissions is at most 15 seconds);

``` r
lambda1 <- 4
```

``` r
prob_a1 <- pexp(0.25, rate = lambda1)
cat("Probability that the time between submisions is at most 15 seconds:", 
    prob_a1, "or", sprintf("%.2f%%", prob_a1 * 100), "\n")
```

    ## Probability that the time between submisions is at most 15 seconds: 0.6321206 or 63.21%

2)  P(T \> 0.5) = P(time between submissions is greater than 30
    seconds);

``` r
prob_b1 <-1 - pexp(0.5, rate = lambda1)
cat("Probability that the time between submisions is greater than 30 seconds:",
    prob_b1,"or", sprintf("%.2f%%", prob_b1 * 100), "\n")
```

    ## Probability that the time between submisions is greater than 30 seconds: 0.1353353 or 13.53%

3)  P(0.25 \< T \< 1) = P(time between submissions is between 15 seconds
    and 1 minute).

``` r
prob_c1 <- pexp(1, rate = lambda1) - pexp(0.25, rate = lambda1)
cat("Probability that the time between submisions is between 15 seconds and 1 minute:",
    prob_c1, "or", sprintf("%.2f%%", prob_c1 * 100), "\n")
```

    ## Probability that the time between submisions is between 15 seconds and 1 minute: 0.3495638 or 34.96%

## Number 3

The average rate of job submissions in a computer center is 2 per
minute. If it can be assumed that the number of submissions per minute
has a Poisson distribution, calculate the probability that:

1)  more than two jobs will arrive in a minute;

``` r
lambda3 <- 2
```

``` r
prob_a3 <- 1 - ppois(2, lambda3)
cat("Probability that more than two jobs will arrive in a minute: ",
    prob_a3, "or", sprintf("%.2f%%", prob_a3 * 100), "\n")
```

    ## Probability that more than two jobs will arrive in a minute:  0.3233236 or 32.33%

2)  at least 30 seconds will elapse between any two jobs;

``` r
prob_b3 <- 1 - pexp(0.5, rate = lambda3/60)
cat("Probability that at least 30 seconds will elapse between any two jobs: ", 
    prob_b3, "or", sprintf("%.2f%%", prob_b3 * 100), "\n")
```

    ## Probability that at least 30 seconds will elapse between any two jobs:  0.9834715 or 98.35%

3)  less than 30 seconds will elapse between jobs;

``` r
prob_c3 <- pexp(0.5, rate = lambda3/60)
cat("Probability that less than 30 seconds will elapse between jobs: ", 
    prob_c3, "or", sprintf("%.2f%%", prob_c3 * 100), "\n")
```

    ## Probability that less than 30 seconds will elapse between jobs:  0.01652855 or 1.65%

4)  a job will arrive in the next 30 seconds, if no jobs have arrived in
    the last 30 seconds.

``` r
prob_d3 <- 1 - pexp(0.5, rate = lambda3/60)
cat("Probability that a job will arrive in the next 30 seconds, 
    if no jobs have arrived in the last 30 seconds:",
    prob_d3,"or", sprintf("%.2f%%", prob_d3 * 100), "\n")
```

    ## Probability that a job will arrive in the next 30 seconds, 
    ##     if no jobs have arrived in the last 30 seconds: 0.9834715 or 98.35%

## Number 7

A website receives an average of 15 visits per hour, which arrive
following a Poisson distribution.

1)  Calculate the probability that at least 10 minutes will elapse
    without a visit.

``` r
lambda7 <- 15
```

``` r
prob_a7 <- 1 - pexp(10, rate = lambda7/60)
cat("probability that at least 10 minutes will elapse without a visit:", 
    prob_a7, "or", sprintf("%.2f%%", prob_a7 * 100),"\n")
```

    ## probability that at least 10 minutes will elapse without a visit: 0.082085 or 8.21%

2)  What is the probability that in any hour, there will be less than
    eight visits?

``` r
prob_b7 <- sum(dpois(0:7, lambda7))
cat(" probability that in any hour, there will be 
    less than eight visits:",
    prob_b7,"or", sprintf("%.2f%%", prob_b7 * 100), "\n")
```

    ##  probability that in any hour, there will be 
    ##     less than eight visits: 0.01800219 or 1.80%

3)  Suppose that 15 minutes have elapsed since the last visit, what is
    the probability that a visit will occur in the next 15 minutes.

``` r
prob_c7 <- 1 - pexp(15, rate = lambda7/60)
cat("probability that a visit will occur in the next 15 minutes:"
    ,prob_c7, "or", sprintf("%.2f%%", prob_c7 * 100), "\n")
```

    ## probability that a visit will occur in the next 15 minutes: 0.02351775 or 2.35%

4)  Calculate the top quartile, and explain what it means.

``` r
top_quartile <- qexp(0.75, rate = lambda7/60)
cat("Top quartile of time between visits:",
    top_quartile,"\n")
```

    ## Top quartile of time between visits: 5.545177

The result of the top quartile, or the 75th percentile, represents the
value in minutes of the time between visits. since the answer of the top
quartile is at 5.545177, we can conclude that 75% of the time intervals
between visits are 5 minutes or less. From here, we can also conclude
that 25% of the time intervals between website visits are longer than 5
minutes.

This means that most of the time, visitors usually do not stay long in a
website.
