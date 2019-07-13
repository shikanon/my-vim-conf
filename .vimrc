nmap <C-b>n  :bnext<CR>;
nmap <C-b>p  :bprev<CR>;

" -------------  
" Vundle  
" https://github.com/gmarik/Vundle.vim  
" -------------  
  
set nocompatible              " be iMproved, required  
filetype off                  " required  
  
" set the runtime path to include Vundle and initialize  
set rtp+=~/.vim/bundle/Vundle.vim  
call vundle#begin()  
" alternatively, pass a path where Vundle should install plugins  
"call vundle#begin('~/some/path/here')  
  
" let Vundle manage Vundle, required  
Plugin 'gmarik/Vundle.vim'  
  
" The following are examples of different formats supported.  
" Keep Plugin commands between vundle#begin/end.  
" plugin on GitHub repo  
""Plugin 'tpope/vim-fugitive'  
" plugin from http://vim-scripts.org/vim/scripts.html  
""Plugin 'L9'  
" Git plugin not hosted on GitHub  
""Plugin 'git://git.wincent.com/command-t.git'  
" git repos on your local machine (i.e. when working on your own plugin)  
""Plugin 'file:///home/gmarik/path/to/plugin'  
" The sparkup vim script is in a subdirectory of this repo called vim.  
" Pass the path to set the runtimepath properly.  
""Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}  
" Avoid a name conflict with L9  
""Plugin 'user/L9', {'name': 'newL9'}  
  
" Install Vim-go  
Plugin 'fatih/vim-go'  
  
" All of your Plugins must be added before the following line  
call vundle#end()            " required  
filetype plugin indent on    " required  
" To ignore plugin indent changes, instead use:  
"filetype plugin on  
"  
" Brief help  
" :PluginList       - lists configured plugins  
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate  
" :PluginSearch foo - searches for foo; append `!` to refresh local cache  
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal  
"  
" see :h vundle for more details or wiki for FAQ  
" Put your non-Plugin stuff after this line 

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_autosave = 0

" GENERAL SETTINGS: {{{1
" To use VIM settings, out of VI compatible mode.
set nocompatible
" Enable file type detection.
filetype plugin indent on
" Syntax highlighting.
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" Setting colorscheme
color mycolor
" Other settings.
set   autoindent
set   autoread
set   autowrite
set   background=dark
set   backspace=indent,eol,start
set nobackup
set   cindent
set   cinoptions=:0
" 高亮显示当前行/列
"set   cursorline
set   cursorcolumn
set   completeopt=longest,menuone
set   expandtab
set   fileencodings=utf-8,gb2312,gbk,gb18030
set   fileformat=unix
set   foldenable
"set   foldmethod=marker
set   guioptions-=T
set   guioptions-=m
set   guioptions-=r
set   guioptions-=l
set   helpheight=10
set   helplang=cn
set   hidden
set   history=100
" 高亮显示搜索结果
set   hlsearch
set   ignorecase
set   incsearch
set   laststatus=2
set   mouse=c
set   number
set   pumheight=10
set   ruler
set   scrolloff=5
set   shiftwidth=4
set   showcmd
set   smartindent
set   smartcase
set   tabstop=4
set   termencoding=utf-8
"set   textwidth=80
set   whichwrap=h,l
set   wildignore=*.bak,*.o,*.e,*~
set   wildmenu
set   wildmode=list:longest,full
"set nowrap


" AUTO COMMANDS: {{{1
" auto expand tab to blanks
"autocmd FileType c,cpp set expandtab
" Restore the last quit position when open file.
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \     exe "normal g'\"" |
    \ endif

" SHORTCUT SETTINGS: {{{1
" Set mapleader
let mapleader=","
" Space to command mode.
nnoremap <space> :
vnoremap <space> :
" Switching between buffers.
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
inoremap <C-h> <Esc><C-W>h
inoremap <C-j> <Esc><C-W>j
inoremap <C-k> <Esc><C-W>k
inoremap <C-l> <Esc><C-W>l
" "cd" to change to open directory.
let OpenDir=system("pwd")
nmap <silent> <leader>cd :exe 'cd ' . OpenDir<cr>:pwd<cr>

