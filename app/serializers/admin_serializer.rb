class AdminSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name, :phone, :email, :designation, :role, :fullname, :featured_image

  def fullname
    "#{object.first_name} #{object.last_name}"
  end

def featured_image
    if object.featured_image.attached?
      {
        url: rails_blob_url(object.featured_image)
      }
    end
  end
end
