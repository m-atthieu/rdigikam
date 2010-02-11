class AlbumRoot < DigikamDb
	set_table_name "albumroots"
	has_many :albums, :foreign_key => "albumRoot"
	set_inheritance_column :ruby_type
end
