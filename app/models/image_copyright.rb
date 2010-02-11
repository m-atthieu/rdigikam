class ImageCopyright < DigikamDb
	set_table_name "imagecopyright"
	belongs_to :image, :foregin_key => "imageid"
end
