sources
exampleCodeAuthorship

"Code authorship
 Red dot = author, purple dot = class, edge = commit.
"
| classes classesToAuthors authors  authorsToClasses eb v classesElements authorsElements l |
classes := RTShape withAllSubclasses.

classesToAuthors := (classes collect: [ :cls | cls -> ((cls methods collect: #author) asSet sortedAs: #yourself ) ]) asDictionary.
authors := (classesToAuthors values flatCollect: #yourself )asSet sortedAs: #yourself.
authorsToClasses := (authors collect: [ :anAuthor | anAuthor -> (classesToAuthors associations select: [ :as | as value includes: anAuthor ] thenCollect: #key) ] ) asDictionary.

v := RTView new.
classesElements := RTEllipse new color: Color purple trans; size: 5; elementsOn: classes.
v addAll: classesElements.
classesElements @ RTPopup.

authorsElements := RTEllipse new color: Color red; elementsOn: authors.
v addAll: authorsElements.
authorsElements @ RTPopup.

eb := RTEdgeBuilder new.
eb moveBehind.
eb shape line color: (Color veryLightGray alpha: 0.2).
eb view: v.
eb fromElements:  authorsElements.
eb toElements: classesElements.
eb connectToAll: [ :a | authorsToClasses at: a ].

RTMetricNormalizer new
	view: v; 
	objects: authors;
	normalizeSize: [ :a | (authorsToClasses at: a) size ].


RTCircleLayout on: authorsElements.
RTForceBasedLayout on: classesElements.
authorsElements translateTo: classesElements center.


l := RTForceBasedLayout new.
authorsElements do: [:ae | l fix: ae at: ae position ]. 
l on: authorsElements, classesElements.
^ v
