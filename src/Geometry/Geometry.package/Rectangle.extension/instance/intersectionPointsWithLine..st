*Geometry
intersectionPointsWithLine: line
	|points ps|
	ps := OrderedCollection new.
	points := OrderedCollection new.
 	self edges do:[ :edge | 
		|p|
		p := edge intersectionPointWithLine: line.
		p isNotNil 
			ifTrue:[ (ps noneSatisfy: [:pi| pi =~p]) ifTrue:[
			ps add: p ]]]. 
	^ ps

"^ self edges collect:[ :edge | edge intersectionPointWithLine: line]  
				thenReject: #isNil."
	