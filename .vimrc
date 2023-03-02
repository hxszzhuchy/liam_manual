
"----------------- Configure for General Setting by Liam Zhu START --------------"
set wrap
set autochdir
set nu
set nocompatible
"set backspace=start
syntax enable

"history
set history=1000
"Ruller
set ru
"Cursor
set cursorline
set cursorcolumn

"----------------- Configure for General Setting by Liam Zhu END ----------------"


"-------------------- Configure for Vision by Liam Zhu BEGIN --------------------"
" Set the Mouse
syntax on
set mouse=a
set number
set hlsearch
set ignorecase smartcase
set incsearch
set t_BE=
set noswapfile
set nobackup
set dir=~/tmp

" Set gvim window location
":call libcallnr( "gvimfullscreen_64.dll", "ToggleFullScreen", 0)
"set lines=45 columns=130
set lines=65
set columns=176
winpos 0 0

" Set Color
"evening, desert, industry, pablo, delek, molokai, phd, solarized, summerfruit256
colorscheme desert

" Set Font
set guifont=Andale\ Mono\ 11
"Windows style:
"set guifont=Andale_Mono:h11
"Duan Fangbing style
"set guifont=CM\ Typewriter\ Asian\ 13
"Li Haojie style
"set guifont=Monospace\ 12

"Auto indent/outdent...
set cindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set noexpandtab
set expandtab
set backspace=2

autocmd Filetype text setlocal textwidth=120

"-------------------- Configure for Vision by Liam Zhu END ---------------------"


"-------------------- Configure for plugin by Liam BEGIN --------------------"
" ### source the plugin ###
"set csprg=/usr/bin/cscope
source /home/user016/.vim/syntax/verilog_systemverilog.vim
"source /home/cn5022/.vim/plugin/verilog_emacsauto.vim
"source /home/cn5022/.vim/plugin/visincrPlugin.vim
source /home/user016/.vim/plugin/NERD_tree.vim

" ### cscope setting ###
"set csto=0                          " 0 means search cscope database first, then search tags file
"set cst                             " use |:cstag|(:cs find g), not default :tag
"set nocsverb                        " do not show if database is added successful
"set csverb                          " show if database is added successful
"" add any database in current directory
"if filereadable("cscope.out")
"    cs add ./cscope.out           " add cscope database
"endif
"
"nmap <C-_>a :cs find a <C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>c :cs find c<C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>d :cs find d<C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>e :cs find e<C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>f :cs find f<C-R>=expand("<cfile>")<CR><CR>
"nmap <C-_>g :cs find g<C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>i :cs find i^<C-R>=expand("<cfile>")<CR>$<CR>
"nmap <C-_>s :cs find s<C-R>=expand("<cword>")<CR><CR>
"nmap <C-_>t :cs find t<C-R>=expand("<cword>")<CR><CR>

" ### ctags setting ###
set tags =tags;
noremap <C-y> <C-O>
filetype plugin indent on

"###  NERDtree setting ###
map <C-n> :NERDTreeToggle<CR>

"auto with Vim starts
autocmd VimEnter * NERDTree | wincmd p
"gvim no arg, then open NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
"close Vim when NERDTree is the last window
"autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" ### bufexplorer settings ###
let g:bufExplorerShowRealtivePath=1 "show relative paths
let g:bufExplorerSplitRight = 1
"let g:bufExplorerSplitVertical = 1 
"let g:bufExplorerSplitVertSize = 30
let g:miniBufExplorerMoreThanOne = 0
"let g:miniBufExplMaxSize = <max hight: default 5>
"let g:miniBufExplForceSyntaxEnable = 1

" ### automatic-verilog setting ###
"support verilog-1995
let g:atv_autoinst_95_support = 1


"-------------------- Configure for plugin by Liam END --------------------"


"--------------- Configure for remap short-key by Liam BEGIN --------------"
" map help-user-guide:
" Mapping method: (n/v/i/c) + (nore) + map. e.g. nmap a c;  inoremap c d;
" <CR> stand for ENTER 

" ### config setting remap ###
"Edit vimr configuration file
nnoremap confe :e $MYVIMRC<CR>
"Edit cshrclocal configuration file
nnoremap confc :e ~/.cshrc<CR>
"Reload vims configuration file
nnoremap confr :source $MYVIMRC<CR>

" ### window setting remap ###
"map <F11> <Esc>:call libcallnr( "gvimfullscreen_64.dll", "ToggleFullScreen", 0)<CR> 
map <F11>  :set lines=65 columns=176<CR>
nmap <C-tab>  :tabnext<cr>

" (optional) replace leader from <\> to <space>.
"let mapleader = "\<space>"
" use \ + z -- zoom in a window in gvim.
nmap <leader>z :call Zoom()<CR>


" ### customed edit setting ###

"find the key-word --- same as * 
map <F9>   *
inoremap <F9>   <Esc> *

"Move in insert mode: A = Alt Key
inoremap <A-n> <left>
inoremap <A-j> <Down>
inoremap <A-k> <Up>
inoremap <A-l> <Right>

"Move to the Begin or End in insert mode
inoremap <A-N> <Esc>^i
inoremap <A-L> <End>

"Move to front Word or Back Word
imap <A-x> <Esc><Left>Bi
imap <A-c> <Esc><Right>Wi


