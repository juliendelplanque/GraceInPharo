generated
scan137X1
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $b
		ifTrue:
			[ ^ self scan137X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ (currentCharacter between: $c and: $z)
										or: [ currentCharacter = (Character value: 230) ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan137X1X3