class Machine < ActiveRecord::Base

  has_many :active_licenses, dependent: :destroy
  has_many :licenses, through: :active_licenses

  def install(license)
    active_licenses.create(license_id: license.id)
  end

  def uninstall(license)
    active_licenses.find_by_license_id(license.id).destroy
  end
end
