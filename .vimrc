""" let pathogen know my custom plugin path
call pathogen#infect('~/.myvim/bundle')

""" load platform specified configs
let s:os = substitute(system('uname'), "\n", "", "")
function! IsMacOS ()
    return has("mac") || has("macunix") || (has("unix") && s:os == "Darwin")
endfunction

function! IsWindows()
    return has("win16") || has("win32") || has("win64")
endfunction

function! IsCygwin()
    return has( 'win32unix' )
endfunction

function! IsLinux()
    return has("linux") || (has("unix") && s:os == "Linux")
endfunction

try
    source ~/.myvim/env.vim
    source ~/.myvim/key.vim
    if IsMacOS()
        source ~/.myvim/platform/mac.vim
    elseif IsWindows()
        source ~/.myvim/platform/windows.vim
    elseif IsCygwin()
        source ~/.myvim/platform/cygwin.vim
    elseif IsLinux()
        source ~/.myvim/platform/linux.vim
    endif
catch
endtry
