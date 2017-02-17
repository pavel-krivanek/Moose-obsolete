examples
keywordsSubject
	<gtExample>
	<subjectKeywords: #( 'Justo' 'Malesuada' 'Bibendum' 'Adipiscing' 'Elit' )>
	<subjectKeyword: 'Tristique'>
	
	self assert: self gtExampleContext example subjects first class = GTExampleKeywordSubject.
	self assert: self gtExampleContext example subjects size = 6.
	self assert: (self gtExampleContext example subjects collect: [ :each | each keyword ]) asSet = #( 'Justo' 'Malesuada' 'Bibendum' 'Adipiscing' 'Elit' 'Tristique' ) asSet.
	
	^ 0