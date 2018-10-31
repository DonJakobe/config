execute pathogen#infect()
syntax on
filetype plugin indent on
set mouse=r
set number
set relativenumber
set hlsearch
set incsearch
set wrap lbr
set clipboard=unnamedplus
set path+=**
set wildmenu

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Enable folding
set foldmethod=indent
set foldlevel=99

set spelllang=en
set clipboard=unnamedplus

set noerrorbells visualbell t_vb=

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
map <PageUp> <nop>
map <Pagedown> <nop>

" Disable Arrow keys in Insert mode
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>
imap <PageUp> <nop>
imap <Pagedown> <nop>

" move between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

autocmd FileType sh inoremap <b #!/bin/bash<Enter>

autocmd FileType h inoremap <f printf("FOOOOOOOOO!\n");
autocmd FileType c inoremap <f printf("FOOOOOOOOO!\n");

command Jmp call feedkeys("/<+>\<CR>\"_c3l")
autocmd FileType *tex,rmd inoremap <Space><Space> <Esc>/<+><Enter>"_c3l
autocmd FileType *tex,rmd inoremap <<Space> <+>

autocmd FileType *tex set spell 

autocmd FileType *tex inoremap <ti \textit{}<Space><+><Esc>T{i
autocmd FileType *tex inoremap <tb \textbf{}<Space><+><Esc>T{i
autocmd FileType *tex inoremap <tt \texttt{}<Space><+><Esc>T{i
autocmd FileType *tex inoremap <mr \mathrm{}<Space><+><Esc>T{i
autocmd FileType *tex inoremap <mi \mathit{}<Space><+><Esc>T{i

autocmd FileType *tex nnoremap <ti bi\textit{<Esc>ea}<Esc>
autocmd FileType *tex nnoremap <tb bi\textbf{<Esc>ea}<Esc>
autocmd FileType *tex nnoremap <tt bi\texttt{<Esc>ea}<Esc>

autocmd FileType *tex inoremap <q \glqq<Space>\grqq{}<Space><+><Esc>F\i

autocmd FileType *tex inoremap <s \section{}<Enter><+><Esc>kt}a
autocmd FileType *tex inoremap <ss \subsection{}<Enter><+><Esc>kt}a
autocmd FileType *tex inoremap <sss \subsubsection{}<Enter><+><Esc>kt}a
autocmd FileType *tex inoremap <p \paragraph{}<Enter><+><Esc>kt}a

autocmd FileType *tex inoremap <eq \begin{equation}<Enter><Esc>d0i\end{equation}<Esc>k<End>A<Enter>
autocmd FileType *tex inoremap <al \begin{align}<Enter><Esc>d0i\end{align}<Esc>k<End>A<Enter>
autocmd FileType *tex inoremap <ag \begin{algorithm}<Enter><Esc>d0i\end{algorithm}<Esc>k<End>A<Enter>
autocmd Filetype *tex inoremap <fi <Esc>:-1read $HOME/templates/tex/snippets/figure<CR>:Jmp<CR>
autocmd Filetype *tex inoremap <tb <Esc>:-1read $HOME/templates/tex/snippets/table<CR>:Jmp<CR>
autocmd FileType *tex inoremap <expr> <b "\\begin{" . input("") . "<Esc>yiwA}<Enter>\\end{<Esc>pA}<Enter><Esc>kkA<Enter><Tab>"
autocmd FileType *tex inoremap <c \begin{columns}<Enter><Esc>d0i\end{columns}<Esc>k<End>A<Enter>\column{}<Esc>i
autocmd FileType *tex inoremap <i \begin{itemize}<Enter><Esc>d0i\end{itemize}<Esc>k<End>A<Enter>\item<Space>

autocmd FileType *tex inoremap <fr \begin{frame}<Enter><Esc>d0i\end{frame}<Esc>k<End>A<Enter>

autocmd FileType *rmd inoremap <rm ---<Enter>title:<Enter>author:<Space>Jakob<Space>Staab<Enter>output:<Space>pdf_document<Enter>---<Enter><+><Esc>?title<Enter>A<Space>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"IDE settings
"
" sample settings for vim-r-plugin and screen.vim
" Installation
"       - Place plugin file under ~/.vim/
"       - To activate help, type in vim :helptags ~/.vim/doc
"       - Place the following vim conf lines in .vimrc
" Usage
"       - Read intro/help in vim with :h vim-r-plugin or :h screen.txt
"       - To initialize vim/R session, start screen/tmux, open some *.R file in vim and then hit F2 key
"       - Object/omni completion command CTRL-X CTRL-O
"       - To update object list for omni completion, run :RUpdateObjList
" My favorite Vim/R window arrangement
"	tmux attach
"	Open *.R file in Vim and hit F2 to open R
"	Go to R pane and create another pane with C-a %
"	Open second R session in new pane
"	Go to vim pane and open a new viewport with :split *.R
" Useful tmux commands
"       tmux new -s <myname>       start new session with a specific name
"	tmux ls (C-a-s)            list tmux session
"       tmux attach -t <id>        attach to specific session
"       tmux kill-session -t <id>  kill specific session
" 	C-a-: kill-session         kill a session
" 	C-a %                      split pane vertically
"       C-a "                      split pane horizontally
" 	C-a-o                      jump cursor to next pane
"	C-a C-o                    swap panes
" 	C-a-: resize-pane -L 10    resizes pane by 10 to left (L R U D)
" Corresponding Vim commands
" 	:split or :vsplit      split viewport
" 	C-w-w                  jump cursor to next pane-
" 	C-w-r                  swap viewports
" 	C-w C-++               resize viewports to equal split
" 	C-w 10+                increase size of current pane by value

" To open R in terminal rather than RGui (only necessary on OS X)
" let vimrplugin_applescript = 0
" let vimrplugin_screenplugin = 0
" For tmux support
let g:ScreenImpl = 'Tmux'
let vimrplugin_screenvsplit = 1 " For vertical tmux split
let g:ScreenShellInitialFocus = 'shell'
" instruct to use your own .screenrc file
let g:vimrplugin_noscreenrc = 1
" For integration of r-plugin with screen.vim
let g:vimrplugin_screenplugin = 1
" Don't use conque shell if installed
let vimrplugin_conqueplugin = 0
" map the letter 'r' to send visually selected lines to R
let g:vimrplugin_map_r = 1
" see R documentation in a Vim buffer
let vimrplugin_vimpager = "no"
"set expandtab
set shiftwidth=4
set tabstop=8
" start R with F2 key
map <F2> <Plug>RStart
imap <F2> <Plug>RStart
vmap <F2> <Plug>RStart
" send selection to R with space bar
vmap <Space> <Plug>RDSendSelection
" send line to R with space bar
nmap <Space> <Plug>RDSendLine

" Use Ctrl+Space to do omnicompletion:
if has("gui_running")
   inoremap <C-Space> <C-x><C-o>
else
   inoremap <Nul> <C-x><C-o>
endif

""" RMAKEDOWN

autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>
