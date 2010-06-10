class AlbumImages
	attr_reader :images

	def initialize(node)
		@images = Array.new
		if node != 'root' then
			album_root = node.scan(/[0-9]+/).first
			print "#{album_root}\n"
			path = node.sub(album_root, '')
			print "#{path}\n"
			# recuperer l'id de l'album
			album = Album.find :first, :conditions => ["albumRoot = ? and relativePath = ?", album_root, path]
			album.images.each do |image|
				@images << image
			end
		end
	end
end
