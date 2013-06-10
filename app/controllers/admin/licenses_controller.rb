class Admin::LicensesController < ApplicationController

  before_filter :admin_required

  def edit
    @license = License.find(params[:id])
  end

  def update
    @license = License.find(params[:id])
    @license.update_attributes(license_params)
    return redirect_to admin_licenses_path
  end

  private

  def license_params
     params.require(:license).permit(:name, :capacity)
  end
end
