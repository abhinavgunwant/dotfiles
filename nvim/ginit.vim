let s:fontsize = 16
function! AdjustFontSize(sizeIncrement)
    let s:fontsize = s:fontsize + sizeIncrement
    :execute "GuiFont! FiraCode Nert Font:h . s:fontsize"
endfunction

noremap <C-+> :call AdjustFontSize(1)<CR>
noremap <C--> :call AdjustFontSize(-1)<CR>

