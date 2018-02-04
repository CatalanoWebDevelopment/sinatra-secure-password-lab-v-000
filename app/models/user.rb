class User < ActiveRecord::Base
  has_secure_password
  validates :username, :presence => true

  after_initialize :init

  def init
    self.balance ||= 0.00
  end

  def deposit(amount)
    self.balance.to_i += amount
  end
    
  
end
