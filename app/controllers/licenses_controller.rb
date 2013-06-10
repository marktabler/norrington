class LicensesController < ApplicationController

  before_filter :login_required


  def install
    machine = Machine.find(params[:machine_id])
    license = License.find(params[:license_id])
    machine.install(license)
    return redirect_to machine_path(machine)
  end

  def uninstall
    active_license = ActiveLicense.find(params[:id])
    machine = active_license.machine
    active_license.destroy
    return redirect_to machine_path(machine)
  end
end
