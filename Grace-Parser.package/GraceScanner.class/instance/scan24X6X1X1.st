generated
scan24X6X1X1
	self recordMatch: #(31 42 53).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $z)
										or: [ currentCharacter = (Character value: 230) ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan24X6X1X1X1