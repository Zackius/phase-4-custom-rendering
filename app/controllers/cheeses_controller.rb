class CheesesController < ApplicationController

  # GET /cheeses
  def show
    cheese = Cheese.find_by(id:  params[:id])
    if cheese 
      render json: cheese, except: [:create_at, :updated_at],  methods: [:summary]
    else
      render json:  {error: 'Cheese not Found'}, status: :not_found
    end
    
  end

end
