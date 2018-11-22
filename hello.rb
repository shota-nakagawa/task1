puts "最初はグーじゃんけん・・・・"
puts "[0]グー￥n[1]チョキ￥n[2]パー"

def janken
  player_hand = gets.to_i
  program_hand = rand(3)


  jankens =["グー","チョキ","パー"]
  puts "自分の手:#{jankens[player_hand]},相手の手:#{jankens[program_hand]}"

 if player_hand == program_hand
   puts "あいこで"
   return true
 elsif player_hand == 0 && program_hand == 1 ||player_hand ==2 && program_hand ==0 ||player_hand ==1 && program_hand ==2
   puts "自分の勝ち！"
   return false
 else
   puts "自分の負け"
   return false
 end
end

next_game =true
while next_game do
  next_game =janken
end
