class ImageProperty < DigikamDb
	set_primary_key "imageid"
	belongs_to :image, :foregin_key => "imageid"
end
