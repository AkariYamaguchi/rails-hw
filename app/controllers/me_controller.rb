class MeController < ApplicationController
    def index
    end
    def edit

    end
    def update
        # @user=Me.new(name:params[:name])
        # @user.save
        if current_user.save
            redirect_to("/me")
            flash[:notice]="ユーザー情報を編集しました"
        end
    end
end
