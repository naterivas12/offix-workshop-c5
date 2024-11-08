class DepartmentsController < ApplicationController
  def index
    @departments = Department.all.order(created_at: :asc)
  end

  # GET departments/new
  def new
    @department = Department.new
    # render "departments/new"
  end

  # POST /departments
  def create
    @department = Department.new(department_params)

    if @department.save
      redirect_to departments_path # /departments
    else
      render "new", status: :unprocessable_entity
    end
  end

  # GET /departments/:id
  def show
    @department = Department.find(params[:id])
    @employees = @department.employees
    # render departments/show
  end

  # GET /departments/:id/edit
  def edit
    @department = Department.find(params[:id])
    # render departments/edit
  end

  # PATCH /departments/:id
  def update
    @department = Department.find(params[:id])

    if @department.update(department_params)
      redirect_to departments_path
    else
      render "edit", status: :unprocessable_entity
    end
  end

  # DELETE /departments/:id
  def destroy
    @department = Department.find(params[:id])
    @department.destroy

    redirect_to departments_path, status: :see_other
  end

  private

  def department_params
    params.require(:department).permit(:name, :description, :cover)
  end
end
