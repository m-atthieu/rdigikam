class ImageInformation < DigikamDb
	set_table_name "imageinformation"
	set_primary_key "imageid"
	belongs_to :image, :foreign_key => "imageid"
end
