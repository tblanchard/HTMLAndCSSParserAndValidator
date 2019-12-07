Class {
	#name : #CSSAttributeEqualsSelector,
	#superclass : #CSSAttributeSelector,
	#category : #'HTML-CSS'
}

{ #category : #'as yet unclassified' }
CSSAttributeEqualsSelector >> matches: aNode [

	| attr |

	attr := self privateAttributeKeyInNode: aNode.

	^attr isNil 
		ifFalse: [(aNode attributes at: attr) unquoted = self value unquoted]
		ifTrue: [false]
]

{ #category : #'as yet unclassified' }
CSSAttributeEqualsSelector >> printOn: aStream [

	aStream nextPut: $[;
	 nextPutAll: self attribute;
	 nextPut: $=;	
	 nextPut: $";
	 nextPutAll: self value;
	 nextPut: $";
	 nextPut: $]
]
