class ImageCopyright < DigikamDb
  set_table_name "imagecopyright"
  set_inheritance_column :ruby_type
  belongs_to :image, :foreign_key => "imageid"
end
