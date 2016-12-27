# 柱子A、柱子B、柱子C 依序是：peg_a、peg_b、peg_c
# 盤子原本都在左邊的peg_a，現在目標要把所有盤子都移動到最右邊的peg_c
# move(num_disks, peg_a=0, peg_c=2, peg_b=1) 這四個輸入進來的變數，意義依序是
# move(碟子的數量，起始點，目的地，暫時的中介點)

def move(num_disks, peg_a=0, peg_c=2, peg_b=1)
  if num_disks == 1
   @towers[peg_c] << @towers[peg_a].pop
    puts "Move disk from #{peg_a} to #{peg_c} : #{@towers}"
  else
    move(num_disks-1, peg_a, peg_b, peg_c)   # 從 柱子A 搬 n-1 個碟子到中間的 柱子B

    move(1,           peg_a, peg_c, peg_b)   # 從 柱子A 搬一個碟子到 柱子C

    move(num_disks-1, peg_b, peg_c, peg_a)   # 從 柱子B 搬 n-1個碟子到 柱子C
  end
end

n = 6
@towers = [[*1..n].reverse, [], []]
move(n)
