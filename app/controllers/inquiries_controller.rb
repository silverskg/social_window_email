class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new # 追加部分
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      render 'confirm'
    else
      render :new
    end
  end

  def thanks
    @inquiry = Inquiry.new(inquiry_params)
    InquiryMailer.recevied_email(@inquiry).deliver_now
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :relationship, :content)
  end
end