" PLUGIN SETTINGS: {{{1
" NERDTree.vim
let g:NERDTreeWinPos="left"
let g:NERDTreeWinSize=40
let g:NERDTreeShowLineNumbers=1
let g:NERDTreeQuitOnOpen=1
" cscope.vim
if has("cscope")
    set csto=1
    set cst
    set nocsverb
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif
" OmniCppComplete.vim
let g:OmniCpp_DefaultNamespaces=["std"]
let g:OmniCpp_MayCompleteScope=1
let g:OmniCpp_SelectFirstItem=2
" VimGDB.vim
if has("gdb")
	set asm=0
	let g:vimgdb_debug_file=""
	run macros/gdb_mappings.vim
endif
" LookupFile setting
let g:LookupFile_TagExpr='"./tags.filename"'
let g:LookupFile_MinPatLength=2
let g:LookupFile_PreserveLastPattern=0
let g:LookupFile_PreservePatternHistory=1
let g:LookupFile_AlwaysAcceptFirst=1
let g:LookupFile_AllowNewFiles=0
" Man.vim
source $VIMRUNTIME/ftplugin/man.vim
" snipMate
let g:snips_author="Du Jianfeng"
let g:snips_email="cmdxiaoha@163.com"
let g:snips_copyright="SicMicro, Inc"
" plugin shortcuts
function! RunShell(Msg, Shell)
	echo a:Msg . '...'
	call system(a:Shell)
	echon 'done'
endfunction
nmap  <F3> :TlistToggle<cr>
nmap  <F2> :NERDTreeToggle<cr>
nmap  <F4> :MRU<cr>
nmap  <F5> <Plug>LookupFile<cr>
nmap  <F6> :Dox<cr>
nmap  <F9> :call RunShell("Generate tags", "ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .")<cr>
nmap <F10> :call HLUDSync()<cr>
nmap <F11> :call RunShell("Generate filename tags", "~/.vim/shell/genfiletags.sh")<cr>
nmap <F12> :call RunShell("Generate cscope", "cscope -Rb")<cr>:cs add cscope.out<cr>
nmap <leader>sa :cs add cscope.out<cr>
nmap <leader>ss :cs find s <C-R>=expand("<cword>")<cr><cr>
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<cr><cr>
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<cr><cr>
nmap <leader>st :cs find t <C-R>=expand("<cword>")<cr><cr>
nmap <leader>se :cs find e <C-R>=expand("<cword>")<cr><cr>
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<cr><cr>
nmap <leader>si :cs find i <C-R>=expand("<cfile>")<cr><cr>
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<cr><cr>
nmap <leader>zz <C-w>o
nmap <leader>gs :GetScripts<cr>

