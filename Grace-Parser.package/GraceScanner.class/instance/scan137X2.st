generated
scan137X2
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $a
		ifTrue:
			[ ^ self scan137X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $b and: $z)
										or: [ currentCharacter = (Character value: 230) ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan137X2X2