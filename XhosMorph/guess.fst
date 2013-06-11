!guess.fst

clear stack
define Vowels [a|e|i|o|u]; 
!	All letters to be considered vowels by the guesser

!	All characters to be treated as single consonants by the guesser. Specifically declares the dipthongs and blends
define Cons [p|b|t|d|k|g|f|v|r|m|n|l|w|y|s|z|j|x|h|c|q];
define Labials [p|b|f|v];
define Clicks [c|q|x|{gc}|{gq}|{gx}|{ngx}|{ngc}|{ngq}];
define Nasal1 m;
define Nasal2 n;
define Palatials [h|l|r];
define Aspiratable [p|s|c|q|k|t|x|{ts}| [Nasals [p|s|c|q|k|t|x|{ts}]]];
define Aspiration [h];
define Roll l;
define Rollable [d|t|h| [Aspiratable Aspiration] | [Nasals [d|t|h] ] ];
define Passivable [t|d|k|k|g|n|f|v|r|l|y|s|z|j|h];
define Nasable [t|d|k|k|g|f|v|r|y|s|z|j|h|b|c|x|q|[Rollable Roll]];
define Changes[p:{tsh}| m:{ny} | b:{ty} | b:j];
define Blendable [[Cons] - [Changes.u]| [Rollable Roll] ];
define Blend w;

define Combos [ Cons| Nasal1 Labials | Nasal2 [[Nasable] - [Labials]] | Aspiratable Aspration | Blendable Blend | Clicks | Changes.l | Rollable Roll];

define GuessNoun [ [[(Vowels) Combos Vowels] | Vowels]* Combos Vowels (m) "+Guess":0];
define GuessVerb [  [[(Vowels) Combos Vowels] | Vowels]* Combos "(a)":0 "+Guess":0];
define GuessAdj [ [[(Vowels) Combos Vowels] | Vowels]* Combos Vowels "+Guess":0];

read lexc < /Users/Kaitlyn/Documents/XhosMorph/xhosa.lex;
substitute defined GuessNoun for "^NOUN"
substitute defined GuessVerb for "^VERB" 
substitute defined GuessAdj for "^ADJECTIVE" 	
define AllInclusive            

read regex ~$["+Guess"] .o. AllInclusive; 	
!	all words in the lexicon that match without the guesser
save stack /Users/Kaitlyn/Documents/XhosMorph/Attested.fst	
!	saves non-guesser lexicon
read regex $["+Guess"] .o. AllInclusive;	
!	all the words in the lexicon that match with the guesser
save stack /Users/Kaitlyn/Documents/XhosMorph/Guesser.fst	
!	saves guesser lexicon
clear stack
read regex AllInclusive;