"
I provide examples for the class GTSpotter as class side methods.


"
Class {
	#name : #GTSpotterExamples,
	#superclass : #Object,
	#category : #'GT-Spotter-Model'
}

{ #category : #'examples - basic' }
GTSpotterExamples class >> gtExampleBasic [
	<gtExample>
	<label: 'Basic Spotter object'>
	^ GTSpotter new
]

{ #category : #'examples - filtering' }
GTSpotterExamples class >> gtExampleCustomImplementorsSearch [
	<gtExample>
	<label: 'Custom implementors search'>
	<description: 'A spotter for searching through the implementors of a 
	method that overrides properties of the search step.'>
	| spotter |
	spotter := self gtExampleOnCompliedMethod.	
	^ spotter
		processorsFilter: (GTSpotterMethodListProcessorFilter new 
			allowProcessorsFrom: CompiledMethod>>#spotterForImplementorsFor: 
			configuredWith: [ :aProcessor | aProcessor
				actLogic: [ :aMethod :step | 
					step exit.
					aMethod inform: aMethod name ];
				candidatesLimit: 50 ])
]

{ #category : #'examples - filtering' }
GTSpotterExamples class >> gtExampleCustomImplementorsSearchWithNavigation [
	<gtExample>
	<label: 'Custom implementors search with navigation'>
	<description: 'A spotter for searching through the implementors of a method that 
	overrides properties of the search step and enables the Collection 
	processor for items (to allow dive in).'>
	| spotter |
	spotter := self gtExampleOnCompliedMethod.
	^ spotter
		processorsFilter: (GTSpotterMethodListProcessorFilter new 
			allowProcessorsFrom: Collection>>#spotterItemsFor:;
			allowProcessorsFrom: CompiledMethod>>#spotterForImplementorsFor: 
			configuredWith: [ :aProcessor | aProcessor
				actLogic: [ :aMethod :step | 
					step exit.
					aMethod inform: aMethod name ];
				candidatesLimit: 50 ])
]

{ #category : #'examples - filtering' }
GTSpotterExamples class >> gtExampleHelpSearch [
	<gtExample>
	<label: 'Help search'>
	<description: 'A spotter for searching through help pages.'>
	| spotter |
	spotter := self gtExampleBasic.	
	^ spotter
		filterByMethods: {
			GTSpotter>>#spotterForHelpTopicFor:.
			HelpTopic>>#spotterForHelpTopicFor:}
]

{ #category : #'examples - filtering' }
GTSpotterExamples class >> gtExampleImplementorsSearch [
	<gtExample>
	<label: 'Implementors search on single method'>
	<description: 'A spotter for searching through the implementors of a method.'>
	| spotter |
	spotter := self gtExampleOnCompliedMethod.
	^ spotter
		filterByMethods: {
			CompiledMethod>>#spotterForImplementorsFor:}
]

{ #category : #'examples - basic' }
GTSpotterExamples class >> gtExampleOnCompliedMethod [
	<gtExample>
	<label: 'Spotter on compiled method'>
	^ GTSpotter on: Object>>#copy
]

{ #category : #'examples - basic' }
GTSpotterExamples class >> gtExampleWithOneStep [
	<gtExample>
	<label: 'Spotter object with one step'>
	| step spotter |
	spotter := self gtExampleBasic.
	step := GTSpotterStep new spotter: spotter.
	spotter steps add: step.
	spotter currentStep: step.
	^ spotter
]

{ #category : #'examples - filtering' }
GTSpotterExamples class >> gtExampleWorldMenuSearchOn [
	<gtExample>
	<label: 'World menu search'>
	<description: 'A spotter for searching through the world menu'>
	| spotter |
	spotter := self gtExampleBasic.
	^ spotter
		filterByMethods: {
			GTSpotter>>#spotterWorldMenuFor:}
	
	
]
