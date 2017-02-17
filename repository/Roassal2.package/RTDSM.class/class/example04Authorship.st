examples
example04Authorship
	<script: 'self example04Authorship inspect'>
	| classes classesToAuthors authors authorsToClasses b |
	classes := RTShape withAllSubclasses.
	classesToAuthors := (classes collect: [ :cls | cls -> ((cls methods collect: #author) asSet sortedAs: #yourself ) ]) asDictionary.
	authors := (classesToAuthors values flatCollect: #yourself )asSet sortedAs: #yourself.
	authorsToClasses := (authors collect: [ :anAuthor | anAuthor -> (classesToAuthors associations select: [ :as | as value includes: anAuthor ] thenCollect: #key) ] ) asDictionary.

	b := RTDSM new.
	b objectsX: classes.
	b objectsY: authors.
	b dependency: [ :author | authorsToClasses at: author ].
	^ b