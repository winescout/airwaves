class Preference
  include DataMapper::Resource
  property :id,      Serial
  property :remove_updates_on_unsubscribe, Boolean
  property :update_twitter, Boolean

  belongs_to :user
end


