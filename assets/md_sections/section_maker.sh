touch sections.html
rm sections.html
i=(1)
for file in *.md
do
touch tmp.html
printf "<div class='header'>\n\n" >> sections.html
markdown $file >> tmp.html
chunk=$(cat tmp.html)
linkstart="<a href='#${i}'><p>"
linkend="</p></a>\n\n<div class='info hidden'>\n\n"
chunk=${chunk/"<p>"/$linkstart}
chunk=${chunk/"</p>"/$linkend}
printf "${chunk}\n\n" >> sections.html
printf "</div>\n\n</div>\n\n" >> sections.html
i=$((i+1))
rm tmp.html
done
