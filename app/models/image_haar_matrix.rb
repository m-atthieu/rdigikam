class ImageHaarMatrix < DigikamDb
  set_table_name "imagehaarmatrix"
	set_primary_key "imageid"
	belongs_to :image, :foreign_key => "imageid"
end
