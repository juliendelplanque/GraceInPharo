generated
scan129X1X1
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $r
		ifTrue:
			[ ^ self scan129X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $q)
										or: [ (currentCharacter between: $s and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan129X1X1X3