generated
scan122
	self recordMatch: #(43 53).
	self step.
	currentCharacter == $b
		ifTrue:
			[ ^ self scan122X1 ].
	currentCharacter == $u
		ifTrue: [ ^ self scan123 ].
	currentCharacter == $v
		ifTrue: [ ^ self scan125 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ ('_a' includes: currentCharacter)
								or: [ (currentCharacter between: $c and: $t)
										or: [ (currentCharacter between: $w and: $z)
												or: [ currentCharacter = (Character value: 230) ] ] ] ] ] ])
		ifTrue: [ ^ self scan100 ].
	^ self scan122X3