class Owner < ActiveRecord::Base
  has_many :articles, dependent: :destroy
  validates :owner_name, presence: true, uniqueness: true

  accepts_nested_attributes_for :articles

  def to_param
    owner_name
  end
end
