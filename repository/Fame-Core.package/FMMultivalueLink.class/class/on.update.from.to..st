instance creation
on: element update: selector from: old to: new
	"refresh the other side of the relations to reflect change in value"
	
	old ~= new ifTrue: [
		old notNil ifTrue: [ (old perform: selector) unsafeRemove: element ].
		new notNil ifTrue: [ (new perform: selector) unsafeAdd: element ]].
	^new