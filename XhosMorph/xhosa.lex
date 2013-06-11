! New lexicon for Xhosa

Multichar_Symbols

!Class Tags
1+ 1P+ 2+ 2P+ 3+ 4+ 5+ 6+ 7+ 8+ 9+ 10+ 11+ 12+ 13+ 14+

!Noun Tags
Noun+ +Noun	Noun	!Noun
Nom+ +Nom 		!Nominative
Obj+ +Obj 		!Objective
Voc+ +Voc 		!Vocative
Loc+ +Loc 		!Locative
Poss+ +Poss 	!Possessive
Gen+ +Gen		!Gendered
Fem+ +Fem 		!Female
Masc+ +Masc 	!Masculine
Neu+ +Neu		!Neutral
Aug+ +Aug		!Augmentive
Dim+ +Dim 		!Diminutive
Root+ +Root		!Root of noun

!Preposition Tags
Prep+ +Prep Prep	!Preposition

!Pronoun Tags
PP+ +PP			!Personal Pronoun
1st+ +1st		!First Person
2nd+ +2nd		!2nd Person
Sing+ +Sing		!Singular
Plu+ +Plu		!Plural
Sub+ +Sub		!Subjective
!Objective already in nouns
Ref+ +Ref		!Reflexive
Cop+ +Cop		!Copula
Subs+ +Subs		!Substantive
PPrep+ +PPrep	!Post-preposition
!Possessive already in nouns
Emp+ +Emp		!Emphatic
Dem+ +Dem		!Demonstrative
Dist+ +Dist		!Distributive

!Relative Clauses
Rel+ +Rel 		!Relative

!Adjectives
Adj+ +Adj Adj		!Adjective
T1+ +T1			!Type I
T2+ +T2			!Type II
Irr+ +Irr		!Irregular
NAdj+ +NAdj		!Noun as adjective
VAdj+ +VAdj		!Verb as adjective

!Numbers
Num+ +Num Num		!Number
Card+ +Card		!Cardinal
Ord+ +Ord		!Ordinal
AdvN+ +AdvN		!Adverbial Number

!Verbs
Verb+ +Verb	Verb	!Verb
Deriv+ +Deriv	!Derivative
Ind+ +Ind		!Indicative
Subj+ +Subj		!Subjunctive
Neg+ +Neg		!Negative
Temp+ +Temp		!Temporal
Imp+ +Imp		!Imperative
Inf+ +Inf		!Infinitive
Short+ +Short	!Short form
Long+ +Long		!Long form
Pres+ +Pres		!Present tense
Past+ +Past		!Past tense
Perf+ +Perf		!Perfect tense
Def+ +Def		!Deficient verb
Fut+ +Fut		!Future tense
Part+ +Part		!Participles
Impf+ +Impf		!Imperfect
Plupf+ +Plupf	!Pluperfect
Near+ +Near		!First set
Far+ +Far	!Second set
Pass+ +Pass		!Passive voice
Vow+ +Vow		!Vowel verb
Mono+ +Mono		!Moonsyllabic verb
Dir+ +Dir		!Directive form
Caus+ +Caus		!Causative
Recip+ +Recip	!Reciprocal form
Stat+ +Stat		!Stative form
Int+ +Int		!Intensifier
Aux+ +Aux		!Auxiliary
Quest+ +Quest	!Interrogative
Cont+ +Cont		!Contracted
Def+ +Def		!Deficient
Root+ +Root		!Root marker

!Adverbs
Adv+ +Adv Adv		!Adverb

!Conjunctions
Conj+ +Conj Conj		!Conjunction
Coord+ +Coord	!Co-ordinative
Subord+ +Subord	!Subordinative
Cond+ +Cond 	!Conditional
!Causal already in verbs
Dec+ +Dec		!Declarative
Fin+ +Fin		!Final 

!Guess tags
^NOUN ^VERB ^ADJECTIVE

