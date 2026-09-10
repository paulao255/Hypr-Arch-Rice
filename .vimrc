" -------------------------------------
" -------------- Plugins --------------
" -------------------------------------

call plug#begin()

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox', {'branch': 'master'}
Plug 'Exafunction/codeium.vim' , {'branch': 'main'}
Plug 'preservim/tagbar', {'branch': 'master'}

call plug#end()

" -------------------------------------
" ------------ Main config ------------
" -------------------------------------

syntax on

filetype plugin indent on

set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
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
map! <silent> <C-s> :TagbarToggle<CR>
map <silent> <C-s> :TagbarToggle<CR>
map! <silent> <C-t> :tabnext<CR>
map <silent> <C-t> :tabnext<CR>
map! <silent> <C-n> :tabnew<CR>:Explore<CR>
map <silent> <C-n> :tabnew<CR>:Explore<CR>
map! <silent> <C-e> :Explore<CR>
map <silent> <C-e> :Explore<CR>

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

function! ClangdStdComplete(ArgLead, CmdLine, CursorPos)
	return ['c89', 'c90', 'c99', 'c11', 'c17', 'c23', 'c++98', 'c++03', 'c++11', 'c++14', 'c++17', 'c++20', 'c++23']
endfunction

command! -nargs=1 -complete=customlist,ClangdStdComplete ClangdStd call ApplyClangd(<f-args>)

function! ApplyJava(ver)
	let g:coc_java_jdtls_vmargs = ['-Djava.version=' . a:ver]
	silent! CocRestart
endfunction

function! AutoJava()
	if expand('%:e') ==# 'java'
		call ApplyJava('25')
	endif
endfunction

function! JavaStdComplete(ArgLead, CmdLine, CursorPos)
	return ['25', '21', '17', '11', '8']
endfunction

command! -nargs=1 -complete=customlist,JavaStdComplete JavaStd call ApplyJava(<f-args>)

function! ApplyPython(ver)
	let g:coc_pyright_python_version = a:ver
	silent! CocRestart
endfunction

function! AutoPython()
	if expand('%:e') ==# 'py'
		call ApplyPython('3.14')
	endif
endfunction

function! PythonStdComplete(ArgLead, CmdLine, CursorPos)
	return ['3.14']
endfunction

command! -nargs=1 -complete=customlist,PythonStdComplete PythonStd call ApplyPython(<f-args>)

function! ApplyDotnet(ver)
	let g:coc_omnisharp_dotnet_version = a:ver
	silent! CocRestart
endfunction

function! AutoDotnet()
	if expand('%:e') ==# 'cs'
		call ApplyDotnet('10')
	endif
endfunction

function! DotnetStdComplete(ArgLead, CmdLine, CursorPos)
	return ['10']
endfunction

command! -nargs=1 -complete=customlist,DotnetStdComplete DotnetStd call ApplyDotnet(<f-args>)

function! ApplyLua(ver)
	if !exists('g:coc_user_config')
		let g:coc_user_config = {}
	endif

	if a:ver ==# 'JIT' || a:ver ==# 'LuaJIT' || a:ver ==# 'jit' || a:ver ==# 'luajit'
		let l:lua_ver = 'LuaJIT'
	else
		let l:lua_ver = 'Lua ' . a:ver
	endif

	let g:coc_user_config['Lua.runtime.version'] = l:lua_ver

	silent! CocRestart
endfunction

function! AutoLua()
	if expand('%:e') ==# 'lua'
		call ApplyLua('5.1')
	endif
endfunction

function! LuaStdComplete(ArgLead, CmdLine, CursorPos)
	return ['JIT', 'LuaJIT', '5.1', '5.2', '5.3', '5.4', '5.5']
endfunction

command! -nargs=1 -complete=customlist,LuaStdComplete LuaStd call ApplyLua(<f-args>)

function! ApplyJavaScript(ver)
	if !exists('g:coc_user_config')
		let g:coc_user_config = {}
	endif

	let g:coc_user_config['javascript.implicitProjectConfig.target'] = a:ver
	let g:coc_user_config['typescript.implicitProjectConfig.target'] = a:ver

	silent! CocRestart
endfunction

function! AutoJavaScript()
	if expand('%:e') ==# 'js' || expand('%:e') ==# 'jsx' || expand('%:e') ==# 'ts' || expand('%:e') ==# 'tsx' || expand('%:e') ==# 'json' || expand('%:e') ==# 'html'
		call ApplyJavaScript('ES2025')
	endif
endfunction

function! JavaScriptStdComplete(ArgLead, CmdLine, CursorPos)
	return ['ES2026', 'ES2025', 'ES2024', 'ES2023', 'ES2022', 'ES2021', 'ES2020', 'ES2019', 'ES2018', 'ES2017', 'ES2016']
endfunction

command! -nargs=1 -complete=customlist,JavaScriptStdComplete JavaScriptStd call ApplyJavaScript(<f-args>)

" ------------------------------------
" ------------- Autocmds -------------
" ------------------------------------

autocmd BufReadPost,BufNewFile *.c,*.h,*.cpp,*.hpp call AutoClangd()
autocmd BufReadPost,BufNewFile *.java call AutoJava()
autocmd BufReadPost,BufNewFile *.py call AutoPython()
autocmd BufReadPost,BufNewFile *.cs call AutoDotnet()
autocmd BufReadPost,BufNewFile *.lua call AutoLua()
autocmd BufReadPost,BufNewFile *.js,*.jsx,*.ts,*.tsx,*.json,*.html call AutoJavaScript()
autocmd VimEnter * echo "Hello " . $USER . $USERNAME . ", welcome to your VIM setup! " . strftime("%Y-%m-%d %T")
