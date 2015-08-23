" This file is loaded from after/plugin/after.vim
" which means it loads AFTER the rest of the plugins

NeoBundleCheck
NeoBundleDocs

source ~/.vim/bindings.vim
source ~/.vim/plugins-override.vim

if filereadable(expand("~/.local-after.vim"))
  echo "~/.local-after.vim is deprecated, please move it to ~/.vimrc.after"
  source ~/.local-after.vim
endif

if filereadable(expand("~/.vimrc.after"))
  source ~/.vimrc.after
endif

if has('gui_running')
  if filereadable(expand("~/.local-gui.vim"))
    echo "~/.local-gui.vim is deprecated, please move it to ~/.gvimrc.after"
    source ~/.local-gui.vim
  endif

  if filereadable(expand("~/.gvimrc.after"))
    source ~/.gvimrc.after
  endif
end

"Nates modifications
set modeline
set autochdir
colorscheme vividchalk
highlight OverLength ctermbg=darkred ctermfg=white guibg=darkred
match OverLength /\%>80v.\+/

set list listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×

""indent guides
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#070707 ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#141414 ctermbg=4

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+

set modeline

"Disable nerdtree tabs on startup"
let g:nerdtree_tabs_open_on_gui_startup = 0
let g:nerdtree_tabs_open_on_console_startup = 0
"
