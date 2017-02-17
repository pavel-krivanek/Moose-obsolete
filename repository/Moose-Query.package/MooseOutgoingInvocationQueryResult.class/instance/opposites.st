accessing
opposites
	"Hack because #to  can return a collection (candidates of FAMIXInvocation) or a single entity (FAMIXAssociation)"
	^ self newObjectResultWith: (storage flatCollectAsSet: [ :d | | to | to := d to. to isCollection ifTrue: [ to ] ifFalse: [ { to } ] ])