class KittensController < ApplicationController

    def index
        @kittens = Kitten.all
    end

    def new
        @kitten = Kitten.new
    end

    def show 
        @kitten = Kitten.find(params[:id])
    end

    def edit 
        @kitten = Kitten.find(params[:id])
    end

    def create 
        @kitten = Kitten.new(kitten_params)
            redirect_to @kitten
        if @kitten.save
            render :new
        else

        end
    end

    def update 
        @kitten = Kitten.find(params[:id])
        if @kitten.update(kitten_params)
            redirect_to @kitten
        else
            redirect_to edit_kitten_path(@kitten)
        end
    end

    def destroy
        @kitten = Kitten.find(params[:id])
        if @kitten.destroy
            redirect_to kittens_path
        else
            redirect_to @kitten
        end
    end

    private
    def kitten_params
        params.require(:kitten).permit(:name, :age, :cutenes, :softness)
    end

end