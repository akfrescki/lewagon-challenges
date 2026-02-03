
def beer_song(beer_start_count)
    lines = []
    
    beer_start_count.downto(1) do |count|
        next_count = count - 1

        line_1 = "#{count} bottles of beer on the wall, #{count} bottles of beer!"
        next_phrase = next_count == 0 ? "no more bottles" : "#{next_count} bottles"
        line_2 = "Take one down, pass it around, #{next_phrase} of beer on the wall!"
        lines << line_1
        lines << line_2
    end

    lines.join("\n")
    
end
