
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
" File Name:   matlablight.vim                                                 "
" Abstract:    A colour scheme that resembles MATLAB's default with additions  "
" Maintainer:  Yaroslav Don                                                    "
" Copyright:   2010 Yaroslav Don                                               "
"              This script is free software; you can redistribute it and/or    "
"              modify it under the terms of the GNU General Public License as  "
"              published by the Free Software Foundation; either version 2 of  "
"              the License, or (at your option) any later version.             "
" Description: Vim colorscheme based on Ian Langworth's "tolerable.vim",       "
"              modified to resemble MATLAB's default colours on a light back-  "
"              ground. The colours are easily distinguishable and best suited  "
"              for MATLAB's purposes (see "group-name" for help, or            "
"              Syntax/Highlight-test menu ":runtime syntax/hitest.vim").       "
"              This colorscheme is to be used with Fabrice Guy's "matlab.vim". "
"              The latest version can be downloaded on:                        "
"              http://www.mathworks.com/matlabcentral/fileexchange/21798-editing-matlab-files-in-vim "
" Install:     Put this file in the users colors directory (~/.vim/colors or   "
"              $vim\vimfiles\colors on Windows systems) then load it with      "
"              :colorscheme matlablight                                        "
" Version:     1.0.00                                                          "
" Last Change: Jul 15, 2010                                                    "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Preprocess {{{

if !has("gui_running")
    runtime! colors/default.vim
    finish
endif

set background=light

hi clear

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let colors_name = "matlablight"

" }}}

" Common {{{

hi Normal			guifg=black			guibg=white			gui=NONE			| " Normal text
hi Visual			guifg=NONE			guibg=lightgray		gui=NONE			| " Visual highlight
hi Cursor			guifg=#D4D0C8		guibg=#FF0000		gui=NONE			| " Cursor
"
hi Search			guifg=NONE			guibg=yellow		gui=NONE			| " Search
hi MatchParen		guifg=NONE			guibg=cyan			gui=NONE			| " Match () [] {}
"
hi LineNr			guifg=#770000		guibg=#EEEEFF		gui=NONE			| " Line numbers
hi Title			guifg=#008800		guibg=lightgreen	gui=BOLD,UNDERLINE	| " Cell titles
hi Underlined		guifg=#7700FF		guibg=NONE			gui=UNDERLINE		| " Links, etc.

" }}}

" Split {{{

hi StatusLine		guifg=#E0E0E0		guibg=#707070		gui=NONE			| " Status line
hi StatusLineNC		guifg=#E0E0E0		guibg=#909090		gui=NONE			| " Status line non-current window
hi VertSplit		guifg=#909090		guibg=#909090		gui=NONE			| " Vertical split

" }}}

" Folder {{{

hi Folded			guifg=#707070		guibg=#E0E0E0		gui=NONE			| " Folded lines

" }}}

" Syntax {{{

hi Statement		guifg=blue			guibg=NONE			gui=NONE			| " Major Statements (including Conditional, Repeat, Label, Keyword)
hi Exception		guifg=#E25822		guibg=NONE			gui=NONE			| " Exceptions and Warnings
"hi Exception		guifg=orange		guibg=NONE			gui=NONE			| " Exceptions and Warnings (different colour)
"
hi Type				guifg=#A6004B		guibg=NONE			gui=NONE			| " Major Types (including StorageClass, Structure, Typedef)
"
hi Identifier		guifg=#FF2277		guibg=NONE			gui=NONE			| " Variable names (mostly, varargin/out, colormaps and Class attributes)
hi Function			guifg=#2277FF		guibg=NONE			gui=NONE			| " Functions on the path (w/o user's)
"
hi Number			guifg=magenta		guibg=NONE			gui=NONE			| " Number or Float
hi Boolean			guifg=#22BB77		guibg=NONE			gui=NONE			| " Booleans
hi Constant			guifg=#A000A0		guibg=NONE			gui=NONE			| " Constants (eps, inf, pi and NaN)
"hi Constant		guifg=#d000ff		guibg=NONE			gui=NONE			| " Constants (eps, inf, pi and NaN) (different colour)
"
hi String			guifg=#A020F0		guibg=NONE			gui=NONE			| " Strings
hi SpecialChar		guifg=darkblue		guibg=NONE			gui=NONE			| " Sprintf identifiers
hi Character		guifg=brown			guibg=NONE			gui=NONE			| " TeX identifiers
hi WarningMsg		guifg=darkred		guibg=NONE			gui=NONE			| " Incomplete strings
"
hi Delimiter		guifg=#009999		guibg=NONE			gui=BOLD			| " Delimiters: () [] {}
hi Operator			guifg=darkorange	guibg=NONE			gui=BOLD			| " Operators (+ - * / ^ < > = ~ : . ? @ etc.)
"
hi Special			guifg=blue			guibg=NONE			gui=BOLD			| " Line continuation: ...
hi SpecialKey		guifg=red			guibg=NONE			gui=BOLD			| " Colon and Semicolon:  , :
"hi SpecialKey		guifg=#707070		guibg=#E0E0E0		gui=NONE			| " Colon and Semicolon:  , : (different colour)
"
hi Comment			guifg=#008800		guibg=NONE			gui=NONE			| " Comments
hi SpecialComment	guifg=#004400		guibg=NONE			gui=ITALIC			| " MLint identifiers
hi Todo				guifg=#0000AA		guibg=#BBFFFF		gui=UNDERLINE		| " To-Do
"hi SpecialComment	guifg=#008800		guibg=#E8F8C0		gui=ITALIC			| " MLint identifiers (different colour)
"hi Todo			guifg=#FF0000		guibg=#FFFF00		gui=UNDERLINE		| " To-Do (different colour)

" }}}

" Others {{{

hi PreProc			guifg=darkyellow	guibg=NONE			gui=NONE			| " Preprocessor and System commands: !
"hi PreProc			guifg=#770077		guibg=NONE			gui=NONE			| " Preprocessor and System commands: ! (different colour)
"
hi Tag				guifg=#229955		guibg=NONE			gui=NONE			| " Tags
hi Debug			guifg=orange		guibg=NONE			gui=NONE			| " Debugging statements
"
hi Error			guifg=#FF0000		guibg=NONE			gui=UNDERLINE		| " Errors

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
" vim:foldmethod=marker:tabstop=4
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

