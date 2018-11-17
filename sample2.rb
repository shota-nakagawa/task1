class People
  def self.greet
    p "私は目からビームが出せます"
  end
end

class SuperPeople < People
end

SuperPeople.greet
