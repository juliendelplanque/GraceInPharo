generated
scan121X1X1X1X1
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $d
		ifTrue:
			[ ^ self scan121X1X1X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $c)
										or: [ (currentCharacter between: $e and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan121X1X1X1X1X3