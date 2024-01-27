%{
#include <stdio.h>
int yylex();
void yyerror(const char *s);
%}

%token NOUN ARTICLE VERB PREP

%%

CMPLX-NOUN: ARTICLE NOUN;

PREP-PHRASE: PREP CMPLX-NOUN;

NOUN-PHRASE: CMPLX-NOUN | CMPLX-NOUN PREP-PHRASE;

CMPLX-VERB: VERB | VERB NOUN-PHRASE;

VERB-PHRASE: CMPLX-VERB | CMPLX-VERB PREP-PHRASE;

SENTENCE: NOUN-PHRASE VERB-PHRASE;
