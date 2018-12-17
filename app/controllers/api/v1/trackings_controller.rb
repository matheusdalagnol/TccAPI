module Api
  module V1
    class TrackingsController < ApplicationController
      # ação de listagem (todos as posições de agressores e de vítimas)
      def index
        @tracks = Track.all

        render json: @tracks, status: :ok
      end
    
      # exibe apenas 1 posição, sendo ela  vítima ou de agressor
      def show
        @track = Track.find(params[:id])

        render json: @track, status: :ok
      end
    
      #receber os dados do agressor do arduino
      def aggressor_create 
        # cria uma nova posição no banco de dados
        # contendo os dados de lat/long e também do recurso (vitima/agressor)
        track = Track.new(track_params)

        track.save!

        render json: @track, status: :ok
      end

      def victim_check_distance

        track = Track.new(track_params)

        track.save!

        # trackable se refere a vitima, pois está recebendo os dados do app, que é da vítima, 
          #dependendo da distancia entre as partes, será retornado uma mensagem de aviso ou não
        # resposta = CheckDistance.new.check track.trackable
      
        #resposta = Track.where(trackable: track.trackable.aggressor).last
        
        distance = CheckDistance.new.check track.trackable
        coords = Track.where(trackable: track.trackable.aggressor).last

        resposta = {distance: distance, coords: coords}
          
        render json: resposta, status: :ok
      
      end 
      private

      def track_params
        params
          .permit(:trackable_id, :trackable_type, :latitude, :longitude, :id)
      end
    end
  end
end