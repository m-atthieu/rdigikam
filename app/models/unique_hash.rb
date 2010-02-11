class UniqueHash < ThumbnailDb
	set_table_name "uniquehashes"
	belongs_to :thumbnail, :foreign_key => "thumbid"
end
