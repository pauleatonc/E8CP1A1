def nuevo_html
file = File.new('index.html', 'w')
  print "hola, escriba el primer parrafo para su pagina\n"
  parrafo1 = gets.chomp
  print "escriba el segundo parrafo para su pagina\n"
  parrafo2 = gets.chomp
file.puts "<p> #{parrafo1} </p>\n <p> #{parrafo2} </p>"
file.close
nil
end

def actualiza_html
  file = File.open('index.html', 'a')
  print "Escriba su lista de elementos separados por un espacio\n"
  list = gets.chomp.split(/ /)
unless list.empty?
  file.puts'<ol>'
  list.sort.map { |e| file.puts "<li>#{e}</li>\n"}
  file.puts '</ol>'
end
  file.close
  nil
end

def background_color
    file = File.read('index.html')
    print "escriba un color para su css\n"
    color = gets.chomp
    fg = file.gsub('<p>', "<p style='background-color:#{color};' >")
    File.write('index.html', fg)
    nil
end

#ejerciocio1
nuevo_html
#ejerciocio1
actualiza_html
#ejercicio3
background_color
