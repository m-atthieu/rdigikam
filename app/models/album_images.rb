class AlbumImages
	def new(node)
		@album_root = node.scan(/[:num:]+/).first
	end
end
