generated
scan108X1X1
	self recordMatch: #(40 49).
	self step.
	currentCharacter == $l
		ifTrue:
			[ ^ self scan108X1X1X1 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ currentCharacter between: $m and: $z ] ] ] ] ])
		ifTrue: [ ^ self scan85 ].
	^ self scan108X1X1X3