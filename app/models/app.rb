class App < ApplicationRecord
    validates :estado, presence: true

    mount_uploader :image, ImageUploader

    belongs_to :user
end
