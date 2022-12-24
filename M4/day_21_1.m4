changequote([[,]])ifelse([[
dnl score (111), depends on no trailing newline in input, and on /bin/sh as bash
define(_,`define($1,($2))_(shift(shift($@)))')_(translit(include(i)``define(`_')'',:
,`,,'))syscmd(bc<<<"root")

]]changequote)dnl
dnl score 114
define(_,`ifelse($1,,,`define($1,($2))_(shift(shift($@)))')')_(translit(include(i),:
,`,,'))syscmd(echo $((root)))
