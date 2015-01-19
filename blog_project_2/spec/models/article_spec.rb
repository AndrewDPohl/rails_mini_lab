require 'rails_helper'

RSpec.describe Article, :type => :model do
  describe "validations" do
    
    it "should confirm an article :title" do
      article = Article.new({title: "blah"})
      expect(article.save).to be(false)
    end

    it "should confirm an article :content" do
      article = Article.new({content: "blah"})
      expect(article.save).to be(false)
    end
  end
end
