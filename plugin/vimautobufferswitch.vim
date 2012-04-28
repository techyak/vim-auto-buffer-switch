

function BufferWindowSwap(newBuffer)
  " Set oldBuffer equal to the buffer number of the current window's current
  " buffer
  let oldBuffer = bufnr("%") 
  " Check to see if the buffer even exists
  if bufexists(a:newBuffer)
    " Check to see if newBuffer is located in any of the open windows on this
    " tab
    let windowWithNewBuffer = bufwinnr(a:newBuffer)
    " IF the window doesn't exists for the new buffer just change current
    " buffer in the current window...
    " OTHERWISE find window with newBuffer and change it to oldBuffer then
    " find window with oldBuffer and change it to newBuffer 
    if windowWithNewBuffer != -1
      "need to keep track of current window so that we can come back to it at
      "the end of these changes
      let currentWindow  = bufwinnr(oldBuffer)
      
      exec windowWithNewBuffer . "wincmd w"
      exec "b".oldBuffer

      exec currentWindow . "wincmd w"
    endif
    
    " and now put the new buffer into the current window
    exec "b".a:newBuffer
  else
    echo "Specified buffer doesn't exists"
  endif
endfunction
