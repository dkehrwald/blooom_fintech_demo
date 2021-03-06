class User < ApplicationRecord

  def gravatar
    "http://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  end

  has_many :accounts

end
