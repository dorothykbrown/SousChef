class RecipesController < ApplicationController
  before_action :set_recipe, only: %i[show edit update destroy]
  before_action :authorize_recipe, only: %i[show edit update destroy]
  #skip_after_action :verify_authorized, only: [:show, :new]
  def index
     @difficulties = Recipe.select(:difficulty).distinct
    if params[:category].present?
      @recipes = Recipe.where(category: params[:category])
    else
      @recipes = policy_scope(Recipe).all
    end
  end

  def show
    @recipes = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    authorize @recipe

    if @recipe.save
      redirect_to_recipe_path(@recipe)
    else
      render :new
    end
  end

  def edit() end

  def update
    if @recipe.update(recipe_params)
      redirect_to_recipe_path(@recipe)
    else
      render :edit
    end
  end

  def destroy
    if @recipe.destroy
      redirect_to_recipes_path#, notice: 'Recipe was successfully removed.'
    else
      render :index#, notice: 'You have no recipes to remove.'
    end
  end

  private

  def authorize_recipe
    authorize @recipe
  end

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :time, :difficulty, :rating,
                                   :servings, :category, :notes)
  end
end
