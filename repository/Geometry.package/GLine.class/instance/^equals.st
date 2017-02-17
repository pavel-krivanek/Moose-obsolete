comparing
= line 
^( self a asFloat =~ line a asFloat and: [ self b asFloat =~ line b asFloat and: [ self c asFloat =~ line c asFloat ] ] )  
or:
[ ( line a ~=~ 0 and: [ line b ~=~ 0 and: [ line c ~=~ 0 ] ] ) 
	ifTrue: [ ( self a / line a ) asFloat =~ ( self b / line b ) asFloat and: [ ( self b / line b ) asFloat =~ ( self c / line c ) asFloat] ]
	ifFalse:[ ( self a ~=~ 0 and: [self b ~=~ 0 and: [ self c ~=~ 0 ]]) 
		ifTrue: [ ( line a / self a ) asFloat =~ ( line b / self b) asFloat and: [ ( line b / self b ) asFloat =~ ( line c / self c ) asFloat ] ]
		ifFalse:[ ( line a ~=~ 0 and: [ line c ~=~ 0 ] )
			ifTrue:[ ( self a / line a ) asFloat =~ ( self c / line c ) asFloat]
			ifFalse:[ ( line b ~=~ 0 and:[ line c ~=~ 0] )
				ifTrue:[ ( self b / line b ) asFloat =~ ( self c / line c ) asFloat ] 
				ifFalse:[ ( line a ~=~ 0 and:[ line b ~=~ 0] )
					ifTrue:[ ( self a / line a ) asFloat =~ ( self b / line b ) asFloat ] 
					ifFalse:[ ( line a =~ 0 and: [ line c =~ 0 ] ) or: [ ( line b =~ 0 and: [ line c =~ 0 ] ) ]
					]
				] 
			]]]
	]
