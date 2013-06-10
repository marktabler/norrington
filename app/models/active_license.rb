class ActiveLicense < ActiveRecord::Base

  belongs_to :machine
  belongs_to :license
  
end
