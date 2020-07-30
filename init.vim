
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tomtom/tcomment_vim'
Plug 'srcery-colors/srcery-vim'
Plug 'gcmt/taboo.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'editorconfig/editorconfig-vim'

" Plug 'vim-scripts/taglist.vim'
Plug 'xolox/vim-misc'
Plug 'heavenshell/vim-jsdoc'
Plug 'xolox/vim-easytags'
" Plug 'majutsushi/tagbar'
Plug 'romainl/flattened'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sleuth'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tpope/vim-obsession'
Plug 'dense-analysis/ale'
call plug#end()

autocmd vimenter * colorscheme gruvbox

let g:fzf_layout = { 'left': '40%' }
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Vanilla nvim settings"

set laststatus=2
set ignorecase
set smartcase
set clipboard=unnamed
set nu rnu
set cursorline


" Map Colemak keys to QWERTY keys (in alphabetical order).
noremap d g
noremap e k
noremap f e
noremap g t
noremap i l
noremap j y
noremap k n
noremap l u
noremap n j
noremap o p
noremap p r
noremap r s
noremap s d
noremap t f
noremap u i
noremap y o
noremap D G
noremap E K
noremap F E
noremap G T
noremap I L
noremap J Y
noremap K N
noremap L U
noremap N J
noremap O P
noremap P R
noremap R S
noremap S D
noremap T F
noremap U I
noremap Y O


nnoremap <esc> :noh<return><esc>

nmap <C-,> :TagbarToggle<CR>

" Keyboard Shortcuts 
nnoremap <C-i> <C-W><C-L>
nnoremap <C-h> <C-W><C-h>
nnoremap <C-n> <C-W><C-j>
nnoremap <C-e> <C-W><C-k>
nnoremap <S-h> b
nnoremap <S-i> e
nnoremap <S-n> G
nnoremap <S-e> 1G

" Terminal Shortcuts
tnoremap <Esc> <C-\><C-n>
tnoremap <C-n> <Down>
tnoremap <C-e> <Up>
