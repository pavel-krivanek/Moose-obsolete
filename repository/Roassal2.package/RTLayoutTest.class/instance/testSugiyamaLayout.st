sugiyama
testSugiyamaLayout
	| result elements |
	elements := (RTBox new size: 50) elementsOn: (1 to: 20).
	view := RTView new.
	view addAll: elements.
	elements allButFirst do: [:e | 
	 	view add: (RTLine edgeFrom: elements first to: e) ].
	
	RTSugiyamaLayout on: elements.
	
	result := (((RTGroup new) add: ((522.0@28.0)); add: ((999.0@98.0)); add: ((946.0@98.0)); add: ((893.0@98.0)); add: ((840.0@98.0)); add: ((787.0@98.0)); add: ((734.0@98.0)); add: ((681.0@98.0)); add: ((628.0@98.0)); add: ((575.0@98.0)); add: ((522.0@98.0)); add: ((469.0@98.0)); add: ((416.0@98.0)); add: ((363.0@98.0)); add: ((310.0@98.0)); add: ((257.0@98.0)); add: ((204.0@98.0)); add: ((151.0@98.0)); add: ((98.0@98.0)); add: ((45.0@98.0)); yourself)).
	self assert: (result includesAll: (elements collect: #position))