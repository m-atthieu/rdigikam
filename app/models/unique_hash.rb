class UniqueHash < ThumbnailDb
	set_table_name "uniquehashes"
  has_one :thumbnail, :foreign_key => "id", :primary_key => 'thumbId'
  belongs_to :image, :foreign_key => "uniquehash"
end
