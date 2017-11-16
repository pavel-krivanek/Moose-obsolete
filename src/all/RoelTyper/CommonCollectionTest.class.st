Class {
	#name : #CommonCollectionTest,
	#superclass : #TestCase,
	#category : 'RoelTyper-Tests'
}

{ #category : #tests }
CommonCollectionTest >> testFusionWith [
	|c1 c2 cc |
	c1 := OrderedCollection with: 1 with: 2.
	c2 := OrderedCollection with: 3 with: 4.
	cc := CommonCollection on: (OrderedCollection with: 5 with: 6).
	
	self assert: ((c1 fusionWith: c2) difference: {1. 2. 3. 4}) isEmpty.
	self assert: c1 size = 4.
	self assert: c2 size = 2.
	self assert: (c1 fusionWith: cc) = cc.
	self assert: cc size = 6.
	self assert: c1 size = 4.
	self assert: (cc fusionWith: c1) = cc.
	self assert: cc size = 10.
	self assert: c1 size = 4.	
	self assert: (cc fusionWith: cc) = cc.
	self assert: cc size = 20.

]

{ #category : #tests }
CommonCollectionTest >> testRedirectionOfMessages [

	|cc |
	cc := CommonCollection on: (OrderedCollection new).	
	self assert: cc size = 0.
	cc add: 1.
	self assert: cc size = 1.
	cc addAll: {2. 3}.
	self assert: cc size = 3.
	cc remove: 2.
	self assert: cc size = 2.		
]
