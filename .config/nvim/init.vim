""" PLUG-INS MANAGER: Vim-plug config """
call plug#begin()
Plug 'vim-airline/vim-airline'         "Better status line
Plug 'jaredgorski/spacecamp'           "Color themes
Plug 'tomasiser/vim-code-dark'
Plug 'scrooloose/syntastic'            "Syntax checking
Plug 'davidhalter/jedi-vim'            "Autocompletion, PyDoc
Plug 'preservim/nerdtree'              "File tree
Plug 'ryanoasis/vim-devicons'          "Icons in the file tree. Required this in Ubuntu: https://github.com/ryanoasis/vim-devicons/issues/85#issuecomment-622361159
Plug 'Xuyuanp/nerdtree-git-plugin'     "Git status flag in the file tree
Plug 'tpope/vim-commentary'            "Toggle comment line/block with gc and gC
Plug 'michaeljsmith/vim-indent-object' "Treat indentation as a block
Plug 'jiangmiao/auto-pairs'            "Insert/delete parentheses in pairs
Plug 'tpope/vim-abolish'               "Bulk word replacement, substitutions and coercions
Plug 'mhinz/vim-startify'              "Start-up page
Plug 'mattn/emmet-vim'                 "emmet
call plug#end()

""" THEMES """
" colorscheme spacecamp
colorscheme codedark
let g:airline_theme = 'codedark'
let g:airline_powerline_fonts = 1

""" SYNTAX CHECKING """
let g:syntastic_python_checkers = ["mypy", "python"]
let g:syntastic_javascript_checkers=['jshint']

""" NERDTREE """
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeIgnore = []

""" TERMINAL """
" In terminal, go to normal mode with ESC:
tnoremap <Esc> <C-\><C-n>
command! Sterm split | terminal
command! Vterm vsplit | terminal
autocmd TermOpen * startinsert
autocmd TermOpen * set nonumber norelativenumber

""" TABS """
autocmd FileType * set tabstop=2|set shiftwidth=2|set expandtab|set softtabstop=2
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab|set softtabstop=4
autocmd FileType text,markdown set noexpandtab

""" EMMET """
let g:user_emmet_install_global = 0     "Don't load globally
autocmd FileType html,css EmmetInstall

""" MISCELLANEOUS """
set number                              "Show line number for current line
set relativenumber                      "Relative numbers for other lines
set clipboard+=unnamedplus              "Make system clipboard read VIM register
