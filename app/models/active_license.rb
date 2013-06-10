class ActiveLicense < ActiveRecord::Base

  belongs_to :machine
  belongs_to :license

  def name
    license.name
  end
end
