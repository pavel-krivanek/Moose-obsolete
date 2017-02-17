class
modifiers
	^ ('public' asParser / 'private' asParser) optional, 'final' asParser trim optional, 'abstract' asParser trim optional