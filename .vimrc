let mapleader = ","
call plug#begin('~/.vim/plugged')
	Plug 'terryma/vim-smooth-scroll'
	Plug 'dyng/ctrlsf.vim'
	Plug '~/.fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'ycm-core/YouCompleteMe'
	Plug 'chriskempson/base16-vim'
	Plug 'flazz/vim-colorschemes'
	"Language specifc plugins
	Plug 'calviken/vim-gdscript3'
call plug#end()


noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 15, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 15, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 15, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 15, 4)<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-p> :Files<CR>
nmap <Leader>/ <Plug>CtrlSFPrompt
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_of_chars_for_completion = 1

set number
set foldmethod=indent
set foldlevelstart=99
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

set t_Co=256              " Fix gnome-terminal colors
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-default-dark
set colorcolumn=120
set cursorline
if exists('+colorcolumn')
	" Highlight up to 255 columns (this is the current Vim max) beyond 'textwidth'
	let &l:colorcolumn='+' . join(range(0, 254), ',+')
endif
set highlight+=@:ColorColumn
set highlight+=N:DiffText
set highlight+=c:LineNr
set list                              " show whitespace
set listchars=nbsp:⦸                  " CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
set listchars+=extends:»              " RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
set listchars+=precedes:«             " LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
set listchars+=trail:•                " BULLET (U+2022, UTF-8: E2 80 A2)
set listchars+=tab:‣\ 

