filetype plugin indent on
lua require('plugins')

colorscheme catppuccin

set nocompatible
set number
set relativenumber
set breakindent
set tabstop=4
set shiftwidth=4
set expandtab
set timeoutlen=150
set signcolumn=number
set nowrap
set showtabline=2
set nofoldenable
set scrolloff=1
set spell
set spelllang=en_us
set showcmd

set encoding=utf-8
set conceallevel=2

nnoremap <C-n> :NvimTreeToggle<CR>

autocmd BufEnter *.tex setlocal foldmethod=expr
autocmd BufEnter *.tex setlocal foldexpr=vimtex#fold#level(v:lnum)
autocmd BufEnter *.tex setlocal foldtext=vimtex#fold#text()

hi SyntasticErrorSign ctermfg=1 ctermbg=none
hi SyntasticWarningSign ctermfg=2 ctermbg=none
hi SyntasticStyleErrorSign ctermfg=1 ctermbg=none
hi SyntasticStyleWarningSign ctermfg=2 ctermbg=none

if g:colors_name == 'snazzy'
    set nocursorline

    hi clear SpellRare
    hi SpellRare guifg=NONE guibg=NONE gui=underline,italic ctermfg=NONE ctermbg=NONE cterm=underline,italic
    hi clear SpellCap
    hi SpellCap guifg=NONE guibg=NONE gui=underline,italic ctermfg=NONE ctermbg=NONE cterm=underline,italic
    hi clear SpellLocal
    hi SpellLocal guifg=NONE guibg=NONE gui=underline,italic ctermfg=NONE ctermbg=NONE cterm=underline,italic
    hi clear SpellBad 
    hi SpellBad guifg=NONE guibg=NONE gui=underline,italic ctermfg=NONE ctermbg=NONE cterm=underline,italic

    hi clear CursorLine
    hi CursorLine guifg=NONE guibg=#303242 gui=NONE ctermfg=236 ctermbg=NONE cterm=NONE

    hi clear Folded
    hi Folded term=standout cterm=bold ctermfg=243 ctermbg=237 gui=bold guifg=#606580 guibg=#303242 guisp=#343642

    hi clear Visual
    hi Visual guifg=NONE guibg=#3a3d4d guisp=#3a3d4d gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
endif
if g:colors_name == 'catppuccin'
    hi Comment guifg=#686c87
    hi LineNr guifg=#686c87
    hi IndentBlankLineChar guifg=#686c87
endif

" PLUGIN OPTIONS

"snazzy transparent background
let g:SnazzyTransparent = 1

"tokyonight transparent background
let g:tokyonight_transparent = 1

" lervag/vimtex setup
let g:tex_flavor='latex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=1
let g:vimtex_compiler_latexmk = {
            \ 'build_dir' : 'build',
            \}
let g:tex_conceal='abdmgs'
let g:vimtex_view_skim_sync = 1

