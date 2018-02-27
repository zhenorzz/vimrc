set nocompatible
set ts=4      "四个空格长度
set expandtab "tab四个空格
set shiftwidth=4 ">> 四个空格
set wildmenu  "按TAB键时命令行自动补齐
set number    "显示行号
set autoread  "文件在Vim之外修改过，自动重新读入
"window setting
set guifont=Consolas:h11:cANSI
set encoding=utf-8
set fileencoding=utf-8
source $VIMRUNTIME/delmenu.vim " 菜单乱码
source $VIMRUNTIME/menu.vim
set backupdir=$VIM/vimfiles/backup/
set undodir=$VIM/vimfiles/backup/
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
winpos 580 250  " window start location
set lines=35 columns=100

" set the runtime path to include Vundle and initialize
set rtp+=$VIM/vimfiles/bundle/Vundle.vim
call vundle#begin('$VIM/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'  "文件夹
Plugin 'jiangmiao/auto-pairs' "括号补全,insert mode
Plugin 'tpope/vim-surround'   "surroundings,normal mode,visual mode 
"Plugin 'Valloric/YouCompleteMe' "代码提醒

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
runtime macros/matchit.vim   " enhances the % command.
" color
syntax enable
set background=dark
colorscheme solarized
 
" NERDTree
map <A-1> :NERDTreeToggle<CR>
"How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
window 设置 vim

1.打开vim文件目录

2.在vimfiles文件夹内创建一个bundle文件夹

3.安装git与curl

4.安装vundle插件管理器：在vimfiles目录下的bundle目录git clone https://github.com/zhenorzz/Vundle.vim.git

:PluginInstall
