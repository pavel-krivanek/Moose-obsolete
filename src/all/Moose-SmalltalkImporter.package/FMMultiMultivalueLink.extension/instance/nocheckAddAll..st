*Moose-SmalltalkImporter-nocheckAdding
nocheckAddAll: aCollection 
	"Include all the elements of aCollection as the receiver's elements. Answer 
	aCollection. Actually, any object responding to #do: can be used as argument."
	aCollection do: [ :each | self nocheckAdd: each ].
	^ aCollection