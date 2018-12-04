class IntentionsController < ApplicationController

    def new
      @intention = Intention.new
    end

    def create
      @intention = Intention.new(intention_params)
      @intention.user_id = session[:user_id]
      @intention.save

      if @intention.id
        redirect_to user_path(current_user)
      else
        flash[:errors] = @intention.errors.full_messages
        render :new
      end
    end

    def destroy
      @intention.destroy
      redirect_to user_path(current_user)
    end

    private

      def intention_params
        params.require(:intention).permit(:name, :complete => 0)
      end

end
