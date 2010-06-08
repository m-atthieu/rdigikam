class AlbumPath
	attr_accessor :node, :childrens
  
	def initialize(path)
		@node = path
		@childrens = Array.new
		if not @node == 'root' then
			album_root = @node.scan(/[0-9]+/).first
			path = @node.sub(album_root, '')
			print "#{path} "
			if path == '/' then
				r = '^/[-_[:alnum:]]+$'
			else
				r = '^' + path + '/[-_[:alnum:]]+$'
			end
			print "#{r}\n"
			albums = Album.find :all, :conditions => ["albumRoot = ? and relativePath REGEXP ?", album_root, r]
			albums.each do |album|
				@childrens << {'id' => album_root + album.relativePath, 'text' => album.relativePath.sub(@node.sub(album_root, '') + '/', '') , 'leaf' => false} 
			end
		else
			album_roots = AlbumRoot.find :all
			album_roots.each do |root|
				@childrens << {'id' => root.id.to_s + '/', 'text' => root.label, 'leaf' => false}
			end
    		end
	end
end
