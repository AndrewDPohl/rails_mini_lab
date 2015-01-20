class Article < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :title
  validates_presence_of :content

  attr_accessor :keywords

  @@alchemy_url ||= ENV["ALCHEMY_URL"]
  @@apikey ||= ENV["apikey"]
  
  def make_request
    request = Typhoeus::Request.new(
      @@alchemy_url,
      method: :get,
      params: { apikey: @@apikey,
        text: self.content,
        maxRetrieve: 10,
        keywordExtractMode: "normal",
        outputMode: 'json', },
      headers: { Accept: "text/html" }
      )
    request.run

    response = request.response
    keywordResults = JSON.parse(response.body)
    keyword = keywordResults["keywords"]
    puts keywordResults
    return keyword
  end

end
