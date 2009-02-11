require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe Message do
  it "should set solr_id" do 
    m = Message.new
    m.solr_id.should_not be_nil
  end

  it "solr_id should be unique" do
    m_1 = Message.new
    m_2 = Message.new
    m_1.solr_id.should_not == m_2.solr_id
  end

end
