accessing
roleBindings
	"A mapping between features of the Collaboration and features of the owning Classifier. This mapping indicates which ConnectableElement of the Classifier plays which role(s) in the Collaboration. A ConnectableElement may be bound to multiple roles in the same CollaborationUse (that is, it may play multiple roles)."
	^ roleBindings ifNil: [ roleBindings := OrderedCollection new ]