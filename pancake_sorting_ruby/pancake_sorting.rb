class Array
  def pancake_sort!
    num_flips = 0  # 記錄翻幾次
    (self.size-1).downto(1) do |end_idx|
      max     = self[0..end_idx].max
      max_idx = self[0..end_idx].index(max)

      next if max_idx == end_idx                    #最大的數字已經在恰當的位置，跳過不翻轉

      if max_idx > 0
        self[0..max_idx] = self[0..max_idx].reverse # 最大的那個數字以上整疊都翻轉，讓最大的數字翻到最上面
        p [num_flips += 1, self]
      end

      self[0..end_idx] = self[0..end_idx].reverse   # 整疊翻轉，讓最上面最大的數字，翻到最底下
      p [num_flips += 1, self]
    end
    return self
  end
end

p a = (1..9).to_a.shuffle
p a.pancake_sort!
