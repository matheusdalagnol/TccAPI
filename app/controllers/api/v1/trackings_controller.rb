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
    
      def create
        # cria uma nova posição no banco de dados
        # contendo os dados de lat/long e também do recurso (vitima/agressor)
        @track = Track.new(track_params).save!

        render json: @track, status: :ok
      end

      private

      def track_params
        params
          .permit(:trackable_id, :trackable_type, :latitude, :longitude, :id)
      end
    end
  end
end