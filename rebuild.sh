
directory="${0%/*}";

# Generate main pages
mustache "$directory"/data.yml "$directory"/index.mustache > "$directory"/index.html; 
mustache "$directory"/data.yml "$directory"/about.mustache > "$directory"/about.html; 
mustache "$directory"/data.yml "$directory"/contact.mustache > "$directory"/contact.html;

# Generate tours pages

mustache "$directory"/tours/got.yml "$directory"/tour_details.mustache > "$directory"/tours/got.html; 
mustache "$directory"/tours/oldtown.yml "$directory"/tour_details.mustache > "$directory"/tours/oldtown.html; 
mustache "$directory"/tours/top3.yml "$directory"/tour_details.mustache > "$directory"/tours/top3.html; 
mustache "$directory"/tours/historical.yml "$directory"/tour_details.mustache > "$directory"/tours/historical.html; 
mustache "$directory"/tours/lokrum.yml "$directory"/tour_details.mustache > "$directory"/tours/lokrum.html; 
mustache "$directory"/tours/museum.yml "$directory"/tour_details.mustache > "$directory"/tours/museum.html; 

# Generate css

sass --update --default-encoding=UTF-8 "$directory"/scss:"$directory"/public/;
