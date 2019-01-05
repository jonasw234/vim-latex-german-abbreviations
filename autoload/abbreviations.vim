" Location:     autoload/abbreviations.vim
" Maintainer:   Jonas A. Wendorf <https://jwpixxblog.wordpress.com/>
" Version:      1.0

function! abbreviations#AddAbbreviationFor(short, long) abort
    let short_upper  = toupper(a:short[0]) . a:short[1:]
    let long_upper   = toupper(a:long[0]) . a:long[1:]
    let concat       = join(split(a:short, '\.'), '.\,') . '.\'
    let concat_upper = toupper(concat[0]) . concat[1:]

    " First char is uppercase -> use long form unless short form argument is uppercase
    if a:short ==# short_upper
        " Short form starts with uppercase letter already, don't expand, just fix spacing
        execute 'inoreabbrev <buffer> '  . short_upper . ' '  . concat_upper
        execute 'inoreabbrev <buffer> (' . short_upper . ' (' . concat_upper
    else
        " Expand short form starting in upper case to long form
        execute 'inoreabbrev <buffer> '  . short_upper . ' '  . long_upper
        execute 'inoreabbrev <buffer> (' . short_upper . ' (' . long_upper

        " Fix spacing in lowercase short form
        execute 'inoreabbrev <buffer> '  . a:short . ' '  . concat
        execute 'inoreabbrev <buffer> (' . a:short . ' (' . concat
    endif
endfunction
