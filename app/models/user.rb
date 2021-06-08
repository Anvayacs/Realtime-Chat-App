class User < ApplicationRecord
  validates_uniqueness_of :username

  def self.generate
    adjectives = ['Ancient', 'Effective', 'Courageous' 'Scary', 'Creative', 'Dangerous']
    nouns = ['Devil', 'Begginer', 'Sword', 'Light', 'Spear', 'Bullet']
    number = rand.to_s[2..4]
    username = " #{adjectives.sample}- #{nouns.sample}- #{number}"
    create(username: username)
  end

end
