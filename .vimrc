set nocompatible	" 去除VI一致性，必须要添加
filetype off		" required

" 设置包括vundle和初始化相关的 runtime path
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" 另一种选择，制定一个vundle安装插件的路径
" call vundle#begin('~/some/path/here')
" 让vundle管理插件，必须 
"Plugin 'VundleVim/Vundle.vim'
Plugin 'file:///root/.vim/native_bundle/Vundle.vim'
" 以下范例用来支持插件的不同安装方式
" 请将安装插件的命令放在vundle#begin和vundle#end之间
" GitHub上的插件
"Plugin 'tpope/vim-fugitive'


"右侧tagbar
"Plugin 'majutsushi/tagbar'
Plugin 'file:///root/.vim/native_bundle/tagbar'
"标记所有字符串
"Plugin 'vim-scripts/ctags.vim'
Plugin 'file:///root/.vim/native_bundle/ctags.vim'
"依赖ctags生成tags相关的树
"Plugin 'vim-scripts/taglist.vim'
"左边项目树
"Plugin 'scrooloose/nerdtree'
Plugin 'file:///root/.vim/native_bundle/nerdtree'

"批量注释
"Plugin 'scrooloose/nerdcommenter'
Plugin 'file:///root/.vim/native_bundle/nerdcommenter'
"自动补全
"Plugin 'Valloric/YouCompleteMe'    "依赖vim7.4以上和python2.7或者3.3 

"自动语法检测，运行在后台，无需激活命令
"Plugin 'vim-syntastic/syntastic'

"自动补全
"Plugin 'ervandew/supertab'
Plugin 'file:///root/.vim/native_bundle/supertab'

"Plugin 'kien/ctrIp.vim'



"minibuf 被air-line取代
"Plugin 'file:///root/.vim/native_bundle/minibufexpl.vim'


"代码对齐
Plugin 'file:///root/.vim/native_bundle/tabular'

"跳转
Plugin 'file:///root/.vim/native_bundle/vim-easymotion'

"包含
Plugin 'file:///root/.vim/native_bundle/vim-surround'

"vim airline
Plugin 'file:///root/.vim/native_bundle/vim-airline'

"增强版ctags
Plugin 'file:///root/.vim/native_bundle/cscope.vim'

"文件模糊查找
Plugin 'file:///root/.vim/native_bundle/ctrlp.vim'










" 来自 http://vim-scripts.org/vim/scripts.html"的插件
" Plugin ‘插件名称’ 实际上是Plugin 'vim-scripts/插件仓库名‘
" 只是此处的用户名可以省略
"Plugin 'L9'

" 由Git支持但是不在github上的插件仓库 Plugin 'git clone 后面的地址'
"Plugin 'git://git.wincent.com/command-t.git'

" 本地的Git仓库（例如自己的插件） Plugin 'file://+本地插件仓库绝对路径'
"Plugin 'file:///home/gmarik/path/to/plugin/'

" 插件在仓库的子目录中
" 正确制定路径用以设置runtimepath. 一下范例插在在sparkup/vim目录下
"Plugin 'rstacruz/sparkup',{'rtp': 'vim/'}

" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
"Plusin 'ascenator/L9', {'name': 'newL9'}

" 你所有插件需要在下面这行之前
call vundle#end()		" 必须
filetype plugin indent on 	" 必须 加载vim自带和插件相应的语法和文件类型相关脚本

" 忽视插件改变缩进
" filetype plugin on
"
" 常用命令
" :PluginList		-列出所有配置的插件
" :PluginInstall	-安装插件，加`!`用以更新或使用:PluginUpdate
" :PluginSearch foo	-搜索foo；加`!`清除本地缓存
" :PluginClean		-清除未使用插件，需要确认；加`!`自动批准未使用插件
"
" see :h vundle for more details or wiki for FAQ
" 将自己对非插件配置放在这行之后

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"显示行号
set nu

"启动时隐去援助提示
set shortmess=atI

"语法高亮
syntax on

"使用vim的键盘模式
set nocompatible

"不需要备份
set nobackup

set backspace=indent,eol,start

"没有保存或文件只读时弹出确认
set confirm

"鼠标可用
set mouse=a

"tab缩进
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab

"文件自动检测外部更改
set autoread

"c文件自动缩进
set cindent

"自动对齐
set autoindent

"智能缩进
set smartindent

"高亮查找匹配
set hlsearch

"背景色
set background=dark
"
"显示匹配
set showmatch

"显示标尺，就是在右下角显示光标位置
set ruler

"去除vi的一致性
set nocompatible

"允许折叠
set foldenable

""""""""""""""""""设置折叠"""""""""""""""""""""

"根据语法折叠
set fdm=syntax
"手动折叠
set fdm=manual
"设置键盘映射，通过空格设置折叠
nnoremap <space> @=((foldclosed(line('.')<0)?'zc':'zo'))<CR>

"""""""""""""""""""""""""""""""""""""""""""""""

"不要闪烁
set novisualbell

"启动显示状态行
set laststatus=2

"浅色显示当前行
autocmd InsertLeave * se nocul

"用浅色高亮当前行
autocmd InsertEnter * se cul

"显示输入的命令
set showcmd

"被分割窗口之间显示空白
set fillchars=vert:/

set fillchars=stl:/

set fillchars=stlnc:/
"解决 vim E492: not an editor command问"解决 vim E492: not an editor
"command问题题
set fileformat=unix
"设置编码格式，很重要
set encoding=utf8

""""""""""""""""""""""""""""""""""""""配色配置""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable
set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized



""""""""""""""""""""""""""""""""""""""插件配置""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""NERDTree"""""""""""""""""""""""""""""

map <F2> :NERDTreeToggle<CR>
"autocmd VimEnter * NERDTree     "自动打开

""""""""""""""""""taglist"""""""""""""""""""""""""""""
"map <silent> <F9> : TlistToggle<CR>


""""""""""""""""""tagbar"""""""""""""""""""""""""""""
map <F9> : TagbarToggle<CR>
let g:tagbar_left = 0 "default is 0
let g:tagbar_show_linenumbers = 0 "default don't shwo any line numbers

"autocmd VimEnter * nested :TagbarOpen   "自动打开tagbar



""""""""""""""""""nerd comment"""""""""""""""""""""""""""""
" <leader>cc 注释当前行，其中<leader>代表\，即\cc
" <leader>cu 取消当前行注释，即\cu

"""""""""""""""""""""""YouCompeleteMe`""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""ctags""""""""""""""""""""""""""""""""""""
"map <F5> : ctags -R --c++-kinds=+px --fileds=+iaS --extra=+q<CR>
map <F5> : !ctags -R<CR>


"""""""""""""""""""""""supertab""""""""""""""""""""""""""""""""""""
let g:SuperTabRetainCompletionType="context"



"""""""""""""""""""""""minibufexpl""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapCTabSwitchWindows = 1
let g:miniBufExplModSelTarget = 1
"解决FileExplore窗口变小问题
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplorerMoreThanOne = 2
let g:bufExplorerMaxHeight = 30
let g:miniBufExplorerMoreThanOne = 0















