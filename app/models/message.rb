require "base64"

class Message
  include DataMapper::SolrResource

  def self.default_repository_name
    :solr
  end

  #property :unique_key,    String, :length => 50, :key => true
  property :solr_id,       String, :key => true
  property :text,          String,  :length => 140
  property :created_at,    DateTime
  property :user_id,       Integer
  property :show_id,       Integer

  belongs_to :user
  belongs_to :show

  def created_at
    Time.now.to_f
  end

  def solr_id
    "#{self.user_id}-#{self.created_at}"
  end
end
