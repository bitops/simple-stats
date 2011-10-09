A little script I wrote to generate some simple statistics based on a list of integers.

## Disclaimer

I am not a trained statistician so the explanation of the statistics in the script may not be accurate. If you see something that looks incorrect or could be explained better, please please please fork the script, fix it and send me a pull request.

I put this script up because I hope it can help some folks get some numbers that are easy to understand and begin to gain an interest in statistics and analyis.

## Explanation of the different statistics

**N** = total number of observations. The more the better, as larger sample size provides more reliable results. This comes from the Central Limit Theorem.

**Min** = smallest observation in the total set of observations.

**Max** = largest observations in the total set of observations.

**Mean** = average.

**Median** = the "middle" observation. If this is very different from the mean, it indicates that outliers are skewing the data set.

**Std. Dev** = Standard Deviation. One standard deviation on either side of the mean encompasses 68% of the data set. Two deviations encompasses 95%. Three deviations captures 99% of the data set. 

**Skew** = describes the overall shape of the data on either side of the mean. A value of zero implies symmetrical distribution. A negative value indicates that the data tends to be distributed more heavily on the right side of the mean (possibly including the median). A positive value indicates that the data tends to be distributed more heavily on the left side of the mean (possibly including the median).

**Kurtosis** = a little tricky to understand. From Wikipedia: *"Higher kurtosis means more of the variance is the result of infrequent extreme deviations, as opposed to frequent modestly sized deviations".*

Or, said differently: high kurtosis means that more of the noise in the data is coming from extreme outliers which do not happen very often. Whereas lower kurtosis implies that, while there is noise in the data, it is happening more frequently. (And so might not even be noise but a story unto itself).

**Notes on skew and kurtosis:**

It's important to understand that skew and kurtosis are there to help you understand and interpret your data, they do not provide answers by themselves. *There is no substitute for good data and an even better understanding of that data!*

If skew is negative, that just means that there's more data on the right side of the mean than the left. That's all it means though! It's up to the person running the program to understand whether or not this is desirable, and what story the data is telling you.

Similarly, a high kurtosis is not *"bad"* or *"good"*, it just depends on what you are trying to understand. It might be a good thing if kurtosis is high, because you are observing a scenario where, every once in a while, there's an extreme outlier, but you're okay adjusting for that.


## License

**THE BEER-WARE LICENSE**

Sebastian Wittenkamp wrote this file. As long as you retain this notice you
can do whatever you want with this stuff. If we meet some day, and you think
this stuff is worth it, you can buy me a beer in return.

