*GT-InspectorExtensions-CoreRoassal
openTree
	| composer |
	composer := GLMCompositePresentation new.
	composer 
		act: [:b | b update] 
		icon: GLMUIThemeExtraIcons glamorousRefresh 
		entitled: 'Update'.
	composer tabulator with: [:t | 
		t column: #theOne.
		t transmit to: #theOne; andShow: [:a | 
			a roassal2 
				updateOn: GLMTransmissionTriggered from: [ self announcer ];
				painting: [:view :b | self viewTreeOn: view ] ]].
	composer openOn: self