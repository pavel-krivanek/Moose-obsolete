rendering
render: aWizardPane

	|tmpPanelMorph tmpCellMorph|
	tmpPanelMorph := PanelMorph new
						hResizing: #spaceFill;
						vResizing: #spaceFill;
						fillStyle: Color transparent; 
						changeTableLayout;
						yourself.  
	self wizardPane: aWizardPane.
	self wizardPane failingConditions do: [:aString |
		|tmpText|
		tmpText := ('*',aString) asText. 
		tmpText addAttribute: (TextColor new color: Color red; yourself) from: 1 to: tmpText size.
		tmpPanelMorph addMorphBack: tmpText asMorph
		].
	tmpCellMorph := self wizardPane mainPaneLine renderOnMerlinRenderer: self.
	tmpPanelMorph addMorphBack:  tmpCellMorph.
	self dialogWindow  contentMorph: tmpPanelMorph.
	self applyChanges.
	self displayButtons.
	self setName.
	^ self dialogWindow. 