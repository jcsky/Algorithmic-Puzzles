# Tower of hanoi

最近參加演算法聚會，第一次分享時我挑了習題的[83題](https://github.com/jcsky/Algorithmic-Puzzles/issues/13)

## 原始河內塔

在解這題前，應該先了解原始的河內塔問題：

有三根柱子，目標將左方柱子上的碟子，搬到右方柱子，遊戲規則
1. 一次搬一個碟子
2. 每根柱子只有最上面的碟子可被搬動
3. 大碟子不可至於小碟子的上方

## Algorithmic puzzles的習題83

河內塔的變化題，本題目出自[Algorithmic puzzles](https://www.amazon.com/Algorithmic-Puzzles-Anany-Levitin/dp/0199740445)的習題83題

這本書中國有中譯本：[算法謎題](http://m.sanmin.com.tw/product/index/99j155w6y103i24g106e67a110v128skvtlck683siu)

>英文

There are n disks of different sizes and three pegs. Initially, all the disks are on the first peg in order of size, the largest on the bottom and the smallest on top. The object is to transfer all the disks to the third peg. Only one disk can be moved at a time, and it is forbidden to place a larger disk on top of a smaller one. In addition, any move should either place a disk on the middle peg or move a disk from that peg (Figure 2.19). Design an algorithm that solves the puzzle in the minimum number of moves.

>中文

有n個不同的小的盤子和3根柱子。最初，所有的盤子都按大小順序放置在第一根柱子上面，最大的在最下面，最小的在最上面。現在想要將所有的盤子都移動到第三根柱子上面去。一次只能移動一個盤子，而且禁止將大盤子放在小盤子上面。此外，每次移動要麽在中間柱子上面放置一個盤子，要麼從中間柱子上面取走一個盤子，如圖2.19所示，請設計一個演算法解決此問題，使得所使用的移動次數最小

>提示

用遞迴解

# 解題過程與思路

為了詳細解釋，我做了投影片，放在[SlideShare](http://www.slideshare.net/ssuser5a7ddc/algorithmic-puzzles-83-restricted-tower-of-hanoi)，該專案下也有一份pdf檔

看完這份投影片後，應該就能理解，原始河內塔與83題有限的河內塔的程式是如何寫的

專案下有兩個ruby檔案
- [tower_original.rb](https://github.com/NickWarm/tower_of_hanoi_ruby/blob/master/tower_original.rb)：傳統河內塔
- [tower_limit.rb](https://github.com/NickWarm/tower_of_hanoi_ruby/blob/master/tower_limit.rb)：Algorithmic puzzles的習題83題，有限制的河內塔

看完投影片就能理解`tower_limit.rb`為何這樣寫，但是程式還是有些小bug，目前我還沒想到要怎麼解掉，歡迎提出修改意見。
