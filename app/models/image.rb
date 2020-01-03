class Image < ApplicationRecord
    belongs_to :user

    validates :url, presence: true
    validates :url, uniqueness: { scope: :user_id,
        message: "Image should be unique for each user" }

    # validate :unique_image_for_user

    # def unique_image_for_user
    #     check_image = Image.find_by(url: url)

    #     if check_image.url == url && check_image.user_id == user_id
    #         errors.add(:url, "The url is exist")
    #     end
    # end
    # validates :url, uniqueness: true
end



class Holiday < ApplicationRecord
    validates :name, uniqueness: { scope: :year,
      message: "should happen once per year" }
  end