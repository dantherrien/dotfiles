map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <S-J> <PAGEDOWN>
map <S-K> <PAGEUP>
map <S-W> :set nowrap!<cr>
map <S-M> :tabnew<cr>
map <C-N> :tabprevious<cr>
map <C-M> :tabnext<cr>

"Replace inside word with yanked word
nnoremap S diw"0P

"NERDTree
let NERDTreeIgnore=['\.pyc']
map <C-O> :NERDTreeToggle<CR>

"allow sudo writing
command W w !sudo tee % >/dev/null

"SVN blame
vmap gl :<C-U>!svn blame -g <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

"PHP Documentor
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i
nnoremap <C-P> :call PhpDocSingle()<CR>
vnoremap <C-P> :call PhpDocRange()<CR>

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

:set nobackup

" :set t_kb=   "breaks stuff
:set tabstop=4  "number of spaces for tabs
:set shiftwidth=4   "number of spaces for tabs in autoindent
" :set cmdheight=2   "number of lines in the cmd window
:set showmode   "shos line numbers and such always
:set incsearch  "displays search as you type
:set showmatch  "jumps cursor to closed bracket briefly
:set nowrap  "turns off wrapping by default, use shift-w to enable/disable later
:set cindent
autocmd FileType php  set smartindent   "use autoindent after {

au filetype php         set omnifunc=phpcomplete#CompletePHP

"default stuff
if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=utf-8,latin1
endif

set nocompatible	" Use Vim defaults (much better!)
"set bs=2		" allow backspacing over everything in insert mode
"set ai			" always set autoindenting on
"set backup		" keep a backup file
set viminfo='20,\"50	" read/write a .viminfo file, don't store more
			" than 50 lines of registers
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " In text files, always limit the width of text to 78 characters
  autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

if has("cscope")
   set csprg=/usr/bin/cscope
   set csto=0
   set cst
   set nocsverb
   " add any database in current directory
   if filereadable("cscope.out")
      cs add cscope.out
   " else add database pointed to by environment
   elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
   endif
   set csverb
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
" if &t_Co > 2 || has("gui_running")
" 	syntax on
" 	set hlsearch
" endif


syntax enable
set background=dark
colorscheme solarized

"if !has('gui_running')
"    " Compatibility for Terminal
"    let g:solarized_termtrans=1
"
"    if (&t_Co >= 256 || $TERM == 'xterm-256color')
"        " Do nothing, it handles itself.
"    else
"        " Make Solarized use 16 colors for Terminal support
"        let g:solarized_termcolors=16
"    endif
"endif

"Highlight extra whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/

