class LoansController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def show
    end
  
    def index
      if current_user&.has_role?(:admin)
        @loans = Loan.all
      else
        @loans = current_user.loans
      end
    end
    
  
    def new
      @loan = current_user.loans.build
    end
  
    def edit
    end
  
    def create
      @loan = current_user.loans.build(loan_params)
    if @loan.save
      flash[:notice] = "Application has been created successfully."
      redirect_to @loan
    else
      redirect_to new_loan_path, alert: @loan.errors.full_messages.join(", ")
    end
    end
  
    def update
      if @loan.update(loan_params)
        flash[:notice] = "Application has been updated successfully."
        redirect_to @loan
      else
        redirect_to edit_loan_path, alert: @loan.errors.full_messages.join(", ")
      end
    end
  
    def destroy
      @loan = Loan.find(params[:id])
      @loan.destroy
      flash[:alert] = "Application has been deleted successfully." 
      redirect_to loans_path
    end
  
    private
  
    def set_user
      @loan = Loan.find(params[:id])
    end
  
    def loan_params
      params.require(:loan).permit(
        :name,
        :email,
        :middle_name,
        :last_name,
        :date_of_birth,
        :amount,
        :purpose,
        :ssn,
        :phone_number,
        :profession,
        :address,
        :home_number,
        :street_address2,
        :city,
        :state,
        :zip,
        :residence_type,
        :annual_income,
        :employer_name,
        :employer_phone
      )
    end
end
