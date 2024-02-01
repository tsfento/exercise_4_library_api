class UsersController < ApplicationController
    def posts_index
        user = User.find(params[:user_id])
        user_posts = user.posts

        render json: user_posts, status: :ok
    end
end
