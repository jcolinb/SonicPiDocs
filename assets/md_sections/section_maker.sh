rm sections.html
for file in *.md
do
touch entries.html
rm entries.html
printf "<div class='header'>\n\n" >> sections.html
markdown $file >> sections.html
printf "</div>\n\n" >> sections.html
done
