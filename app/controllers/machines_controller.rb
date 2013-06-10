class MachinesController < ApplicationController

  before_filter :login_required

  def search
    machine = Machine.find_by_barcode(params[:barcode])
    if machine
      return redirect_to machine_path(machine)
    else
      return redirect_to machines_path
    end
  end

  def show
    @machine = Machine.find(params[:id])
  end
end
