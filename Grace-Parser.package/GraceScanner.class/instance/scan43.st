generated
scan43
	self recordMatch: #(39 49).
	self step.
	currentCharacter == $\
		ifTrue: [ ^ self scan21 ].
	currentCharacter == $]
		ifTrue: [ ^ self scan27 ].
	currentCharacter == $l
		ifTrue:
			[ ^ self scan43X1 ].
	currentCharacter == $o
		ifTrue: [ ^ self scan44 ].
	(currentCharacter == $'
		or: [ (currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_
								or: [ (currentCharacter between: $a and: $k)
										or: [ (currentCharacter between: $m and: $n)
												or: [ currentCharacter between: $p and: $z ] ] ] ] ] ])
		ifTrue: [ ^ self scan39 ].
	^ self scan43X2