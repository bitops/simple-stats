#!/usr/bin/env ruby
=begin
Explanation of different stats.

N = total number of observations. More is usually better, as
a larger sample size provides more reliable results.

Min = smallest observation in the total set of observations.

Max = largest observations in the total set of observations.

Mean = the average.

Median = the "middle" observation. If this is very different 
from the mean, it indicates that outliers are skewing the data 
set.

Std. Dev = Standard Deviation. One standard deviation on 
either side of the mean encompasses 68% of the data set. Two 
deviations encompasses 95%. Three deviations captures 99% 
of the data set. 

Skew = describes the overall shape of the data on either side 
of the mean. A value of zero implies symmetrical distribution. 
A negative value indicates that the data tends to be distributed 
more heavily on the right side of the mean (possibly including 
the median). A positive value indicates that the data tends to 
be distributed more heavily on the left side of the mean (possibly 
including the median).

Kurtosis = a little tricky to understand. From Wikipedia: "Higher 
kurtosis means more of the variance is the result of infrequent 
extreme deviations, as opposed to frequent modestly sized deviations". 

Or, said differently: high kurtosis means that more of the noise in 
the data is coming from extreme outliers which do not happen very often. 
Whereas lower kurtosis implies that, while there is noise in the data, 
it is happening more frequently. (And so might not even be noise but a 
story unto itself).

Notes on skew and kurtosis:
It is important to understand that skew and kurtosis are there to help 
you understand and interpret your data, they do not provide answers by
themselves. There is no substitute for good data and a better understanding 
of that data! 

If skew is negative, that just means that there's more data on the right 
side of the mean than the left. That's all it means though! It's up to the 
person running the program to understand whether or not this is desirable, 
and what story the data is telling you.

Similarly, a high kurtosis is not "bad" or "good", it just depends on what 
you are trying to understand. It might be a good thing if kurtosis is high, 
because you are observing a scenario where, every once in a while, there's 
an extreme outlier, but you're okay adjusting for that.
=end
require 'statsample'

file = ARGV[0]
raw = File.read(file).split
# if you had a header in the file
#raw.shift
raw.map!(&:to_i)
v = raw.to_scale

msg = <<STATS

Statistics for #{file}
----------------------

N:           #{v.n}
Min:         #{v.min}
Max:         #{v.max}
Mean:        #{v.mean}
Median:      #{v.median}
Std. Dev:    #{v.sd}

Skew:        #{v.skew}
Kurtosis:    #{v.kurtosis}

STATS

puts msg
