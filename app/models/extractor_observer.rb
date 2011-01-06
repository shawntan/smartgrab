class ExtractorObserver < ActiveRecord::Observer
	observe :page, :annotation
	@@url = URI.parse('http://localhost:8080/')
	def after_update(member)
		extract(member.extractor)
	end
	def after_create(member)
		extract(member.extractor)
	end
	def extract(extractor)
		latest_revision = extractor.revisions.first(:order => "created_at DESC")
		if(latest_revision and (Time.now - latest_revision.created_at) > 5.minutes)
			begin
				Net::HTTP.start(@@url.host, @@url.port) {|http|
					http.get("/extract/extract?id=#{extractor.id}")
				}
			rescue Exception => e
				extractor.logger.debug('----------------------')
				extractor.logger.debug(extractor)
				extractor.logger.debug(extractor.id)
				extractor.logger.debug(e)
				extractor.logger.debug('----------------------')
			end
		end
	end
end
