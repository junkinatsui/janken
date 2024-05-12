

def janken
    puts "じゃんけん"
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"

    my_hand = gets.to_i

    your_hand = rand(3)

    if my_hand > 3
        puts "0~3の数字を入力してください"
        return
    elsif my_hand == 3
        puts "また対戦しましょう"
        return
    end

    puts "ホイ!"
    puts "----------"

    hands = {0 => "グー", 1 => "チョキ", 2 => "パー" }

    puts "あなた:#{hands[my_hand]}\n相手:#{hands[your_hand]}"


    if my_hands == your_hands
        return true
    elsif  (my_hands == 0 && your_hands == 1) ||(my_hands == 1 && your_hands == 2) || (my_hands == 2 && your_hands == 0)
        janken_pattern = "勝ち"
        return false
    else
        janken_pattern = "負け"
        return false
    end
end

next_game = true

while next_game
  next_game = janken
end



def attimuitehoi_win
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"

    my_direction = gets.to_i

    you_direction = rand(4)

    if my_hands >= 4
        puts "0~3の数字を入力してください"
        return
    end

    directions = {0 => "上", 1 => "下", 2 => "左", 3 => "右" }

    puts "あなた:#{directions[my_direction]}\n相手:#{directions[your_direction]}"

    if my_direction == you_direction
        puts "あなたの勝ちです"
    else
        return true
    end

end

while next_game
    next_game = janken
end

def attimuitehoi_lose
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"

    my_direction = gets.to_i

    you_direction = rand(4)

    if my_hands >= 4
        puts "0~3の数字を入力してください"
        return
    end

    directions = {0 => "上", 1 => "下", 2 => "左", 3 => "右" }

    puts "あなた:#{directions[my_direction]}\n相手:#{directions[your_direction]}"

    if my_direction == you_direction
        puts "あなたの負けです"
    else
        return true

end

while next_game
    next_game = janken
end


case janken_pattern
when "勝ち"
    attimuitehoi_win
when "負け"
    attimuitehoi_lose
end