LEXICON Root
	Nouns;
	Prepositions;
	Adjectives;
	Adverbs;
	Verbs;
	Conjunctions;
	Pronouns;
	
LEXICON Nouns
	<"Nom+" : 0>	Prefixes;
	<"Obj+" : 0>	Prefixes;
	<"Voc+" : 0>	Prefixes;
	<"Loc+" : 0>	Prefixes;
	<"Loc+" : 0> 	Locative;
	<"Gen+" : 0>	Gender;
	<"Poss+" : 0>	Possessive;
	<"Prep+" : 0>	Preps;
	
LEXICON Prefixes
	!Class 1 of nouns, animate
	<"1+" : {um}>	Class1A;
	<"1P+" : u >		Class1B;
	<"2+" : {aba}>	Class1A;
	<"2P+" : {oo}>	Class1B;
	
	!Class 2 of nouns, abstract
	<"3+" : {um}>	Class2;
	<"4+" : {imi}>	Class2;
	
	!Class 3 of nouns, many things
	<"5+" : {ili}>	Class3;
	<"6+" : {ama}>	Class3;
	
	!Class 4 of nouns
	<"7+" : {isi}>	Class4;
	<"8+" : {izi}>	Class4;
	
	!Class 5 of nouns
	<"9+" : {in}>	Class5;
	<"10+" : {izin}>	DoubleClass;
	
	!Class 6 of nouns
	<"11+" : {ulu}>	Class6;

	!Class 7 of nouns
	<"13+" : {ubu}>	Class7;

	!Class 8 of nouns
	<"14+" : {uku}>	Class8;
	
LEXICON DoubleClass
			Class5;
			Class6;
			
LEXICON Possessive
	<"1+" : {wa}>	PostPoss;
	<"1P+" : 0 >	ProperPoss;
	<"2+" : {ba}>	PostPoss;
	<"2P+" : 0 >	ProperPoss;
	<"3+" : {wa}>	PostPoss;
	<"4+" : {ya}>	PostPoss;
	<"5+" : {la}>	PostPoss;
	<"6+" : {a}>	PostPoss;
	<"7+" : {sa}>	PostPoss;
	<"8+" : {za}>	PostPoss;
	<"9+" : {ya}>	PostPoss;
	<"10+" : {za}>	PostPoss;
	<"11+" : {lwa}>	PostPoss;
	<"14+" : {ba}>	PostPoss;
	<"15+" : {kwa}>	PostPoss;
	
LEXICON ProperPoss
	<"1+" : {ka}>	Class1B;
	<"2+" : {baka}>	Class1B;
	<"3+" : {ka}>	Class1B;
	<"4+" : {ka}>	Class1B;
	<"5+" : {lika}>	Class1B;
	<"6+" : {ka}>	Class1B;
	<"7+" : {sika}>	Class1B;
	<"8+" : {zika}>	Class1B;
	<"9+" : {ka}>	Class1B;
	<"10+" : {zika}>	Class1B;
	<"11+" : {luka}>	Class1B;
	<"14+" : {buka}>	Class1B;
	<"15+" : {kuka}>	Class1B;
	
LEXICON Preps
	<0:{kwa}>	PostPreps;
	<0:{ku}>	PostPreps;
	<0:{na}>	PostPreps;
	<0:{nga}>	PostPreps;
	<0:{nganga}>	PostPreps;
	<0:{njenga}>	PostPreps;
	<0:{ngenxa}>	PostPreps;
	<0:{ngokwa}>	PostPreps;
	<0:{mayela}>	#;
	<0:{malungana}>	#;
	
LEXICON PostPreps
	Prefixes;
	Substantive;
	
LEXICON PostPoss
	Prefixes;
	PossessivePro;
	
