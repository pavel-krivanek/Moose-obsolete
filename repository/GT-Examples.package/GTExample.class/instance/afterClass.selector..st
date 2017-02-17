PRAGMA-SELECTORS
afterClass: aClassOrClassName selector: aSelector
	<gtExamplePragma>
	<description: 'A method, implemented by (aClassOrClassName >> aSelector), to be performed after this example has run ~ similar but not identical to teardown of sunit'>
	
	after := self methodResolver resolve: GTExampleMethodAfter example: self className: aClassOrClassName meta: false selector: aSelector