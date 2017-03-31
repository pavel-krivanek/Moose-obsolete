accessing
path: aString
	| answer absolute key args p cp1 cp2 point abso |
	curves := TRSVGPath new path: aString; curves.
	answer := OrderedCollection new.
	absolute := true.
	p := 0@0.
	abso := [ :da | absolute 
		ifTrue: [ da ]
		ifFalse: [ p + da ] ].
	point := [ :da | p := absolute
		ifTrue: [ da ]
		ifFalse: [ p + da ].
		args at: 1 put: p. ].
	curves do: [ :curve |
		key := curve first.
		args := curve second.
		key = #absolute ifTrue: [ absolute := true ].
		key = #relative ifTrue: [ absolute := false ].
		key = #moveTo: ifTrue: [ point value: args first. answer add: curve. ].
		key = #lineTo: ifTrue: [ point value: args first. answer add: curve. ].
		key = #curveVia:and:to: ifTrue: [ 
			cp1 := abso value: args first.
			cp2 := abso value: args second.
			p := abso value: args third.
			args at: 1 put: p.
			args at: 2 put: cp1.
			args at: 3 put: cp2.
			answer add: curve ] ].
	curves := answer.
	