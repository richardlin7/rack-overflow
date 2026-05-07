use rack_overflow;

 insert into user (email, password) values
    ("a@a.com", "a"),
    ("b@b.com", "b");

insert into question (question, user_id)
values
	('How big is the rack', 1),
	('What is the color of the rack', 2);

insert into answer (answer, question_id, user_id)
values
	('Rack is thisssss big', 1, 2),
	('Blue', 2, 1);

select * from answer;