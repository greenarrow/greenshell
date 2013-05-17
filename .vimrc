set nomodeline
set number

set shiftwidth=4
set softtabstop=4
set expandtab

colorscheme greencobalt
:set guioptions-=T 

:set ignorecase
:set smartcase

:set cursorline

:set listchars=tab:\ \ ,trail:-  
:set list

function TabToggle()
    if &expandtab
        set shiftwidth=8
        set softtabstop=0
        set noexpandtab
    else
        set shiftwidth=4
        set softtabstop=4
        set expandtab
    endif
endfunction
nmap <F9> mz:execute TabToggle()<CR>'z
