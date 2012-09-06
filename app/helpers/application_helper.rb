module ApplicationHelper
	def youtube_embed(url_youtube)
	  if url_youtube[/youtu\.be\/([^\?]*)/]
	    youtube_id = $1
	  else
	    # Regex from # http://stackoverflow.com/questions/3452546/javascript-regex-how-to-get-youtube-video-id-from-url/4811367#4811367
	    url_youtube[/^.*((v\/)|(embed\/)|(watch\?))\??v?=?([^\&\?]*).*/]
	    youtube_id = $5
	  end

	   content_tag(%Q{iframe title="YouTube" width="675" height="400" src="http://www.youtube.com/embed/#{ youtube_id }" frameborder="0" allowfullscreen></iframe})
	end

	def data_br(date)
		if date
			date = l date
			
		end
		%Q{#{date}}
	end
end
