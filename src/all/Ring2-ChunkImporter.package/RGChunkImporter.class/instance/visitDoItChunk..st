visitor
visitDoItChunk: aChunk

	| contents ast layoutClass selectorParts superclassName subclassName instanceVariableNames classVariableNames categoryName packageName poolDictionariesNames layoutDefinition slotsDefinition traitsDefinition isTrait hasNilSuperclass |

	contents := aChunk contents trimBoth.
	(contents endsWith: '!') ifTrue: [ contents := contents allButLast ].
	
	ast := RBParser parseExpression: contents onError: [ 
		doIts add: aChunk.
		^ self ].
	
	layoutClass := selectorParts := superclassName := subclassName := instanceVariableNames := 
		classVariableNames := categoryName := packageName := poolDictionariesNames := layoutDefinition := 
		slotsDefinition := traitsDefinition := nil.
		
	isTrait := false.
	
	hasNilSuperclass := self isNilSuperclassDefinition: ast.
	hasNilSuperclass 
		ifTrue: [ ast := ast statements first ].	
	
	(ast isMessage and: [self allowedSelectors includes: ast selector]) ifTrue: [ 
		superclassName := ast receiver formattedCode.
		self assert: ast arguments isNotEmpty.
		selectorParts := ast selector findBetweenSubstrings: {$:}.
		
		(superclassName endsWith: ' classTrait') 
			ifTrue: [isTrait := true]. "for usage of #uses:"
		
		"TODO: handle removeSelector:, comment:"

		self if: selectorParts in: ast includes: #subclass do: [:argument |
			subclassName := argument value. 
			layoutClass := RGFixedLayout. ].

		self if: selectorParts in: ast includes: #named do: [:argument |
			subclassName := argument value. 
			isTrait := true.
			layoutClass := RGFixedLayout. ].

		self if: selectorParts in: ast includes: #immediateSubclass do: [:argument |
			subclassName := argument value. 
			layoutClass := RGImmediateLayout ].

		self if: selectorParts in: ast includes: #variableSubclass do: [:argument |
			subclassName := argument value. 
			layoutClass := RGVariableLayout ].

		self if: selectorParts in: ast includes: #variableByteSubclass do: [:argument |
			subclassName := argument value. 
			layoutClass := RGByteLayout ].
		
		self if: selectorParts in: ast includes: #variableWordSubclass do: [:argument |
			subclassName := argument value. 
			layoutClass := RGWordLayout ].

		self if: selectorParts in: ast includes: #weakSubclass do: [:argument |
			subclassName := argument value. 
			layoutClass := RGWeakLayout ].
		
		self if: selectorParts in: ast includes: #ephemeronSubclass do: [:argument |
			subclassName := argument value. 
			layoutClass := RGEphemeronLayout ].
		
		self if: selectorParts in: ast includes: #instanceVariableNames do: [:argument |
			instanceVariableNames := argument value. ].

		self if: selectorParts in: ast includes: #classVariableNames do: [:argument |
			classVariableNames := argument value. ].
		
		self if: selectorParts in: ast includes: #category do: [:argument |
			categoryName := argument value. ].

		self if: selectorParts in: ast includes: #package do: [:argument |
			packageName := argument value. ].
		
		self if: selectorParts in: ast includes: #poolDictionaries do: [:argument |
			poolDictionariesNames := argument value. ].

		self if: selectorParts in: ast includes: #layout do: [:argument |
			layoutDefinition := argument formattedCode. ].

		self if: selectorParts in: ast includes: #slots do: [:argument |
			slotsDefinition := argument "use AST directly". ].

		self if: selectorParts in: ast includes: #uses do: [:argument |
			traitsDefinition := argument formattedCode. ].
		
		hasNilSuperclass ifTrue: [superclassName := nil].
		
		(#(#instanceVariableNames: uses: uses:instanceVariableNames:) includes: ast selector) ifTrue: [ 			subclassName := ast receiver formattedCode asSymbol.
			superclassName := nil ].
		
		(#(CompiledBlock CompiledCode CompiledMethod) includes: subclassName) ifTrue: [ 
			layoutClass := RGCompiledMethodLayout ].
		
		^ self createBehavior: subclassName
			superclassName: superclassName 
			instanceVariableNames: instanceVariableNames 
			classVariableNames: classVariableNames 
			categoryName: categoryName 
			packageName: packageName 
			poolDictionariesNames: poolDictionariesNames 
			layoutClass: layoutClass 
			layoutDefinition: layoutDefinition 
			slotsDefinition: slotsDefinition 
			traits: traitsDefinition 
			isTrait: isTrait
			hasNilSuperclass: hasNilSuperclass.
	].

	doIts add: aChunk. 