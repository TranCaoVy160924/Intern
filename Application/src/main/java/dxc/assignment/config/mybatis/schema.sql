SET lc_messages = 'ja_JP.UTF-8';

CREATE TABLE IF NOT EXISTS members
(
   	member_id SERIAL PRIMARY KEY,
   	username varchar(255) not null,
   	email varchar(255) not null unique,
	password varchar(255) not null,
	phone_number varchar(255) not null,
	role varchar(255) not null
);

INSERT INTO members (username, email, password, phone_number, role) 
VALUES 
	('Phan Thanh Dung', 'thanhdung@gmail.com', crypt('12345678', gen_salt('bf', 10)), '0987654321', 'ROLE_EDIT'),
	('Tran Caov Vy', 'caovy@gmail.com', crypt('12345678', gen_salt('bf', 10)), '0123498765', 'ROLE_ADMIN'),
	('Dao Khac Nhien', 'dknhien@gmail.com', crypt('12345678', gen_salt('bf', 10)), '3256507861', 'ROLE_VIEW'),
	('John Smith', 'johnsmith@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555555', 'ROLE_VIEW'),
    ('Mary Johnson', 'maryjohnson@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555556', 'ROLE_VIEW'),
    ('James Brown', 'jamesbrown@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555557', 'ROLE_VIEW'),
    ('Michael Davis', 'michaeldavis@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555558', 'ROLE_VIEW'),
    ('Jennifer Wilson', 'jenniferwilson@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555559', 'ROLE_VIEW'),
    ('William Taylor', 'williamtaylor@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555560', 'ROLE_VIEW'),
    ('Linda Anderson', 'lindaanderson@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555561', 'ROLE_VIEW'),
    ('Robert Lee', 'robertlee@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555562', 'ROLE_VIEW'),
    ('Karen Hall', 'karenhall@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555563', 'ROLE_VIEW'),
    ('David Clark', 'davidclark@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555564', 'ROLE_VIEW'),
    ('Susan Turner', 'susanturner@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555565', 'ROLE_VIEW'),
    ('Richard Harris', 'richardharris@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555566', 'ROLE_VIEW'),
    ('Nancy Moore', 'nancymoore@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555567', 'ROLE_VIEW'),
    ('Charles Martin', 'charlesmartin@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555568', 'ROLE_VIEW'),
    ('Margaret Hill', 'margarethill@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555569', 'ROLE_VIEW'),
    ('Joseph King', 'josephking@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555570', 'ROLE_VIEW'),
    ('Dorothy Baker', 'dorothybaker@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555571', 'ROLE_VIEW'),
    ('Thomas Wright', 'thomaswright@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555572', 'ROLE_VIEW'),
    ('Patricia Green', 'patriciagreen@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555573', 'ROLE_VIEW'),
    ('Daniel Adams', 'danieladams@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555574', 'ROLE_VIEW'),
    ('Betty Turner', 'bettyturner@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555575', 'ROLE_VIEW'),
    ('Paul Walker', 'paulwalker@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555576', 'ROLE_VIEW'),
    ('Sarah Scott', 'sarahscott@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555577', 'ROLE_VIEW'),
    ('George White', 'georgewhite@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555578', 'ROLE_VIEW'),
    ('Karen Lewis', 'karenlewis@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555579', 'ROLE_VIEW'),
    ('Edward Anderson', 'edwardanderson@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555580', 'ROLE_VIEW'),
    ('Lisa Rodriguez', 'luisrodriguez@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555581', 'ROLE_VIEW'),
    ('William Moore', 'williammoore@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555582', 'ROLE_VIEW'),
    ('Donna Hall', 'donnahall@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555583', 'ROLE_VIEW'),
    ('Kenneth Turner', 'kennethturner@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555584', 'ROLE_VIEW'),
    ('Carol Scott', 'carolscott@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555585', 'ROLE_VIEW'),
    ('Michael Taylor', 'michaeltaylor@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555586', 'ROLE_VIEW'),
    ('Sandra Wright', 'sandrawright@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555587', 'ROLE_VIEW'),
    ('David Johnson', 'davidjohnson@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555588', 'ROLE_VIEW'),
    ('Deborah Turner', 'deborahturner@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555589', 'ROLE_VIEW'),
    ('Charles Harris', 'charlesharris@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555590', 'ROLE_VIEW'),
    ('Linda Baker', 'lindabaker@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555591', 'ROLE_VIEW'),
    ('Joseph Adams', 'josephadams@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555592', 'ROLE_VIEW'),
    ('Karen Turner', 'karenturner@example.com', crypt('12345678', gen_salt('bf', 10)), '5555555593', 'ROLE_VIEW');

SELECT member_id, username, email, password, phone_number, role FROM members