Lex!--Xhosa Rules--!

clear stack
define Vowels [a|e|i|o|u];		!---Vowels for recognition purposes---!
define Cons [p|b|t|d|k|g|f|v|r|m|n|l|w|y|s|z|j|x|h|c|q];		!---Consonants for recognition purposes---!
define Labials [p|b|f|v];		!---Labials for recognition purposes---!
define Clicks [c|q|x|{gc}|{gq}|{gx}|{ngx}|{ngc}|{ngq}];
define Nasal1 m;
define Nasal2 n;
define Nasals [m|n];
define Palatials [h|l|r];
define Aspiratable [p|s|c|q|k|t|x|{ts}| [Nasals [p|s|c|q|k|t|x|ts]]];
define Aspiration [h];
define Roll l;
define Rollable [d|t|h| [Aspiratable Aspiration] | [Nasals [d|t|h] ] ];
define Passivable [t|d|k|k|g|n|f|v|r|l|y|s|z|j|h];
define Nasable [t|d|k|k|g|f|v|r|y|s|z|j|h|b|c|x|q|[Rollable Roll]];
define Changes[p:tsh| m:ny | b:ty | b:j];
define Blendable [[Cons] - [Changes.u]| [Rollable Roll] ];
define Blend w;
define Combos [ Cons| Nasal1 Labials | Nasal2 [[Nasable] - [Labials]] | Aspiratable Aspration | Blendable Blend | Clicks | Changes.l | Rollable Roll];
define Syll [Combos Vowels];

!---THESE NEED TO BE CHANGED IF USUNG A LINUX OR MAC MACHINE---!
read lexc < /Users/Kaitlyn/Documents/XhosMorph/xhosa.lex;
source /Users/Kaitlyn/Documents/XhosMorph/guess.fst;


define Lex;		!!Stores the Lexicon file, which needs to be refined!!



define Noun [$["+Noun"] .o. Lex];		!!All words with a noun tag!!
define Verb [$["+Verb"] .o. Lex];		!!All words with a verb tag!!
define Adjective [$["Adjective"] .o. Lex];		!!All words with an adjective tag!!
define Lex[~$["+Noun"] .o. Lex];
define Lex[~$["+Verb"] .o. Lex];
define Lex[~$["+Adjective"] .o. Lex];
!!!!---NOUNS---!!!!

!---NOMINATIVE RULES---!

define Nominative [[$["Nom+"]] .o. Noun];		!!Finds all words tagged as nominative!!
define Noun [[~$["Nom+"]] .o. Noun];	!!Removes all instances of the Nominative case from the Lexicon called Noun in order to apply rules!!
define Nominative [[~$["Loc+"]|~$["+Loc"]] .o. Nominative];		!!Finds all nouns improperly tagged as locative and nominative
define Nominative [[~$["Voc+"]|~$["+Voc"]] .o. Nominative];		!!Finds all nouns improperly tagged as vocative and nominative

!---Class 1 (1/2)---!
!---"aba" to "ab" before vowels---!
!---"aba" to "abe" before a syllable with u or w follows---!

