clear stack; !---Clears the xfst console of all other rules---!
define cons [b|d|f|g|h|k|m|n|p|r|s|t|z]; !---standard consonants in Japanese---!
define spesh [[t s u]|[d z u]|[s h i]|[j i]|[c h i]|[y a]|[y u]|[y o]|[w a]|[w o]|[h u]]; !---Irregular syllabic formation---!
define vowels [a|e|i|o|u]; !---vowels present in Japanese---!
define syll [[spesh|[[(cons) vowels]]|vowels]]; !---a syllable can either be a single vowel, a consonant vowel pairing, or a irregular syllable---!
define word [syll+]; !---a word consists of some number of syllables---!
read regex word; !---read in the definition of a word---!

!Need to do a lot of rules for verbs
read lexc /Users/Kaitlyn/Documents/NLP/FinalProject/JParse.lex;
define FullSet;

!---ADJECTIVE RULES---!

define Adjs [$["+Adj"] .o. FullSet];
define FullSet [~$["+Adj"] .o. FullSet];
define Rule1 [{i} @-> 0 || _ [[{ku}|{kunai}|{katta}|{kunakatta}] .#.]];
define Adjs [Adjs .o. Rule1];
define FullSet [FullSet|Adjs];

!---VERB RULES---!
define Verbs [$["+Verb"] .o. FullSet];
define FullSet [~$["+Verb"] .o. FullSet];

!---Vowel Verbs---!
!-These verbs drop their entire last syllable-!
define VVerbs [$["+V"] .o. Verbs];
define Verbs [~$["+V"] .o. Verbs];
define Rule1 [{ru} @-> 0 || _ [{te} .#.]];
define Rule2 [{ru} @-> 0 || _ [{ta} .#.]];
define Rule3 [{ru} @-> 0 || _ {nai} .#.];
define Rule4 [{ru} @-> 0 || _ {nakatta} .#.];
define Rule5 [{ru} @-> 0 || _ {masu} .#.];
define Rule6 [{ru} @-> 0 ||  _ [{mashita} .#.]];
define Rule7 [{ru} @-> 0 || _ {masen} .#.];
define Rule8 [{ru} @-> 0 || _ {you} .#.];
define Rule9 [{ru} @-> 0 || _ {mashou} .#.];
define RuleX [{ru} @-> 0 || _ [{tai} .#.]];

define PotV [$["+Pot"] .o. VVerbs];
define PassV [$["+Pass"] .o. VVerbs];
define VVerbs [~$["+Pot"] .o. VVerbs];
define VVerbs [~$["+Pass"] .o. VVerbs];

define PotRule [{ru} @-> {rareru} || _ .#.];
define PassRule [{ru} @-> 0 || _ [{rareru} .#.]];
define PotV [PotV .o. PotRule];
define PassV [PassV .o. PassRule];

define RuleTotal [Rule1|Rule2|Rule3|Rule4|Rule5|Rule6|Rule7|Rule8|Rule9|RuleX];
define VVerbs [VVerbs .o. RuleTotal];
define Verbs [VVerbs|Verbs|PotV|PassV];

!---Consonant Verbs---!
!--These verbs drop their "u" syllable--!

define CVerbs [$["+C"] .o. Verbs];
define Verbs [~$["+C"] .o. Verbs];

define Rule2a1 [{ikute} @-> {itte}];
define Rule2a [[{ku}|{gu}] @-> {i} || _ [[{ta}|{te}] .#.]];
define Rule2b [{su} @-> {shi} || _ [[{ta}|{te}] .#.]];
define Rule2c [[{bute}|{mute}|{nute}] @-> {nde} || _ .#.];
define Rule2d [[{ru}|{u}|{tsu}] @-> {t} || _ [[{ta}|{te}] .#.]];
define Rule3 [{u} @-> {a} || _ [{nai} .#.]];
define Rule3a [{u} @-> {wa} || _ [{nai} .#.]];
define Rule4 [{u} @-> {a} || _ [{nakatta} .#.]];
define Rule4a [{u} @-> {wa} || _ [{nakatta} .#.]];
define Rule5 [{u} @-> {i} || _ {masu} .#.];
define Rule6 [{u} @-> {i} ||  _ [{mashita} .#.]];
define Rule7 [{u} @-> {i} || _ {masen} .#.];
define Rule8 [{uyou} @-> {ou} || _ .#.];
define Rule9 [{u} @-> {i} || _ {mashou} .#.];
define Rule10 [{u} @-> {i} || _ {tai} .#.];

define PotV [$["+Pot"] .o. CVerbs];
define PassV [$["+Pass"] .o. CVerbs];
define CVerbs [~$["+Pot"] .o. CVerbs];
define CVerbs [~$["+Pass"] .o. CVerbs];

define PotRule [{u} @-> {eru} || _ .#.];
define PassRule [{urareru} @-> {areru} || _ .#.];
define PassRule2 [{a} @-> {wa} || Syll _ [{reru} .#.]];
define PotV [PotV .o. PotRule];
define PassRules [PassRule|PassRule2];
define PassV [PassV .o. PassRules];

define RuleTotal [Rule2a1|Rule2a|Rule2b|Rule2c|Rule2d|Rule3a|Rule3|Rule4a|Rule4|Rule5|Rule6|Rule7|Rule8|Rule9|Rule10];
define CVerbs [CVerbs .o. RuleTotal];
define Verbs [CVerbs|Verbs];

!---Kuru---!
!---Completely irregular forms---!

define KVerbs [$["+K"] .o. Verbs];
define Verbs [~$["+K"] .o. Verbs];
define Rule1 [{kurute} @-> {kite} || _ .#.];
define Rule2 [{kuruta} @-> {kita} || _ .#.];
define Rule3 [{kurunai} @-> {konai} || _ .#.];
define Rule4 [{kurunakatta} @-> {konakatta} || _ .#.];
define Rule5 [{kurumasu} @-> {kimasu} || _ .#.];
define Rule6 [{kurumashita} @-> {kimashita} ||  _ .#.];
define Rule7 [{kurumasen} @-> {kimasen} || _ .#.];

define PotV [$["+Pot"] .o. KVerbs];
define PassV [$["+Pass"] .o. KVerbs];
define KVerbs [~$["+Pot"] .o. KVerbs];
define KVerbs [~$["+Pass"] .o. KVerbs];

define PotRule [{kuru} @-> {korareru} || _ .#.];
define PassRule [{kururareru} @-> {korareru} || _ .#.];
define PotV [PotV .o. PotRule];
define PassV [PassV .o. PassRule];

define RuleTotal [Rule1|Rule2|Rule3|Rule4|Rule5|Rule6|Rule7|Rule8|Rule9];
define KVerbs [KVerbs .o. RuleTotal];
define Verbs [KVerbs|Verbs|PotV|PassV];

!---Suru---!
!---Completely irregular forms---!

define SVerbs [$["+S"] .o. Verbs];
define Verbs [~$["+S"] .o. Verbs];
define Rule1 [{surute} @-> {shite} || _ .#.];
define Rule2 [{suruta} @-> {shita} || _ .#.];
define Rule3 [{surunai} @-> {shinai} || _ .#.];
define Rule4 [{surunakatta} @-> {shinakatta} || _ .#.];
define Rule5 [{surumasu} @-> {shimasu} || _ .#.];
define Rule6 [{surumashita} @-> {shimashita} ||  _ .#.];
define Rule7 [{surumasen} @-> {shimasen} || _ .#.];
define Rule8 [{suruyou} @-> {shiyou} || _ .#.];
define Rule9 [{surumashou} @-> {shimashou} || _ .#.];

define PotV [$["+Pot"] .o. SVerbs];
define PassV [$["+Pass"] .o. SVerbs];
define SVerbs [~$["+Pot"] .o. SVerbs];
define SVerbs [~$["+Pass"] .o. SVerbs];

define PotRule [{suru} @-> {dekiru} || _ .#.];
define PassRule [{sururareru} @-> {sareru} || _ .#.];
define PotV [PotV .o. PotRule];
define PassV [PassV .o. PassRule];

define RuleTotal [Rule1|Rule2|Rule3|Rule4|Rule5|Rule6|Rule7|Rule8|Rule9];
define SVerbs [SVerbs .o. RuleTotal];
define Verbs [SVerbs|Verbs|PotV|PassV];

!---Desu---!
!---The copula conjugates differently than every other word---!

define DVerbs [$["+Cop"] .o. FullSet];
define FullSet [~$["+Cop"] .o. FullSet];
define Rule1 [{date} @-> {de} || _ .#.];
define Rule2 [{data} @-> {datta} || _ .#.];
define Rule3 [{danai} @-> {dehanai} || _ .#.];
define Rule4 [{danakatta} @-> {dehanakatta} || _ .#.];
define Rule5 [{damasu} @-> {desu} || _ .#.];
define Rule6 [{damashita} @-> {deshita} || _ .#.];
define Rule7 [{damasen} @-> {de-ja-arimasen} || _ .#.];
define Rule8 [{dayou} @->{darou} || _ .#.];
define Rule9 [{damashou} @-> {deshou} || _ .#.];

define RuleTotal [Rule1|Rule2|Rule3|Rule4|Rule5|Rule6|Rule7|Rule8|Rule9];
define DVerbs [DVerbs .o. RuleTotal];
define Verbs [DVerbs|Verbs];

!---Passive/Potential Vowel Verbs---!
!-These verbs drop their entire last syllable-!
!define PVVerbs [$["+PV"] .o. Verbs];
!define Verbs [~$["+PV"] .o. Verbs];
!define Rule1 [{ru} @-> 0 || _ [{te} .#.]];
!define Rule2 [{ru} @-> 0 || _ [{ta} .#.]];
!define Rule3 [{ru} @-> 0 || _ {nai} .#.];
!define Rule4 [{ru} @-> 0 || _ {nakatta} .#.];
!define Rule5 [{ru} @-> 0 || _ {masu} .#.];
!define Rule6 [{ru} @-> 0 ||  _ [{mashita} .#.]];
!define Rule7 [{ru} @-> 0 || _ {masen} .#.];

!define RuleTotal [Rule1|Rule2|Rule3|Rule4|Rule5|Rule6|Rule7|Rule8|Rule9];
!define PVVerbs [PVVerbs .o. RuleTotal];
!define Verbs [PVVerbs|Verbs|PotV|PassV];


define FullSet [Verbs|FullSet];
read regex FullSet;
save stack /Users/Kaitlyn/Documents/NLP/FinalProject/all.fst
