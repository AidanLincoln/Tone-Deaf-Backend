class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]

    def profile
    #   puts UserSerializer.new(currentUser)
        @user = User.find(params[:id])
        @users_collections = Collection.where(user_id: @user.id)
        @col_array = []
        for col in @users_collections do
            @col_array.push({collection_info: col, collection_notes: col.notes})
        end
      render json: {user: UserSerializer.new(currentUser), collections: @col_array}
    end
  
    def create
      @user = User.new(user_params)
      if @user.valid?
          #use encode_token method to do JWT.encode (AppController)
          @user.save
          @token = encode_token(@user)
          render json: { user: UserSerializer.new(@user), jwt: @token }
      else
          render json: { error: 'failed to create user' }, status: :not_acceptable
      end
    end
     
    private
      def user_params
        params.require(:user).permit(:username, :password)
      end
end
