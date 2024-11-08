class EmployeesController < ApplicationController
  # GET /employees/new?department_id=:id
  def new
    @employee = Employee.new
    @department = Department.find(params[:department_id])
    # render employees/new
  end

  # POST /employees
  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to department_path(@employee.department)
    else
      render "new", status: :unprocessable_entity
    end
  end

  # GET /search?query=x
  def search
    query = params[:query].downcase
    @employees = Employee.where("LOWER(name) LIKE ?", "%#{query}%")
    # render search
  end

  private

  def employee_params
    params.require(:employee).permit(:name, :nationality, :role, :birth_date, :department_id,
                                     :avatar)
  end
end
