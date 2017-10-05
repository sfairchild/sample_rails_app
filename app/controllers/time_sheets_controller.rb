class TimeSheetsController < ApplicationController
  def index
    @time_sheets = TimeSheet.all
  end
end
