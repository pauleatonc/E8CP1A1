def contar_lineas
file = File.open('peliculas.txt', 'r')
print file.readlines.length
file.close
end

contar_lineas
