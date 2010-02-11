class Album < DigikamDb
	belongs_to :album_root, :foreign_key => "albumRoot"
	has_many :images, :foreign_key => "album"
end
