class InquiriesController < ApplicationController
  def new
    @inquiry = Inquiry.new # 追加部分
  end

  def confirm
  end

  def thanks
  end
end
