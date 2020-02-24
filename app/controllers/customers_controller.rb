class CustomersController < ApplicationController

  # The below line is added.
  require 'csv'
  # The above line is added.

  def index
    @customers = Customer.all
  end

  # The below lines are added.
  def upload
    CSV.foreach(params[:leads].path, headers: true) do |lead|
      Customer.create(email: lead[0], first_name: lead[1], last_name: lead[2])
    end
    redirect_to customers_path
  end
  # The above lines are added.

end
