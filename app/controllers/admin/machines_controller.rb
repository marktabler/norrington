class Admin::MachinesController < ApplicationController
  
  before_filter :admin_required
  
  def edit
    @machine = Machine.find(params[:id])
  end

  def update
    @machine = Machine.find(params[:id])
    @machine.update_attributes(machine_params)
    return redirect_to admin_machines_path
  end

  def create
    @machine = Machine.create(machine_params)
    return redirect_to admin_machines_path
  end

  def destroy
    @machine = Machine.find(params[:id])
    @machine.destroy
    return redirect_to admin_machines_path
  end
  
  private

  def machine_params
     params.require(:machine).permit(:barcode)
  end
end
