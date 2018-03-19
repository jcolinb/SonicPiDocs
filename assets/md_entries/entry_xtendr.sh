printf "<div class="section">\n\n" >> make_entry.html
for file in $1/*.md
do
printf "<div class="entry">\n\n" >> make_entry.html
printf "<div class='content hidden'>\n\n" >> make_entry.html
markdown $file >> make_entry.html
printf "</div>\n\n" >> make_entry.html
printf "</div>\n\n" >> make_entry.html
done
printf "</div>\n\n" >> make_entry.html
