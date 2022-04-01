call plug#begin()
Plug 'connorholyday/vim-snazzy'
    let g:SnazzyTransparent = 1

Plug 'folke/tokyonight.nvim'
    let g:tokyonight_transparent = 1

Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'lervag/vimtex'
    let g:tex_flavor='latex'
    let g:vimtex_view_method='skim'
    let g:vimtex_quickfix_mode=1
    let g:vimtex_compiler_latexmk = {
                \ 'build_dir' : 'build',
                \}
    let g:tex_conceal='abdmgs'
"
"Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
"
Plug 'tpope/vim-fugitive'
"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"
"Plug 'sheerun/vim-polyglot'
"
Plug 'tmsvg/pear-tree'
    let g:pear_tree_repeatable_expand = 0
    let g:pear_tree_smart_openers = 1
    let g:pear_tree_smart_closers = 1
    let g:pear_tree_smart_backspace = 1
    let g:pear_tree_pairs = {
                \ '(': {'closer': ')', 'not_in': ['String', 'Comment']},
                \ '[': {'closer': ']', 'not_in': ['String', 'Comment']},
                \ '{': {'closer': '}', 'not_in': ['String', 'Comment']},
                \ "'": {'closer': "'", 'not_in': ['String', 'Comment']},
                \ '"': {'closer': '"', 'not_in': ['String', 'Comment']}
                \ }
call plug#end()
