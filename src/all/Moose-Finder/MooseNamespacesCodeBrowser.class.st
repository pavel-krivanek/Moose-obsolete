"
This browser shows namespaces and the containing classes.

self openOn: MooseModel root allModels last allNamespaces
"
Class {
	#name : #MooseNamespacesCodeBrowser,
	#superclass : #MooseCodeBrowser,
	#category : #'Moose-Finder'
}

{ #category : #building }
MooseNamespacesCodeBrowser >> browserActions [
	browser morphicAct: [:b :namespaces |
					| request selectedClass |
					request := GLMSingleSpotterRequest new 
							searchBlock: [ :string | (namespaces flatCollect: [:each | each allClasses ]) select: [:each | '*', string, '*' match: each mooseName] ];
							labelBlock: [ :class | class name ]";
							iconBlock: [ :class | class browserIcon ]".
					selectedClass := 
						GLMSpotterRequest new 
							add: request;
							prompt: 'Find Class';
							signal.
					selectedClass notNil ifTrue: [ (b pane port: #focusOnClass) value: selectedClass ] ]
			on: $/ 
			icon: MooseIcons mooseSearch 
			entitled: 'Find Class'
]

{ #category : #building }
MooseNamespacesCodeBrowser >> parentOfClass: aClass [
	^ aClass belongsTo
]