LEXICON Copula
	< ["1st+" "Sing+"] : {ndi} >	Class1B;
	<["1st+" "Plu+"] : {si} >	Class1B;
	<["2nd+" "Sing+"] : {ngu} >	Class1B;
	<["2nd+" "Plu+"] : {ni} >		Class1B;
	< "1+" : {ngu} >				Class1A;
	< "2+" : {nga} >				Class1A;
	< "3+" : {ngu} >				Class2;
	< "4+" : {yi} >				Class2;
	< "5+" : {li} >				Class3;
	< "6+" : {nga} >				Class3;
	< "7+" : {si} >				Class4;
	< "8+" : {zi} >				Class4;
	< "9+" : {yi} >				Class5;
	< "10+" : {zi} >				DoubleClass;
	< "11+" : {lu} >				Class6;
	< "13+" : {bu} >				Class7;
	< "14+" : {ku} >				Class8;
	
LEXICON Class1A
	<{ntu} "+Root" : {ntu}>	NounEnd;
	<"^NOUN":"^NOUN">	NounEnd;
	
LEXICON Class1B
	<"^NOUN":"^NOUN">	NounEnd;
	
LEXICON Class2
	<"^NOUN":"^NOUN">	NounEnd;
	
LEXICON Class3
	<"^NOUN":"^NOUN">	NounEnd;
	
LEXICON Class4
	<"^NOUN":"^NOUN">	NounEnd;
	
LEXICON Class5
	<"^NOUN":"^NOUN">	NounEnd;
	
LEXICON Class6
	<"^NOUN":"^NOUN">	NounEnd;
	
LEXICON Class7
	<"^NOUN":"^NOUN">	NounEnd;
	
LEXICON Class8
	<"^NOUN":"^NOUN">	NounEnd;
	
LEXICON Locative
	pambi	#;
	pantsi	#;
	pezu	#;
	pezulu	#;
	pakati	#;
	pandle	#;
	pesheya	#;
	nganeno	#;
	emva	#;
	emveni	#;
	ecaleni	#;
	
LEXICON Gender
	<"+Masc" : {inkunzi}>	#;
	<"+Masc" : {induna}>	#;
	<"+Fem" : {imazi}>		#;
	<"+Neu" : {inkabi}>		#;
	
LEXICON NounEnd
	<0:0>	NTag;
	<"+Voc":{ndini}>	NTag;
	<"+Loc":{ni}>	NTag;
	<"+Fem":{kazi}>	NTag;
	<"+Aug":{kazi}>	NTag;
	<"+Dim":{ana}>	NTag;
	<"+Dim":{anyana}>	NTag;
	
LEXICON NTag
	<"+Noun":0>	#;

	
!----------------------------Pronouns---------------------------------!


LEXICON Pronouns
	< "Prep+" : 0>	Preps;
	<"Cop+" : 0>	Copulaic;
	< "Subs+" : 0>	Substantive;
	< "Poss+" : 0>	Possessive;
	
LEXICON Copulaic
	<["1st+" "Sing+"]: {ndi}>	Copula;
	<["1st+" "Plu+"]: {si}>	Copula;
	<["2nd+" "Sing+"]: {ku}>	Copula;
	<["2nd+" "Plu+"]: {ni}>	Copula;
	<"1+" : {m}>	Copula;
	<"2+" : {ba}>	Copula;
	<"3+" : {li}>	Copula;
	<"4+" : {wa}>		Copula;
	<"5+" : {u}>		Copula;
	<"6+" : {zi}>	Copula;
	<"7+" : {si}>	Copula;
	<"8+" : {zi}>	Copula;
	<"9+" : {lu}>	Copula;
	<"10+" : {zi}>	Copula;
	<"11+" : {wu}>		Copula;
	<"12+" : {yi}>		Copula;
	<"13+" : {bu}>	Copula;
	<"14+" : {ku}>	Copula;
	
