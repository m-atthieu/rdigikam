class ImageComment < DigikamDb
	set_table_name "imagecomments"
	belongs_to :image, :foreign_key => "imageid"
    set_inheritance_column :ruby_type
end
