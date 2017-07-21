class UsersController < ApplicationController
	before_filter :confirm_logged_in, :only => [:show]
end
