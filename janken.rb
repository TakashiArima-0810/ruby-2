def lose
  puts "あっちむいて"
  puts "1(上) 2(下) 3(左) 4(右)"
  user_face = gets.to_i
    if user_face == 1
      puts "----------------------------"
      puts "あなた：上！"
    elsif user_face == 2
      puts "----------------------------"
      puts "あなた：下！"
    elsif user_face == 3
      puts "----------------------------"
      puts "あなた：左！"
    elsif user_face == 4
      puts "----------------------------"
      puts "あなた：右！"  
    else
      puts "入力された値に誤りがあります。"
      lose
    end
    
    cpu_finger = rand(1..4)
    
    if cpu_finger == 1
      puts "CPU：上！"
      puts "----------------------------"
    elsif cpu_finger == 2
      puts "CPU：下！"
      puts "----------------------------"
    elsif cpu_finger == 3
      puts "CPU：左！"
      puts "----------------------------"
    elsif cpu_finger == 4
      puts "CPU：右！"  
      puts "----------------------------"
    end
    
    if user_face == cpu_finger
      puts "残念！負けです。"
    else
      janken
    end
end

def win
  puts "あっちむいて"
  puts "1(上) 2(下) 3(左) 4(右)"
  user_finger = gets.to_i
    if user_finger == 1
      puts "----------------------------"
      puts "あなた：上！"
    elsif user_finger == 2
      puts "----------------------------"
      puts "あなた：下！"
    elsif user_finger == 3
      puts "----------------------------"
      puts "あなた：左！"
    elsif user_finger == 4
      puts "----------------------------"
      puts "あなた：右！"  
    else
      puts "入力された値に誤りがあります。"
      win
    end
    
    cpu_face = rand(1..4)
    
    if cpu_face == 1
      puts "CPU：上！"
      puts "----------------------------"
    elsif cpu_face == 2
      puts "CPU：下！"
      puts "----------------------------"
    elsif cpu_face == 3
      puts "CPU：左！"
      puts "----------------------------"
    elsif cpu_face == 4
      puts "CPU：右！" 
      puts "----------------------------"
    end
    
    if user_finger == cpu_face
      puts "おめでとう！勝ちです"
    else
      janken
    end
end

def janken
  puts "1(グー) 2(チョキ) 3(パー)"
  
  user_hand = gets.to_i
    if user_hand == 1
      puts "----------------------------"
      puts "あなた：グーを出しました。"
    elsif user_hand == 2
      puts "----------------------------"
      puts "あなた：チョキを出しました"
    elsif user_hand == 3
      puts "----------------------------"
      puts "あなた：パーを出しました"
    else
      puts "入力された値に誤りがあります。"
      janken
    end
    
    cpu_hand = rand(1..3)
    
    if cpu_hand == 1
      puts "CPU：グーを出しました。"
      puts "----------------------------"
    elsif cpu_hand == 2
      puts "CPU：チョキを出しました"
      puts "----------------------------"
    else
      puts "CPU：パーを出しました"
      puts "----------------------------"
    end
    
    if user_hand == cpu_hand
      status = "あいこ"
    elsif user_hand == 1 && cpu_hand == 2
      status = "かち"
    elsif user_hand == 2 && cpu_hand == 3
      status = "かち"
    elsif user_hand == 3 && cpu_hand == 1
      status = "かち"
    else
      status = "まけ"
    end
    
    case status
    when "あいこ"
      puts "あいこで"
      janken
    when "まけ"
      lose
    when "かち"
      win
    end
end

puts "ジャンケン..."

janken