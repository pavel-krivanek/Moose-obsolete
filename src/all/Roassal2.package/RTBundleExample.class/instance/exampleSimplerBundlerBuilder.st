sources
exampleSimplerBundlerBuilder
| tree searchTree relationsBlock relations b |

tree := 'president'->(OrderedCollection new
	add: ('assistant1'-> #());
	add: ('director1'-> (Array
		with: ('employee1'->#())
		with: ('employee2'->#())
		with: ('employee3'->#())));
	add: ('director2'->(Array
		with: ('employee4'->#())
		with: ('employee5'->#())));
	add: ('guard1'->#());
	add: ('guard2'->#());
	add: ('chef'->(Array
		with: ('subchef'->#())
		with: ('employee6'->#())));
	add: ('vicepresident'->(Array
		with: ('assistant2'->#())
		with: ('guard3'->#())));
	yourself).
searchTree := nil.
searchTree := [ :s :t| t key = s ifTrue: [ t ]
	ifFalse: [ | r |
		r := nil.
		t value do: [ :child | 
			r ifNil: [ r := searchTree value: s value: child.] ].
		r ] ].
relationsBlock := [ :str| | res strings |
	res := Dictionary new.
	(str substrings: '
') do: [:s| 
		strings := s substrings:' '.
		res at: strings first put: 
			(strings allButFirst collect: [:st |
				searchTree value: st value: tree] )].
	res	 ].
relations := relationsBlock value: 'president director1 director2 vicepresident
assistant1 assistant2
director1 employe1 chef
employee1 director1 employee2 employee3 assistant2
employee2 employee3 guard1 subchef
employee3 guard2
director2 director1 vicepresident assistant2
employee4 employee2 employee5
employee5 assistan1 chef guard2
guard1 president
guard2 employee6 vicepresident
chef president vicepresident subchef
subchef employee6 employee1 assistant1
employee6 employee5 employee4
vicepresident president director1 director2 chef
assistant2 assistant1 guard3
guard3 vicepresident president'.
b := RTBundleBuilder new.
b explore: tree using: [ :asso| asso value ].
b labelShape text: #key.
b bezier color: (Color purple alpha: 0.5).
b useBezierlineWith: [ :asso | relations at: asso key ].
b build.

^ b view.


