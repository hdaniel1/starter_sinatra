# Objectives
- Build a Sinatra CRUD app consisting of at least two related models

## Deliverables

- Build out full CRUD functionality for at least two related models
- At least one of the models should have a way to create its associated model at the same time (e.g., provide a way for a person to create an Author and their books at the same time)

## Models
-Movies
	Attributes:
	1) Title
	2) Description
	3) Genre
	4) Release Date
	5) Run time
-Actors
	1) Name
	2) Actor Name
-Character (J)
	1) Movie_ID (FK)
	2) Actor_ID (FK)
	3) Character_name
-Movie > Actors = N:N
