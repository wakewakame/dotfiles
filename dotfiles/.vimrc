" common ==========================================================
se number
se hlsearch
se belloff=all
se backspace=indent,eol,start
se shortmess=filnxtToO
hi LineNr ctermfg=White
hi Search ctermbg=Cyan ctermfg=White
hi Pmenu ctermbg=Black ctermfg=Cyan
hi PmenuSel ctermbg=Cyan ctermfg=White
syntax on
command W w
command Q q
let g:python_recommended_style=0

" indent ============================================================
filetype plugin on
filetype indent on
autocmd FileType * setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType typescript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType javascriptreact setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType typescriptreact setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType css setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
autocmd FileType go setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab

" autoformat ========================================================
autocmd BufWritePost *go silent! !go fmt <afile>
autocmd BufWritePost *go edit
autocmd BufWritePost *go redraw!

" vim-plug ==========================================================
call plug#begin()
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
call plug#end()

" nerdtree ==========================================================
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1

" coc.nvim ==========================================================
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
nnoremap <silent> <expr> <C-e> coc#float#has_scroll() ?
                              \":call coc#float#scroll(1,1)\<CR>" : "\<C-e>"
nnoremap <silent> <expr> <C-y> coc#float#has_scroll() ?
                              \":call coc#float#scroll(0,1)\<CR>" : "\<C-y>"


" vim-gitgutter ==========================================================
se signcolumn=number
se updatetime=250
se scl=yes
