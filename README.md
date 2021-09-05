A little script I wrote to generate some simple statistics based on a list of integers.

## Disclaimer

I am not a trained statistician, though I have done coursework in both statistics and SAS. 
That said, the explanation of the statistics in the script may not be completely accurate. 
If you see something that looks incorrect, or could be explained better, please send me a pull request.

I put this script up because I hope it can help people get some numbers that are easy to 
understand.

## Explanation of the different statistics

**N** = total number of observations. (An observation is the same as a data point). The more 
the better, as larger sample size provides more reliable results. This comes from the Central 
Limit Theorem.

**Min** = smallest observation in the total set of observations.

**Max** = largest observations in the total set of observations.

**Mean** = average.

**Median** = the "middle" observation. If this is very different from the mean, it could potentially 
indicate the presence of outliers in the data set. If the delta between mean and median is very large,
it usually merits further investigation.

**Std. Dev** = Standard Deviation. One standard deviation on either side of the mean encompasses 68% of 
the data set. Two deviations encompasses 95%. Three deviations captures 99% of the data set. (Assuming 
the data is normally distributed - a very big assumption!)

** Normal Distribution ** = data is divided evenly on either side of the mean. That is, there are roughly 
as many data points on the left side of the mean as on the right. This is rarely true and is the cause of 
many incorrect analyses.

**Skew** = describes the overall shape of the data on either side of the mean. A value of zero implies 
symmetrical distribution. A negative value indicates that the data tends to be distributed more heavily 
on the right side of the mean (possibly including the median). A positive value indicates that the data 
tends to be distributed more heavily on the left side of the mean (possibly including the median).

**Kurtosis** = a little tricky to understand. From Wikipedia: *"Higher kurtosis means more of the variance 
is the result of infrequent extreme deviations, as opposed to frequent modestly sized deviations".*

Or put a different way: high kurtosis means that more of the noise in the data is coming from extreme outliers 
which do not happen very often. Whereas lower kurtosis implies that, while there is noise in the data, it is 
happening more frequently. (And so might not even be noise but a story unto itself).

**Notes on skew and kurtosis:**

It is important to understand that skew and kurtosis are there to help you understand and interpret your data, 
but they do not provide answers by themselves. *There is no substitute for good data and a thorough knowledge 
of where that data came from.*

If skew is negative, that just means that there is more data on the right side of the mean than the left. But 
that is all it means.  It is up to the person running the program to understand whether or not this is desirable 
and what story the data is telling you.

Similarly, a high kurtosis is not *"bad"* or *"good"*, it just depends on what you are trying to understand. It 
might be a good thing if kurtosis is high, because you are observing a scenario where, every once in a while, there 
is an extreme outlier, but you are okay adjusting for that.
