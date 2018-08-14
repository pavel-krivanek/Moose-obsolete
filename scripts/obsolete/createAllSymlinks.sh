cd ../src/all
find .. -type d -name "*.package" -print0 | while IFS= read -r -d $'\0' line; do
  ln -s "$line" "$(basename $line)"
done