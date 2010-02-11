class ImageMetadata < DigikamDb
	set_table_name "imagemetadata"
	set_primary_key "imageid"
	belongs_to :image, :foreign_key => "imageid"
end
