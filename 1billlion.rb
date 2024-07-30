# https://paiza.jp/works/mondai/real_event/continuous_winning

stages, bonus_game_num = gets.split(' ').map(&:to_i)
games=[]
stages.times do
  games << gets.split(' ').map(&:to_i)
end
p games