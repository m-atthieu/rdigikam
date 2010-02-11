class ImageComment < DigikamDb
	set_table_name "imagecomments"
	belongs_to :image, :foreign_key => "imageid"
end
