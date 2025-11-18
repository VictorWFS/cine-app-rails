class ReviewsController < ApplicationController
    before_action :authenticate_user!

    def create
        @movie = Movie.find(params[:movie_id])

        @review = @movie.reviews.build(review_params)

        @review.user = current_user

        if @review.save
            redirect_to @movie, notice: "Crítica adicionada com sucesso!"
        else
            redirect_to @movie, alert: "Erro ao salvar crítica."
        end
    end
    private
    def review_params
        params.require(:review).permit(:rating, :coment)
    end
end
