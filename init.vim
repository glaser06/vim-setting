" if empty(glob('~/.vim/autoload/plug.vim'))
"   silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"     \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

" Map Colemak keys to QWERTY keys (in alphabetical order).
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-commentary'
Plug 'srcery-colors/srcery-vim'
Plug 'gcmt/taboo.vim'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'editorconfig/editorconfig-vim'
Plug 'alvan/vim-closetag'

Plug 'xolox/vim-misc'
Plug 'heavenshell/vim-jsdoc'
Plug 'xolox/vim-easytags'

Plug 'romainl/flattened'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tpope/vim-obsession'
Plug 'dense-analysis/ale'
Plug 'TaDaa/vimade'
Plug 'preservim/nerdtree'
call plug#end()

autocmd vimenter * colorscheme gruvbox

let g:fzf_layout = { 'left': '40%' }
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

if $VIRTUAL_ENV == ""

	let g:PYTHON_PATH = "usr/bin/python3"
else
	let g:PYTHON_PATH = $VIRTUAL_ENV . '/bin/python3'
endif


let g:ale_fixers = {}
let g:ale_fixers.javascript = ['eslint']
let g:ale_fix_on_save = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,*.jsx,*.js"
let g:closetag_xhtml_filetypes = 'xhtml,javascript.jsx,jsx'
" Vanilla nvim settings"

set laststatus=2
set ignorecase
set smartcase
set clipboard=unnamed
set nu rnu
set cursorline
set showtabline=2
" set timeoutlen=100 ttimeoutlen=0
set scrolloff=10
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 45

noremap n j
noremap e k
noremap i l
noremap j e
noremap l i
noremap k n
noremap u u

noremap N J
noremap E K
noremap I L
noremap J E
noremap L I
noremap K N
noremap U U

nnoremap <esc> :noh<return><esc>

nmap <C-,> :TagbarToggle<CR>

" Keyboard Shortcuts 
nnoremap <C-p> <C-W><C-L>
nnoremap <C-q> <C-W><C-h>
nnoremap <C-g> <C-W><C-j>
nnoremap <C-f> <C-W><C-k>
nnoremap <S-h> b
nnoremap <S-i> e
nnoremap <S-n> G
nnoremap <S-e> 1G

" Terminal Shortcuts
tnoremap <Esc> <C-\><C-n>
tnoremap <C-n> <Down>
tnoremap <C-e> <Up>

hi TabLineSel ctermfg=Black ctermbg=White
" call SetupScrollbarBindings()
