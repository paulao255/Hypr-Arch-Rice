" -------------------------------------
" -------------- Plugins --------------
" -------------------------------------

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox', {'branch': 'master'}
Plug 'Exafunction/codeium.vim' , {'branch': 'main'}

call plug#end()

" -------------------------------------
" ------------ Main config ------------
" -------------------------------------

syntax on

filetype plugin indent on

set noexpandtab
set tabstop=8
set shiftwidth=8
set softtabstop=8
set nowrap
set number
set cursorline
set termguicolors
set clipboard=unnamedplus

colorscheme darkblue
colorscheme gruvbox

let g:coc_global_extensions = ['coc-clangd', 'coc-java', 'coc-tsserver', 'coc-html', 'coc-css', 'coc-pyright', 'coc-omnisharp', 'coc-lua']
let g:coc_disable_startup_warning = 1

" -------------------------------------
" ---------------- Maps ---------------
" -------------------------------------

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
imap <script><silent><nowait><expr> <Tab> codeium#Accept()
imap <C-]> <Cmd>call codeium#CycleCompletions(1)<CR>
imap <C-[> <Cmd>call codeium#CycleCompletions(-1)<CR>
imap <C-x> <Cmd>call codeium#Clear()<CR>

" -------------------------------------
" ------------- Functions -------------
" -------------------------------------

function! ApplyClangd(std)
	let g:coc_clangd_args = ['-std=' . a:std, '--header-insertion=never', '-Wall', '-Wextra', '-Wpedantic']
	silent! CocRestart
endfunction

function! AutoClangd()
	if expand('%:e') ==# 'c' || expand('%:e') ==# 'h'
		call ApplyClangd('c90')
	elseif expand('%:e') ==# 'cpp' || expand('%:e') ==# 'hpp'
		call ApplyClangd('c++98')
	endif
endfunction

command! -nargs=1 ClangdStd call ApplyClangd(<f-args>)

function! ApplyJava(ver)
	let g:coc_java_jdtls_vmargs = ['-Djava.version=' . a:ver]
	silent! CocRestart
endfunction

function! AutoJava()
	if expand('%:e') ==# 'java'
		call ApplyJava('25')
	endif
endfunction

command! -nargs=1 JavaStd call ApplyJava(<f-args>)

function! ApplyPython(ver)
	let g:coc_pyright_python_version = a:ver
	silent! CocRestart
endfunction

function! AutoPython()
	if expand('%:e') ==# 'py'
		call ApplyPython('3.14')
	endif
endfunction

command! -nargs=1 PyStd call ApplyPython(<f-args>)

function! ApplyDotnet(ver)
	let g:coc_omnisharp_dotnet_version = a:ver
	silent! CocRestart
endfunction

function! AutoDotnet()
	if expand('%:e') ==# 'cs'
		call ApplyDotnet('10')
	endif
endfunction

command! -nargs=1 DotnetStd call ApplyDotnet(<f-args>)

" ------------------------------------
" ------------- Autocmds -------------
" ------------------------------------

autocmd BufReadPost,BufNewFile *.c,*.h,*.cpp,*.hpp call AutoClangd()
autocmd BufReadPost,BufNewFile *.java call AutoJava()
autocmd BufReadPost,BufNewFile *.py call AutoPython()
autocmd BufReadPost,BufNewFile *.cs call AutoDotnet()
autocmd VimEnter * echo "Hello " . $USER . $USERNAME . ", welcome to your VIM setup! " . strftime("%Y-%m-%d %T")
