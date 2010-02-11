class Tag < DigikamDb
	acts_as_tree :parent_id => "pid"
	has_and_belongs_to :images, :foreign_key => "tagid", :association_foreign_key => "imageid", :join_table => "imagetags"
end
