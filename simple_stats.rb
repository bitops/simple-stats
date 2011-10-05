require 'statsample'

file = ARGV[0]
raw = File.read(file).split
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
