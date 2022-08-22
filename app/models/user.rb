class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true

  has_many :posts

  def user_able_to_edit(post)
    (self.id == post.user_id)
  end

  def user_able_to_delete(post)
    (self.id == post.user_id) && (post.comments.count == 0)
  end
end
