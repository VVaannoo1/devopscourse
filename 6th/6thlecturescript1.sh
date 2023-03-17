#!/bin/bash

# Создаем пустой файл cmd_names.txt, если он не существует
touch cmd_names.txt

# Читаем первые 10 строк из файла и обрабатываем каждую строку
head -n 10 executablefiles.txt | while read line
do
	# Обрезаем путь к файлу по символу "/" и записываем только имя файла в файл cmd_names.txt
	echo "${line##*/}" >> cmd_names.txt
done

echo "Имена файлов успешно записаны в файл cmd_names.txt."
