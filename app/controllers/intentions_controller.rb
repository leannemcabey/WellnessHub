class IntentionsController < ApplicationController
    before_action :find_intention, only: [:edit, :update, :destroy]

    def new
      @intention = Intention.new
    end

    def create
      @intention = Intention.new(intention_params)
      @intention.user_id = session[:user_id]
      @intention.complete = 0
      @intention.save

      if @intention.id
        flash[:messages] = 'Your new Intention has been added!'
        redirect_to user_path(current_user)
      else
        flash[:errors] = @intention.errors.full_messages
        render :new
      end
    end

    def edit
    end

    # This will only be for changing the name
    # We will define a custom method to mark as complete or incomplete
    def update
      if @intention.update(intention_params)
        redirect_to user_path(current_user)
      else
        flash[:errors] = @intention.errors.full_messages
        render :edit
      end
    end

    def change_status
      find_intention
      @intention.complete = !@intention.complete
      @intention.save
      redirect_to user_path(current_user)
    end

    def destroy
      @intention.destroy
      redirect_to user_path(current_user)
    end

    private

      def intention_params
        params.require(:intention).permit(:name)
      end

      def find_intention
        @intention = Intention.find(params[:id])
      end

end
