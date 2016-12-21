class CreaturesController < ApplicationController
    def index
      @creatures = Creature.all
    end

    def new
        @creature = Creature.new
    end

    def create
        creature = Creature.create(creature_params)
        redirect_to creature_path(creature)
    end

    def show
        creature_id = params[:id]
        @creature = Creature.find_by_id(creature_id)
    end

    def edit
        creature_id = params[:id]
        @creature = Creature.find_by_id(creature_id)
    end

    def update
        creature_id = params[:id]
        creature = Creature.find_by_id(creature_id)
        creature.update_attributes(creature_params)
        redirect_to creature_path(creature)

    end




    private
    def creature_params
        creature_params = params.require(:creature).permit(:name, :description)
    end

end
