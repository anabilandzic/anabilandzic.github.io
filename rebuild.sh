
directory="${0%/*}";
mustache "$directory"/data.yml "$directory"/index.mustache > "$directory"/index.html; 
mustache "$directory"/data.yml "$directory"/about.mustache > "$directory"/about.html; 
mustache "$directory"/data.yml "$directory"/contact.mustache > "$directory"/contact.html;
sass --update --default-encoding=UTF-8 "$directory"/scss:"$directory"/public/;
