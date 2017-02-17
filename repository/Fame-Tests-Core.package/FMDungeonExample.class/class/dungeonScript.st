as yet unclassified
dungeonScript

	^ [ :m | m package: 'RPG' with: [
			m class: 'Dragon' with: [
				m property: 'hoard' withMany: 'RPG.Treasure' opposite: 'keeper'.
				m property: 'killedBy' withMany: 'RPG.Hero' opposite: 'kills' ].
			m class: 'Treasure' with: [
				m property: 'keeper' with: 'RPG.Dragon' opposite: 'hoard'.
				m property: 'owner' with: 'RPG.Hero' opposite: 'talisman' ].
			m class: 'Hero' with: [
				m property: 'twin' with: 'RPG.Hero' opposite: 'twin'.
				m property: 'talisman' with: 'RPG.Treasure' opposite: 'owner'.
				m property: 'kills' withMany: 'RPG.Dragon' opposite: 'killedBy' ]]].