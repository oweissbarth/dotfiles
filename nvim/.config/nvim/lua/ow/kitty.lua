vim.cmd [[
augroup kitty_mp
  autocmd!
  au VimLeave * :silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=default
  au VimEnter * :silent !kitty @ --to=$KITTY_LISTEN_ON set-spacing padding=0
augroup EN
]]
