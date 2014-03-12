# == Schema Information
#
# Table name: projects
#
#  id           :integer          not null, primary key
#  title        :string(255)
#  description  :text
#  created_at   :datetime
#  updated_at   :datetime
#  memberscount :integer
#  membersmax   :integer
#  user_id      :integer
#

class Project < ActiveRecord::Base

  belongs_to :user
  

  




   
  
  

end
