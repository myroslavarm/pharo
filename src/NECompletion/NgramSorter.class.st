"
A sorting strategy with the help of an n-gram model.
"
Class {
	#name : #NgramSorter,
	#superclass : #CompletionSorter,
	#category : #'NECompletion-New'
}

{ #category : #description }
NgramSorter class >> kind [

	^ 'ngram'
]

{ #category : #description }
NgramSorter class >> sortCompletionList: aList basedOn: aContext [

	^ aList sorted.
]
