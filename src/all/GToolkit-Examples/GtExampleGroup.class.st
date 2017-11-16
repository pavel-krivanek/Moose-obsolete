"
I represent a group of examples.

I am particularly useful for manipulating multiple examples at the same time, typically in a user interface (such as the inspector).
"
Class {
	#name : #GtExampleGroup,
	#superclass : #Object,
	#instVars : [
		'examples'
	],
	#category : 'GToolkit-Examples-Core'
}

{ #category : #examples }
GtExampleGroup class >> gtExampleEmptyGroup [
	<gtExample>
	^ self new examples: #()
]

{ #category : #'instance creation' }
GtExampleGroup class >> withAll: aCollection [
	^ self new examples: aCollection
]

{ #category : #enumerating }
GtExampleGroup >> collect: aBlockClosure [ 
	^ self examples collect: aBlockClosure
]

{ #category : #enumerating }
GtExampleGroup >> do: aBlock [ 
	^ self examples do: aBlock
]

{ #category : #accessing }
GtExampleGroup >> examples [
	^ examples
]

{ #category : #accessing }
GtExampleGroup >> examples: aCollection [
	examples := aCollection collect: [ :each | each asExampleWithResult ]
]

{ #category : #enumerating }
GtExampleGroup >> flatCollect: aBlock [
	^ self examples flatCollect: aBlock
]

{ #category : #enumerating }
GtExampleGroup >> groupedBy: aBlock [ 
	"we are reimplementing this method here and not reuse the one in collection
	because we want the keys to be groups, not simple collections"
	| result |
	result := Dictionary new.
	self do:
		[:each | | key collection |
		key := aBlock value: each.
		collection := result at: key ifAbsentPut: [ OrderedCollection new ].
		collection add: each].
	result keysAndValuesDo:
			[:key :value | result at: key put: (self species withAll: value)].
	^ result
]

{ #category : #ui }
GtExampleGroup >> gtInspectorExamplesIn: composite [
	<gtInspectorPresentationOrder: 1>

	composite wrapper with: [:w | 
		w 
			title: 'Examples (' , self examples size gtDisplayString , ')';
			act: [ :wrapper | 
						self examples do: [ :each | each ignoreTest ifFalse: [ each run ] ] 
							displayingProgress: 'Running examples ...'.
						wrapper update ]
						on: $R
						entitled: 'Run all';
			show: [ :anotherComposite | 
				anotherComposite fastTable
					display: [ self examples ];
					icon: [ :each | each icon ];
					"sorted: [ :a :b | a statusText < b statusText ];"
					column: 'Status'
						evaluated: [ :each | '' ]
						width: 100
						tags: [ :each | {each statusText} ]
						sortedBy: [ :a :b | a statusText < b statusText ];
					column: 'Result'
						evaluated: [ :each | '' ]
						width: 120
						tags: [ :each | {each resultOrErrorName} ];
					column: 'Selector' evaluated: [ :each | each example selector ];
					column: 'Class'
						evaluated: [ :each | '' ]
						tags: [ :each | {each example methodClass instanceSide name} ];
					selectionAct: [ :list | 
						list rawSelection run.
						list update.
						(list pane port: #toSelect) value: list rawSelection result returnValue ]
						on: $r
						entitled: 'Run';
					selectionAct: [ :list | 
						list rawSelection debug.
						list update ]
						on: $D
						entitled: 'Debug';
					send: [ :each | 
						(each isKindOf: GtExampleWithResult)
							ifTrue: [ each example ]
							ifFalse: [ each ] ].
				w transmit fromOutsidePort: #toSelect; toOutsidePort: #selection ] ]
]

{ #category : #testing }
GtExampleGroup >> isCollection [
	^ true
]

{ #category : #enumerating }
GtExampleGroup >> select: aBlock [
	^ self class new examples: (self examples select: aBlock)
]
