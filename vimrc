" Show whitespace (essential for working in Python!)
set list listchars=tab:>-,trail:-

" Set tab/indent to 4 spaces
set sw=4
set ts=4

" Stash away vim backups
set backupdir=~/.vimbackup

" Turn on line numbering
set nu

" Turn on syntax folding by default
set foldmethod=syntax

" Hitting spacebar turns off search highlights
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR><Space>

" Go-specific vim configs
set rtp+=$GOROOT/misc/vim

" Git-specifc vim configs
set rtp+=~/src/system/vim-git

" Execute .vimrc configs in the current directory
set exrc

" Prevents some insecure commands in scripts executed by 'exrc'
set secure

" Reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" Make Y behave like other capitals
map Y y$

nnoremap j gj
nnoremap k gk

" Easer window switching
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-l>l

" Force save a file that requires root
cmap w!! %!sudo tee > /dev/null %

" Show git diff in window split when committing
autocmd FileType gitcommit DiffGitCached | wincmd p

" Draw a red line at column 81
set colorcolumn=81

