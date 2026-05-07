drop database if exists rack_overflow;
create database rack_overflow;
use rack_overflow;

create table user (
    id int primary key auto_increment,
    email text NOT null,
    password text NOT null
);

create table question (
	id int primary key auto_increment,
    question varchar(200) not null,
    user_id int NOT null,
    constraint fk_question_user_id
        foreign key (user_id)
        references user(id)
);

CREATE TABLE answer (
	id int primary key auto_increment,
    answer varchar(200) not null,
    question_id int not null,  
    user_id int not null, 
    constraint fk_answer_user_id
        foreign key (user_id)
        references user(id),
    constraint fk_question_id
        foreign key (question_id)
        references question(id)
);