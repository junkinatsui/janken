def rock_paper_scissors
    puts "じゃんけん..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    my_hand_number = gets.to_s.chomp
    enemy_hand_number = "#{rand(3)}"
  
    if my_hand_number.to_i >= 3
      return puts "またやろう"
    end
      
    puts "ホイ！"
    puts "-------------"
    
    hand = ["グー" , "チョキ" , "パー"]
    my_hand = hand[my_hand_number.to_i]
    enemy_hand = hand[enemy_hand_number.to_i]
  
    puts "あなた:#{my_hand}を出しました"
    puts "相手:#{enemy_hand}を出しました"
    puts "-------------"
  
    type = my_hand_number << enemy_hand_number
  
    case type
    when "01" , "12" , "20"
      win_motion
    when "02" , "10" , "21"
      lose_motion
    when "00" , "11" , "22"
      rock_paper_scissors_draw
    end
  end
  
  def rock_paper_scissors_draw
    puts "あいこで..."
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    my_hand_number = gets.to_s.chomp
    enemy_hand_number = "#{rand(3)}"
  
    if my_hand_number.to_i >= 3
      return puts "またやろう"
    end
      
    puts "ショ！"
    puts "-------------"
    
    hand = ["グー" , "チョキ" , "パー"]
    my_hand = hand[my_hand_number.to_i]
    enemy_hand = hand[enemy_hand_number.to_i]
  
    puts "あなた:#{my_hand}を出しました"
    puts "相手:#{enemy_hand}を出しました"
    puts "-------------"
  
    type = my_hand_number << enemy_hand_number
  
    case type
    when "01" , "12" , "20"
      win_motion
    when "02" , "10" , "21"
      lose_motion
    when "00" , "11" , "22"
      rock_paper_scissors_draw
    end
  end
  
  def win_motion
    puts "あっち向いて"
    puts "0(上)1(下)2(左)3(右)"
    finger_direction = gets.to_s.chomp
    face_direction = "#{rand(4)}"
  
    if finger_direction.to_i > 3
      return puts "入力値が不正です。最初からやり直しです。"
    end
  
    puts "ホイ！"
    puts "-------------"
    
    direction = ["上" , "下" , "左" , "右"]
    my_result = direction[finger_direction.to_i]
    enemy_result = direction[face_direction.to_i]
  
    puts "#{my_result}"
    puts "#{enemy_result}"
    puts "-------------"
  
    if finger_direction == face_direction
      puts "あなたの勝ちです"
    else 
      rock_paper_scissors
    end
  end
  
  def lose_motion
    puts "あっち向いて"
    puts "0(上)1(下)2(左)3(右)"
    face_direction = gets.to_s.chomp
    finger_direction = "#{rand(4)}"
  
    if face_direction.to_i > 3
      return puts "入力値が不正です。最初からやり直しです。"
    end
  
    puts "ホイ！"
    puts "-------------"
    
    direction = ["上" , "下" , "左" , "右"]
    my_result = direction[face_direction.to_i]
    enemy_result = direction[finger_direction.to_i]
  
    puts "#{my_result}"
    puts "#{enemy_result}"
    puts "-------------"
  
    if face_direction == finger_direction
      puts "あなたの負けです"
    else 
      rock_paper_scissors
    end
  end
  
  rock_paper_scissors