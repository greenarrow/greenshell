set nomodeline
set number

set shiftwidth=4
set softtabstop=4
set expandtab
set textwidth=79

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

function WrapToggle()
    if &tw == 0
        set textwidth=79
    else
        set textwidth=0
    endif
endfunction
nmap <F8> mz:execute WrapToggle()<CR>'z