LEXICON Substantive
	< ["1st+" "Sing+"] : {mna} >	PronounTag;
	<["1st+" "Plu+"] : {thina} >	PronounTag;
	<["2nd+" "Sing+"] : {wena} >	PronounTag;
	<["2nd+" "Plu+"] : {nina} >		PronounTag;
	< "1+" : {yena} >				PronounTag;
	< "2+" : {bona} >				PronounTag;
	< "3+" : {wona} >				PronounTag;
	< "4+" : {yona} >				PronounTag;
	< "5+" : {lona} >				PronounTag;
	< "6+" : {wona} >				PronounTag;
	< "7+" : {sona} >				PronounTag;
	< "8+" : {zona} >				PronounTag;
	< "9+" : {yona} >				PronounTag;
	< "10+" : {zona} >				PronounTag;
	< "11+" : {lona} >				PronounTag;
	< "13+" : {bona} >				PronounTag;
	< "14+" : {khona} >				PronounTag;
	
LEXICON PossessivePro
	< ["1st+" "Sing+"] : {m} >	PronounTag;
	<["1st+" "Plu+"] : {thu} >	PronounTag;
	<["2nd+" "Sing+"] : {kho} >	PronounTag;
	<["2nd+" "Plu+"] : {nu} >		PronounTag;
	< "1+" : {khe} >				PronounTag;
	< "2+" : {bo} >				PronounTag;
	< "3+" : {wo} >				PronounTag;
	< "4+" : {yo} >				PronounTag;
	< "5+" : {lo} >				PronounTag;
	< "6+" : {wo} >				PronounTag;
	< "7+" : {so} >				PronounTag;
	< "8+" : {zo} >				PronounTag;
	< "9+" : {yo} >				PronounTag;
	< "10+" : {zo} >				PronounTag;
	< "11+" : {lo} >				PronounTag;
	< "13+" : {bo} >				PronounTag;
	< "14+" : {kho} >				PronounTag;
	
LEXICON PronounTag
	< "+Pro" : 0 >	#;
	
!--------------------------------ADJECTIVES---------------------------------!
LEXICON Adjectives
	<"Type1+" : 0>	Adj1Pronoun;
	<"Type2+" : 0>	Adj2Pronoun;
	
LEXICON Adj1Pronoun
	<"1st+" "Sing+": {ndi}>	AdjRoot;
	<"1st+" "Plu+" : {si}>	AdjRoot;
	<"2nd+" "Sing+": {u}>	AdjRoot;
	<"2nd+" "Plu+": {ni}>	AdjRoot;
	<"1+" : {m}>	AdjRoot;
	<"2+" : {ba}>	AdjRoot;
	<"3+" : {m}>	AdjRoot;
	<"4+" : {mi}>	AdjRoot;
	<"5+" : {li}>	AdjRoot;
	<"6+" : {ma}>	AdjRoot;
	<"7+" : {si}>	AdjRoot;
	<"8+" : {zi}>	AdjRoot;
	<"9+" : {in}>	AdjRoot;
	<"10+" : {zin}>	AdjRoot;
	<"11+" : {lu}>	AdjRoot;
	<"13+" : {bu}>	AdjRoot;
	<"14+" : {ku}>	AdjRoot;
	
LEXICON Adj2Pronoun
	<"1+" : {u}>	AdjRoot;
	<"2+" : {ba}>	AdjRoot;
	<"3+" : {u}>	AdjRoot;
	<"4+" : {i}>		AdjRoot;
	<"5+" : {li}>		AdjRoot;
	<"6+" : {a}>	AdjRoot;
	<"7+" : {si}>	AdjRoot;
	<"8+" : {zi}>	AdjRoot;
	<"9+" : {i}>	AdjRoot;
	<"10+" : {zi}>	AdjRoot;
	<"11+" : {lu}>		AdjRoot;
	<"12+" : {zi}>		AdjRoot;
	<"13+" : {obu}>	AdjRoot;
	<"14+" : {oku}>	AdjRoot;
	
	
!!!-------------------------------------ADVERBS---------------------------------------!!!