" NEW FILE: {{{1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"create a .c,.h,.sh,.java file,automatic insert a title 
autocmd BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn} set filetype=markdown
autocmd BufNewFile *.py,*.cpp,*.[ch],*.sh,*.java,*.{md,mdown,mkd,mkdn,markdown,mdwn} exec ":call SetTitle()" 
"define a funtion[SetTitle]automatic a title
func SetTitle() 
	".sh file 
	if &filetype == 'sh' 
		call setline(1,"\#########################################################################") 
		call append(line("."), "\# File Name: ".expand("%")) 
		call append(line(".")+1, "\# Description: ".expand("%")) 
		call append(line(".")+2, "\# Author: shikanon") 
		call append(line(".")+3, "\# mail: shikanon@tensorbytes.com") 
		call append(line(".")+4, "\# Created Time: ".strftime("20%y-%m-%d %H:%M:%S")) 
		call append(line(".")+5, "\#########################################################################") 
		call append(line(".")+6, "\#!/bin/bash") 
		call append(line(".")+7, "") 
	endif
	if &filetype == 'cpp'
		call setline(1, "/*************************************************************************") 
		call append(line("."), "	> File Name: ".expand("%")) 
		call append(line(".")+1, "	> Description: ".expand("%")) 
		call append(line(".")+2, "	> Author: shikanon") 
		call append(line(".")+3, "	> Mail: shikanon@tensorbytes.com ") 
		call append(line(".")+4, "	> Created Time: ".strftime("20%y-%m-%d %H:%M:%S")) 
		call append(line(".")+5, " ************************************************************************/") 
		call append(line(".")+6, "")
		call append(line(".")+7, "#include<iostream>")
		call append(line(".")+8, "using namespace std;")
		call append(line(".")+9, "")
	endif
	if &filetype == 'c'
		call setline(1, "/*************************************************************************") 
		call append(line("."), "	> File Name: ".expand("%")) 
		call append(line(".")+1, "	> Description: ".expand("%")) 
		call append(line(".")+2, "	> Author: shikanon") 
		call append(line(".")+3, "	> Mail: shikanon@tensorbytes.com ") 
		call append(line(".")+4, "	> Created Time: ".strftime("20%y-%m-%d %H:%M:%S")) 
		call append(line(".")+5, " ************************************************************************/") 
		call append(line(".")+6, "")
		call append(line(".")+7, "#include<stdio.h>")
		call append(line(".")+8, "")
	endif
	if &filetype == 'python'
	    call setline(1, "\#!/usr/bin/python")  
		call setline(2, "\#coding=utf8")  
	    call setline(3, "\"\"\"")  
		call setline(4, "\# Author: shikanon")  
		call setline(5, "\# Created Time : ".strftime("20%y-%m-%d %H:%M:%S"))  
		call setline(6, "")  
		call setline(7, "\# File Name: ".expand("%"))  
		call setline(8, "\# Description:")  
	    call setline(9, "")  
	    call setline(10, "\"\"\"")  
	endif
	if &filetype == 'markdown'
	    call setline(1, "\---")  
        call setline(2, "layout: post")
        call setline(3, "title:")  
        call setline(4, "subtitle:")  
        call setline(5, "date: ".strftime("20%y-%m-%d %H:%M:%S"))  
        call setline(6, "category:") 
        call setline(7, "author: shikanon") 
        call setline(8, "tags:") 
        call setline(9, "   -") 
        call setline(10, "\---") 
	endif
	"create a file，automatic position the end of file
	autocmd BufNewFile * normal G
endfunc 


" SETTINGS: {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt=preview,menu
":commands tell us whitch file has been modified
set report=0

" autopair

":inoremap { {}<ESC>i
":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap " ""<ESC>i
":inoremap ' ''<ESC>i

function! ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endf

set completeopt=longest,menu
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"KEY: {{{1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map w :w!<cr>
vmap <C-c> "+y
"C，C++ //compile
map <F7> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'c'
		exec "!gcc % -o %<"
		exec "! ./%<"
	elseif &filetype == 'cpp'
		exec "!g++ % -o %<"
		exec "! ./%<"
	elseif &filetype == 'sh'
		:!./%
	elseif &filetype == 'py'
		exec "!python %"
		exec "!python %<"
	endif
endfunc
"C,C++ //debug
map <F8> :call Rungdb()<CR>
func! Rungdb()
	exec "w"
	exec "!gcc % -g -o %<"
	exec "!gdb ./%<"
endfunc


" file browse: {{{1
" ----bingo
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

"CTags{{{1
"2014-7-13
let Tlist_Sort_Type = "name"    
let Tlist_Compart_Format = 1    
let Tlist_Exist_OnlyWindow = 1  
let Tlist_File_Fold_Auto_Close = 0  
""autocmd FileType h,cpp,cc,c set tags+=D:\tools\cpp\tags  
let Tlist_Show_One_File=1         
set tags=tags  
set autochdir 
let Tlist_Ctags_Cmd = '/usr/bin/ctags' 
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1 
let g:Tlist_Auto_Update=1
""let Tlist_Process_File_Always=1
let Tlist_WinWidth=25
let g:Tlist_Enable_Fold_Column=0
""let g:Tlist_Auto_Highlight_Tag=1
let Tlist_Use_Right_Window = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"DoxygenToolkit{{{1
"2014-8-13
"let g:DoxygenToolkit_authorName="shikanon, shikanon@tensorbytes.com"
"let s:licenseTag = "Copyright(C)\"
"let s:licenseTag = s:licenseTag . "For free\"
"let s:licenseTag = s:licenseTag . "All right reserved\"
"let g:DoxygenToolkit_licenseTag = s:licenseTag
let g:DoxygenToolkit_briefTag_funcName="yes"
"let g:doxygen_enhanced_color=1
"
"
"Python{{{1
let g:pydiction_location = '~/.vim/tools/pydiction/complete-dict'
