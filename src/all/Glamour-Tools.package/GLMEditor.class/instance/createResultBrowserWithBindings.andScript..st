private
createResultBrowserWithBindings: bindings andScript: script
	| context resultBrowser scriptedBrowser composer |
	composer := GLMCompositePresentation new.
	context := GLMDoItContext with: #composer -> composer withAll: bindings.
	[ (Smalltalk compiler requestor: self) evaluate: script in: context to: context ]
		on: Error
		do: [ :e | 
			self inform: e class name , ': ' , e messageText halt. 
			^ GLMWrapper new show: #text; startOn: e class name , ': ' , e messageText ].
	scriptedBrowser := composer first.
	resultBrowser := GLMTabulator new.
	resultBrowser column: #theOuterPane.
	resultBrowser transmit
		fromOutsideEntityPort;
		to: #theOuterPane;
		andShow: [ :a | a custom: scriptedBrowser ].	"this is a bit of a hack.
	we take the entity as specified in the script by taking it directly
	from the evaluated script browser.
	this is needed because right now the input entity is specified 
	in the same script with the browser"
	^ resultBrowser startOn: composer entity