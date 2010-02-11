class Image < DigikamDb
	belongs_to :album, :foreign_key => "album"
	has_and_belongs_to_many :tags, :foreign_key => "imageid", :association_foreign_key => "tagid", :join_table => "imagetags"
	has_one :image_information, :foreign_key => "imageid"
	has_one :image_comment, :foreign_key => "imageid"
	has_one :image_metadata, :foreign_key => "imageid"
	has_one :image_property, :foreign_key => "imageid"
	has_one :image_position, :foreign_key => "imageid"
	has_one :image_haar_matrix, :foreign_key => "imageid"
	has_one :image_copyright, :foreign_key => "imageid"
	has_one :unique_hash, :foreign_key => "uniquehash"
end
