class MeController < ApplicationController
    def index
        @me = current_user
    end

    def edit
        @user = current_user
    end

    def update
        @user = current_user
        @user.assign_attributes(me_params)
        if @user.save(me_params)
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
