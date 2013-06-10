class UsersController < ApplicationController

  before_filter :admin_required

end
