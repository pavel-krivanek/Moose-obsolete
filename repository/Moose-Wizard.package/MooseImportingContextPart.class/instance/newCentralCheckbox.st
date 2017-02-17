morph content setup tools
newCentralCheckbox
	"Return a checkbox telling if all the context or not has to be imported. By default, all the context is imported and this check is selected and disabled.
	It is enabled when you click on the detail button and make change on the selected items."
	centralCheckbox := (self 
		newCheckboxFor: (ValueHolder new contents: true)
		getSelected: #contents
		setSelected: #contents:
		label: 'All') disable.
	"This checkbox has to be update if all contexts are selected : "
	centralCheckbox buttonMorph
		target: self;
		actionSelector: #updateContextCheckbox;
		arguments: {   }.
	^ centralCheckbox