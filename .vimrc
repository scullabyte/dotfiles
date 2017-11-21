let g:dotvim = {}

let g:dotvim.version = 1
let g:dotvim.default_indent = 2
let g:dotvim.max_column = 80
let g:dotvim.plugin_groups_include = ['core', 'web', 'javascript', 'indents', 'editing', 'navigation', 'autocomplete', 'misc', 'scm', 'go', 'unite']
let g:dotvim.colorscheme = 'github'
let g:dark='molokai'
let g:light='github'
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1
autocmd BufReadPre *.js let b:javascript_lib_use_sugar = 1

autocmd BufNewFile,BufRead *.ts,*.tsx setfiletype typescript

let g:dotvim.colorscheme = g:dark

"Turn on indent guides at start
let g:indent_guides_auto_colors = 1

"Coffeescript two space indent
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab

"Shortcuts for fugitive glog
nmap <c-j> [q
nmap <c-k> ]q
nmap <c-J> [Q
nmap <c-K> ]Q

nnoremap <silent> <leader>gll :Glog --reverse<CR>


"invertColors
function! g:Invert()
   if(g:dotvim.colorscheme == g:dark)
      let g:dotvim.colorscheme = g:light
   else
      let g:dotvim.colorscheme = g:dark
   endif
   exec 'colorscheme '.g:dotvim.colorscheme
endfunc

nnoremap <space>gd :YcmCompleter GoToDefinition<CR>
nnoremap <space>gr :YcmCompleter GoToReferences<CR>
nnoremap <space>gg :YcmCompleter GetType<CR>
nnoremap <space>gD :YcmCompleter GetDoc<CR>
nnoremap <space>rr :YcmCompleter RefactorRename<CR>

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

set nobackup
set noswapfile

" autoread and autowrite
" augroup save
"   au!
"   au FocusLost * wall
" augroup END
" set nohidden
" set nobackup
" set noswapfile
" set nowritebackup
" set autoread
" set autowrite
" set autowriteall

" let g:auto_save = 0  " enable AutoSave on Vim startup

"Quick Search for TODO/FIXME
" MUTED BC OF ANGUALAR TEST BELOW
" map <space>t :Ack! 'TODO\|FIXME'<CR>

" Space to toggle folds.
nnoremap <Space> za
vnoremap <Space> za

" Compile coffeescript in split pane
nnoremap <Space>co :CoffeeCompile vert<CR><c-w>w

" Fold coffeescript
autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

" Yank text to the OS X clipboard
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>"

" Make zO recursively open whatever top level fold we're in, no matter where the
" cursor happens to be.
nnoremap zO zCzO
let g:ackprg = 'ag --nogroup --nocolor -p ~/.agignore --column'
"Scott Banister let g:agprg="~/Development/zommBot/ --column"
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
map <space>t :A<CR> "force save
map <leader>w :w!<CR>

"Tern 
map <space>td :TernDef<CR>
map <space>tt :TernType<CR>
map <space>tr :TernRefs<CR>
map <space>tre :TernRename<CR>

"Template Strings
map <space>jh :JsPreTmpl html<CR>
map <space>jc :JsPreTmplClear<CR>
autocmd FileType javascript JsPreTmpl html
autocmd FileType typescript JsPreTmpl markdown
" autocmd FileType typescript syn clear foldBraces

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
nnoremap <space>ea :vsplit ~/.aliases<cr>
nnoremap <space>D :diffoff!<CR>

"Tmux airline

" let g:tmuxline_powerline_separators = 1

nnoremap <space>ww mz:%s/\s\+$//<cr>:let @/=''<cr>`z
nnoremap ; :

"quick exit
nnoremap <space>d :wq!<cr>

" Move cursor while in insert mode
imap <C-h> <C-o>h
imap <C-j> <C-o>j
imap <C-k> <C-o>k
imap <C-l> <C-o>l

" Helpful underscore manipulation
map <leader>w f_l
map <leader>b hT_
map <leader>e lt_
omap u t_
omap U f_

" Move visual block up/down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Print current path
cmap <C-e> <C-r>=expand('%:p:h')<CR>/

" Make Y consistent with C and D

nnoremap Y y$

set splitbelow        " new hoz splits go below
set splitright        " new vert splits go right

" insert word of the line above
inoremap <C-Y> <C-C>:let @z = @"<CR>mz
			\:exec 'normal!' (col('.')==1 && col('$')==1 ? 'k' : 'kl')<CR>
			\:exec (col('.')==col('$') - 1 ? 'let @" = @_' : 'normal! yw')<CR>
			\`zp:let @" = @z<CR>a

" Remove annoying highlight search thing
nmap <Leader>. :nohl<cr>
nmap <Space>h :nohl<cr>

" save/quit
map <C-s> <esc>:w<cr>
imap <C-s> <esc>:w<cr>
nmap <C-q> <esc>:q<cr>

" Stops vim from saving twice (Gulp watch issues)
set nowritebackup


" Load bundles
source ~/.vim/vimrc
