accessing-dynamic
gtExamplesContained
	| subjects |
	subjects := self theSubclasses collect: [ :each | each asGTExampleSubject ].
	^ Smalltalk gtExamplesContained select: [ :each | 
		(each hasSubject: self)
			or: [ subjects anySatisfy: [ :subject | each hasSubject: subject ] ] ]