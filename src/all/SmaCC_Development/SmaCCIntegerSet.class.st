Class {
	#name : #SmaCCIntegerSet,
	#superclass : #Collection,
	#instVars : [
		'start',
		'run',
		'data'
	],
	#category : #SmaCC_Development
}

{ #category : #'instance creation' }
SmaCCIntegerSet class >> new [
	^ super new
		initialize;
		yourself
]

{ #category : #'instance creation' }
SmaCCIntegerSet class >> new: aSize [
	^ self new
]

{ #category : #comparing }
SmaCCIntegerSet >> < aSmaCCIntegerCollection [
	| myItems i |
	self isEmpty
		ifTrue: [ ^ true ].
	aSmaCCIntegerCollection isEmpty
		ifTrue: [ ^ false ].
	self first < aSmaCCIntegerCollection first
		ifTrue: [ ^ true ].
	self first > aSmaCCIntegerCollection first
		ifTrue: [ ^ false ].
	myItems := OrderedCollection new: self size.
	self do: [ :each | myItems add: each ].
	i := 1.
	aSmaCCIntegerCollection
		do: [ :each | 
			| current |
			i > myItems size
				ifTrue: [ ^ true ].
			current := myItems at: i.
			current < each
				ifTrue: [ ^ true ].
			current > each
				ifTrue: [ ^ false ].
			i := i + 1 ].
	^ false
]

{ #category : #comparing }
SmaCCIntegerSet >> <= aSmaCCIntegerCollection [
	^ (aSmaCCIntegerCollection < self) not
]

{ #category : #comparing }
SmaCCIntegerSet >> = anObject [
	| myItems i size |
	self class = anObject class
		ifFalse: [ ^ false ].
	(self start = anObject start and: [ self run = anObject run ])
		ifTrue: [ ^ self data = anObject data ].
	size := self size.
	size ~= anObject size
		ifTrue: [ ^ false ].
	size = 0
		ifTrue: [ ^ true ].
	self first = anObject first
		ifFalse: [ ^ false ].
	myItems := OrderedCollection new.
	self do: [ :each | myItems add: each ].
	i := 1.
	anObject
		do: [ :each | 
			| current |
			i > myItems size
				ifTrue: [ ^ false ].
			current := myItems at: i.
			current < each
				ifTrue: [ ^ false ].
			current > each
				ifTrue: [ ^ false ].
			i := i + 1 ].
	^ true
]

{ #category : #comparing }
SmaCCIntegerSet >> > aSmaCCIntegerCollection [
	^ aSmaCCIntegerCollection < self
]

{ #category : #comparing }
SmaCCIntegerSet >> >= aSmaCCIntegerCollection [
	^ (self < aSmaCCIntegerCollection) not
]

{ #category : #adding }
SmaCCIntegerSet >> add: anInteger [
	| newData |
	[ anInteger < start ]
		whileTrue:
			[ run := run * self defaultRunSize.
			start := start - run.
			data == 0
				ifFalse:
					[ newData := Array new: self defaultRunSize withAll: 0.
					newData at: 2 put: data.
					data := newData ] ].
	[ self defaultRunSize * run + start <= anInteger ]
		whileTrue:
			[ run := run * self defaultRunSize.
			data == 0
				ifFalse:
					[ newData := Array new: self defaultRunSize withAll: 0.
					newData at: 1 put: data.
					data := newData ] ].
	data := self
		add: anInteger
		to: data
		startingAt: start
		withRun: run.
	^ anInteger
]

{ #category : #private }
SmaCCIntegerSet >> add: anInteger to: currentData startingAt: currentStart withRun: currentRun [
	| newData isBits offset value |
	currentData == 1
		ifTrue: [ ^ 1 ].
	isBits := currentRun = self byteSize.
	newData := currentData == 0
		ifTrue: [ (isBits
				ifTrue: [ ByteArray ]
				ifFalse: [ Array ]) new: self defaultRunSize withAll: 0 ]
		ifFalse: [ currentData ].
	offset := (anInteger - currentStart) // currentRun + 1.
	^ isBits
		ifTrue: [ newData at: offset put: (value := (newData at: offset) bitOr: (1 bitShift: (anInteger - currentStart) \\ currentRun)).
			(value == 16rFF and: [ newData allSatisfy: [ :each | each == 16rFF ] ])
				ifTrue: [ 1 ]
				ifFalse: [ newData ] ]
		ifFalse: [ newData
				at: offset
				put:
					(value := self
						add: anInteger
						to: (newData at: offset)
						startingAt: currentStart + ((offset - 1) * currentRun)
						withRun: (self nextRunFrom: currentRun)).
			(value == 1 and: [ newData allSatisfy: [ :each | each == 1 ] ])
				ifTrue: [ 1 ]
				ifFalse: [ newData ] ]
]

{ #category : #adding }
SmaCCIntegerSet >> addAll: aCollection [
	| otherData otherRun tempData |
	(self class == aCollection class and: [ start = aCollection start ])
		ifFalse: [ ^ super addAll: aCollection ].
	data == 0
		ifTrue: [ data := self copyData: aCollection data.
			run := aCollection run ]
		ifFalse: [ otherRun := aCollection run.
			otherData := aCollection data.
			[ run < otherRun ]
				whileTrue: [ run := run * self defaultRunSize.
					tempData := Array new: self defaultRunSize withAll: 0.
					tempData at: 1 put: data.
					data := tempData ].
			[ run > otherRun ]
				whileTrue: [ otherRun := otherRun * self defaultRunSize.
					tempData := Array new: self defaultRunSize withAll: 0.
					tempData at: 1 put: otherData.
					otherData := tempData ].
			data := self merge: data with: otherData ].
	^ aCollection
]

{ #category : #private }
SmaCCIntegerSet >> byteSize [
	^ 8
]

{ #category : #private }
SmaCCIntegerSet >> copyData: anObject [
	| copy |
	^ (anObject isKindOf: Collection)
		ifTrue:
			[ copy := anObject copy.
			1 to: copy size do: [ :i | copy at: i put: (self copyData: (copy at: i)) ].
			copy ]
		ifFalse: [ anObject ]
]

{ #category : #private }
SmaCCIntegerSet >> countBits: anInteger [
	| count current |
	count := 0.
	current := anInteger.
	[ current = 0 ]
		whileFalse: [ (current bitAnd: 1) == 1
				ifTrue: [ count := count + 1 ].
			current := current bitShift: -1 ].
	^ count
]

{ #category : #private }
SmaCCIntegerSet >> data [
	^ data
]

{ #category : #private }
SmaCCIntegerSet >> defaultRunSize [
	^ 32
]

{ #category : #enumerating }
SmaCCIntegerSet >> do: aBlock [
	self
		do: aBlock
		over: data
		startingAt: start
		withRun: run
]

{ #category : #private }
SmaCCIntegerSet >> do: aBlock over: currentData startingAt: currentStart withRun: currentRun [
	| index offset nextRun |
	currentData = 0
		ifTrue: [ ^ self ].
	currentData = 1
		ifTrue:
			[ ^ currentStart to: currentStart + (currentRun * self defaultRunSize) - 1
			do: [ :i | aBlock value: i ] ].
	index := currentStart.
	currentRun = self byteSize
		ifTrue:
			[ currentData
				do:
					[ :each | 
					| bits |
					bits := each.
					offset := 0.
					[ bits = 0 ]
						whileFalse:
							[ bits odd
								ifTrue: [ aBlock value: offset + index ].
							offset := offset + 1.
							bits := bits bitShift: -1 ].
					index := index + currentRun ].
			^ self ].
	nextRun := self nextRunFrom: currentRun.
	currentData
		do:
			[ :each | 
			self
				do: aBlock
				over: each
				startingAt: index
				withRun: nextRun.
			index := index + currentRun ]
]

{ #category : #accessing }
SmaCCIntegerSet >> first [
	self do: [ :each | ^ each ].
	self error: 'Collection is empty'
]

{ #category : #comparing }
SmaCCIntegerSet >> hash [
	| hash |
	hash := self class hash.
	self
		do:
			[ :each | 
			hash := hash
				bitXor:
					((each hash bitShift: -8)
						bitOr: ((each hash bitAnd: 16rFF) bitShift: 8)) ].
	^ hash
]

{ #category : #testing }
SmaCCIntegerSet >> includes: anInteger [
	anInteger < start
		ifTrue: [ ^ false ].
	self defaultRunSize * run + start <= anInteger
		ifTrue: [ ^ false ].
	^ self
		includes: anInteger
		in: data
		startingAt: start
		withRun: run
]

{ #category : #private }
SmaCCIntegerSet >> includes: anInteger in: currentData startingAt: currentStart withRun: currentRun [
	| isBits offset |
	currentData = 1
		ifTrue: [ ^ true ].
	currentData = 0
		ifTrue: [ ^ false ].
	isBits := currentRun = self byteSize.
	offset := (anInteger - currentStart) // currentRun + 1.
	^ isBits
		ifTrue:
			[ ((currentData at: offset)
				bitAnd: (1 bitShift: (anInteger - currentStart) \\ currentRun))
				~= 0 ]
		ifFalse:
			[ ^ self
				includes: anInteger
				in: (currentData at: offset)
				startingAt: currentStart + ((offset - 1) * currentRun)
				withRun: (self nextRunFrom: currentRun) ]
]

{ #category : #initialize-release }
SmaCCIntegerSet >> initialize [
	start := 0.
	run := self byteSize.
	data := 0
]

{ #category : #private }
SmaCCIntegerSet >> merge: myData with: otherData [
	| value includeAll |
	(myData = 0 or: [ otherData = 1 ])
		ifTrue: [ ^ otherData ].
	(myData = 1 or: [ otherData = 0 ])
		ifTrue: [ ^ myData ].
	includeAll := true.
	(myData isKindOf: ByteArray)
		ifTrue: [ 1 to: myData size do: [ :i | 
				myData at: i put: (value := (myData at: i) bitOr: (otherData at: i)).
				includeAll := includeAll and: [ value = 255 ] ] ]
		ifFalse: [ 1 to: myData size do: [ :i | 
				myData at: i put: (value := self merge: (myData at: i) with: (otherData at: i)).
				includeAll := includeAll and: [ value = 1 ] ] ].
	includeAll
		ifTrue: [ ^ 1 ].
	^ myData
]

{ #category : #private }
SmaCCIntegerSet >> nextRunFrom: currentRun [
	^ currentRun // self defaultRunSize
]

{ #category : #copying }
SmaCCIntegerSet >> postCopy [
	super postCopy.
	data := self copyData: data
]

{ #category : #private }
SmaCCIntegerSet >> remove: anInteger from: currentData startingAt: currentStart withRun: currentRun [
	| newData isBits offset value |
	currentData == 0
		ifTrue: [ ^ 0 ].
	isBits := currentRun = self byteSize.
	newData := currentData == 1
		ifTrue: [ isBits
				ifTrue: [ ByteArray new: self defaultRunSize withAll: 16rFF ]
				ifFalse: [ Array new: self defaultRunSize withAll: 1 ] ]
		ifFalse: [ currentData ].
	offset := (anInteger - currentStart) // currentRun + 1.
	isBits
		ifTrue: [ newData at: offset put: (value := (newData at: offset) bitAt: (anInteger - currentStart) \\ currentRun + 1 put: 0) ]
		ifFalse: [ newData
				at: offset
				put:
					(value := self
						remove: anInteger
						from: (newData at: offset)
						startingAt: currentStart + ((offset - 1) * currentRun)
						withRun: (self nextRunFrom: currentRun)) ].
	^ (value = 0 and: [ newData allSatisfy: [ :each | each == 0 ] ])
		ifTrue: [ 0 ]
		ifFalse: [ newData ]
]

{ #category : #removing }
SmaCCIntegerSet >> remove: anInteger ifAbsent: aBlock [
	(self includes: anInteger)
		ifFalse: [ ^ aBlock value ].
	data := self
		remove: anInteger
		from: data
		startingAt: start
		withRun: run.
	^ anInteger
]

{ #category : #private }
SmaCCIntegerSet >> run [
	^ run
]

{ #category : #enumerating }
SmaCCIntegerSet >> select: aBlock [
	| selected |
	selected := self copy.
	self
		do: [ :each | 
			(aBlock value: each)
				ifFalse: [ selected remove: each ] ].
	^ selected
]

{ #category : #accessing }
SmaCCIntegerSet >> size [
	^ self sizeOf: data withRun: run
]

{ #category : #private }
SmaCCIntegerSet >> sizeOf: currentData withRun: currentRun [
	| nextRun |
	currentData = 0
		ifTrue: [ ^ 0 ].
	currentData = 1
		ifTrue: [ ^ currentRun * self defaultRunSize ].
	currentRun = self byteSize
		ifTrue: [ ^ currentData inject: 0 into: [ :sum :each | sum + (self countBits: each) ] ]
		ifFalse: [ nextRun := self nextRunFrom: currentRun.
			^ currentData inject: 0 into: [ :sum :each | sum + (self sizeOf: each withRun: nextRun) ] ]
]

{ #category : #private }
SmaCCIntegerSet >> start [
	^ start
]
