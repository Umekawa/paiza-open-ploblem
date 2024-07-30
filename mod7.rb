# https://paiza.jp/works/mondai/s_rank_skillcheck_sample/mod7

card_num = gets.chomp.to_i
mod7_result = {}
7.times {|i| mod7_result[i.to_s] = 0}

card_num.times { mod7_result[(gets.chomp.to_i % 7).to_s] += 1 }

p mod7_result

sum = 0
[[0,1,6],[0,2,5], [0,3,4] ,[1,2,4],[3,5,6]].each do |a,b,c|
  sum += mod7_result[a.to_s] * mod7_result[b.to_s] * mod7_result[c.to_s]
end

[[1,5], [2,3], [3,1], [4,6], [5,4], [6,2]].each do |a,b|
  sum += (mod7_result[a.to_s] * (mod7_result[a.to_s]-1)/2) * mod7_result[b.to_s]
end

sum += mod7_result['0']*(mod7_result['0']-1)*(mod7_result['0']-2)/6

p sum
