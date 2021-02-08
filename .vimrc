set nocompatible
runtime macros/matchit.vim
    filetype indent plugin on
set is
set encoding=utf-8

call plug#begin('~/.vim/plugged')

" ========== autocomplete
Plug 'styled-components/vim-styled-components'
Plug 'mattn/emmet-vim'
Plug 'ervandew/supertab'
Plug 'luochen1990/rainbow'
let g:rainbow_active = 1 "0
let mapleader = ","

" ========= snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
" Plug 'SirVer/ultisnips'
Plug 'Yggdroot/indentLine'
Plug 'mhinz/vim-startify'
let g:indentLine_char = '.'

Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'easymotion/vim-easymotion'

let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<Tab>"
" let g:UltiSnipsJumpForwardTrigger = "<Tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-Tab>"

" ========== ruby plugins
Plug 'tpope/vim-dispatch'
Plug 'jgdavey/tslime.vim'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'kana/vim-textobj-user'

"let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
let g:rspec_command = "Dispatch rspec {spec}"
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vz :VimuxZoomRunner<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale'

let g:ale_linters = {
      \   'python': ['flake8', 'pylint'],
      \   'javascript': ['eslint'],
      \   'vue': ['eslint']
      \
      \}

let g:ale_fixers = {
      \    '*': ['remove_trailing_lines', 'trim_whitespace'],
      \    'javascript': ['eslint'],
      \    'vue': ['eslint'],
      \    'scss': ['prettier']
      \
      \}


" set up ascii for my startify
let g:startify_custom_header = [
    \ '     ____ _            __                     _                    ',
    \ '    / __/(_)_____ ____/ /____ _ __  __ _____ (_)____   __  __ _____',
    \ '   / /_ / // ___// __  // __ `// / / // ___// // __ \ / / / // ___/',
    \ '  / __// // /   / /_/ // /_/ // /_/ /(__  )/ // /_/ // /_/ /(__  ) ',
    \ ' /_/  /_//_/    \__,_/ \__,_/ \__,_//____//_/ \____/ \__,_//____/  ',
    \ ]
let g:startify_lists = [
      \ { 'type': 'sessions',  'header': ['   Sessions']       },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]
let g:startify_commands = [
    \ ['❓ vim help', 'h ref'],
    \ ['🕵️ search fuzzy', 'Rg'],
    \ ['🔎 search file', 'Files'],
    \ ['🌴 nav', 'NERDTree'],
    \ ['🏊 git browser', 'GV'],
    \ ['🥶 Update plugins', 'PlugUpdate'],
    \ ]
let g:ale_fix_on_save = 1
let g:jsx_ext_required = 1
let g:jsx_pragma_required = 1

autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

let g:typescript_ignore_browserwords = 1
let g:typescript_ignore_typescriptdoc = 1
" vim-rspec mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" ========== colorschemes
Plug 'cakebaker/scss-syntax.vim'
Plug 'craigemery/vim-autotag'
Plug 'edkolev/tmuxline.vim'
Plug 'michaeljsmith/vim-indent-object'
Plug 'arzg/vim-colors-xcode'
Plug 'jcherven/jummidark.vim'

" =========== git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jparise/vim-graphql'
Plug 'vim-syntastic/syntastic'

" ==== enable matchit
" =========== markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'dyng/ctrlsf.vim' " for really nice search results like in sublime
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'vim-scripts/IndexedSearch'
Plug 'itspriddle/vim-jquery'
Plug 'tpope/vim-haml'
Plug 'junegunn/goyo.vim'
Plug 'ecomba/vim-ruby-refactoring'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-bundler'
"========= syntax helpers
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
Plug 'rescript-lang/vim-rescript'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Chiel92/vim-autoformat'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'jiangmiao/auto-pairs'
Plug 'lambdalisue/vim-django-support'
Plug 'alvan/vim-closetag'
  let g:closetag_filenames = '*.html,*.xhtml,*.xml,*.vue,*.php,*.phtml,*.js,*.jsx,*.coffee,*.erb'


"======= eslint
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'
let g:syntastic_ruby_checkers = ['rubocop']

" ========= file tree
Plug 'scrooloose/nerdtree'

  let NERDTreeIgnore = [ '__pycache__',  '\.pyc$', '\.o$', '\.swp', '*\.swp', 'node_modules/' ]
  let NERDTreeShowHidden=1
  let NERDTreeQuitOnOpen=1
" ========= rails
Plug 'kchmck/vim-coffee-script'
Plug 'thoughtbot/vim-rspec'
Plug 'tpope/vim-rails'
Plug 'ngmy/vim-rubocop'
" ========= navigation
Plug 'christoomey/vim-tmux-navigator'
  " autostart nerd-tree
  autocmd StdinReadPre * let s:std_in=1
  " nerdtree toggle
  map <C-t> :NERDTreeToggle<CR>
Plug 'zhaocai/GoldenView.Vim'
  let g:goldenview__enable_default_mapping = 0
Plug 'benmills/vimux'
  " vimux binding
  map <Leader>vp :VimuxPromptCommand<CR>
  nmap <F8> :TagbarToggle<CR>

" ======= fuzzy find
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'

" ======= extras
Plug 'rstacruz/sparkup', {'rtp': 'vim/'}
Plug 'majutsushi/tagbar'
Plug 'wincent/command-t'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mileszs/ack.vim'
if !exists('g:airline_symbols')
   let g:airline_symbols = {}
endif

let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'


call plug#end()
filetype plugin indent on    " required

" ============= extra settings
syntax on

" colorschemes
" Dark: monokai-chris, gruvbox
" Light: ChocolatePapaya

colorscheme xcodedarkhc

:hi Normal ctermbg=NONE guibg=NONE
:hi EndOfBuffer ctermbg=NONE guibg=NONE

" tabs to 2 spaces
" set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set ruler
set hidden
:set guioptions-=m " remove menu bar
:set guioptions-=T " remove toolbar
:set guioptions-=r " remove right-hand scroll bar
:set guioptions-=L " remove left-hand scroll bar
":set lines=999 columns=999
set shortmess+=A " disable swap file warning

" hybrid line numbers
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

" split below and right feels more natural
set splitbelow
" set background=dark
" no wrapping
set nowrap

" allow backspace immediately after insert
set bs=2

" useful aliases
cnoreabbrev W w
cnoreabbrev Q q

" save undo in a file
set undofile
set undodir=~/.vim/undo
set undolevels=1000
set undoreload=10000


" tmux will only forward escape sequences to the terminal if surrounded by a
" DCS sequence
" "
" http://sourceforge.net/mailarchive/forum.php?thread_name=AANLkTinkbdoZ8eNR1X2UobLTeww1jFrvfJxTMfKSq-L%2B%40mail.gmail.com&forum_name=tmux-users
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Folding
augroup XML
    autocmd!
    autocmd FileType xml setlocal foldmethod=indent foldlevelstart=999 foldminlines=0
augroup END

map ; :Files<CR>
