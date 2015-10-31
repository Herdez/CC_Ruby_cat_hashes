#representación del juego gato
def boards()
	caty = ["X", "O"]
	play = Array.new(3) {Array.new(3)}
	for row in 0..2
		for col in 0..2
			options = caty.shuffle
			play[row][col] = options[0]
		end
	end
	for row in 0..2
    for col in 0..2
      value = play[row][col]
      printf "%-4s", "|#{value}|"
      if col == 2
        print "\n"
      end
    end
  end
end

#it initializes 'board' method
boards()


#nested arrays in hashes
array_hash = [{"Nombre" => "Rodrigo García", "Edad" => 13, "Genero" => "Masculino", "Grupo" => "Primero", "Calificaciones" => [9, 9, 7, 6, 8]}, 
							{"Nombre" => "Fernanda Gonzales", "Edad" => 12, "Genero" => "Femenino", "Grupo" => "Tercero", "Calificaciones" => [6, 9, 8, 6, 8]},
							{"Nombre" => "Rodrigo García", "Edad" => 13, "Genero" => "Masculino", "Grupo" => "Primero", "Calificaciones" => [9, 9, 7, 6, 8]},
							{"Nombre" => "Ana Espinoza", "Edad" => 14, "Genero" => "Femenino", "Grupo" => "Segundo", "Calificaciones" => [9, 9, 6, 8, 8]},
							{"Nombre" => "Pablo Moran", "Edad" => 11, "Genero" => "Masculino", "Grupo" => "Segundo", "Calificaciones" => [7, 8 , 9, 9, 8]}]

p array_hash[0] == {"Nombre" => "Rodrigo García", "Edad" => 13, "Genero" => "Masculino", "Grupo" => "Primero", "Calificaciones" => [9, 9, 7, 6, 8]}
p array_hash[2] == {"Nombre" => "Rodrigo García", "Edad" => 13, "Genero" => "Masculino", "Grupo" => "Primero", "Calificaciones" => [9, 9, 7, 6, 8]}
p array_hash[3] == {"Nombre" => "Ana Espinoza", "Edad" => 14, "Genero" => "Femenino", "Grupo" => "Segundo", "Calificaciones" => [9, 9, 6, 8, 8]}
p array_hash[4]	== {"Nombre" => "Pablo Moran", "Edad" => 11, "Genero" => "Masculino", "Grupo" => "Segundo", "Calificaciones" => [7, 8 , 9, 9, 8]}

p array_hash[0].keys[1] == "Edad"
p array_hash[3]["Genero"] == "Femenino"
p array_hash[2].keys[3] == "Grupo"
p array_hash[0].values[4] == [9, 9, 7, 6, 8]

