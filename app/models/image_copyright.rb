class ImageCopyright < DigikamDb
	set_table_name "imagecopyright"
	belongs_to :image, :foreign_key => "imageid"
end
