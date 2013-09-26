"""" windows related settings

set grepprg=$BIN/UnxUtils/usr/local/wbin/grep.exe

""" set cygwin as vim shell
""" cygwin bash setting:
""" [/etc/profile]
"""     RANPROFILE="TRUE"
""" [~/.bashrc]
"""     if [ -z "$RANPROFILE" ]; then
"""         PATH="/usr/local/bin:/usr/bin:/bin:$PATH"
"""     fi
""" I have environment variable ROOT set to cygwin install dir
"""set shell=$ROOT/bin/bash
"""set shellcmdflag=--login\ -c
"""set shellredir=>%s\ 2>&1
"""set shellxquote=\"

if has("gui_running")
    "" gui settings
    winpos 250 25
    set columns=150
    set guifont=Consolas:h14
    set lines=42
    set mousehide

    map <F9>  <ESC>:set guifont=Consolas:h12<CR>
    map <F10> <ESC>:set guifont=Consolas:h14<CR>
    map <F11> <ESC>:set guifont=Consolas:h16<CR>
    map <F12> <ESC>:set guifont=Consolas:h20<CR>
else
    "" terminal settings
endif

""" slimv setting
""" put *lisp-impl*.bat in PATH, example bat file (for ccl):
""" [path/to/ccl/ccl.bat]
"""     set USERPROFILE=%HOME%
"""     set CCL_DEFAULT_DIRECTORY=%BIN%/ccl/1.9
"""     wx86cl.exe %*
let g:slimv_swank_cmd='!start /min "ccl.bat" -l "~/.myvim/bundle/slimv/slime/start-swank.lisp"' 

