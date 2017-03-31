private
separateSubPaths
	| separatedPaths subPath absolute p point key args |
	separatedPaths := OrderedCollection new.
	subPath := OrderedCollection new.
	absolute := true.
	p := 0@0.

	point := [:da | p := absolute 
		ifTrue:[ da ] 
		ifFalse: [ p + da ].
		subPath add: p ].
	curves do: [ :c |
		key := c first.
		args := c second.
		key = #absolute ifTrue: [ absolute := true ].
		key = #relative ifTrue: [ absolute := false ].
		key = #moveTo: ifTrue: [ 
			subPath ifNotEmpty: [ separatedPaths add: subPath ]. 
			subPath:= OrderedCollection new.
			point value: args first ].
		key = #curveVia:and:to: ifTrue: [ 
			point value: args third ].
		key = #curveVia:to: ifTrue: [ 
			point value: args second ].
		key = #ellipticalArc:xrot:large:sweep:to: ifTrue: [ 
			point value: args fifth ].
		key = #lineTo: ifTrue: [ 
			point value: args first ].
		key = #reflectedCurveVia:to: ifTrue: [ 
			point value: args second ].
		key = #hLineTo: ifTrue: [
			p := absolute
				ifTrue: [ args first @ p y ]
				ifFalse: [ p + (args first @ 0) ].
			subPath add: p ].
		key = #vLineTo: ifTrue: [ 
			p := absolute
				ifTrue: [ p x @ args first ]
				ifFalse: [ p + (0 @ args first) ].
			subPath add: p ].
	].
	separatedPaths add: subPath.
	^ separatedPaths