LEXICON Adverbs
	<"Adv+" : {ka}>	AdjRoot;
	
LEXICON AdvEnd
	< "+Adv" : 0 >	#;
	
LEXICON AdjRoot
	<"^ADJECTIVE":"^ADJECTIVE">	AdjEnd;
	<"^ADJECTIVE":"^ADJECTIVE"> AdvEnd;
	
LEXICON AdjEnd
	<"+Adj" : 0>		#;
	
!!!-----------------------------------------VERBS------------------------------------!!!
	
LEXICON Verbs
	<"Ind+": 0>	Indicative;
	<"Subj+":0>	Subjunctive;
	<"Temp+":0>	Temporal;
	<"Imp+": 0>	Imperative;
	<"Inf+": 0> Infinitive;
	
LEXICON Indicative
	<"Pres+":0>	PresentTense;
	<"Perf+":0>	PerfectTense;
	<"Past+":0>	PastTense;
	<"Fut+":0>	FutureTense;
	<"Near+":0>	NearTense;
	<"Far+":0>	FarTense;
	
LEXICON PresentTense
	<"Short+":0>	SubjectivePronoun;
	<"Long+":0>	SubjectivePronoun;
	<"Neg+":a>	SubjectivePronoun;
	
LEXICON PerfectTense
	<"Short+" : 0>	SubjectivePronoun;
	<"Long+" : 0>	SubjectivePronoun;
	<"Neg+" : 0>	SubjectivePronoun;
	
LEXICON PastTense
	SubjectivePronoun;
	
LEXICON FutureTense
	<"Short+":0>	SubjectivePronoun;
	<"Neg+" : 0>	SubjectivePronoun;
	
LEXICON NearTense
	<["Impf+" "Short+"]:{be}>	SubjectivePronoun;
	<["Plupf+" "Short+"]:{be}>	SubjectivePronoun;
	<["Impf+" "Fut+" "Short+"]:{be}>	SubjectivePronoun;
	
LEXICON FarTense
	<["Impf+" "Short+"]:0>	SubjectivePronounPre;
	<["Plupf+" "Perf+"] "Short+":0>	SubjectivePronounPre;
	<["Impf+" "Fut+" "Short+"]:0>	SubjectivePronounPre;

LEXICON SubjectivePronounPre
	<["1st+" "Sing+"]: {nda}>	Pro1stSing;
	<["1st+" "Plu+"] : {sa}>	Pro1stPlu;
	<["2nd+" "Sing+"]: {wa}>	Pro2ndSing;
	<["2nd+" "Plu+"]: {na}>	Pro2ndPlu;
	<"1+" : {wa}>	Pro1;
	<"2+" : {ba}>	Pro2;
	<"3+" : {wa}>	Pro3;
	<"4+" : {ya}>		Pro4;
	<"5+" : {la}>		Pro5;
	<"6+" : {wa}>	Pro6;
	<"7+" : {sa}>	Pro7;
	<"8+" : {za}>	Pro8;
	<"9+" : {ya}>	Pro9;
	<"10+" : {za}>	Pro10;
	<"11+" : {lwa}>		Pro11;
	<"12+" : {za}>		Pro12;
	<"13+" : {ba}>	Pro13;
	<"14+" : {ka}>	Pro14;
	
LEXICON SubjectivePronoun
	Pro1stSing;
	Pro1stPlu;
	Pro2ndSing;
	Pro2ndPlu;
	Pro1;
	Pro2;
	Pro3;
	Pro4;
	Pro5;
	Pro6;
	Pro7;
	Pro8;
	Pro9;
	Pro10;
	Pro11;
	Pro12;
	Pro13;
	Pro14;
	
LEXICON Pro1stSing
	<["1st+" "Sing+"]: {ndi}>		VerbCont;
	
LEXICON Pro1stPlu
	<["1st+" "Plu+"] : {si}>	VerbCont;
	
LEXICON Pro2ndSing
	<["2nd+" "Sing+"]: {u}>	VerbCont;
	
