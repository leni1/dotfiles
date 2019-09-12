if executable('shellcheck')
	setlocal makeprg=shellcheck\ --format=gcc
endif

augroup Linting
	autocmd!
	autocmd BufWritePost silent make! <afile> | silent redraw!
	autocmd QuickFixCmdPost [^l]* cwindow
augroup END
