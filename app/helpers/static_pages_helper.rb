module StaticPagesHelper

	def gallery_images
		images = []
		1.upto(70).each do |counter|
			images << { src: cloudinary_url("avgarden/Photo-#{counter}.jpg", :crop => "scale", :width => 1600), 
              srct: cloudinary_url("avgarden/Photo-#{counter}.jpg", :crop => "scale", :width => 300)}
        end

        images.to_json
	end
end
