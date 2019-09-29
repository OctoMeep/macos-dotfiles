:map <F5> :silent !/usr/local/bin/pandoc "%" --pdf-engine /Library/TeX/texbin/pdflatex -V geometry:margin=1in -o "%:r.pdf" && open -a Skim "%:r.pdf"<CR><bar>:redraw!<CR>
:map <F6> :silent !/usr/local/bin/pandoc "%" --pdf-engine /Library/TeX/texbin/pdflatex --toc -V geometry:margin=1in -o "%:r.pdf" && open -a Skim "%:r.pdf"<CR><bar>:redraw!<CR>

