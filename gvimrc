"GUI Options"
"set guifont=Bitstream\ Vera\ Sans\ Mono:h13
if has("gui_gtk2")
  set guifont=Inconsolata\ 13
  behave mswin
else
  set guifont=Inconsolata:h20
endif
set guioptions-=T
set guioptions-=m
set guioptions-=r
set background=light
