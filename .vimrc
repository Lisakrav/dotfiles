set history=10000
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set wildmode=longest,list

set wildmenu
let mapleader=" "

set termguicolors

"" Omnisharp
let g:OmniSharp_highlighting = 0

let g:OmniSharp_server_stdio = 1
let g:OmniSharp_server_use_net6 = 1

let g:OmniSharp_selector_findusages='fzf' " Use fzf.vim for ui stuff
let g:OmniSharp_selector_ui='fzf'


let g:OmniSharp_diagnostic_showid = 1

let g:OmniSharp_diagnostic_overrides = {
    \ 'IDE0010': {'type': 'I'},
    \ 'IDE0055': {'type': 'W', 'subtype': 'Style'},
    \ 'CS8019': {'type': 'None'},
    \ 'RemoveUnnecessaryImportsFixable': {'type': 'None'},
	\ 'CS0246': {'type': 'E'},
\}

let g:OmniSharp_popup_options = {
  \ 'highlight': 'Normal',
  \ 'padding': [0],
  \ 'border': [1],
  \ 'borderchars': ['─', '│', '─', '│', '╭', '╮', '╯', '╰'],
  \ 'borderhighlight': ['ModeMsg']
\}

augroup omnisharp_commands
  autocmd!
autocmd FileType cs nmap <silent> <buffer> K <Plug>(omnisharp_documentation)

augroup markdown
    autocmd!
    autocmd BufRead *.md :Goyo 120x30
augroup END





