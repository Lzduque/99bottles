class Bottles
    def song
        verses 99, 0
    end

    def verse number
        if number >= 2
            str = <<-VERSE
#{number} bottles of beer on the wall, #{number} bottles of beer.
Take one down and pass it around, #{number - 1} bottle#{number - 1 == 1 ? "" : "s"} of beer on the wall.
VERSE
        elsif number == 1
            str = <<-VERSE
#{number} bottle of beer on the wall, #{number} bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
VERSE
        else
            str = <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
VERSE
        end
    end

    def verses hi, lo
        hi.downto(lo).map { |n| verse(n) }.join("\n")
    end
end
