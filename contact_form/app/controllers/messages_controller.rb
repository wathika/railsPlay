class MessagesController < ApplicationController

  def create
    @message = Message.new(message_params)

    respond_to do |format|
      @errorName = []
      @errorContent = []
      if @message.save
        format.js  {flash[:notice] = "Thanks! We've received your message."}
        @resetForm = "1"
      else
        format.js  {render layout: false}
        @message.errors.any?
        #PUSH ERROR MESSAGES INTO ERROR ARRAYS
        if (@message.errors["email"] != nil)
          @errorName.push(@message.errors["email"][0])
        end
        if (@message.errors["content"] != nil)
          @errorContent.push(@message.errors["content"][0])
        end
        @resetForm = "0"
      end
    end
  end


  private
    def message_params
      params.require(:message).permit(:email, :content)
    end

end
