class Bottles
  def verse(num)
    case num
      when 99
        <<-VERSE
99 bottles of beer on the wall, 99 bottles of beer.
Take one down and pass it around, 98 bottles of beer on the wall.
        VERSE
      when 89
        num.to_s << " bottles of beer on the wall, " << num.to_s << " bottles of beer.
Take one down and pass it around, %s bottles of beer on the wall.
" % [num-1]
      when 2
        <<-VERSE
2 bottles of beer on the wall, 2 bottles of beer.
Take one down and pass it around, 1 bottle of beer on the wall.
        VERSE
    when 1
      <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
    VERSE
    when 0
      <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
      VERSE
    end
  end
end