#!/usr/bin/env ruby

require 'statsample'

class Array
  def ints
   self.map!(&:to_i)
  end
end

def read_data_points_from(f)
  File.read(f).split
end

file = ARGV[0]
raw = read_data_points_from file
vector = raw.ints.to_scale

puts <<STATS

Statistics for #{file}
----------------------

N:           #{vector.n}
Min:         #{vector.min}
Max:         #{vector.max}
Mean:        #{vector.mean}
Median:      #{vector.median}
Std. Dev.    #{vector.sd}

Skew:        #{vector.skew}
Kurtosis:    #{vector.kurtosis}

STATS
