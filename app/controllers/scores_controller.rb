class ScoresController < ApplicationController

    def index
        scores = Score.all
        render :json => scores
    end

    def create
        score = Score.find_or_create_by(gamelevel: params[:gamelevel], user_id: params[:user_id])
        # score = Score.new(score_params)
        score.number_of_flips = params[:number_of_flips]
        score.finish_time = params[:finish_time]
        if score.save
            render json: score
        else
            render json: { error: 'scores not saved!' }
        end
    end 

private

    def  score_params
        params.require(:score).permit(:finish_time, :number_of_flips, :user_id, :gamelevel)
    end
end
