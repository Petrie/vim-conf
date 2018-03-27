set nocompatible
set fo-=r 
filetype on 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Bundle 'sjl/gundo.vim'
Plugin 'jiangmiao/auto-pairs'
Bundle 'Lokaltog/powerline'
let g:Powerline_symbols = 'fancy'
set laststatus=2
set noshowmode
set t_Co=256

Bundle 'taglist.vim'
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1  
let Tlist_Auto_Open=1    "在启动VIM后，自动打开taglist窗口"


Bundle 'scrooloose/nerdtree'

let NERDTreeWinPos='left'
let NERDTreeWinSize=31
let NERDTreeChDirMode=1
"F8 打开nerdtree
"map <f8> :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
let NERDTreeShowBookmarks=1


"Bundle 'winmanager'
"
"let g:winManagerWindowLayout = "NERDTree|TagList,BufExplorer"
"let g:winManagerWidth = 30
"nmap <silent> <F8> :WMToggle<cr>
"let g:AutoOpenWinManager = 1


Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

"Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: "\<TAB>"

"For conceal markers.
if has('conceal')
      set conceallevel=2 concealcursor=niv
endif

" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'"

let g:neocomplcache_enable_at_startup = 1 


call vundle#end()            " required
filetype plugin indent on    " required


"common conf {{             通用配置
syntax  on
set ai                      "自动缩进
set bs=2                    "在insert模式下用退格键删除
set showmatch               "代码匹配
set laststatus=2            "总是显示状态行
set expandtab               "以下三个配置配合使用，设置tab和缩进空格数
set shiftwidth=4
set tabstop=4
set cursorline              "为光标所在行加下划线
set number                  "显示行号
set autoread                "文件在Vim之外修改过，自动重新读入

set ignorecase              "检索时忽略大小写
set fileencodings=uft-8,gbk "使用utf-8或gbk打开文件
set hls                     "检索时高亮显示匹配项
set helplang=cn             "帮助系统设置为中文
set foldmethod=syntax       "代码折叠

"}}



map <silent> <F9> :TlistToggle<cr>



