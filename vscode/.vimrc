" VS Code & Codium Basic Vim Keybinds

" Exit Insert Mode
inoremap jj <Esc>

" Paste from yank register
nnoremap <leader><leader>p \"0p

" Better jk movement (disabled due to macros)
" nnoremap j gj
" nnoremap k gk

" Create new lines in normal mode 
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

" Tab manipulation
nnoremap <leader>n :tabnew
nnoremap J :tabprev
nnoremap K :tabnext

" Concatonate lines
nnoremap <leader>j J

" File state manipulation
nnoremap <leader>w :w<CR>
nnoremap <leader>q :wq<CR>
nnoremap <leader>x :q!<CR>

" Consistency
nnoremap Y y$

" Redo
nnoremap U <C-R>

" Indentation
nnoremap <tab> >>
vnoremap <tab> >
nnoremap <S-tab> <<
vnoremap <S-tab> < 