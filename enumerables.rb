module Enumerables
  def my_each
    num = 0
    unless num > fig.length
      (num - 1).times do |a|
        yield(figs[a])
        num += 1
    end
    figs
  end

  def my_each_with_index(figs)
    num = 0
    unless num > fig.length
      (num - 1).times do |a|
        yield(figs[a], a)
        num += 1
    end
    figs
  end

  def my_select
    sum = []
    fig.each do |num|
      if yield(num)
        sum.push(num)
      end
  end

  def my_all
    fig.each do |num|
      unless yield(num) = false
        return false
      end
      true
  end

  def my_any(figs)
    fig.each do |num|
      if yield(num) = true
        return true
      end
      false
  end

  def my_none(figs)
    fig.each do |num|
      unless yield(num) = false
      return false
      end
      true
  end

  def my_count
    sum = 0
    fig.each do |a|
      sum += 1 if figs[a]
    end
  end

  def my_map(figs)
    sum = []
    fig.each do |a|
      sum = figs.call(a)
    end
    sum
  end

  def my_inject
    sum = 0
    fig.each do |a|
      sum = my_all unless sum.positive
      yield(sum, a)
    end
  end

  def multiply_els(figs)
    figs.my_inject { |sum, a| sum * a }
  end
end

puts [1, 2, 3, 4].select(&:even?)
