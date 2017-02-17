*PetitIndent
pop
	"Restores to the previous indentation level"
"	^ [ :context | context indentStack pop ] asParser"
	^ PPPopParser new