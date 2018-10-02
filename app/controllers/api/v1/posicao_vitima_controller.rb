class Api::V1::PosicaoVitimaController < ApplicationController

	before_action :set_vitima, only: [:nova_posicao]

	def nova_posicao
		@vitima.latitude = vitima_params[:latitude]
		@vitima.longitude = vitima_params[:longitude]
		@vitima.save

		render json: @vitima, status: :ok
	end

	private
 
   # Use callbacks to share common setup or constraints between actions.
 
   def set_vitima
 
     @vitima = Vitima.find(params[:id])
 
   end
 
   # Only allow a trusted parameter "white list" through.
 
   def vitima_params
 
     params.permit(:id, :nome, :latitude, :longitude)
 
   end

end
