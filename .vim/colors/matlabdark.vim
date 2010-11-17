
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
" File Name:   matlabdark.vim                                                  "
" Abstract:    A colour scheme that resembles MATLAB's default with additions  "
" Maintainer:  Yaroslav Don                                                    "
" Copyright:   2010 Yaroslav Don                                               "
"              This script is free software; you can redistribute it and/or    "
"              modify it under the terms of the GNU General Public License as  "
"              published by the Free Software Foundation; either version 2 of  "
"              the License, or (at your option) any later version.             "
" Description: Vim colorscheme based on Ian Langworth's "tolerable.vim",       "
"              modified to resemble MATLAB's default colours on a dark back-  "
"              ground. The colours are easily distinguishable and best suited  "
"              for MATLAB's purposes (see "group-name" for help, or            "
"              Syntax/Highlight-test menu ":runtime syntax/hitest.vim").       "
"              This colorscheme is to be used with Fabrice Guy's "matlab.vim". "
"              The latest version can be downloaded on:                        "
"              http://www.mathworks.com/matlabcentral/fileexchange/21798-editing-matlab-files-in-vim "
" Install:     Put this file in the users colors directory (~/.vim/colors or   "
"              $vim\vimfiles\colors on Windows systems) then load it with      "
"              :colorscheme matlabdark                                         "
" Version:     1.0.00                                                          "
" Last Change: Jul 15, 2010                                                    "
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Preprocess {{{

if !has("gui_running")
    runtime! colors/default.vim
    finish
endif

set background=dark

hi clear

if version > 580
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif

let colors_name = "matlabdark"

" }}}

" Common {{{

hi Normal			guifg=#FFFFFF		guibg=#000000		gui=NONE			 | " Normal text
hi Visual			guifg=NONE			guibg=#3D3D3D		gui=NONE			 | " Visual highlight
hi Cursor			guifg=#38342C		guibg=#FF0000		gui=NONE			 | " Cursor
"
hi Search			guifg=NONE			guibg=#999900		gui=NONE			 | " Search
hi MatchParen		guifg=NONE			guibg=darkcyan		gui=NONE			 | " Match () [] {}
"
hi LineNr			guifg=#FF8989		guibg=#000038		gui=NONE			 | " Line numbers
hi Title			guifg=#48CF48		guibg=#004400		gui=BOLD,UNDERLINE	 | " Cell titles
hi Underlined		guifg=#7700FF		guibg=NONE			gui=UNDERLINE		 | " Links, etc.

" }}}

" Split {{{

hi StatusLine		guifg=#202020		guibg=#909090		gui=NONE			 | " Status line
hi StatusLineNC		guifg=#202020		guibg=#707070		gui=NONE			 | " Status line non-current window
hi VertSplit		guifg=#707070		guibg=#707070		gui=NONE			 | " Vertical split

" }}}

" Folder {{{

hi Folded			guifg=#909090		guibg=#202020		gui=NONE			 | " Folded lines

" }}}

" Syntax {{{

hi Statement		guifg=#3333FF		guibg=NONE			gui=NONE			 | " Major Statements (including Conditional, Repeat, Label, Keyword)
hi Exception		guifg=#DE541E		guibg=NONE			gui=NONE			 | " Exceptions and Warnings
"hi Exception		guifg=#FFA500		guibg=NONE			gui=NONE			 | " Exceptions and Warnings (different colour)
"
hi Type				guifg=#B40059		guibg=NONE			gui=NONE			 | " Major Types (including StorageClass, Structure, Typedef)
"
hi Identifier		guifg=#DE0056		guibg=NONE			gui=NONE			 | " Variable names (mostly, varargin/out, colormaps and Class attributes)
hi Function			guifg=#0086DE		guibg=NONE			gui=NONE			 | " Functions on the path (w/o user's)
"
hi Number			guifg=#FF00FF		guibg=NONE			gui=NONE			 | " Number or Float
hi Boolean			guifg=#45DE9A		guibg=NONE			gui=NONE			 | " Booleans
hi Constant			guifg=#FF60FF		guibg=NONE			gui=NONE			 | " Constants (eps, inf, pi and NaN)
"hi Constant		guifg=#D000FF		guibg=NONE			gui=NONE			 | " Constants (eps, inf, pi and NaN) (different colour)
"
hi String			guifg=#9010E0		guibg=NONE			gui=NONE			 | " Strings
hi SpecialChar		guifg=#7575FF		guibg=NONE			gui=NONE			 | " Sprintf identifiers
hi Character		guifg=#D65B5B		guibg=NONE			gui=NONE			 | " TeX identifiers
hi WarningMsg		guifg=#FF7575		guibg=NONE			gui=NONE			 | " Incomplete strings
"
hi Delimiter		guifg=#67FFFF		guibg=NONE			gui=BOLD			 | " Delimiters: () [] {}
hi Operator			guifg=#FF8C00		guibg=NONE			gui=BOLD			 | " Operators (+ - * / ^ < > = ~ : . ? @ etc.)
"
hi Special			guifg=#3333FF		guibg=NONE			gui=BOLD			 | " Line continuation: ...
hi SpecialKey		guifg=#FF0000		guibg=NONE			gui=BOLD			 | " Colon and Semicolon:  , :
"hi SpecialKey		guifg=#909090		guibg=#202020		gui=NONE			 | " Colon and Semicolon:  , : (different colour)
"
hi Comment			guifg=#78FF78		guibg=NONE			gui=NONE			 | " Comments
hi SpecialComment	guifg=#BCFFBC		guibg=NONE			gui=ITALIC			 | " MLint identifiers
hi Todo				guifg=#06FFFF		guibg=#0606FF		gui=UNDERLINE		 | " To-Do
"hi SpecialComment	guifg=#78FF78		guibg=#304008		gui=ITALIC			 | " MLint identifiers (different colour)
"hi Todo			guifg=#FF0000		guibg=#FFFF00		gui=UNDERLINE		 | " To-Do (different colour)

" }}}

" Others {{{

hi PreProc			guifg=#FFCC00		guibg=NONE			gui=NONE			 | " Preprocessor and System commands: !
"hi PreProc			guifg=#FF89FF		guibg=NONE			gui=NONE			 | " Preprocessor and System commands: ! (different colour)
"
hi Tag				guifg=#00FFFF		guibg=NONE			gui=NONE			 | " Tags
hi Debug			guifg=#FFA500		guibg=NONE			gui=NONE			 | " Debugging statements
"
hi Error			guifg=#FF0000		guibg=NONE			gui=UNDERLINE		 | " Errors

" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                                              "
" vim:foldmethod=marker:tabstop=4
"                                                                              "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


