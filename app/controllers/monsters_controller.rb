class MonstersController < ApplicationController
  def index
    @monsters = Monster.all.order(name: :desc)
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def destroy
    Monster.find(params[:id]).destroy
    redirect_to monsters_path
  end
end
