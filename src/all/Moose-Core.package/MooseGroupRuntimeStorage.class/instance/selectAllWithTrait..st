enumerating
selectAllWithTrait: aSmalltalkClass
	"^ byType at: aSmalltalkClass ifAbsent: [ self class byTypeDefaultCollection ]"
	^ self select: 
		[ :each | 
		"-- select returns an ArrayList"
		each class allStatefulTraits includes: aSmalltalkClass ]