Extension { #name : #FAMIXTypeGroup }

{ #category : #'*famix-extensions-metrics' }
FAMIXTypeGroup >> abstractness [
	"Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract."

	<MSEProperty: #abstractness type: #Number>
	<derived>
	<MSEComment: 'Abstractness is the ratio between the number of abstract classes and the total number of classes in a package, in the range [0, 1]. 0 means the package is fully concrete, 1 it is fully abstract.'>
	
	| nsClasses |
	nsClasses := self allClasses select: [:c | c isInstanceSide].
	(nsClasses size == 0) ifTrue: [^nil].
	
	^ (nsClasses select: [:c | c isAbstract]) size / (nsClasses size) asFloat
]

{ #category : #'*famix-extensions-metrics' }
FAMIXTypeGroup >> afferentCoupling [
	"Afferent coupling for a class group is the number of external classes that depend upon this class group"

	<MSEProperty: #afferentCoupling type: #Number>
	<derived>
	<MSEComment: 'Afferent coupling for a class group is the number of external classes that depend upon this class group'>
	| cgClasses cgTypes |
	cgClasses := self allClasses select: [ :c | c isInstanceSide ].
	cgTypes := cgClasses flatCollect: [ :c | c allRecursiveTypes ].
	cgClasses := (cgClasses union: cgTypes) asArray.
	^ (cgClasses
		flatCollect: [ :cgClass | (cgClass queryIncomingDependencies atScope: FAMIXType) select: [ :invokingClass | (cgClasses includes: invokingClass) not and: [ invokingClass isInstanceSide ] ] ])
		asSet size
]

{ #category : #'*famix-extensions-metrics' }
FAMIXTypeGroup >> bunchCohesion [
	"Computing cohesion (Bunch formula). It is also considered anonymous and inner classes (in Java)."

	<MSEProperty: #bunchCohesion type: #Number>
	<derived>
	<MSEComment: 'Bunch Cohesion of a class group. It is also considered anonymous and inner classes (in Java).'>
	| cgClasses cgTypes intraConnectivities |
	cgClasses := self allClasses select: [ :c | c isInstanceSide ].
	cgTypes := cgClasses flatCollect: [ :c | c allRecursiveTypes ].
	cgClasses := (cgClasses union: cgTypes) asArray.
	cgClasses size == 0
		ifTrue: [ ^ 0.0 ].
	intraConnectivities := (cgClasses
		collect: [ :cgClass | (cgClass queryOutgoingDependencies opposites atScope: FAMIXType) select: [ :class | (cgClasses includes: class) and: [ class isInstanceSide ] ] ])
		inject: 0
		into: [ :subTotal :each | subTotal + each size ].
	^ intraConnectivities / cgClasses size squared asFloat
]

{ #category : #'*famix-extensions-metrics' }
FAMIXTypeGroup >> bunchCouplingWith: aClassGroup [
	"Computing coupling (Bunch formula) from aClassGroup to receiver. It is also considered anonymous and inner classes (in Java)"

	| cgClasses cgTypes dependClasses dependTypes interConnectivities |
	cgClasses := self allClasses select: [ :c | c isInstanceSide ].
	cgTypes := cgClasses flatCollect: [ :c | c allRecursiveTypes ].
	cgClasses := (cgClasses union: cgTypes) asArray.
	dependClasses := aClassGroup allClasses select: [ :c | c isInstanceSide ].
	dependTypes := dependClasses flatCollect: [ :c | c allRecursiveTypes ].
	dependClasses := (dependClasses union: dependTypes) asArray.
	(cgClasses size == 0 or: [ dependClasses size == 0 ])
		ifTrue: [ ^ 0.0 ].
	interConnectivities := (cgClasses
		collect:
			[ :cgClass | (cgClass queryOutgoingDependencies opposites atScope: FAMIXType) select: [ :referencedClass | (dependClasses includes: referencedClass) and: [ referencedClass isInstanceSide ] ] ])
		inject: 0
		into: [ :subTotal :each | subTotal + each size ].
	interConnectivities := ((cgClasses
		collect:
			[ :cgClass | (cgClass queryIncomingDependencies opposites atScope: FAMIXType) select: [ :referencingClass | (dependClasses includes: referencingClass) and: [ referencingClass isInstanceSide ] ] ])
		inject: 0
		into: [ :subTotal :each | subTotal + each size ]) + interConnectivities.
	^ interConnectivities / (2 * cgClasses size * dependClasses size) asFloat
]

{ #category : #'*famix-extensions-metrics' }
FAMIXTypeGroup >> distance [
	"D = A + I - 1. A package should be balanced between abstractness and instability, i.e., somewhere between abstract and stable or concrete and unstable. This rule defines the main sequence by the equation A + I - 1 = 0. D is the distance to the main sequence."
	<MSEProperty: #distance type: #Number>
	<derived>
	<MSEComment: 'Distance of a class group'>
	
	| abstractness instability |
	abstractness := self abstractness.
	instability := self instability.
	
	(abstractness isNil or: [instability isNil]) ifTrue: [^ nil].
	^ abstractness + instability - 1
]

{ #category : #'*famix-extensions-metrics' }
FAMIXTypeGroup >> efferentCoupling [
	"Efferent coupling for a class group is the number of classes it depends upon"

	<MSEProperty: #efferentCoupling type: #Number>
	<derived>
	<MSEComment: 'Efferent coupling for a class group is the number of classes it depends upon'>
	| cgClasses cgTypes |
	cgClasses := self allClasses select: [ :c | c isInstanceSide ].
	cgTypes := cgClasses flatCollect: [ :c | c allRecursiveTypes ].
	cgClasses := (cgClasses union: cgTypes) asArray.
	^ (cgClasses flatCollect: [ :aClass | (aClass queryOutgoingDependencies atScope: FAMIXType) select: [ :c | (cgClasses includes: c) not and: [ c isInstanceSide ] ] ]) asSet size
]

{ #category : #'*famix-extensions-metrics' }
FAMIXTypeGroup >> instability [
	"I =	Ce(P)/(Ce(P)+Ca(P)), in the range [0, 1]. 0 means package is maximally stable (i.e., no dependency to other packages and can not change without big consequences), 1 means it is unstable."
	<MSEProperty: #instability type: #Number>
	<derived>
	<MSEComment: 'Instability of a class group'>
	
	| efferentCoupling afferentCoupling |
	
	efferentCoupling := self efferentCoupling.
	afferentCoupling := self afferentCoupling.
	(efferentCoupling + afferentCoupling) == 0 ifTrue: [^ nil].
	^ efferentCoupling / (efferentCoupling + afferentCoupling) asFloat
]
