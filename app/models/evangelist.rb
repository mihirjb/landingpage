# == Schema Information
#
# Table name: evangelists
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  fullname   :string(255)
#  phone      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Evangelist < ActiveRecord::Base
  validates_presence_of :email
   validates_uniqueness_of :email, case_sensitive: false
   validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
   validates_presence_of :fullname
   validates_presence_of :phone
   
end
