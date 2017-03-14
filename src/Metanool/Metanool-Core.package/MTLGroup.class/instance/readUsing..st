model
readUsing: aDescription
	"we ask the entities in the real group for the actual value corresponding to the description. 
	if we get only one value we return that. otherwise we return the default of the description"
	
	| allValues |
	allValues := self group collectAsSet: [:each | each readUsing: aDescription].
	^ allValues size = 1
		ifTrue: [ allValues anyOne ]
		ifFalse: [ aDescription default ]