"
Topografia simple <<Leaf Composite>>
"
Class {
	#name : #TopografiaSimple,
	#superclass : #Topografia,
	#category : #'TP3-Ej3-Topografia-Model'
}

{ #category : #'private - accessing' }
TopografiaSimple >> distribucion [
	"Devuelve un codigo que representa si es tierra o agua"

	^ self proporcionDeAgua asString , self proporcionDeTierra asString
]

{ #category : #accesing }
TopografiaSimple >> proporcionDeAgua [
	^ 0
]

{ #category : #accesing }
TopografiaSimple >> proporcionDeTierra [
	^ 0
]
