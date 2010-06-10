class ImageMetadata < DigikamDb
	set_table_name "imagemetadata"
	set_primary_key "imageid"
	belongs_to :image, :foreign_key => "imageid"

	ImageMetadata.include_root_in_json = false if ImageMetadata.respond_to?(:include_root_in_json)

end
