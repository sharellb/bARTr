class User < ActiveRecord::Base
  include Gravtastic
  gravtastic 

  geocoded_by :location
  validates_presence_of :location, :profile_name
  validates :profile_name, uniqueness: true
  after_validation :geocode
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :conversations
  has_many :participants

end
