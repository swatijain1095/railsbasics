class FileexportemployeesController < ApplicationController
  def index
    @employees=Fileexportemployee.all
  end

  def export_as
    @employees = Fileexportemployee.all
		if params[:export_type] == 'pdf'
			export_as_pdf
    elsif params[:export_type] == 'csv'
			export_as_csv
    elsif params[:export_type] == 'txt'
			export_as_txt
    elsif params[:export_type] == 'xls'
			export_as_xls
    elsif params[:export_type] == 'docx'
			export_as_docx
		else
			redirect_to root_path
		end
  end

  private
  def export_as_pdf
    Fail
  end

  def export_as_csv
    Fail
  end

  def export_as_txt
    Fail
  end

  def export_as_xls
    Fail
  end

  def export_as_docx
    Fail
  end
end
