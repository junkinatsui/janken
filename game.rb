


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


    if my_hand == your_hand
        @janken_pattern = "あいこ"
    elsif  (my_hand == 0 && your_hand == 1) ||(my_hand == 1 && your_hand == 2) || (my_hand == 2 && your_hand == 0)
        @janken_pattern = "勝ち"
    else
        @janken_pattern = "負け"
    end



    case @janken_pattern
    when "勝ち"
        attimuitehoi_win
    when "負け"
        attimuitehoi_lose
    when "あいこ"
        janken_draw
    end

end

def janken_draw
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


    if my_hand == your_hand
        @janken_pattern = "あいこ"
    elsif  (my_hand == 0 && your_hand == 1) ||(my_hand == 1 && your_hand == 2) || (my_hand == 2 && your_hand == 0)
        @janken_pattern = "勝ち"
    else
        @janken_pattern = "負け"
    end

    case @janken_pattern
    when "勝ち"
        attimuitehoi_win
    when "負け"
        attimuitehoi_lose
    when "あいこ"
        janken_draw
    end
end



def attimuitehoi_win
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"

    my_direction = gets.to_i

    your_direction = rand(4)

    if my_direction >= 4
        puts "0~3の数字を入力してください"
        return
    end

    directions = {0 => "上", 1 => "下", 2 => "左", 3 => "右" }

    puts "あなた:#{directions[my_direction]}\n相手:#{directions[your_direction]}"

    if my_direction == your_direction
        puts "あなたの勝ちです"
        return
    else
        janken
    end

end

def attimuitehoi_lose
    puts "あっち向いて〜"
    puts "0(上)1(下)2(左)3(右)"

    my_direction = gets.to_i

    your_direction = rand(4)

    if my_direction >= 4
        puts "0~3の数字を入力してください"
        return
    end

    directions = {0 => "上", 1 => "下", 2 => "左", 3 => "右" }

    puts "あなた:#{directions[my_direction]}\n相手:#{directions[your_direction]}"

    if my_direction == your_direction
        puts "あなたの負けです"
        return
    else
        janken
    end

end



janken



