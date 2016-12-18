# 30. CuttingaStick
# A stick 100 units long needs to be cut into 100 unit pieces. What is the minimum number of cuts required if you are allowed to cut several stick pieces at the same time? Also outline an algorithm that performs this task with the minimum number of cuts for a stick of n units long.

# thinking:
# 1.cut all length > 1
# 2.focus on large number: 3 or 4 / 4 or 5 / 5 or 6 / 6 or 7

class Stick

  attr_accessor :length

  def initialize(length = 100)
    @length = length.to_f
    @times = 0
  end

  def cut_times
    until @length == 1
      cut
    end
    @times
  end

  def cut
    @times += 1
    s = "#{@times}: #{@length} is cutted to "
    @length = (@length / 2).ceil.to_f
    p s + "#{@length}"
  end

end

p Stick.new(100).cut_times
p Stick.new(101).cut_times
p Stick.new(102).cut_times
p Stick.new(1000).cut_times
