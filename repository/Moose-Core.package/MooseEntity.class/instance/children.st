accessing
children 
	 
	| selectors children | 
	selectors := self class selectors select: [:each | 'all*s' match: each]. 
	children := OrderedCollection new. 
	selectors 
		do: 
			[:eachSelector |  
			| group | 
			group := self perform: eachSelector. 
			group isEmpty ifFalse: [children add: group]]. 
	^children