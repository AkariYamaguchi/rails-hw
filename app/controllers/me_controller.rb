class MeController < ApplicationController
    def index
        @me = User.find_by(id:params[:id])
    end

    def edit
        @me=User.find_by(id:params[:id])
    end

    def update
        @me= current_user
        @me.name = params[:name]
        @me.save
        redirect_to("/me")
        flash[:notice]="ユーザー情報を編集しました"

    end
end
