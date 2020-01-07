"START OF .vimrc

set nocompatible "If you omit this, vim will freak out when handling stuff like line continuations in vimscript.

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


" List ends here. Plugins become visible to Vim after this call.
call plug#end()





"END OF PLUGINS
"---------------------------------------
"START OF VIM CUSTOMIZATIONS

"Line numbers. Use relative for all lines except the current one
set number                     " Show current line number
set relativenumber             " Show relative line numbers

set cursorline                 " highlight current line

"Search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
