accessing
redefinedBehaviors
	"References the Behavior that this Behavior redefines. A subtype of Behavior may redefine any other subtype of Behavior. If the Behavior implements a BehavioralFeature, it replaces the redefined Behavior. If the Behavior is a classifierBehavior, it extends the redefined Behavior."
	^ redefinedBehaviors ifNil: [ redefinedBehaviors := OrderedCollection new ]