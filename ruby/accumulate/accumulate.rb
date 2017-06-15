module Enumerable
  def accumulate(&block)
    return to_enum(__method__) unless block_given?

    result = []
    each { |i| result << yield(i) }

    result
  end
end

module BookKeeping
  VERSION = 1
end
