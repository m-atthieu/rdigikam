class Thumbnail < ThumbnailDb
	set_inheritance_column :ruby_type
	has_one :file_path, :foreign_key => "thumbid"
	has_one :unique_hash, :foreign_key => "thumbid"
end
