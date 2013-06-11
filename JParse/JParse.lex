!---Lexicon file for Japanese Parser---!
!---Kaitlyn Price---!
!---November 2011---!

Multichar_Symbols

!---Particle Symbols---!
Part
+Poss
+Subj
+Obj
+IndObj
+Loc
+By
+Conj
+Nom
+Turn
+From

!---Noun symbols---!
+Noun

!---Adjective Symbols---!
+Adj
+Pres
+Past
+Te
+Neg
+Adv
+Na

!---Preposition Symbols---!
+Prep

!---Verb Symbols---!
+Verb
+V
+C
+S
+K
+Short
+Pass
+Pot
+Voc
+Des

LEXICON Root
	<"Part":0>	Particles;
	Nouns;
	I-Adjectives;
	Na-Adjectives;
	Verbs;
	
LEXICON Particles
	<"+Poss":{no}>	PartEnd;
	<"+Subj":{ha}>	PartEnd;
	<"+Subj":{ga}>	PartEnd;
	<"+Obj":{wo}>	PartEnd;
	<"+Loc":{de}>	PartEnd;
	<"+By":{de}>	PartEnd;
	<"+IndObj":{ni}>	PartEnd;
	<"+Conj":{to}>	PartEnd;
	<"+Turn":{kedo}>	PartEnd;
	<"+Nom":{koto}>	PartEnd;
	<"+From":{kara}>	PartEnd;
	
LEXICON PartEnd
	#;
	
LEXICON Nouns
	watashi	NounEnd;
	tomodachi	NounEnd;
	ringo	NounEnd;
	kuruma	NounEnd;
	onnanoko	NounEnd;
	kanojo	NounEnd;
	michiko	NounEnd;
	namae	NounEnd;
	youma	NounEnd;
	hokkaidou	NounEnd;
	otousan	NounEnd;
	uchi	NounEnd;
	aruhi	NounEnd;
	yoshimoto	NounEnd;
	michikosan	NounEnd;
	juugyou	NounEnd;
	sensei	NounEnd;
	tabemono	NounEnd;
	uchuujin	NounEnd;
	amerikajin	NounEnd;
	nihongo	NounEnd;
	ongaku	NounEnd;
	ao	NounEnd;
	aka	NounEnd;
	aki	NounEnd;
	asa	NounEnd;
	asagohan	NounEnd;
	asatte	NounEnd;
	ashi	NounEnd;
	ashita	NounEnd;
	atama	NounEnd;
	yama	NounEnd;
	kawa	NounEnd;
	tanbon	NounEnd;
	gohan	NounEnd;
	hirugohan	NounEnd;
	bangohan	NounEnd;
	jinja	NounEnd;
	otera	NounEnd;
	kuchi	NounEnd;
	mimi	NounEnd;
	me	NounEnd;
	tekubi	NounEnd;
	kao	NounEnd;
	ushi	NounEnd;
	gyuunyuu	NounEnd;
	gyuuniku	NounEnd;
	toriniku	NounEnd;
	butaniku	NounEnd;
	ane	NounEnd;
	anata	NounEnd;
	ani	NounEnd;
	apaato	NounEnd;
	ame	NounEnd;
	ie	NounEnd;
	ike	NounEnd;
	isha	NounEnd;
	isu	NounEnd;
	inu	NounEnd;
	imi	NounEnd;
	imouto	NounEnd;
	iriguchi	NounEnd;
	iro	NounEnd;
	uta	NounEnd;
	fugu	NounEnd;
	
LEXICON NounEnd
	<"+Noun":0>	#;
	
LEXICON Na-Adjectives
	ishou	NaEnd;
	mukashi	NaEnd;
	suki	NaEnd;
	daisuki NaEnd;
	kakkoi	NaEnd;
	kirei	NaEnd;
	hansaamu	NaEnd;
	suteki	NaEnd;
	kantan	NaEnd;
	ii	NaEnd;
	ichiban	NaEnd;
	iya	NaEnd;
	
LEXICON NaEnd
	<"+Adj":0>	#;
	
