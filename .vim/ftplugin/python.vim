syntax on
setlocal tabstop=4
setlocal softtabstop=4
setlocal shiftwidth=4
setlocal textwidth=79
setlocal expandtab
setlocal autoindent
setlocal fileformat=unix
setlocal encoding=utf-8
setlocal smarttab
setlocal formatoptions=croql

let python_highlight_all = 1
let g:jedi#smart_auto_mappings = 1

"if executable('flake8')
"elseif executable('pylint')
"	setlocal makeprg=pylint\ --output-format=parseable
"elseif executable('pydocstyle')
"	setlocal makeprg=pydocstyle\ -e\ -s\ -v
"elseif executable('radon')
"	setlocal makeprg=radon\ cc\ --format=parseable\ --max-complexity\ 10
"endif
augroup Linting
	autocmd!
	autocmd FileType python setlocal makeprg=flake8\ --format=parseable
	autocmd BufWritePost *.py silent make! <afile> | silent redraw!
	autocmd QuickFixCmdPost [^l]* cwindow
augroup END
