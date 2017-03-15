class UnitTrustsController < ApplicationController
before_action :is_authenticated

def index
  #create an instance to be used, refer to the model,
  #find by user id for all unit trusts, check that it matches current user's id,
  #before executing the following action
  if current_user # if you're logged in
    @unit_trust = UnitTrust.where(user_id: current_user.id)
  else
    redirect_to root_path #prefix_path or prefix_url
  end
end

def show
  @unit_trust = UnitTrust.find(params[:user_id])
  if @unit_trust.user_id == current_user.id
    render :show
  else
    redirect_to unit_trusts_path
  end
end

def new
  @unit_trust = UnitTrust.new
end

def create
  @unit_trust= UnitTrust.new(unit_trust_params)
  @unit_trust["user_id"]= current_user.id #need to referrence to a user id as it is a foreign key
  if @unit_trust.save
    flash[:success] = "Investment Details saved"
    redirect_to unit_trusts_path
  else
    render :new
  end
end

  def update
    #computer does not remember that edit was ran
    @unit_trust=UnitTrust.find_by_id(params[:user_id])
    if @unit_trust.update(unit_trust_params)
      redirect_to unit_trust_index_path
    else
      redirect_to edit_unit_trust_path
    end
  end

  def edit
    @unit_trust=UnitTrust.find_by_id(params[:user_id])
  end

  def destroy
    @unit_trust=UnitTrust.find(params[:user_id])
    @unit_trust.destroy
    redirect_to unit_trusts_path
  end

  private

  def unit_trust_params
    params.require(:unit_trust).permit(:name, :fund_house, :sector, :assets, :last_five_years_return, :last_three_years_return, :last_one_year_return, :date_invested, :amount_invested, :initial_nav, :initial_number_units, :date_sold, :nav_sold, :units_sold, :amount_received, :platform_fees, :wrap_fees, :user_id)
  end
end
