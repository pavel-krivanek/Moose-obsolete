visiting
visitMessageNode: aMessageNode 
	
	| rec args | 
	rec := (self visitNode: aMessageNode receiver).
	args := (aMessageNode arguments collect: [ :each | self visitNode: each ]).

	(aMessageNode selector = #+) ifTrue: [
		rec isCollection 
			ifTrue: [ rec add: args first ]
			ifFalse: [ rec := { rec. args first } asOrderedCollection ].
		^ rec].
	
	(aMessageNode selector = #-) ifTrue: [ 
		| exclusion | 
		exclusion := RGTraitExclusion parent: self traitComposition.
		exclusion pvtSubject: rec.
		exclusion pvtCleanExclusions.
		args first do: [:each | exclusion pvtAddExclusion: each ]. 
		^ exclusion].
	
	"an Array(Trait2 @ {#c3->#c2})"
	(aMessageNode selector = #@) ifTrue: [ 
		| exclusion | 
		exclusion := RGTraitAlias parent: self traitComposition.
		exclusion pvtSubject: rec.
		exclusion pvtCleanAliases.
		args first do: [:each | exclusion pvtAddAlias: each ]. 
		^ exclusion].

	(aMessageNode selector = #->) ifTrue: [
		"for associations in aliases"
		^ rec -> args first
		].
	
	(aMessageNode selector = #classTrait) ifTrue: [
		"for associations in aliases"
		rec classTrait makeResolved.
		rec classTrait name: rec name, ' classTrait'.
		^ rec classTrait.
		].

	self error: 'Unknown trait composition message'.