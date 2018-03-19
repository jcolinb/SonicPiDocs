touch sections.html
rm sections.html
i=(1)
for file in *.md
do
printf "<a href='#"$i"'><div class='header'>\n\n" >> sections.html
markdown $file >> sections.html
printf "</div></a>\n\n" >> sections.html
i=$((i+1))
done
