#!/bin/bash

n1=10
n2=7
echo "EL valor de n1 es $n1"
#imprime algo el comando echo

#estructuras
#Operadores condicionales < (-lt) > (-gt) <= (-le) => (-ge)
# == (-eq) != (-ne)
if [ $n1 -gt $n2 ]; then
	echo "la sentencia es verdadera $n1 $n2"
else
	echo "la sentencia es falsa $n1 $n2"
fi

#todo pograma regresa un valor, si es exitoso es 0
ls
res=$?

#nos ayuda a cachar la ultima ejecucion del programa

echo "la ejecucion es $res"
ls
if [[ $? -eq 0 ]]; then
	echo "la sentencia se ejecuto correctamente"
else 
	echo "la sentencia falla"
fi

# Operadores manipular archivos
# -e si un archivo o carpeta existe.
# -d Si es una carpeta.
# -r -w -x si se puede leer si se puede escribir, ejecutar
# -s Si el archivo esta vacío.

file= "./file-demo"

if [[ -s $file ]]; then
	echo "El archivo esta vacio"
else
	echo "El archivo contiene algo"
fi
#operadores logicos AND (&&) OR (||)

if [ -r $file ] && [ -x $file ]; then
	echo "El archivo se puedee leer y ejecutar"
else
	echo "EL archivo no se puede leer ni ejecutar"

fi

# Estructura de control case (switch)
# <<se remplaza>>
# $ = array donde $# ($1,$2,$3,$4 .. $n) -h hola

case $1 in
	hola )
		echo "Bienvenido"
	;;
	adios )
		echo "bye perro"
	;;
	*)
		echo "No entiendo"
	;;
esac

# Estructuras de control iterativas

#while
user=""
while [[ $user != "admin" ]]; do
	read -p "?Cuál es tú usuario?" user
done

#For
for i in {1..5}; do
	echo "el numero es $i"
done

for ((i=0; i<5; i++)); do
	echo "* el número es $i"
done

invitados=( "pedo" "juan" "david" "maria" "lulu" "ivan" )
for invitado in ${invitados[@]}; do
	echo "hola $invitado"
done

#Funciones
suma(){
	echo "HOla desde la función sumar."
}

resta(){
	echo $(( $1 - $2 ))
}

suma
total=$(resta 9 4)
echo "EL total es $total"