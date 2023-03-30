#!/bin/bash

# Проверяем, что передан путь к директории
if [ $# -eq 0 ]; then
  echo "Usage: $0 <directory>"
  exit 1
fi

# Проверяем, что директория существует
if [ ! -d "$1" ]; then
  echo "Error: $1 is not a directory"
  exit 1
fi

# Удаляем все файлы с расширениями .bak, .tmp, .backup в директории
find "$1" -type f \( -name "*.bak" -o -name "*.tmp" -o -name "*.backup" \) -delete

echo "Directory $1 cleaned successfully"
