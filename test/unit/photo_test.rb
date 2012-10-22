require File.expand_path('../test_helper', File.dirname(__FILE__))

class PhotoTest < ActiveSupport::TestCase

  def test_fixtures_validity
    Gallery::Photo.all.each do |photo|
      assert photo.valid?, photo.errors.full_messages.to_s
    end
  end

  def test_validations
    photo = Gallery::Photo.new
    assert photo.invalid?
    assert_has_errors_on photo, {
      :gallery_id       => ["can't be blank"],
      :image_file_name  => ["There was no file uploaded!"]
    }
  end

  def test_creation
    gallery = gallery_galleries(:default)
    assert_difference 'Gallery::Photo.count' do
      upload = fixture_file_upload('/files/default.jpg', 'image/jpeg')
      photo = Gallery::Photo.create!(
        :gallery  => gallery,
        :title    => 'Test Photo',
        :image    => upload
      )
      assert_equal 'default.jpg', photo.image_file_name
      assert_equal 'image/jpeg', photo.image_content_type
      assert_equal upload.size, photo.image_file_size

      assert_equal gallery, photo.gallery
      assert_equal 'Test Photo', photo.title
      assert_equal 1, photo.position
    end
  end

end

