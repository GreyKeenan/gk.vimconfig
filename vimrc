
function! GK_clearRemaps()
	mapclear
	imapclear
	nmapclear
	xmapclear
	vmapclear
endfunction
call GK_clearRemaps()

function! GK_tabSet(size)
	let &tabstop = a:size
	let &softtabstop = 0
	let &shiftwidth = a:size
	set noexpandtab
endfunction

function! GK_tabSet_spaces(size)
	let &tabstop = a:size + a:size / 2
	let &softtabstop = 0
	set expandtab smarttab
	let &shiftwidth = a:size
endfunction

function! GK_noUnderline()
	set cursorline
	hi CursorLine cterm=NONE
	hi CursorLineNr cterm=NONE
endfunction

" leader-keys wont time out for remaps
set notimeout nottimeout

nnoremap - <Nop>

nnoremap -<tab> _v0"sy/^<c-r>s<backspace>[^ \t]<enter>``

nnoremap -i <Nop>
nnoremap -ir <Nop>
nnoremap -ik <Nop>

nnoremap -ii migg/INDEX<enter>zz
" nnoremap -ij migg/INDEX<enter>}zz
nnoremap -il I  
nnoremap -ih 0xx
nnoremap -ig _miw"sy$/^<c-r>s$<enter>ztkj
nnoremap -ib `izz

" when in index list, jump to next index entry of the same level
" nnoremap -ik _lv12h"sy?^<c-r>s<enter>
" nnoremap -ij _lv12h"sy/^<c-r>s<enter>

nnoremap -i1 miyygg/INDEX<enter>}zzPI- <esc>
nnoremap -i2 miyygg/INDEX<enter>}zzPI  - <esc>
nnoremap -i3 miyygg/INDEX<enter>}zzPI    - <esc>
nnoremap -i4 miyygg/INDEX<enter>}zzPI      - <esc>
nnoremap -i5 miyygg/INDEX<enter>}zzPI        - <esc>
nnoremap -i6 miyygg/INDEX<enter>}zzPI          - <esc>

nmap -ir1 -i1`i
nmap -ir2 -i2`i
nmap -ir3 -i3`i
nmap -ir4 -i4`i
nmap -ir5 -i5`i
nmap -ir6 -i6`i

nmap -iu11 -i1dd1kP
nmap -iu21 -i2dd1kP
nmap -iu31 -i3dd1kP
nmap -iu41 -i4dd1kP
nmap -iu51 -i5dd1kP
nmap -iu61 -i6dd1kP

nmap -iu12 -i1dd2kP
nmap -iu22 -i2dd2kP
nmap -iu32 -i3dd2kP
nmap -iu42 -i4dd2kP
nmap -iu52 -i5dd2kP
nmap -iu62 -i6dd2kP

" nmap -ik13 -i1dd3kP
" nmap -ik14 -i1dd4kP
" nmap -ik15 -i1dd5kP
" nmap -ik16 -i1dd6kP

nnoremap -l <Nop>
nnoremap -lc <Nop>

nnoremap -lce _cW,ea =j0
	" define to enum

nnoremap -t <Nop>

nnoremap -t, f,lr<enter>

nnoremap -m <Nop>
nnoremap -mh <Nop>

nnoremap -mh1 0wmhy$gg/INDEX<enter>}zzPI- <esc>
nnoremap -mh2 0wmhy$gg/INDEX<enter>}zzPI  - <esc>
nnoremap -mh3 0wmhy$gg/INDEX<enter>}zzPI    - <esc>
nnoremap -mh4 0wmhy$gg/INDEX<enter>}zzPI      - <esc>
nnoremap -mh5 0wmhy$gg/INDEX<enter>}zzPI        - <esc>
nnoremap -mh6 0wmhy$gg/INDEX<enter>}zzPI          - <esc>

nnoremap -mhx I<br><enter><enter><!-- INDEX --><enter><enter><br><enter><esc>

set backupdir=~/vim_backups
set directory=~/vim_backups

function! GK_lcs()
	set lcs=tab::\ 

	" set lcs+=space:-
	set lcs+=nbsp:+
	" set lcs+=multispace:
	set lcs+=trail:&

	"set showbreak:~>
	set showbreak:
	set lcs+=extends:~
	set lcs+=precedes:~

	" set lcs+=eol:`

	set lcs+=conceal:@
endfunction
set ai " auto-indent
call GK_lcs()
set list
set breakindent
call GK_tabSet(4)

syntax on
set termguicolors
silent! colo industry
silent! colo darkblue
silent! colo slate
silent! colo habamax
silent! colo retrobox
"also like: sorbet, wildcharm, zaibatsu, quiet
call GK_noUnderline()

set nu rnu " line numbers
let g:netrw_bufsettings='noma nomod nu rnu' " line numbers in explorer

set belloff=all
