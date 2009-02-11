class Show
  include DataMapper::Resource
  property :id,      Serial
  property :name,    String
  property :is_live, Boolean
  property :repeats, Boolean

  has n, :subscriptions
  has n, :users, :through => :subscriptions
end
