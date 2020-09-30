class CocktailsController < ApplicationController
    before_action :set_cocktail, only: [:show]

    def index
      @cocktails = Cocktail.all
    end
  
    def show
    end
  
    def new
      @cocktail = Cocktail.new
    end
  
    def create
      @cocktail = Cocktail.new(cocktail_params)
  
      if @cocktail.save
        redirect_to @cocktail, notice: 'Cocktail was successfully created.'
    end
end