generated
scan83X1
	self recordMatch: #(42 53).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $b
		ifTrue:
			[ ^ self scan83X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ (currentCharacter between: $c and: $z)
										or: [ currentCharacter = (Character value: 230) ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan83X1X2