num_exp <- 100

# Define possible outcomes
outcomes <- c("HH", "TT", "HT", "TH")

# Initialize outcome counts correctly using '<-'
count_outcomes <- c(0, 0, 0, 0)

# Simulate experiments
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

# Print relative frequencies
for (i in 1:length(outcomes)) {
  cat("Relative frequency of outcome", outcomes[i], ":", rel_freq[i], "\n")
}

# Calculate the probability of getting one head and one tail in no particular order
prob_onehead_onetail <- sum(rel_freq[outcomes %in% c("HT", "TH")])
print(paste("Estimated probability of getting one head and one tail in no particular order:", prob_onehead_onetail))
