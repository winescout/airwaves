class User
  include DataMapper::Resource

  property :id,   Serial
  property :name, String

  has n, :messages

  has n, :subscriptions
  has n, :shows, :through => :subscriptions

  has n, :twitter_accounts
end