define Class1A [[$["2+"]|$["1+"]] .o. Nominative];
define C1Rule1	[{aba} @-> {ab} || .#. _ [Vowels]];
define C1Rule2 [{aba} @-> {abe} || .#. _ [[Combos u]|[Combos w]]];
define Class1A [Class1A .o. [C1Rule1|C1Rule2]];
define Noun [Class1A | Noun];

!---Class 2 (3/4)--!
!---"um" to "u" before "m" sometimes---!

define Class2 [[$["3+"]|$["4+"]] .o. Nominative];
define C2Rule1 [{um} @-> [{um}|u] || .#. _ {m}];
define Class2 [Class2 .o. C2Rule1];
define Noun [Class2|Noun];

!---Class 3 (5/6)---!
!---"ili" to "i" before multi-syllable words---!
!---"ili" to "il" before multi-syllable words---!
!---"ama" to "ame" before multi-syllable words---!

define Class3 [[$["5+"]|$["6+"]] .o. Nominative];
define C3Rule1 [{ili} @-> {i} || .#. _ [Syll] [Syll]+];
define C3Rule2 [{ili} @-> {il} || .#. _ [Vowels]];
define C3Rule3 [{ama} @-> {ame} || .#. _ [i]];
define Class3 [Class3 .o. [C3Rule1|C3Rule2]];
define Noun [Class3|Noun];

!---Class 4 (7/8)---!
!---Before a vowel, "isi"/"izi" will become "is"/"iz"---!
!---"isi" to "isa" when the meaning is to say "for"---!

define Class4 [[$["7+"]|$["8+"]] .o. Nominative];
define C4Rule1 [i @-> 0 || [.#. [{iz}|{is}]] _ ];
define C4Rule2 [{isi} @-> {isa}];
define Class4 [Class4 .o. [C4Rule1|C4Rule2]];
define Noun [Class4|Noun];

!---Class 5 (9/10)---!
!---"im" before labials---!
!---"i" before [m n h l r]---!
!---"in" before everything else---!
!---"izim"/"izin"/"izi" go to "iim"/"iin"/"ii" in multi-syllable plural form---!
!---"izi" is always "ii"---!

define Class5 [[$["9+"]|$["10+"]] .o. Nominative];
define C5Rule1 [{in} @-> i || [.#. ({iz})] _ [m n h l]];
define C5Rule2 [{in} @-> {im} || [.#. ({iz})] _ [p b f v]];
define C5Rule3 [z @-> 0 || [.#. i] _ i [Nasals] [Syll] [Syll]+];
define C5Rule4 [{izi} @-> {ii} || .#. _ ];
define Class5 [Class 5 .o. [C5Rule1|C5Rule2|C5Rule3|C5Rule4]];
define Noun [Class5|Noun];

!---Class 6 (11/10)---!
!---"ulu" becomes "u" before multi-syllabled words---!
!---"ulw" before vowels---!
!---"ulwa" 
!---All Class 5 rules for 10 apply as well---!

define Class6 [$["11+"] .o. Nominative];
define C6Rule1 [{ulu} @-> {u} || .#. _ [Syll] [Syll]+];
define Class6 [ Class6 .o. C6Rule1];
define Noun [Class6|Noun];

!---Class 7 (14)---!
!---"ubu" becomes "u" before multi-syllabled words---!

define Class7 [$["14+"] .o. Nominative];
define C7Rule1 [{ubu} @-> {u} || .#. _ [Syll] [Syll]+];
define Class7 [ Class7 .o. C7Rule1];
define Noun [Class7|Noun];

!---END OF NOMINATIVE RULES---!

!---VOCATIVE---!
!---Remove the article from every vocative word---!
!---Suffix should work fine---!

define Vocative [[$["Voc+"]|$["+Voc"]] .o. Noun];
define Noun [[~$["Voc+"]|~$["+Voc"]] .o. Noun];

define VocRule1 [[Vowels] @-> 0 || .#. _ ];
define Vocative [Vocative .o. VocRule1];
define Noun[~$["Voc+"] .o. Noun];
define Noun [Vocative|Noun];

!---END OF VOCATIVE---!

!---LOCATIVE---!
!---First vowel is changed to an 'e'---!
!---"ni" is added the end---!
!---Some vowels change with the addition of "ni"---!
!---Special case for Posessive Locatives---!

define Locative [$["Loc+"] .o. Noun];
define Locative [$["+Loc"] .o. Locative];
define Noun [~[$["Loc+"|"+Loc"]] .o. Noun];
define LocPoss [[$["Poss+"]|$["+Poss"]] .o. Locative];
define Locative [[~$["Poss+"]|~$["+Poss"]] .o. Locative];

define LocRule1 [[Vowels] @-> e || .#. _ ];
define LocRule2 [a @-> e || _ [{ni} .#.] ];
define LocRule3 [o @-> {we} || _ [{ni} .#.]];
define LocRule4 [u @-> {wi} || _ [{ni} .#.]];
define LocRule5 [LocRule1 .o. [LocRule2|LocRule3|LocRule4]];
define Locative [Locative .o. LocRule5];
define Noun [Locative|Noun];

define LPRule1 [[Vowels] @-> {se} || [.#. Cons a] _ ];
define LocPoss [LocPoss .o. LPRule1];

!---POSSESSIVE---!
!---Proper nouns use "ka", either after the objects strong concord, or by itself, if the prefix would be weak---!
!---Ka replaces the prefix of the posessor---!
!---All other nouns are preced by a pronoun set forth in the lexicon file---!
!---Need to unify the posessive pronoun's 'a' with the article of the noun---!

define Possessive [[$["Poss+"]|$["+Poss"]] .o. Noun];
define Noun [~[$["Poss+"]|$["+Poss"]] .o. Noun];

define PossRule1 [{aa} @-> a || [.#. Cons] _ ];
define PossRule2 [{ai} @-> e || [.#. Cons] _ ];
define PossRule3 [{au} @-> o || [.#. Cons] _ ];
define Possessive [Possessive .o. [PossRule1|PossRule2|PossRule3]];
define Noun [Possessive|Noun];

!---END OF POSSESSIVE---!

define Noun [LocPoss|Noun]; !! Now locative and posessive did not get mixed up

!---END OF LOCATIVE---!

!---DIMINUTIVE---!
!---Suffixes contract with final vowel---!

define Diminutive [$["+Dim"] .o. Noun];
define Noun [~$["+Dim"] .o. Noun];

define DimRule1 [[a|e|i] @-> 0 || _ [[{ana}|{anyana}] .#. ]];
define DimRule2 [[o|u] @-> w || _ [[{ana}|{anyana}] .#. ]];
define Diminutive [Diminutive .o. [DimRule1|DimRule2]];
define Noun [Diminutive|Noun];

!---END OF DIMUNITIVE---!

!---AUGMENTIVE---!
!---None necessary---!

!---FEMININE---!
!---None necessary---!


!---PREPOSITIONAL---!
!---Eight different prepositions, "kwa" is only for proper nouns, "ku" is only for animate nouns---!
!--Contract with the article like "ka" for the most part---!

define Preposition [$["Prep+"] .o. Noun];
define Noun [~$["Prep+"] .o. Noun];
define Prepositions [{kwa}|{ku}|{na}|{nga}|{nganga}|{njenga}|{nganxa}|{ngokwa}];
define PossEnd [{kw}|{n}|{ng}|{ngang}|{njeng}|{nganx}|{ngokw}];
define PrepProp [$["1P+"]|$["2P+"]];
define PrepAnim [$["1+"]|$["2+"]|PrepProp];

!---Form in the same way as possessives---!
define PrepRule1 [{aa} @-> a || [.#. PossEnd] _ ];
define PrepRule2 [{ai} @-> e || [.#. PossEnd] _ ];
define PrepRule3 [{au} @-> o || [.#. PossEnd] _ ];

!---Seperate set of combining rules for "ku"---!
define PrepRule4 [a @-> 0 || [.#. {ku} ] _ ];
define PrepRule5 [[{ue}|{ui}] @-> 0 || [.#. k ] _ ];
define PrepRule6 [u @-> 0 || [ .#. k] _ [o|u] ];

!---Making sure only the correct classes are usd after "kwa" and "ku"---!
define PrepKW [$[{kw}] .o. Preposition];
define PrepKW [[PrepProp] .o. PrepKW];
define Preposition [PrepKW|Preposition];
define PrepKU [$[{ku}] .o. Preposition];
define PrepKU [[PrepAnim] .o. PrepKU];
define Preposition [PrepKU|Preposition];
define Noun[Preposition|Noun];

!---END OF PREPOSITIONAL---!

!!!!---PERSONAL PRONOUNS---!!!!
define Pronoun [$["Pro+"] .o. Lex];
define Lex [~$["Pro+"] .o. Lex];

!------SUBSTANTIVE----------!
!---No rules needed---!

!------POSSESSIVE------!
!---No rules needed---!

!------COPULAIC------!
!---No rules needed---!

!------POST-PREPOSITIONAL------!
!---Remove the "na" from post-prepositional form---!
define PostPrep [$["Prep+"] .o. Pronoun];
define Pronoun [~$["Prep+"] .o. Pronoun];
define PPRule1 [{na}@->0|| _ .#.];
define PostPrep [PostPrep .o. PPRule1];
define Pronoun [PostPrep|Pronoun];

!!!!---END OF PERSONAL PRONOUNS---!!!!

!!!!---ADJECTIVES---!!!!
!---No rules needed---!

!!!!---VERBS---!!!!

!---INDICATIVE---!
!---5 primary tense allomorphies---!
!---2 secondary tense allomorphies---!

define Indicative [$["Ind+"|"+Ind"] .o. Verb];
define Verb [~[$["Ind+"]|$["+Ind+"]] .o. Verb];

!---Present Tense---!
!---Long form inserts the aux particle "ya"---!
!---Negative tense takes 'a' before and ends in 'i'---!

define PresInd [$["Pres+"|"+Pres"] .o. Indicative];
define Indicative [~[$"Pres+"|$"+Pres"] .o.Indicative];
define LongInd [$["Long+"] .o. PresInd];
define PresInd [~$["Long+"] .o. PresInd];
define LongInd [$["Aux+"] .o. LongInd]; 
define LongInd [${ya} .o. LongInd];
define PresInd[LongInd|PresInd];

define NegIndPres [$["Neg+"] .o. PresInd];
define PresInd [~$["Neg+"] .o. PresInd];
define PresIndRule2 [0 @-> a || .#. _ ];
define PresIndRule3 [a @-> i || _ .#. ];
define NegIndPres [NegIndPres .o. PresIndRule2];
define NegIndPres [NegIndPres .o. PresIndRule3];
define PresInd [NegIndPres|PresInd]; 
define Indicative [PresInd|Indicative];

!---Perfect Tense---!
!---Short and long form take appropriate suffixes---!
!---Negative takes 'a' before and ends in "nga"---!

define PerfInd [$["Perf+"] .o. Indicative];
define Indicative [~$["Perf+"] .o. Indicative];
define ShortPerfInd [$["Short+"] .o. PerfInd];
define LongPerfInd [$["Long+"] .o. PerfInd];
define PerfInd [~$["Long+"] .o. PerfInd];
define PerfInd [~$["Short+"] .o. PerfInd];

define PerfIndRule1 [a @-> {ile} || _ .#.];
define PerfIndRule2 [a @-> e || _ .#.];
define LongPerfInd [LongPerfInd .o. PerfIndRule1];
define ShortPerfInd [ShortPerfInd .o. PerfIndRule2];
define PerfInd[LongPerfInd|ShortPerfInd|PerfInd];

define NegPerfInd [$["Neg+"] .o. PerfInd];
define PerfInd [~$["Neg+"] .o. PerfInd];
define PerfIndRule3 [0 @-> a || .#. _ ];
define PerfIndRule4 [a @-> {nga} || _ .#. ];
define NegPerfInd [NegPerfInd .o. PerfIndRule3];
define NegPerfInd [NegPerfInd .o. PerfIndRule4];
define PerfInd [NegPerfInd|PerfInd];

define Indicative [PerfInd|Indicative];

!---Past Tense---!
!---Pronominal concord takes consonantal form, followed by 'a'---!
!---No past tense negative---!

define PastInd [$["Past+"] .o. Indicative];
define Indicative [~$["Past+"] .o. Indicative];
define PastIndRule1 [[Vowels] @-> a || [.#. [Combos]] _ ];
define PastInd [PastInd .o. PastIndRule1];
define Indicative [PastInd|Indicative];

!---Future tense---!
!---Pronominal Concord changes to consonantal form and takes 'o' ending for short form---!
!---Negative prefixed by 'a', "ku" follows the pronominal concord---!

define FutInd [$["Fut+"] .o. Indicative];
define NegFutInd [$["Neg+"] .o. FutInd];
define FutInd [~$["Neg+"] .o. FutInd];
define NegFutInd [$["Aux+"] .o. NegFutInd];
define Indicative [~$["Fut+"] .o. Indicative];

define FutRule1 [[Vowels] @->  o || [.#. [Combos]] _ ];
define FutRule3 [0 @-> a || .#. _ ];
define FutInd [FutInd .o. FutRule1];
define NegFutInd [NegFutInd .o. FutRule3];
define Indicative [FutInd|Indicative|NegFutInd];
define Verb [Indicative|Verb];

!---1st Secondary Tenses---!
!---No changes necessary---!

!---2nd Secondary Tenses---!
!---No changes necessary---!

!---SUBJUNCTIVE---!
!---Present tense takes the perfect short ending---!
!---Past tense changes in the same way as indicative past tense---!

define Subjunctive [$["Subj+"] .o. Verb];
define Verb [~$["Subj+"] .o. Verb];
define PresSubj [$["Pres+"] .o. Subjunctive];
define PastSubj [$["Past+"] .o. Subjunctive];
define Subjunctive [~$["Past+"] .o. Subjunctive];
define Subjunctive [~$["Pres+"] .o. Subjunctive];

define SubjRule1 [a @-> e || _ .#. ];
define SubjRule2 [[Vowels] @-> a || [ .#. [Combos]] _ ];
define PresSubj [PresSubj .o. SubjRule1];
define PastSubj [PastSubj .o. SubjRule2];
define Subjunctive [PresSubj|PastSubj|Subjunctive];

!---TEMPORAL---!
!---Changes pronominal subject to 'a' ending---!

define Temporal [$["Temp+"] .o. Verb];
define Verb [~$["Temp+"] .o. Verb];

define TempRule1 [[Vowels] @-> a || [.#. [Combos]] _ ];
define Temporal [Temporal .o. TempRule1];
define Verb [Temporal | Verb];

!---INFINITIVE---!
!---"uku" sometimes shortened to "ku"---!

define Infinitive [$["Inf+"] .o. Verb];
define InfRule1 [{uku} @-> {ku} || .#. _ ];
define Infinitive [Infinitive .o. InfRule1];
define Verb [Verb|Infinitive];

!---IMERATIVE---!
!---No changes necessary---!

!---PASSIVE FORM---!
!---Insert a 'w' before the last syllable---!
!---Labials change to relative palatals---!

define Passive [$["+Pass"] .o. Verb];
define Verb [~$["+Pass"] .o. Verb];
define IndPass [$["Ind+"] .o. Passive];
define Passive [~$["Ind+"] .o. Passive];
define SubjPass [$["Subj+"] .o. Passive];
define Passive [~$["Subj+"] .o. Passive];
define PassRule1 [ 0 @-> w || _ [Vowels .#.]];
define PassRule2 [p @-> {tsh} || _ [w Vowels .#.]];
define PassRule3 [m @-> {ny} || _ [w Vowels .#.]];
define PassRule4 [{mb} @-> {nj} || _ [w Vowels .#.]];
define PassRule5 [{b} @-> {j} || _ [w Vowels .#.]];
define PassRule6 [{m} @-> {nyu} || _ [w Vowels .#.]];
define IndPass [IndPass .o. PassRule1];
define SubjPass [SubjPass .o. [PassRule2|PassRule3|PassRule4|PassRule5|PassRule6]];
define Passive [IndPass|SubjPass];
define Verb [Passive|Verb];

!---MONOSYLLABIC---!
!---inserts "si" before the root in participle form---!
!---Imperative adds "yi" to the beginning---!
!---'i' inserted before passive ending---!

define Monosyllabic [$[ ? ? "+Guess"] .o. Verb];
define Verb [~$[ ? ? "+Guess"] .o. Verbs];
define IndMono [$["Ind+"] .o. Monosyllabic];
define ImpMono [$["Imp+"] .o. Monosyllabic];
define PassMono [$["+Pass"] .o. Monosyllabic];
define Monosyllabic [~[$["Ind+"]|$["Imp+"]|$["+Pass"]] .o. Monosyllabic];

define MonoRule1 [0 @-> {si} || _ [[Combos] [Vowels] .#.]];
define MonoRule2 [0 @-> {yi} || .#. _ ];
define MonoRule3 [w @-> [wi] || _ [[Vowels] .#.]];

define IndMono [IndMono .o. MonoRule1];
define ImpMono [ImpMono .o. MonoRule2];
define PassMono [PassMono .o. MonoRule3];
define Monosyllabic [ImpMono|PassMono|IndMono|Monosyllabic];
define Verb [Monosyllabic|Verb];

!---VOWEL VERBS---!
!---Insert 's' before the root---!
!---Imperative prefixed by 'y'---!
!---Prefixes ending in vowels are omitted or converted to semi-vowels---!

define VowelVerbs [$["+" [Vowels] ?* "+Guess"] .o. Verb];
define Verb [~$["+" [Vowels] ?* "+Guess"] .o. Verb];
define IndVowel [$["Ind+"] .o. VowelVerbs];
define ImpVowel [$["Imp+"] .o. VowelVerbs];

define VowelRule1 [0 @-> s || _ [[Vowels] ?* [Vowels] .#.]];
define VowelRule2 [0 @-> y || .#. _ ];
define VowelRule3 [[Vowels] @-> [0|w|y] || [ .#. [Combos]] _ ]; 

define IndVowel [IndVowel .o. VowelRule1];
define ImpVowel [ImpVowel .o. VowelRule2];
define VowelVerbs [IndVowel|ImpVowel|VowelVerbs];
define VowelVerbs [VowelVerbs .o. VowelRule3];
define Verb [VowelVerbs|Verb];

!---DEFICIENT VERBS---!
!---Allow for perfect endings---!
!---Only allow indicative verbs to be deficient---!

define Deficient [$["Def+"] .o. Verb];
define Verb [~$["Def+"] .o. Verb];
define Deficient [$["Ind+"] .o. Deficient];
define DefRule1 [a @-> e || _ .#. ];
define PerfDef [Deficient .o. DefRule1];
define Deficient [PerfDef|Deficient];
define Verb [Deficient|Verb];

!---DIRECTIVE---!
!---No changes needed---!

!---CAUSATIVE---!
!---Verbs ending in "ala" get a long and short form---!

!---RECIPROCAL FORM---!
!---No changes---!

!---STATIVE FORM---!
!---Emphatic form takes "akala" instead of "eka"---!
!---Allomorphic changes from verbs that end in "la"---!

define Stative [$["+Stat"] .o. Verb];
define Verb [~$["+Stat"] .o. Verb];
define StatRule1 [{ek} @-> {akal}|| _ [[Vowels] .#.]];
define EmphStat [Stative .o. StatRule1];
define Stative [Stative|EmphStat];
define Verb [Stative|Verb];

!!!!---END OF VERBS---!!!!



read regex [Lex|Noun|Pronoun|Verb|Adjective];
define Lex [Lex|Noun|Pronoun|Verb|Adjective];
save stack /Users/Kaitlyn/Documents/XhosMorph/All.fst

read regex ~$["+Guess"] .o. Lex; 	
!	all words in the lexicon that match without the guesser
save stack /Users/Kaitlyn/Documents/XhosMorph/Attested2.fst	
!	saves non-guesser lexicon
read regex $["+Guess"] .o. AllInclusive;	
!	all the words in the lexicon that match with the guesser
save stack /Users/Kaitlyn/Documents/XhosMorph/Guesser2.fst	
!	saves guesser lexicon
read regex [Lex|Noun|Pronoun|Verb|Adjective];