LEXICON I-Adjectives
	tanoshii	AdjPOS;
	yasashii	AdjPOS;
	omoshiroi	AdjPOS;
	oishii	AdjPOS;
	atatakai	AdjPOS;
	chiisai	AdjPOS;
	furui	AdjPOS;
	aoi	AdjPOS;
	akai	AdjPOS;
	akarui	AdjPOS;
	atsui	AdjPOS;
	kurai	AdjPOS;
	mazui	AdjPOS;
	yasashii	AdjPOS;
	muzukashii	AdjPOS;
	abunai	AdjPOS;
	amai	AdjPOS;
	yoi	AdjPOS;
	isogashii AdjPOS;
	itai	AdjPOS;
	usui	AdjPOS;
	nagai	AdjPOS;
	
LEXICON AdjPOS
	<"+Pres":0>	AdjEnd;
	<"+Adv":{ku}>	#;
	<"+Past":{katta}>	AdjEnd;
	<"+Neg":{kunai}>	AdjEnd;
	<["+Past" "+Neg"]:{kunakatta}>	AdjEnd;
	
LEXICON AdjEnd
	<"+Adj":0>	#;
	
LEXICON Verbs
	taberu	VVerbs;
	aruku	CVerbs;
	aku	CVerbs;
	ageru	VVerbs;
	akeru	VVerbs;
	iku	CVerbs;
	asobu	CVerbs;
	naru	CVerbs;
	suru	Suru;
	kuru	Kuru;
	kiku	CVerbs;
	iru	VVerbs;
	da	Desu;
	sumu	CVerbs;
	shinjiru	VVerbs;
	au	CVerbs;
	korosu	CVerbs;
	mitsukeru	VVerbs;
	tanomu	CVerbs;
	abiru VVerbs;
	aru	CVerbs;
	iu	CVerbs;
	iru	CVerbs;
	ireru	VVerbs;
	utau	CVerbs;
	yomu	CVerbs;
	
LEXICON VVerbs
	<"+V":0>	VerbPOS;
	<"+V":0>	VerbMod;
	
LEXICON CVerbs
	<"+C":0>	VerbPOS;
	<"+C":0>	VerbMod;
	
LEXICON Suru
	<"+S":0>	VerbPOS;
	<"+S":0>	VerbMod;
	
LEXICON Kuru
	<"+K":0>	VerbPOS;
	<"+K":0>	VerbMod;
	
LEXICON Desu
	<"+D":0> DesuPOS;
	
LEXICON VerbMod
	<["+Pass" "+PV"]:{rareru}>	VerbPOS;
	<["+Pot" "+PV"]:0>	VerbPOS;
	
LEXICON VerbPOS
	<"+Pres":{masu}>	VerbEnd;
	<"+Past":{mashita}>	VerbEnd;
	<"+Neg":{masen}>	VerbEnd;
	<["+Pres" "+Short"]:0>	VerbEnd;
	<["+Neg" "+Short"]:{nai}>	VerbEnd;
	<["+Past" "+Short"]:{ta}>	VerbEnd;
	<["+Past" "+Neg" "+Short"]:{nakatta}>	VerbEnd;
	<["+Te"]:{te}>	VerbEnd;
	<"+Voc":{you}>	VerbEnd;
	<"+Voc":{mashou}> VerbEnd;
	<"+Des":{tai}> VerbEnd;
	
LEXICON DesuPOS
	<"+Pres":{masu}>	DesuEnd;
	<"+Past":{mashita}>	DesuEnd;
	<"+Neg":{masen}>	DesuEnd;
	<["+Pres" "+Short"]:0>	DesuEnd;
	<["+Neg" "+Short"]:{nai}>	DesuEnd;
	<["+Past" "+Short"]:{ta}>	DesuEnd;
	<["+Past" "+Neg" "+Short"]:{nakatta}>	DesuEnd;
	<["+Te"]:{te}>	DesuEnd;
	<"+Voc":{you}>	DesuEnd;
	<"+Voc":{mashou}> DesuEnd;
	
LEXICON VerbEnd
	<"+Verb":0>	#;
	
LEXICON DesuEnd
<"+Cop":0>	#;
	