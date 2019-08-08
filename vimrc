"==================================================================
" Normal settings
"==================================================================
set nocompatible            " Use Vim defaults (much better!)

set number
set relativenumber
set wrap
set cursorline
set showcmd
set history=500
set laststatus=2            " always a status line
set encoding=utf-8
set tabstop=4               " tab width
set shiftwidth=4            " multiply lines indentwidth
set expandtab               " <space> insteads of <tab>

set ignorecase
set smartcase

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

"==================================================================
" Plug begins
"==================================================================
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" vim-airline theme {{{
    let g:airline_powerline_fonts = 1
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_symbols.space = "\ua0"
    let g:airline_theme = 'molokai'
" }}}

Plug 'lervag/vimtex'
" vimtex.vim {{{
    let g:tex_flavor='latex'
    let g:vimtex_view_method='zathura'
    let g:vimtex_quickfix_mode=0
    set conceallevel=1
    let g:tex_conceal='abdmg'
" }}}

Plug 'w0rp/ale'
" grammar checker {{{
    let g:ale_sign_error = 'E'
    let g:ale_sign_warning = 'W'
" }}}
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
" markdown-preview {{{
    let g:mkdp_auto_start = 0
    let g:mkdp_auto_close = 1
    let g:mkdp_refresh_slow = 0
    let g:mkdp_command_for_global = 0
    let g:mkdp_open_to_the_world = 0
    let g:mkdp_open_ip = ''
    let g:mkdp_browser = ''
    let g:mkdp_echo_preview_url = 0
    let g:mkdp_browserfunc = ''
    let g:mkdp_preview_options = {
        \ 'mkit': {},
        \ 'katex': {},
        \ 'uml': {},
        \ 'maid': {},
        \ 'disable_sync_scroll': 0,
        \ 'sync_scroll_type': 'middle',
        \ 'hide_yaml_meta': 1
        \ }
    let g:mkdp_markdown_css = ''
    let g:mkdp_highlight_css = ''
    let g:mkdp_port = ''
    let g:mkdp_page_title = '「${name}」'
" }}}

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

"vim-snippets {{{
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<c-b>"
    let g:UltiSnipsEditSplit="vertical"
" }}}

call plug#end()

"==================================================================
"Plug ends
"==================================================================

map tt :NERDTreeToggle<CR>
map mk :MarkdownPreview<CR>

syntax on

"==================================================================
"statusline
"==================================================================

