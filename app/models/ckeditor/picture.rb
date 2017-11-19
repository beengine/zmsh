class Ckeditor::Picture < Ckeditor::Asset
  mount_uploader :data, CkeditorPictureUploader, mount_on: :data_file_name

  def url_content
    'http://res.cloudinary.com/dj0txi0vx/' + data_file_name
  end
end
