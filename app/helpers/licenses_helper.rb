module LicensesHelper

  def install_options(machine)
    licenses = License.all - machine.licenses
    options_for_select(licenses.collect {|l| [l.name, l.id]}) 
  end
end
