class FilePath < ThumbnailDb
	set_table_name "filepaths"
	set_primary_key "thumbId"
	belongs_to :thumbnail, :foreign_key => "thumbId"
end
