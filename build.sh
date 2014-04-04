# build once by default
pdflatex -interaction=nonstopmode $1 | grep "!"

# watch for alterations
while inotifywait $1 ; do
  pdflatex -interaction=nonstopmode $1 | grep "!"
done