LEXICON Pro2ndPlu
	<["2nd+" "Plu+"]: {ni}>	VerbCont;
	
LEXICON Pro1
	<"1+" : {u}>	VerbCont;
	<"1+" : {a}>	VerbCont;
	<"1+" : {e}>	VerbCont;
	<"1+" : {ka}>	VerbCont;
	
LEXICON Pro2	
	<"2+" : {ba}>	VerbCont;
	
LEXICON Pro3
	<"3+" : {u}>	VerbCont;
	
LEXICON Pro4
	<"4+" : i>		VerbCont;
	
LEXICON Pro5
	<"5+" : {li}>		VerbCont;
	
LEXICON Pro6
	<"6+" : {a}>	VerbCont;
	<"6+" : {e}>	VerbCont;
	
LEXICON Pro7
	<"7+" : {si}>	VerbCont;
	
LEXICON Pro8
	<"8+" : {zi}>	VerbCont;
	
LEXICON Pro9
	<"9+" : {i}>	VerbCont;
	
LEXICON Pro10
	<"10+" : {zi}>	VerbCont;

LEXICON Pro11
	<"11+" : {lu}>		VerbCont;
	
LEXICON Pro12
	<"12+" : {zi}>		VerbCont;
	
LEXICON Pro13
	<"13+" : {bu}>	VerbCont;
	
LEXICON Pro14
	<"14+" : {ku}>	VerbCont;
	
LEXICON VerbCont
	<"Def+" : 0>	Deficient;
	<0:0>	Negative;
	<0:0>	Neutral;
	<0:0>	ObjectivePronoun;
	
LEXICON Deficient
	<"Aux+":{ya}>	#;
	<"Aux+":{ba}>	#;
	<"Aux+":{ma}>	#;
	<"Aux+":{za}>	#;
	
LEXICON Negative
	<"Neg+":{nga}>	ObjectivePronoun;
	
LEXICON Neutral
	<"Aux+":{ya}>	ObjectivePronoun;
	<"Aux+":{ba}>	ObjectivePronoun;
	<"Aux+":{ma}>	ObjectivePronoun;
	<"Aux+" : {ku}>	ObjectivePronoun;
	
LEXICON ObjectivePronoun
	<["1st+" "Sing+"]: {ndi}>	VRoot;
	<["1st+" "Plu+"] : {si}>	VRoot;
	<["2nd+" "Sing+"]: {ku}>	VRoot;
	<["2nd+" "Plu+"]: {ni}>	VRoot;
	<"1+" : {m}>	VRoot;
	<"2+" : {ba}>	VRoot;
	<"3+" : {li}>	VRoot;
	<"4+" : {wa}>		VRoot;
	<"5+" : {yi}>		VRoot;
	<"6+" : {zi}>	VRoot;
	<"7+" : {si}>	VRoot;
	<"8+" : {zi}>	VRoot;
	<"9+" : {lu}>	VRoot;
	<"10+" : {zi}>	VRoot;
	<"11+" : {wu}>		VRoot;
	<"12+" : {yi}>		VRoot;
	<"13+" : {bu}>	VRoot;
	<"14+" : {ku}>	VRoot;
	<0:0>			VRoot;
	
LEXICON Subjunctive
	<"Pres+":0>	SubjectivePronoun;
	<"Past+":0>	SubjectivePronoun;
	<"Neg+" "Pres+":0>	SubjectivePronoun;
	<"Neg+" "Past+":0>	SubjectivePronoun;

LEXICON Temporal	
	SubjectivePronoun;
	
LEXICON Imperative
	VerbRootPlain;
	
LEXICON Infinitive
	<0:{uku}>	VerbRootPlain;
	
LEXICON VRoot
	<"+Root" : {hamba}>	VerbDeriv;
	<"^VERB" : "^VERB">	VerbEnd;
	<"^VERB":"^VERB">	VerbDeriv;
	
