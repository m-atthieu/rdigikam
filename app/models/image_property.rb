class ImageProperty < DigikamDb
  set_table_name "imageproperties"
  set_primary_key "imageid"
  belongs_to :image, :foreign_key => "imageid"
end
