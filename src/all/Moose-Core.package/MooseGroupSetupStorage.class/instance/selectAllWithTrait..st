enumerating
selectAllWithTrait: aSmalltalkClass 
	^ self select: 
		[ :each | 
		"-- select returns an ArrayList"
		each class allStatefulTraits includes: aSmalltalkClass ]