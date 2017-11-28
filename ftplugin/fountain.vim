setlocal spell spelllang=en
setlocal spellcapcheck=
setlocal wrap
setlocal nonumber

nnoremap <leader>ps :wa<CR>  :! fountain2pdf % && open -a preview %:r.pdf <CR>
nnoremap <leader>pf :wa<CR>  :! fountain2fdx % && open %:r.fdx <CR>

setlocal foldmethod=expr
setlocal foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'^[IE][NX\\/][TE].*$'?'<1':1
setlocal foldlevel=1

:Goyo 80x100%
:SoftPencil
