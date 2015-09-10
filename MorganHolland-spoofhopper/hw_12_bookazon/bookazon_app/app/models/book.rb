# == Schema Information
#
# Table name: books
#
#  id             :integer          not null, primary key
#  title          :string
#  year_published :integer
#  author         :string
#  available      :boolean
#  genre          :string
#  image_url      :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Book < ActiveRecord::Base
end
