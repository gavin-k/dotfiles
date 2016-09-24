set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
  \             're!\[.*\]\s'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \ }

let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'gitcommit' : 1,
      \}


Bundle 'Shougo/unite.vim'


Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows


Plugin 'nanotech/jellybeans.vim'

Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}

Plugin 'dracula/vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'mhinz/vim-signify'

Plugin 'airblade/vim-gitgutter'

Plugin 'majutsushi/tagbar'

Plugin 'scrooloose/syntastic'

Plugin 'scrooloose/nerdtree'

Plugin 'StanAngeloff/php.vim'

Plugin 'pearofducks/ansible-vim'

""""""""""""""""""""""""""
"""" javascript
"""""""""""""""""""""""""""
"Plugin 'pangloss/vim-javascript'
"Plugin 'othree/javascript-libraries-syntax.vim'
"Plugin 'burnettk/vim-angular'

Plugin 'davidhalter/jedi-vim'


Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'easymotion/vim-easymotion'
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

let g:EasyMotion_smartcase = 1

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Gif config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
"
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion


Plugin 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

Plugin 'Yggdroot/indentLine'


Plugin 'honza/vim-snippets'
" assuming you want to use snipmate snippet engine
"ActivateAddons vim-snippets snipmate phpdd


Plugin 'jceb/vim-orgmode'


"Plugin 'itchyny/calendar.vim'

"Plugin 'othree/html5.vim'

"Plugin 'groenewege/vim-less'

Plugin 'ryanoasis/vim-devicons'

"Plugin 'skammer/vim-css-color'

Plugin 'fatih/vim-go'


Plugin 'xwsoul/vim-zephir'

Plugin 'vim-scripts/DrawIt'

Plugin 'saltstack/salt-vim'

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
"

" airline settings
set laststatus=2
set t_Co=256
let g:airline_powerline_fonts=1
set encoding=utf8
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='solarized'
if !exists('g:airline_symbols')
        let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"语法检查
"php
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

"python
let g:syntastic_python_checkers = ['pylint']


"tagbar
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_type_php = {'ctagstype' : 'php', 'kinds' : ['c:classes', 'f:functions'  ] }
nmap <F8> :TagbarToggle<CR>

syntax on
set nu
set nowrap
set autoindent
set smartindent
set cindent

set cursorline
set ruler
set expandtab
set tabstop=4
set shiftwidth=4

set nobackup
set showcmd

set ignorecase
set incsearch
set nohlsearch


set showmatch
set history=1000
set autoread
set ambiwidth=double
set listchars=tab:>-,trail:-

set backspace=2
set background=dark
colorscheme jellybeans
"color dracula
"colorscheme solarized

set foldenable
set foldmethod=marker


set updatetime=500
autocmd CursorHold * silent! exe printf('match incsearch /\<%s\>/', expand('<cword>'))

"自动打开 tagBar
"autocmd VimEnter * nested :call tagbar#autoopen(1)

"自动打开 NERDTree
"autocmd vimenter * NERDTree
nmap <F10> :NERDTreeToggle<CR>
wincmd w
autocmd VimEnter * wincmd w
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


if has("autocmd")
        "回到上次文件打开所在行
        au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
                \| exe "normal g'\"" | endif
        "自动检测文件类型，并载入相关的规则文件
            filetype plugin on
            filetype indent on
endif

autocmd FileType php call PHPFuncList()
function PHPFuncList()
    set dictionary=/Users/zhangshaomin/repo/swoole-ide-helper/Swoole.php
    set dictionary=/Users/zhangshaomin/repo/php/functions.txt
    set complete-=k complete+=k
endfunction
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
"

"""""""""""""""""""""""""""""""""""""""
"" javascript-libaries-syntax
"""""""""""""""""""""""""""""""""""""""
let g:used_javascript_libs = 'jQuery,AngularJs,AngularUI,AngularUI Router'


"""""""""""""""""""""""""""""""""""""""
"" angular.vim
"""""""""""""""""""""""""""""""""""""""
"let g:angular_source_directory = '~/code/angular-learning/bower_components/angular'
"let g:angular_test_directory = 'test'


"映射缓冲区 快捷键
map <C-n> <ESC><ESC>:bn<CR>
"map <C-p> <ESC><ESC>:bp<CR>


set completeopt=longest,menu
