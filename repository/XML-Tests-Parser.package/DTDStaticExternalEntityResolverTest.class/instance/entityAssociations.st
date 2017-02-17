accessing
entityAssociations
	^ Array
		with: 'extern.dtd' -> '<!ENTITY extern SYSTEM "extern/extern.ent">'
		with: 'extern/extern.ent' -> '<!ENTITY extern SYSTEM "extern2.ent">'
		with: 'extern/extern2.ent' -> '<!ELEMENT test ANY>'