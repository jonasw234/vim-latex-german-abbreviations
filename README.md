*abbreviations.txt*  Automatically create proper spacing in German abbreviations in LaTeX.

Author:  Jonas A. Wendorf <https://jwpixxblog.wordpress.com>
Repo:    https://github.com/jonasw234/vim-latex-german-abbreviations
License: Unlicense

                            *abbreviations*
Abbreviations creates abbreviations with proper spacing for German texts for LaTeX documents.

COMMAND                     *abbreviations-command*

AddAbbreviationFor(short, long)		Create an abbreviation for `short`, which expands to `long`

EXAMPLES                    *abbreviations-examples*

Put the following into your vimfiles/after/tex.vim:
AddAbbreviationFor('bzw.', 'beziehungsweise')
AddAbbreviationFor('o.B.d.A.', 'ohne Beschränkung der Allgemeinheit')

Next time you edit a LaTeX document when you type 'bzw.' and trigger the abbreviation, it
automatically gets expanded to 'bzw.\' (for fixed spacing).
Please see `:h abbreviations` about what triggers abbreviations.
When you type 'Bzw.' and trigger the abbreviation, it will expand to 'Beziehungsweise', because you
shouldn't use abbreviations at the start of sentences.
When you type 'o.B.d.A.' and trigger the abbreviation, it will expand to 'o.\,B.\,d.\,A.\' with
small protected spaces in between the abbreviation parts.