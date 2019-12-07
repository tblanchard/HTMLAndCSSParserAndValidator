Class {
	#name : #CSSComment,
	#superclass : #CSSElement,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSComment >> isAtImportRule [

	^false
]

{ #category : #'as yet unclassified' }
CSSComment >> parseContents: aStream [

	aStream skip: 2.
	[aStream atEnd] whileFalse:
	[
		(aStream peek = $* and: [aStream next. aStream peek = $/]) ifTrue:
		[
			aStream next.
			^self end: aStream position.
		]
		ifFalse:
		[
			aStream next = $\ ifTrue: [aStream next].
		]
	].
	self end: aStream position.
]

{ #category : #'as yet unclassified' }
CSSComment >> tag [

	^'comment'
]
