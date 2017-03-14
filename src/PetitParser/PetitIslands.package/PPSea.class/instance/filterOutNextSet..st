analysis
filterOutNextSet: nextSet
	| newNextSet |
	newNextSet := nextSet.
	"This should remove the most patological cases of exponential complexity of islands"
	"TODO JK: this is an adhoc approach that needs better solution"
	newNextSet := newNextSet collect: [ :e | 
		((e isKindOf: PPSea) 
			and: [e island == island ]) 
				ifTrue: [ island ] 
				ifFalse: [ e ]].

	newNextSet := newNextSet collect: [ :e | 
		((e isKindOf: PPActionParser) 
			and: [ (e block == #second) 
			and: [ (e child isKindOf: PPSea)  
			and: [ e child island == island ]]]) 
				ifTrue: [ island ] 
				ifFalse: [ e ]].

	newNextSet := newNextSet collect: [ :e | 
		((e isKindOf: PPDelegateParser) 
			and: [ (e child isKindOf: PPActionParser) 
			and: [ (e child block == #second) 
			and: [ (e child child isKindOf: PPSea)  
			and: [ e child child island == island ]]]])
				ifTrue: [ island ] 
				ifFalse: [ e ]].

	^ newNextSet