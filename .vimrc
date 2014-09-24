let g:vimsauce_settings = {}

let g:vimsauce_settings.version = 1
let g:vimsauce_settings.default_indent = 3
let g:vimsauce_settings.max_column = 80
let g:vimsauce_settings.plugin_groups_include = ['core', 'web', 'javascript', 'indents', 'editing', 'navigation', 'autocomplete', 'misc', 'scm']
let g:vimsauce_settings.colorscheme = 'github'
let g:dark='molokai'
let g:light='github'
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
autocmd BufReadPre *.js let b:javascript_lib_use_sugar = 1
let g:vimsauce_settings.colorscheme = g:dark

"Turn on indent guides at start
let g:indent_guides_auto_colors = 1

"invertColors
function! g:Invert()
   if(g:vimsauce_settings.colorscheme == g:dark)
      let g:vimsauce_settings.colorscheme = g:light
   else
      let g:vimsauce_settings.colorscheme = g:dark
   endif
   exec 'colorscheme '.g:vimsauce_settings.colorscheme
endfunc

map <space>i :call g:Invert()<CR>
"Relativenumber
function! NumberToggle()
   if(&relativenumber == 1)
      set number
   else
      set relativenumber
   endif
endfunc
nnoremap <C-m> :call NumberToggle()<cr>
:au FocusLost * :set number
:au FocusGained * :set relativenumber

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
autocmd FocusLost * nested silent! wall


" autoread and autowrite
augroup save
  au!
  au FocusLost * wall
augroup END
set nohidden
set nobackup
set noswapfile
set nowritebackup
set autoread
set autowrite
set autowriteall

let g:auto_save = 1  " enable AutoSave on Vim startup

"Quick Search for TODO/FIXME
" MUTED BC OF ANGUALAR TEST BELOW
" map <space>t :Ack! 'TODO\|FIXME'<CR>

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

" Fold coffeescript
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y
set clipboard=unnamed
" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>"

" Make zO recursively open whatever top level fold we're in, no matter where the
" cursor happens to be.
nnoremap zO zCzO
let g:ackprg = 'ag --nogroup --nocolor -p ~/.agignore --column'
" let g:agprg="~/Development/zommBot/ --column"
nnoremap <leader>ne :NERDTreeToggle<CR>
nnoremap <space>. :Ack ''<left>
nnoremap <space>.j :Ack '' -G js$<left><left><left><left><left><left><left><left>
nnoremap <space>.c :Ack '' -G css$<left><left><left><left><left><left><left><left><left>
nnoremap <space>.h :Ack '' -G html$<left><left><left><left><left><left><left><left><left><left>
nnoremap <space>.s :Ack '' -G scss$<left><left><left><left><left><left><left><left><left><left>
nnoremap <space>.cc :Ack '' -G coffee$<left><left><left><left><left><left><left><left><left><left><left><left>
nnoremap <leader>f gg=G

"Notes shit...
let g:notes_indexfile = '~/Drive/Notes'
nnoremap <space>n :RecentNotes<CR>
nnoremap <space>ns :SearchNotes //<left>
nnoremap <space>nn :Note 
nnoremap <space>nd :DeleteNjavascript-good-parts.zipote <CR>
nnoremap <space>nij i{{{javascript}}}<left><left><left><cr><cr><up>
nnoremap <space>nih i{{{html}}}<left><left><left><cr><cr><up>

"Angular thing to switch to test
map <space>t :A<CR>
"force save
map <leader>w :w!<CR>

" Javascript context color folding
let g:js_context_colors = [ 252, 10, 11, 172, 1, 161, 63 ]
let g:js_context_colors_enabled = 0
noremap <leader>c :JSContextColorToggle <CR>

"Map tab to match
map <tab> %
nnoremap D $
nnoremap H ^
nnoremap L g_

nnoremap <silent> <space>/ :execute 'vimgrep /'.@/.'/g%'<CR>:copen<CR>
nnoremap <space>ez :vsplit ~/.zshrc<cr>
nnoremap <space>ev :vsplit $MYVIMRC<cr>
nnoremap <space>evv :vsplit ~/dotfiles/.vim/vimrc<cr>
nnoremap <space>et :vsplit ~/.tmux.conf<cr>
nnoremap <space>eg :vsplit ~/.gitconfig<cr>
nnoremap <space>D :diffoff!<CR>

nnoremap <space>ww mz:%s/\s\+$//<cr>:let @/=''<cr>`z
nnoremap ; :
"quick exit
nnoremap <space>d :wq!<cr>

"Load that real shit...
source ~/dotfiles/.vim/vimrc
