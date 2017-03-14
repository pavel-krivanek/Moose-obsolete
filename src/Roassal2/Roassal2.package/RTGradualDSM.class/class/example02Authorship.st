examples
example02Authorship
	<script: 'self example02Authorship inspect'>
	| classes classesToAuthors authors authorsToClasses b |
	classes := RTShape withAllSubclasses.

	classesToAuthors := (classes collect: [ :cls | cls -> ((cls methods collect: #author) asSet sortedAs: #yourself) ]) asDictionary.
	authors := (classesToAuthors values flatCollect: #yourself) asSet sortedAs: #yourself.
	authorsToClasses := (authors collect: [ :anAuthor | anAuthor -> (classesToAuthors associations select: [ :as | as value includes: anAuthor ] thenCollect: #key) ]) asDictionary.

	b := RTGradualDSM new.
	b objectsX: classes.
	b objectsY: authors.
	b score: [ :assoc | (assoc value methods collect: #author) occurrencesOf: assoc key ].
	^ b