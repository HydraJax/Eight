class Thing < ActiveRecord::Base

  validates :name, 
            length: {in: 3..250}
  validates :description,
            length: {maximum: 500}
  validates :user_id, presence: true

  belongs_to :user

  # validates :description, allow_nil: true,
  #           length: { maximum: 1000 }

  # validates :name, length: { in: 2..100 },
  #         presence: true

end
