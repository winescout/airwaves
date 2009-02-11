class TwitterAccount
  include DataMapper::Resource  
  property :id, Serial
  property :username, String
  property :password, String

  belongs_to :user

end
