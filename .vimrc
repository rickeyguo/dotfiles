set nocompatible "prevent vim freak out when handling stuff like line continuations in vimscript.
set noshowmode "to get rid of mode information since lightline statusline has it

" automatic installation of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"---------------------------------------
"START OF PLUGINS
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

"List of plugins.
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " installing fzf to the system
Plug 'sheerun/vim-polyglot' "a collection of language packs for vim for syntax and indentation support
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
"END OF PLUGINS
"---------------------------------------


"START OF VIM CUSTOMIZATIONS
"Line numbers. Use relative for all lines except the current one
set number                    " Show current line number
set relativenumber            " Show relative line numbers


"Search
set incsearch                 " search as characters are entered
set hlsearch                  " highlight matches

let mapleader = ","
nnoremap <silent> <Leader><Space> :FZF<CR>
let g:airline#extensions#default#section_truncate_width = {}
  
