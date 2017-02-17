control points
getFollowersOf: aNode using: followBlock
	| answer view t model |
	answer := OrderedCollection new.
	view := aNode view.
	t := aNode.
	[ t notNil ]
		whileTrue: [ 
			answer add: t.
			model := followBlock rtValue: t model.
			model ifNil: [ ^ answer ].
			t := view elementFromModel: model ].
	^ answer