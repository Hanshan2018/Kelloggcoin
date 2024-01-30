# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇
users = {}
blockchain.each do |key, value|
    
    user_send = key["from_user"]
    user_receive = key["to_user"]

    if user_send == nil
    users[user_receive] = 0
    else
    users[user_send] = 0
    users[user_receive] = 0
    end

end
puts users


blockchain.each do |key, value|

  sender = key["from_user"]
  receiver = key["to_user"]
  sent_coin = key["amount"]

  if sender != nil
  original_amt_receiver = users[receiver]
  users[receiver] = original_amt_receiver + sent_coin

  original_amt_sender = users[sender]
  users[sender] = original_amt_sender - sent_coin

  else

  original_amt_receiver = users[receiver]
  users[receiver] = original_amt_receiver + sent_coin

  end

end

users.each do |key, value|

  user = key
  amt_coin = value
  puts "#{user}'s Kelloggcoin balance is #{amt_coin}"

end
