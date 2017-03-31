cd ../src/all
find .. -type d -name "*.package" -print0 | while IFS= read -r -d $'\0' line; do
 echo "$line"
 mv "$line" "$(basename $line)"
 ln -rs "../all/$(basename $line)" "$line" 
done