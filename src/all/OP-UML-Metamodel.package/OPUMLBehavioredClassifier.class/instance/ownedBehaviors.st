accessing
ownedBehaviors
	"Behaviors owned by a BehavioredClassifier."
	^ ownedBehaviors ifNil: [ ownedBehaviors := OrderedCollection new ]