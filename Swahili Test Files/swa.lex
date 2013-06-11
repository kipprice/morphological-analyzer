!------FST MODEL FOR SWAHILI-------!
!-----------5 June 2013------------!

Multichar_Symbols

+UW+
+ROOT
+NOUN

LEXICON Root
    Nouns;

LEXICON Nouns
    <[u "+UW+"] : u>   NRoot;
    
LEXICON NRoot
    <[{bao} "+ROOT"] : {bao}> NounEnd;
    <[{embe} "+ROOT"] : {embe}> NounEnd;

LEXICON NounEnd
    <"+NOUN":0>     #;
    
!---XFST RULES FOR THIS FILE---!
!---    read lexc swa.lex                       ---!
!---    define Lex                              ---!
!---    define VOWEL [a|e|i|o|u];               ---!
!---    define Rule [u @-> w || .#. _ [VOWEL]]; ---!
!---    define LEX Lex .o. Rule                 ---!
!---    push defined LEX                        ---!
!---    apply up ubao                           ---!
!---    apply up wembe                          ---!
!---    apply up uembe                          ---!