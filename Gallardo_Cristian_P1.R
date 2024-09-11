n <- 645
numbers <- c((1:5))
numbers <- c((1:5)+n)

print (numbers)

pepito <- function(numero){
  return(numero*numero)
}

person <- data.frame(
  "name" = c("Maria","Laura","Rosa"),
  "age" = 17:19,
  "city" = c("Dubai","Uruguay","South Korea")
)

agePerson <- c(person$age)

for(num in 1: nrow(person)){
  if(person$age[num]>18){
    print(person$name[num])
  }
}

person_sorted <- person[order(person$age), ]

city_age_table <- table(person_sorted$city)

print(city_age_table)

city_freq <- table(person$city)

pie(city_freq,
    main = "Distribución de Personas por Ciudad",
    col = rainbow(length(city_freq)),  # Colores para las porciones
    labels = paste(names(city_freq), "\n", city_freq)  # Etiquetas con nombres y frecuencias
)
