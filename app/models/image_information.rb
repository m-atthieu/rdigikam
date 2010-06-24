class ImageInformation < DigikamDb
  set_table_name "imageinformation"
  set_primary_key "imageid"
  belongs_to :image, :foreign_key => "imageid"

  ImageInformation.include_root_in_json = false if ImageInformation.respond_to?(:include_root_in_json)
end
