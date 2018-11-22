puts "最初はグーじゃんけん・・・・"
puts "[1]グー￥n[2]チョキ￥n[3]パー"

def janken
  player_hand = gets.to_i
  if player_hand < 1 || 3 < player_hand
    puts "1,2,3のどれかを入力してください！！"
   return true
  end
  program_hand = rand(3)

  jankens =["グー","チョキ","パー"]
  puts "自分の手:#{jankens[player_hand]},相手の手:#{jankens[program_hand]}"

  if player_hand == program_hand
    puts "あいこで"
    return true
  elsif player_hand == 1 && program_hand == 2 || player_hand == 3 && program_hand == 1 || player_hand == 2 && program_hand == 3
    puts "あなたの勝ちです！"
    return false
  else
    puts "あなたの負けです"
    return false
    end
end

 next_game = true
while next_game do
 next_game = janken
end
