class TimeSheetsController < ApplicationController
  def index
    @time_sheets = TimeSheet.all
  end

  def new
  	@time_sheet = TimeSheet.new
  end

  def create
  	@time_sheet = TimeSheet.new(time_sheet_params)
  	@time_sheet.user = current_user
  	@time_sheet.save
  	redirect_to action: :index
  end

  private 
  	def time_sheet_params
  		params.require(:time_sheet).permit(:start_date)
  	end

end
