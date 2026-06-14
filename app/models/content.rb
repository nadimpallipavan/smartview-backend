class Content < ApplicationRecord
    has_one_attached :video
    has_one_attached :thumbnail_image
  
    validates :title, presence: true
    validates :content_type, presence: true
  
    scope :movies, -> { where(content_type: 'movie') }
    scope :series, -> { where(content_type: 'series') }
  
    def video_url
      video.attached? ? video.url : nil
    end
  
    def thumbnail_url
      thumbnail_image.attached? ? thumbnail_image.url : nil
    end
  end
