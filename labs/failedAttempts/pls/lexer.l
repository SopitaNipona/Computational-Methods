%{
#include "y.tab.h"
%}

%%

a|the       { return ARTICLE; }
boy|girl|flower    { return NOUN; }
touches|likes|sees   { return VERB; }
with        { return PREP; }
\n        { return EOL; }
.        { return yytext[0]; }

%%

int yywrap() {
    return 1;
}

