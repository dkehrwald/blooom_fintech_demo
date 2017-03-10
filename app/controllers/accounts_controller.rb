class AccountsController < ApplicationController

  def show
    @user = User.find(params[:id])

    @accounts = @user.accounts.order(account_name: :asc).all
  end

  def create
    id = User.find(params[:account][:user_id])

    Account.create(account_params)

    redirect_to account_path(id)
  end

  def edit
    @accounts =  Account.find(params[:id])

  end

  def update
    @accounts =  Account.find(params[:id])

    if @accounts.update(account_params)
      redirect_to account_path(@accounts.user_id)
    else
      render 'edit'
      redirect_to account_path(@accounts.user_id)
    end
  end

  def destroy
    @accounts = Account.find(params[:id])

    @accounts.destroy

    redirect_to account_path(@accounts.user_id)
  end

  private

  def account_params
    params.require(:account).permit(:user_id, :account_type, :account_name, :balance, :holdings)
  end

end
