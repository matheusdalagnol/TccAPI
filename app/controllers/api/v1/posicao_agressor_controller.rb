class Api::V1::PosicaoAgressorController < ApplicationController

 	before_action :set_agressor, only: [:nova_posicao]

	def nova_posicao
		@agressor.latitude = agressor_params[:latitude]
		@agressor.longitude = agressor_params[:longitude]
		@agressor.save

		render json: @agressor, status: :ok
	end

	private
 
   # Use callbacks to share common setup or constraints between actions.
 
   def set_agressor
 
     @agressor = Agressor.find(params[:id])
 
   end
 
   # Only allow a trusted parameter "white list" through.
 
   def agressor_params
 
     params.permit(:id, :nome, :latitude, :longitude)
 
   end

end
