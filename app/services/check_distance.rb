class CheckDistance
  def check(vitima)


    # como buscar o agressor
    agressor = vitima.aggressor

    # como pegar a última posição de uma vítima
    ultima_posicao_da_vitima = Track.where(trackable: vitima).last

    # como pegar a última posição de um aggressor
    ultima_posicao_do_aggressor = Track.where(trackable: agressor).last

    distancia = distance_to ultima_posicao_da_vitima, ultima_posicao_do_aggressor

    posicaovitima = distance_to ultima_posicao_da_vitima, ultima_posicao_do_aggressor

    #if distancia < 100000

      distancia.round(2)

    #else 
      
    #  {}

    #end
  end

  # recebe dois objetos da classe track
  def distance_to ultima_posicao_da_vitima, ultima_posicao_do_aggressor

    # cria dois objetos da classe location, com a posicao da vitima e agressor
    loc_agressor = Loc::Location[ultima_posicao_do_aggressor.latitude.to_d, ultima_posicao_do_aggressor.longitude.to_d]
    loc_vitima = Loc::Location[ultima_posicao_da_vitima.latitude.to_d, ultima_posicao_da_vitima.longitude.to_d]
     
    loc_vitima.distance_to loc_agressor

  end
end