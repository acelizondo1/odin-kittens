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
        if @kitten.save
            flash[:notice] = "Kitten Info Was Saved"
            redirect_to @kitten
        else
            flash[:error] = "Kitten Info Was Not Created"
            render :new
        end
    end

    def update 
        @kitten = Kitten.find(params[:id])
        if @kitten.update(kitten_params)
            flash[:notice] = "Kitten Updated"
            redirect_to @kitten
        else
            flash[:error] = "Issue Updating Kitten Info"
            redirect_to edit_kitten_path(@kitten)
        end
    end

    def destroy
        @kitten = Kitten.find(params[:id])
        if @kitten.destroy
            flash[:notice] = "Kitten Info Deleted"
            redirect_to kittens_path
        else
            flash[:error] = "Issue Deleting Kitten Info"
            redirect_to @kitten
        end
    end

    private
    def kitten_params
        params.require(:kitten).permit(:name, :age, :cuteness, :softness)
    end

end