"Open another line in insert mode
inoremap <C-o> <Esc>o
inoremap <C-A-o> <Esc>O


"map <F2>   :set wrap!<CR>
"map <F3>   :%!col -b<CR>
"map <F4>   :s/$/ \\/g<CR>j:let @/=""<CR>
"map <F5>   :s/^/#/g<CR>j:let @/=""<CR>

" history use
:autocmd CmdwinEnter * map <buffer> <F5> <CR>q:

vnoremap ( c()<Esc>hpll
vnoremap { c{}<Esc>hpll
"vnoremap " c""<Esc>hpll
inoremap ( ()<Left>
inoremap [ []<Left>
"inoremap { {}<Esc> 
"autocmd Syntax html,vim inoremap <<It>><Esc>i|inoremap ><c-r>=ClosePair('>')<CR>
"inoremap ) <c-r>=ClosePair(')')<CR>
"inoremap ] <c-r>=ClosePair(']')<CR>
"inoremap } <c-r>=CloseBracket()<CR>
"inoremap " <c-r>=QuoteDelim('"')<CR>
"inoremap ' <c-r>=QuoteDelim("'")<CR>

"--------------- verilog easy to use short-key BY Liam Zhu START -----------"

" ### emacs verilog-mode batch-auto AND vim automatic-verilog reg-auto ###

" use \ + e -- use emacs auto-integrate module, then refresh current file.
nmap <leader>e : !~/.bemacs %<CR><CR> :e<CR>
nmap <leader>r : call g:ToggleAutoVerilogAll()<ESC>

" ### verilog coding remap ###

" map <C-e> :'<,'>s/\.\(\w*\) *( *),/.\1(\1),/ <Cr>
" This can be used in this situation:
" 	.paddr(),           ------>        	.paddr(paddr),
"	.penable(),         ------>        	.penable(penable),
"	.pwrite(),          ------>        	.pwrite(pwrite),
"	.pwdata(),          ------>        	.pwdata(pwdata),
"
"update log: change to C-u , found short-key conflict
"map <C-u>  :s/^[ \t]*,*[ \t]*\(input\\|output\\|inout\\|parameter\\|wire\)*[ \t]*\([.*]\)*[ \t]*\([^/`=,]*\w\)*[ \t]*[;,]/\t.\3(\3),/g  
"
"update log: support ---  `ifdef. which means no port information. 
"update log: support ---  parameter xx = aa;  
"updated to :
map <C-u>  :s/^[ \t]*,*[ \t]*\(input\\|output\\|inout\\|parameter\\|wire\)*[ \t]*\([^/`=,]*\w\)\+[ \t]*.*[;,]*/\t.\2(\2),/g
" This can be used in this situation:
" input paddr;          ------>        	.paddr(paddr),  
" input penable;        ------>        	.penable(penable),
" input pwrite;         ------>        	.pwrite(pwrite),
" output prdata;        ------>        	.prdata(prdata),



"inoremap <c-> always @( * ) begin<CR>if( cond ) begin<CR>end<CR>else begin<CR><CR>end<CR>end<CR><Esc>5kO
inoremap <c-l> always @( posedge clk or negedge rst_n ) begin<CR>if( !rst_n ) begin<CR>end<CR>else begin<CR><CR>end<CR>end<CR><Esc>5kO
imap <C-s> assign  = ;<Esc>3hi

"show the driver of this signal ---need to be updated---
"nmap <C-s> /\( *assign.*<C-R>=expand("<cword>")<CR>.*=.*\)\\|\(.*<C-R>=expand("<cword>")<CR>.*<=.*\)<CR>
"show this signal load to other signal
"nmap <C-d> /\( *assign.*=.*<C-R>=expand("<cword>")<CR>.*;\)\\|\(.*<=.*<C-R>=expand("<cword>")<CR>.*\)<CR> 


"--------------- verilog easy to use short-key BY Liam Zhu END -------------"
"
"--------------- Configure for remap short-key BY Liam END -----------------"


"-------------------------- Functions and Callers  -------------------------"
function! Zoom ()
    " check if is the zoomed state (tabnumber > 1 && window == 1)
    if tabpagenr('$') > 1 && tabpagewinnr(tabpagenr(), '$') == 1
        let l:cur_winview = winsaveview()
        let l:cur_bufname = bufname('')
        tabclose

        " restore the view
        if l:cur_bufname == bufname('')
            call winrestview(cur_winview)
        endif
    else
        tab split
    endif
endfunction


"function ClosePair(char)
"    if getline('.')[col('.')-1] == a:char
"        return "\<Right>"
"    else
"        return a:char
"    endif
"endf
"
"function CloseBracket()
"    if match(getline(line('.') + 1), '\s*}')<0
"        return "\<CR>}"
"    else
"        return "\<Esc>j0f}a"
"    endif
"endf
"
"function QuoteDelim(char)
"    let line = getline('.')
"    let col = col('.')
"    if line[col - 2] == "\\"
"        "Inserting a quoted quotation mark into the string
"        return a:char
"    elseif line[col - 1] == a:char
"        "Escaping out of the string
"        return"\<Right>"
"    else
"        "Starting a string
"        return a:char.a:char."\<Esc>i"
"    endif
"endf

"Vitual...
"set transparency=18

"set foldmethod=manual
"loadview
