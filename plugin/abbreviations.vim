" Location:     plugin/abbreviations.vim
" Maintainer:   Jonas A. Wendorf <https://jwpixxblog.wordpress.com/>
" Version:      1.0

if exists("g:loaded_abbreviations") || v:version < 700 || &cp
    finish
endif
let g:loaded_abbreviations = 1

command! -nargs=+ AddAbbreviationFor call abbreviations#AddAbbreviationFor(<f-args>)
