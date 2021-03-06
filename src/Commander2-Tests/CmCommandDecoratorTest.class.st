"
A LtCommandDecoratorTest is a test class for testing the behavior of LtCommandDecorator
"
Class {
	#name : #CmCommandDecoratorTest,
	#superclass : #TestCase,
	#instVars : [
		'commandToBeDecorated',
		'decorator'
	],
	#category : #'Commander2-Tests'
}

{ #category : #running }
CmCommandDecoratorTest >> setUp [
	super setUp.
	commandToBeDecorated := CmCommand new.
	
	commandToBeDecorated
		basicName: 'command for test';
		basicDescription: 'This command is only cerated for the purpose of unit tests.';
		context: Object new.
		
	decorator := CmCommandDecorator decorate: commandToBeDecorated
]

{ #category : #test }
CmCommandDecoratorTest >> testBasicName [
	self assert: decorator basicName equals: commandToBeDecorated basicName
]

{ #category : #test }
CmCommandDecoratorTest >> testContext [
	self assert: decorator context equals: commandToBeDecorated context
]

{ #category : #tests }
CmCommandDecoratorTest >> testDecorate [
	self assert: decorator class equals: CmCommandDecorator.
	self assert: decorator decoratedCommand equals: commandToBeDecorated
]

{ #category : #test }
CmCommandDecoratorTest >> testDecoratedCommand [
	self assert: decorator decoratedCommand equals: commandToBeDecorated
]

{ #category : #test }
CmCommandDecoratorTest >> testDescription [
	self assert: decorator basicDescription equals: commandToBeDecorated basicDescription
]

{ #category : #test }
CmCommandDecoratorTest >> testName [
	self assert: decorator name equals: commandToBeDecorated name
]
