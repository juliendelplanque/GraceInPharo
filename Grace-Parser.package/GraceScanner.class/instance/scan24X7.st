generated
scan24X7
	self recordMatch: #(42 53).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $a
		ifTrue: [ ^ self scan24X7X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $b and: $z)
										or: [ currentCharacter = (Character value: 230) ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan24X7X2