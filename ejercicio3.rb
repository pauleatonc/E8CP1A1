def contar_lineas
file = File.open('peliculas.txt', 'r')
f = file.readlines.each { |l| puts l.split(" ").size}

end

contar_lineas
