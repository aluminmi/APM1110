SEC1- FA3 CUERDO,N.H.A-FA2
================
Cuerdo, Naomi Hannah A.
2024-02-14

# FA 2

1.  An experiment consists of tossing two fair coins. Use R to simulate
    this experiment 100 times and obtain the relative frequency of each
    possible outcome. Hence, estimate the probability of getting one
    head and one tail in any order.

## Initialization

``` r
num_exp <- 100

# Defining the outcomes
outcomes <- c("HH", "TT", "HT", "TH")

# Initializing the outcome counts
count_outcomes <- c(0, 0, 0, 0)
```

## performing the experiment

``` r
for (i in 1:num_exp) {
  coin1 <- sample(c("H", "T"), 1)
  coin2 <- sample(c("H", "T"), 1)
  
  outcome <- paste(coin1, coin2, sep = "")
  count_outcomes[outcomes == outcome] <- count_outcomes[outcomes == outcome] + 1
}

rel_freq <- count_outcomes / num_exp

# Check if "HT" and "TH" outcomes did not occur and set their relative frequency to 0 if so
if (sum(count_outcomes[outcomes %in% c("HT", "TH")]) == 0) {
  rel_freq[outcomes %in% c("HT", "TH")] <- 0
}
```

## printing the output

``` r
# Print relative frequencies
for (i in 1:length(outcomes)) {
  cat("Relative frequency of outcome", outcomes[i], ":", rel_freq[i], "\n")
}
```

    ## Relative frequency of outcome HH : 0.16 
    ## Relative frequency of outcome TT : 0.33 
    ## Relative frequency of outcome HT : 0.21 
    ## Relative frequency of outcome TH : 0.3

**relative frequency** refers to the proportion of times a particular
outcome happens that is relative to the total number of trials or
occurrences. These should sum up to 1 in decimal or 100% in perentages,
as the represent all the possible outcomes of the events.

``` r
# Calculate the probability of getting one head and one tail in no particular order
prob_onehead_onetail <- sum(rel_freq[outcomes %in% c("HT", "TH")])
print(paste("Estimated probability of getting one head and one tail in no particular order:", prob_onehead_onetail))
```

    ## [1] "Estimated probability of getting one head and one tail in no particular order: 0.51"

This result represents the probability of obtaining one head and one
tail in any order when flipping two coins.

## Figure 1

``` r
#bar plot 
labels <- c("HH (Both Heads)", "TT (Both Tails)", "HT (Head, Tail)", "TH(Tail, Head)")
barplot(rel_freq, names.arg = labels, xlab = "Outcome", ylab = "Relative Frequency", col = "skyblue", main = "Relative Frequency of Outcomes in a Coin Flip")
```

![](CUERDO,-NAOMI-HANNAH-A--FA2_files/figure-gfm/bar%20graph-1.png)<!-- -->

Figure 1 shows the relative frequencies of different outcomes observed
in the simulated coin flips. The x axis represents the different
outcomes observed during the simulation, while the y-axis represents the
relative frequency of each outcome.

Each bar on the graph corresponds to one of the outcomes and the height
responds to the relative frequency of that outcome. From the graph, it
is shown that both tails (TT) is more likely to happen in the
simulation.
