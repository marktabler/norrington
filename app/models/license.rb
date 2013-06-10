class License < ActiveRecord::Base

  has_many :active_licenses, dependent: :destroy
  has_many :machines, through: :active_licenses

  def remaining
    if capacity > 0
      capacity - used_count
    else
      999
    end
  end

  def used_count
    active_licenses.count
  end

end
