" Vim compiler file
" Language: node
" Maintainer: André Rivotti Casimiro <andre.r.casimiro@gmail.com>

if exists("current_compiler")
  finish
endif
let current_compiler = "node"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

let s:cpo_save = &cpo
set cpo-=C

CompilerSet makeprg=node\ %

"/home/rivotti/teste.js:3
"        unction (v) { console.log(v); }
"                    ^
"SyntaxError: Unexpected token {
"    at Module._compile (module.js:439:25)
"    at Object.Module._extensions..js (module.js:474:10)
"    at Module.load (module.js:356:32)
"    at Function.Module._load (module.js:312:12)
"    at Function.Module.runMain (module.js:497:10)
"    at startup (node.js:119:16)
"    at node.js:901:3
"
CompilerSet errorformat=%-G\ \ \ \ at\ %.%#,%E%f:%l,%Z%.%#Error:\ %m,%C%.%#,%-G%.%#

let &cpo = s:cpo_save
unlet s:cpo_save
