class FilePath < ThumbnailDb
	set_table_name "FilePath"
	set_primary_key "thumbId"
	belongs_to :thumbnail, :foreign_key => "thumbId"
end
