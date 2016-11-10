" Configuration file for vim
"set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set expandtab           " Indentation without hard tabs
set shiftwidth=4        " affects when pressing >>, <<, ==
set softtabstop=4       " insert 4 space when press tab
set ai                  " auto indenting
set si                  " smart indenting
set ts=4
set expandtab           " set tab as 4 spaces
set wrap                " wrap lines
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax enable           " syntax highlighting
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins
"set foldmethod=syntax   " fold functions
"hi Folded ctermfg=black ctermbg=none
highlight LineNr ctermfg=darkgrey   
set mouse=a
set relativenumber
set number              " display number

au BufNewFile,BufRead *.it set filetype=lua  "set .it to be lua syntax highlight


" Don't write backup file if vim is being called by crontab -e
"au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by chpass
"au BufWrite /private/etc/pw.* set nowritebackup