LEXICON VerbRootPlain
	<"^VERB":"^VERB">	VerbEnd;
	
LEXICON VerbDeriv
	<["+Deriv" "+Pass"]:w>	VerbDeriv2;
	<"+Deriv" : 0 >	VerbDeriv2;
	
LEXICON VerbDeriv2
	<"+Dir" : {el}>	VerbDeriv3;
	<"+Caus" : {al}>	VerbDeriv3;
	<"+Recip" : {an}>	VerbDeriv3;
	<"+Stat" : {ek}>	VerbDeriv3;
	VerbDeriv3;
	
LEXICON VerbDeriv3
	<"+Dir" : {el}>	VerbEnd;
	<"+Caus": {al}>	VerbEnd;
	<"+Recip": {an}>	VerbEnd;
	<"+Stat": {ek}>	VerbEnd;
	
LEXICON VerbEnd
	<0:a>	VTag;
	

LEXICON VTag
	<"+Verb" : 0>	#;



	
LEXICON Prepositions
	#;
	
	
!!!--------------------------------------CONJUNCTIONS--------------------------------------!!!
	
	
LEXICON Conjunctions
	CoordinateConj;
	<"Subord+" : 0>	SubordinateConj;
	

LEXICON CoordinateConj
	<"Coord+" : {ke}>	ConjTag;	
	<"Coord+" : {kaloku}>	ConjTag;
	<"Coord+" : {kodwa}>	ConjTag;
	<"Coord+" : {kanti}>	ConjTag;
	<"Coord+" : {kuloko}>	ConjTag;
	<"Coord+" : {kukhona}>	ConjTag;
	<"Coord+" : {kungona}>	ConjTag;
	<"Coord+" : {kungoko}>	ConjTag;
	<"Coord+" : {kuba}>		ConjTag;
	<"Coord+" : {ngokuba}>	ConjTag;
	<"Coord+" : {kungenjalo}>	ConjTag;
	<"Coord+" : {okanye}>	ConjTag;
	
LEXICON SubordinateConj
	<"Dec+" : 0>	Declarative;
	<"Cond+" : 0>	Conditional;
	<"Rel+" : 0>	Relative;
	<"Caus+" : 0>	Causal;
	<"Fin+" : 0>	Final;
	
LEXICON Declarative
	ukuba	ConjTag;
	wokuba	ConjTag;
	okokuba	ConjTag;
	ukuthi	ConjTag;
	ukunga	ConjTag;

LEXICON Conditional
	ukuba	ConjTag;
	nokuba	ConjTag;
	nje		ConjTag;
	ngokungathi	ConjTag;
	
LEXICON Relative
	xa		ConjTag;
	xenikweni	ConjTag;
	xishikweni	ConjTag;
	mhla		ConjTag;
	mhlana		ConjTag;
	mhlenikweni	ConjTag;
	nyaka		ConjTag;
	oko			ConjTag;
	okuya		ConjTag;
	kuseloko	ConjTag;
	nga			ConjTag;
	ngoko		ConjTag;
	nje			ConjTag;
	nangona		ConjTag;
	noko		ConjTag;
	koko		ConjTag;
	okukhona	ConjTag;
	
LEXICON Causal
	kuba		ConjTag;
	ngokuba		ConjTag;
	ngakuba		ConjTag;
	ngokokuba	ConjTag;
	ekubeni		ConjTag;
	nakuba		ConjTag;
	nga			ConjTag;
	ngokuba		ConjTag;
	nje			ConjTag;

LEXICON Final
	ukuba		ConjTag;
	ukuze		ConjTag;
	ngokokuze	ConjTag;
	hleze		ConjTag;
	le			ConjTag;
	nto			ConjTag;
	nga			ConjTag;
	ngokude		ConjTag;
	ngokokude	ConjTag;
	
LEXICON ConjTag
	<"+Conj" : 0 >	#;
