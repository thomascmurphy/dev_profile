class User < ActiveRecord::Base
  belongs_to :state
  has_many :skills, as: :parent
  has_many :jobs
  has_many :code_samples
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :confirmable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
