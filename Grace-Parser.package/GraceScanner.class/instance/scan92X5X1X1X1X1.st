generated
scan92X5X1X1X1X1
	self recordMatch: #(35 43 53).
	self step.
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter = (Character value: 230) ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan92X5X1X1X1X1X2