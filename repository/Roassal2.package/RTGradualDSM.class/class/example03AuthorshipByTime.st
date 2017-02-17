examples
example03AuthorshipByTime
	<script: 'self example03AuthorshipByTime inspect'>
	| classes classesToAuthors authors authorsToClasses b intervalDays oldAge youngAge diff c |
	classes := RTShape withAllSubclasses.
	intervalDays := 100.
	oldAge := (classes collect: #ageInDaysRounded) max.
	youngAge := (classes collect: #ageInDaysRounded) min.
	
	diff := oldAge - youngAge.
	
	c := RTComposer new.
	youngAge to: oldAge by: intervalDays do: [ :t |  
		classesToAuthors := (classes collect: [ :cls | cls -> (((cls methods select: [ :m | (t to: t + intervalDays) rangeIncludes: m ageInDaysRounded ]) collect: #author) asSet sortedAs: #yourself) ]) asDictionary.
		authors := (classesToAuthors values flatCollect: #yourself) asSet sortedAs: #yourself.
		authorsToClasses := (authors collect: [ :anAuthor | anAuthor -> (classesToAuthors associations select: [ :as | as value includes: anAuthor ] thenCollect: #key) ]) asDictionary.

		b := RTGradualDSM new.
		b view: c view.
		b objectsX: classes.
		b objectsY: authors.
		b score: [ :assoc | (assoc value methods collect: #author) occurrencesOf: assoc key ].
		b build.
		c group: t asString asSymbol.
	].
	c layout: (RTGridLayout new gapSize: 30).
	youngAge to: oldAge by: intervalDays do: [ :t |  
		c nameGroup: t asString asSymbol as: 'Time ', t asString ].
	^ c view