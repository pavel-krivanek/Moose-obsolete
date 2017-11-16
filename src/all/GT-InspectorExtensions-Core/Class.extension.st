Extension { #name : #Class }

{ #category : #'*GT-InspectorExtensions-Core' }
Class >> gtInspectorInstanceVariablesIn: composite [
	"This provides a list of all class instance variables and the corresponding values"

	<localClassMethod> 
    "This method is supposed to be local in Class because of a good reason.
    We use this pragma to test if Class does not contain some accidental 
    local selectors."

	<gtInspectorPresentationOrder: 21>
	composite table
		title: 'InstVars';
		display: [ self class allInstVarNames sorted collect: [ :each | each -> (self instVarNamed: each) ] ];
		column: 'Variable' evaluated: [ :each | each key ];
		column: 'Value' evaluated: [ :each | each value ]
]

{ #category : #'*GT-InspectorExtensions-Core' }
Class >> gtInspectorMethodsIn: composite [
	"This provides a list of all methods provided by the current class"

	<localClassMethod> 
    "This method is supposed to be local in Class because of a good reason.
    We use this pragma to test if Class does not contain some accidental 
    local selectors."

	<gtInspectorPresentationOrder: 20>
	composite list 
		title: 'Methods';
		display: [ (self methods collect: #asRingDefinition) 
						sorted: [ :x :y | x selector < y selector ] ];
		format: #selector;
		tags: [ :each | {each methodClass name} ]
]
