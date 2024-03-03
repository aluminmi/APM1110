FA 4
================
Cuerdo, N.H., & Morillo, J.M
2024-03-02

## Question 5

A geospatial analysis system has four sensors supplying images. The
percentage of images supplied by each sensor and the percentage of
images relevant to a query are shown in the following table.

                                      sensor   % img supplied   % relevant img
                                        1             15              50
                                        2             20              60
                                        3             25              80
                                        4             40              85

what is the overall percentage of relevant images?

``` r
sensor <- c(1,2,3,4)
percent_supplied_img <- c(15, 20, 25, 40)
percent_relevant_img <- c(50, 60, 80, 85)

overall_percent <- sum(percent_supplied_img * percent_relevant_img) / 100
```

### Answer

``` r
overall_percent
```

    ## [1] 73.5

## Number 6

A fair coin is tossed twice. Let E, be the event that both tosses have
the same outcome, that is, E, = (HH, TT). Let E, be the event that the
first toss is a head, that is, E2 = (HH, HT). Let Ez be the event that
the second toss is a head, that is, Ez = (TH, HH). Show that E1, E2, and
E3 are pairwise independent but not mutually independent.

``` r
sample_space <- c("HH", "TT", "TH", "TT")

E1 <- c("HH", "TT")
E2 <- c("HH", "HT")
E3 <- c("TH", "HH")

prob_E1 <- length(E1) / length(sample_space)
prob_E2 <- length(E2) / length(sample_space)
prob_E3 <- length(E3) / length(sample_space)

prob_E1E2 <- length(intersect(E1, E2)) / length(sample_space)
prob_E1E3 <- length(intersect(E1, E3)) / length(sample_space)
prob_E2E3 <- length(intersect(E2, E3)) / length(sample_space)

pairwise_independent <- prob_E1E2 == prob_E1 * prob_E2 && prob_E1E3 == prob_E1 * prob_E3 && prob_E2E3 == prob_E2 * prob_E3

prob_joint  <- length(intersect(intersect(E1, E2), E3)) / length(sample_space)

mutually_independent <- prob_joint == prob_E1 * prob_E2 * prob_E3
```

### Result of pairwise independent:

``` r
pairwise_independent
```

    ## [1] TRUE

### Result of mutually independent.

``` r
mutually_independent
```

    ## [1] FALSE

Therefore, from the results, E1, E2, and E3 are pairwise independent but
not mutually independent.
