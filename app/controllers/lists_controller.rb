class ListsController < ApplicationController

def index
    @lists = List.all
end

def show
  @list = List.find(params[:id])
end

def new
  @list = List.new
end

def create
  @list = List.new(list_params) #takes what ever was given by users in name - creates a new instance pf list.
    @list.save
    redirect_to lists_path(@list) # links back to list show pages- ie category page
end

private
def list_params
  params.require(:list).permit(:name) #requires the list model and the user can change the name
end

end
