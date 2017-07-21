"Pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
filetype indent on
filetype plugin on
set laststatus=2
"Powerling bindings
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set t_Co=256
set term=screen-256color
colorscheme tir_black
highlight LineNr ctermfg=16
syntax on
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set number
filetype indent plugin on
set backspace=2


" Use bracket folding method
set foldmethod=marker

"use python2 to check python sytax
let g:syntastic_python_python_exec = '/usr/bin/python2'
let g:syntastic_ansible_checkers = ['ansible-lint']

"Vim indent guides
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=236
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=234
let g:indent_guides_guide_size = 1

"Syntastic recommends
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"Syntastic no like params
let g:syntastic_puppet_puppetlint_args = "--no-autoloader_layout-check --no-class_inherits_from_params_class-check"

"Syntastic check yaml files
let g:syntastic_yaml_checkers = [ 'yamllint' ]

"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<^C>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"Use 'nu' to set or unset number
map nu :set invnumber<CR>

"Whitespace at the end of lines bad
match ErrorMsg '\s\+$'

"Python-mode settings
let g:pymode_folding = 0
