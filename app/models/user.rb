class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :souls
  has_many :guams
  has_many :taipeis
  has_many :hawais
  has_many :hongkongs
  has_many :balis
  has_many :bankokus
  has_many :sebs
  has_many :singapauls
end
