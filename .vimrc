""" let pathogen know my custom plugin path
call pathogen#infect('~/.vim.d/bundle/{}')

""" load platform specified configs
let s:os = substitute(system('uname'), "\n", "", "")
function! IsMacOS ()
    return has("mac") || has("macunix") || (has("unix") && s:os == "Darwin")
endfunction

function! IsWindows()
    return has("win16") || has("win32") || has("win64")
endfunction

function! IsCygwin()
    return has('win32unix') || has('win64unix')
endfunction

function! IsLinux()
    return has("linux") || (has("unix") && s:os == "Linux")
endfunction

try
    source ~/.vim.d/env.vim
    source ~/.vim.d/key.vim
    if IsMacOS()
        source ~/.vim.d/platform/mac.vim
    elseif IsWindows()
        source ~/.vim.d/platform/windows.vim
    elseif IsCygwin()
        source ~/.vim.d/platform/cygwin.vim
    elseif IsLinux()
        source ~/.vim.d/platform/linux.vim
    endif
catch
endtry
