changequote([[,]])ifelse([[
dnl score 352
define(d,defn(pushdef))d(t,defn(translit))d(_,`ifelse($1,,,`d($1,t(``e($2)'',` ',`,'))_(shift(shift($@)))')')_(t(include(i),:
,`,,'))d(e,`ifelse($1,@,`d(`u',(t(v$2,-*/+,+/*-)$3))@',$3,@,`d(`u',(ifelse($2,+,v-$1,$2,-,$1-v,$2,*,v/$1,$1/v)))@',($1$2$3))')syscmd(echo $((root)) d(`humn',@)_(root)d(v,- )d(g,`ifdef(`u',`d(`v',u(popdef(`u')))g()',v)')$((g)))

dnl score (347), depends on trailing newline in input
define(d,defn(pushdef))d(t,defn(translit))d(_,`d($1,t(``e($2)'',` ',`,'))_(shift(shift($@)))')_(t(include(i)``d(`_')'',:
,`,,'))d(e,`ifelse($1,@,`d(`u',(t(v$2,-*/+,+/*-)$3))@',$3,@,`d(`u',(ifelse($2,+,v-$1,$2,-,$1-v,$2,*,v/$1,$1/v)))@',($1$2$3))')syscmd(echo $((root)) d(`humn',@)_(root)d(v,- )d(g,`ifdef(`u',`d(`v',u(popdef(`u')))g()',v)')$((g)))

dnl score (226), depends on /bin/sh being bash, and GNU bc
define(_,`ifelse($1,,,`define($1,`($2)')_(shift(shift($@)))')')_(translit(include(i),:
,`,,'))syscmd(bc -l<<<"define f(h){return pushdef(`humn',h)translit(defn(`root'),+,-);};popdef(`humn')r=f(0)/(f(0)-f(1));scale=0;root;r/1")

]]changequote)dnl
dnl score 348, depends on no trailing newline in input
define(d,defn(pushdef))d(t,defn(translit))d(_,`d($1,t(``e($2)'',` ',`,'))_(shift(shift($@)))')_(t(include(i):``d(`_')'',:
,`,,'))d(e,`ifelse($1,@,`d(`u',(t(v$2,-*/+,+/*-)$3))@',$3,@,`d(`u',(ifelse($2,+,v-$1,$2,-,$1-v,$2,*,v/$1,$1/v)))@',($1$2$3))')syscmd(echo $((root)) d(`humn',@)_(root)d(v,- )d(g,`ifdef(`u',`d(`v',u(popdef(`u')))g()',v)')$((g)))
