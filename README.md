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
-Characters
	1) Movie ID (Foreign Key)
	2) Name
	3) Actor Name
-Movie > Character = 1:N