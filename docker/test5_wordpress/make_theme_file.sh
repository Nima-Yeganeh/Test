cat themes.txt | tr '[:upper:]' '[:lower:]' | sed 's/ /-/g' > themes_new.txt
cat themes_new.txt
