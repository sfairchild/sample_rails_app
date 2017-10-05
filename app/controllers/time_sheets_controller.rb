class TimeSheetsController < ApplicationController
  def index
    @time_sheets = TimeSheet.all
  end

  def new
  	@time_sheet = TimeSheet.new
  end
end
