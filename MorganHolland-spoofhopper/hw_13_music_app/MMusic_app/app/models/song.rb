# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :string
#  length     :string
#  genre      :string
#  year       :integer
#  artist_id  :integer
#  lyrics     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :reviews, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end
