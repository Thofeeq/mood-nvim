function! VimwikiFindIncompleteTasks()
  lvimgrep /- \[ \]/ %:p
  lopen
endfunction

let g:vimwiki_list = [{'path': '~/Documents/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_listsyms = ' ○◐●✓'

au VimEnter * :TransparentToggle
au VimEnter * :ToggleDiag


au BufEnter *.md :UltiSnipsAddFiletypes markdown.md

" au VimEnter * :set foldmethod=expr
au VimEnter * :set nofoldenable




