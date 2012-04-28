vim-auto-buffer-switch
======================

This is a very simple plugin. The idea is that when I am working on a project I find myself opening quite a few windows to edit different files - say in a rails application. That said, I prefer to do my actual editing in one single window and have the others there just for reference. What frustrated me was that I wanted to select a new buffer for my prefered window, and have the old buffer open in the window that the new buffer occupied. More simply I wanted to switch one buffer for another with a singe command. That's what BufferWindowSwap function does.

I Suggest that you a command mapping like:
command! -bang -nargs=1 B :call BufferWindowSwap(<args>)

I use this with MiniBufExplorer which I highly suggest! If you map it like I do, then you just have to type in :B<# of buffer you want to swap with>

This is my first plugin so I suspect that I may have missed special cases, or even a built in vim command to do this - any suggestions are welcome!
