class ImagePosition < DigikamDb
  set_table_name "imagepositions"
  set_primary_key "imageid"
	belongs_to :image, :foreign_key => "imageid"
end
