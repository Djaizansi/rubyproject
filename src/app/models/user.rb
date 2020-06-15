class User < ApplicationRecord
  resourcify
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  validates :username, presence: true

  after_create :assign_default_role

  has_and_belongs_to_many :roles, :join_table => :users_roles

  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end

end
