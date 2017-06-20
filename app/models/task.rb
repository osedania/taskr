class Task < ApplicationRecord
  has_many :bids
  belongs_to :task_category
  belongs_to :user

  has_attached_file :task_image, styles: { medium: '600x600#', small: '350x350>' }, default_url: "/images/:style/missing.png"

  validates_attachment_content_type :task_image, content_type: /\Aimage\/.*\z/
  validates_presence_of :name, :description, :location, :user, :time_frame
end
