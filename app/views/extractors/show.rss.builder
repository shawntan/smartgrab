xml.instruct!

xml.rss "version" => "2.0", "xmlns:dc" => "http://purl.org/dc/elements/1.1/" do
 xml.channel do
   xml.title       "Extractor id=#{@extractor.id}"
   xml.link        url_for :only_path => false, :controller => :extractors
   xml.description "#{@latest_revision.created_at}"
   @latest_scraped_values.each do |scraped_value|
     xml.item do
       xml.title       scraped_value.annotation.label
       xml.description scraped_value.value
     end
   end
 end
end
