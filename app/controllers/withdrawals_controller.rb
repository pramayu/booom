class WithdrawalsController < ApplicationController
  
  before_action :signed_in_user
  before_action :set_withdr, only: [:update_wr, :delete_wr]


  def create
    @withdrawal = current_user.withdrawals.build(withdrawal_params)
    @index = 0
    @index += 1
    if current_user.balance < @withdrawal.mount
      redirect_to dashboard_path
    elsif current_user.balance >= @withdrawal.mount
      if @withdrawal.save
        respond_to do |format|
          format.html { root_path }
          format.js
        end
      end
    end
  end

  def update_wr
    if @withdr.user.balance < @withdr.mount
      redirect_to dashboard_path
    else
      @withdr.update status: true
      puts "#{@newbalance = @withdr.user.balance - @withdr.mount}"
      @withdr.user.update balance: @newbalance
    end
  end

  def delete_wr
    @withdr.destroy
  end

  private

  def set_withdr
    @withdr = Withdrawal.find(params[:id])
  end

  def withdrawal_params
    params.require(:withdrawal).permit(:mount, :status, :address)
  end

end
