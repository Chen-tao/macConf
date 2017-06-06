
"设置Vundle
set nocompatible              " be iMproved, required                                                                                       
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'taglist.vim'
"打入快速输入括号,引号等,避免出错
Plugin 'spf13/vim-autoclose'
"编辑框下面的状态栏
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" vim-airline configure
let g:airline_detect_modified=1
let g:airline_detect_paste=1                                                                                                                
let g:airline_enable_syntastic=1
let g:airline_theme="powerlineish"
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
Plugin 'chazy/cscope_maps'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'vim-scripts/winmanager'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
"for golang
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
Plugin 'dgryski/vim-godef'
Plugin 'derekwyatt/vim-scala'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <F6> :YcmDiags<CR>
"跳转到定义 ctrl + ]
nnoremap <C-l> :YcmCompleter GoTo<CR>
nnoremap <F2> :YcmCompleter GoToInclude<CR>
nnoremap <F4> :YcmCompleter GetType<CR>
nnoremap <C-'> :YcmCompleter GetParent<CR>

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
"文件类型白名单
"let g:ycm_filetype_whitelist = { '*': 1 }
"let g:ycm_filetype_blacklist = { '*': 1 }
"let g:ycm_collect_identifiers_from_tags_files = 1
"补全语法里的关键字
let g:ycm_seed_identifiers_with_syntax = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
"let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<S-TAB>', '<Up>']
"let g:ycm_key_invoke_completion = '<C-Space>'
"https://github.com/Valloric/YouCompleteMe#the-gycm_goto_buffer_command-option
let g:ycm_complete_in_comments = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_filepath_completion_use_working_dir = 1
" 补全内容不以分割子窗口形式出现，只显示补全列表
"set completeopt-=preview"
Plugin 'racer-rust/vim-racer'
Plugin 'rust-lang/rust.vim'
"let g:rustfmt_autosave=1

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


"==========自定义配置项:===============
"显示行号
set nu
"set tags=./tags,/home/huyq/work/ott/htk_dfb/tags,/home/huyq/work/dvbs/hitobox/Hitobox-dvbs-ott/tags,/home/huyq/work/ott/OTT-program/iptv-program/tags,/home/huyq/work/iptv/multi-player/tags,/home/huyq/work/iptv/connman-master/tags,/home/huyq/work/dvbs/buildroot-2012.08/output/build/libhicore-75c2c7051bdd/tags,/home/huyq/work/dvbs/buildroot-2012.08/output/build/libhi-e0a4183ab4d2/tags
"set tags=./tags,tags,/Users/yanqing11/lib/include/tags,$HOME
set tags=./tags,tags,/Users/yanqing11/lib/libnfnetlink-1.0.1/tags,/Users/yanqing11/lib/include/tags
"set autochdir
filetype plugin on
autocmd BufRead,BufNewFile *.py set tabstop=4 expandtab shiftwidth=4
autocmd BufRead,BufNewFile *.[ch] set tabstop=4 expandtab shiftwidth=4
autocmd BufRead,BufNewFile *.cc set tabstop=4 expandtab shiftwidth=4
autocmd BufRead,BufNewFile *.cpp set tabstop=4 expandtab shiftwidth=4
autocmd BufRead,BufNewFile *.rs set tabstop=4 shiftwidth=4
autocmd BufRead,BufNewFile *.go set filetype=go shiftwidth=4 tabstop=4
autocmd BufRead,BufNewFile *.proto set filetype=proto expandtab shiftwidth=4 tabstop=4
set cin
"不要换行
set nowrap
"命令模式下补全
set wildmenu
set wildmode=list:longest,full

"使能鼠标
"set mouse=a
set t_Co=256
"ignorecase搜索时忽略大小写
set ignorecase
set cursorline "光标行显示下划线
colorscheme wombat256mod
"colorscheme inkpot 
syntax enable
let g:syntax_cmd = "enable"
set hlsearch 			"highlight syntax search
"set foldmethod=manual
set backspace=indent,eol,start

let g:MouseMode='0'
fun! SwitchMouseMode()
	if g:MouseMode == '0'
		setlocal mouse=a
		let g:MouseMode='1'
	else
		setlocal mouse=
		let g:MouseMode='0'
	endif
endfun

let g:PasteMode='0'
fun! SwitchPasteMode()
	if g:PasteMode == '0'
		setlocal paste
		let g:PasteMode='1'
	else
		setlocal nopaste
		let g:PasteMode='0'
	endif
endfun

map <silent> <F3> :call SwitchPasteMode()<cr> "粘贴时取消自动缩进功能
map <silent> <F7> :call SwitchMouseMode()<cr>
"set foldmethod=marker
"显色风格
"see :h omnifunc in Vim
"set omnifunc=omni
"配置Powerline插件
set laststatus=2 
"set statusline=%F%m%r%h%w\ (%{&ff}){%Y}[%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

set fencs=utf-8,gbk,gb2312,gb18030,cs-bom,cp936,latin1
"习惯新建文件是某种编码则在此写上此编码
set enc=utf-8
"set fenc=utf-8  
set tenc=utf-8
"taglist set
"nnoremap <slient> <F4> :TlistToggle<CR>
"let Tlist_Exit_OnlyWindow = 1
"let Tlist_Sort_Type = "order"
"let Tlist_Display_Prototype = 0
"let Tlist_compart_Format = 1
"let Tlist_GainFocus_on_ToggleOpen = 1
"let Tlist_Enable_Fold_Colum = 0
"let Tlist_WinWidth = 40
"let Tlist_Show_One_File=1
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',  
    \ 'kinds'     : [  
        \ 'p:package',  
        \ 'i:imports:1',  
        \ 'c:constants',  
        \ 'v:variables',  
        \ 't:types',  
        \ 'n:interfaces',  
        \ 'w:fields',  
        \ 'e:embedded',  
        \ 'm:methods',  
        \ 'r:constructor',  
        \ 'f:functions'  
    \ ],  
    \ 'sro' : '.',  
    \ 'kind2scope' : {  
        \ 't' : 'ctype',  
        \ 'n' : 'ntype'  
    \ },  
    \ 'scope2kind' : {  
        \ 'ctype' : 't',  
        \ 'ntype' : 'n'  
    \ },  
    \ 'ctagsbin'  : 'gotags',  
    \ 'ctagsargs' : '-sort -silent'  
\ }
let g:netrw_winsize = 30
nmap <silent> <leader>fe :Sexplore!<cr> thon  set
"""""""""""""""""""""""""""""""
"winmanger setting  map to 'wm' keys
""""""""""""""""""""""""""""""
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
"""""""""""""""""""""""""""""""
" a.vim set
"""""""""""""""""""""""""""""""
nmap tn :tabnext<cr>
nnoremap <silent> <F12> :A<CR>
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
