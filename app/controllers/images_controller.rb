class ImagesController < ApplicationController

    def index
        images = Image.all
        render :json => images
    end

    def create
        image = Image.new(image_params)
        if image.save
            render json: image
        else
            render json: { error: 'Images not saved!' }
        end
    end 

    def destroy
        image = Image.find(params[:id])
        image.destroy
        render json: { message: 'Images deleted' }
      end

private

    def  image_params
        params.require(:image).permit(:url, :name, :user_id)
    end
end
