class Comment < ApplicationRecord
  validates :content, presence: true

  # belongs_to :users, class_name: "User"
  # belongs_to :prototypes,class_name: "Prototype"
  belongs_to :user
  belongs_to :prototype
  

  def text
    content
  end

end
