class MeController < ApplicationController
    def index
        @me = current_user
    end

    def edit
        @user = current_user
    end

    def update
        @me = current_user.update(me_params)
        if @me.save
            redirect_to("/me")
        else
            render("me/edit")
        end
    end

    private

    def me_params
        params.require(:user).permit(:name, :image)
    end
end
