set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set nohlsearch
set showmatch 
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500
syntax enable
set background=light
set encoding=utf8
set ffs=unix,dos,mac
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
