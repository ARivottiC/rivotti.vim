syn keyword javaScripArrayProperty  length
syn match   javaScriptArrayMethod   contained /\%(from\|isArray\|of\|concat\|contains\|copyWithin\|entries\|every\|fill\|filter\|find\|findIndex\|forEach\|indexOf\|join\|keys\|lastIndexOf\|map\|pop\|push\|reduce\|reduceRight\|reverse\|shift\|slice\|some\|sort\|splice\|toLocaleString\|toSource\|toString\|unshift\|values\)\>/

syn match javaScriptDotNotation      "\." nextgroup=javaScriptArrayMethod

hi def link javaScriptMethod            Keyword
hi def link javaScriptProperty          Constant
hi def link javaScriptArrayProperty     javaScriptProperty
hi def link javaScriptArrayMethod       javaScriptMethod
