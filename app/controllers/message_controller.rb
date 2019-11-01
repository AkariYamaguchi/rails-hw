class MessageController < ApplicationController
    def create
    message = Message.create!(message_params)
    redirect_to message
    end

  private
    def message_params
      params.require(:message).permit(:title, :content, images: [])
      @message.images.attach(params[:images])
      @message.images.attached?
    end


end
