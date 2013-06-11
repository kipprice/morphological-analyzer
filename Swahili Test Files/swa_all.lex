!------FST MODEL FOR SWAHILI-------!
!-----------5 June 2013------------!

Multichar_Symbols

+UW+
+ROOT
+NOUN

LEXICON Root
    Nouns;

LEXICON Nouns
    <[u "+UW+"] : u>   ConsRoot;
    <[w "+UW+"] : w>   VowelRoot;

LEXICON ConsRoot
    <[{bao} "+ROOT"] : {bao}>   NounEnd;
    
LEXICON VowelRoot
    <[{embe} "+ROOT"] : {embe}> NounEnd;
    
LEXICON NounEnd
    <"+NOUN":0>     #; 