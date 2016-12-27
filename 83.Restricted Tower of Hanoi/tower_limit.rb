require 'pry'

def move(num_disks, peg_a=0, peg_c=2, peg_b=1)
  if num_disks == 1
    @towers[peg_b] << @towers[peg_a].pop
    # puts "Move disk from #{peg_a} to #{peg_b} : #{@towers}"

    @towers[peg_c] << @towers[peg_b].pop
    # puts "Move disk from #{peg_b} to #{peg_c} : #{@towers}"
    # puts "Move disk from #{peg_a} to #{peg_b} and then from #{peg_b} to #{peg_c} : #{@towers}"
    puts "#{@towers}"
  else

    move(num_disks-1, peg_a, peg_c, peg_b)   # 從 柱子A 搬 n-1 個碟子到 柱子C
    # binding.pry
    move(1,           peg_a, peg_b, peg_c)   # 從 柱子A 搬一個碟子到 柱子B

    move(num_disks-1, peg_c, peg_a, peg_b)   # 從 柱子C 搬 n-1 個碟子到中間的 柱子A
    # binding.pry
    move(1,           peg_b, peg_c, peg_b)   # 從 柱子B 搬一個碟子到 柱子C

    move(num_disks-1, peg_a, peg_c, peg_b)   # 從 柱子A 搬 n-1個碟子到 柱子C

  end
end

n = 5
@towers = [[*1..n].reverse, [], []]
move(n)
