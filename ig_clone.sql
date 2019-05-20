DROP database ig_clone;
CREATE DATABASE ig_clone;
USE ig_clone;

create table users(
id INTEGER auto_increment primary key,
username varchar(255) unique not NULL,
created_at TIMESTAMP DEFAULT now()
);

create table photo(
id INTEGER auto_increment primary key,
image_url VARCHAR(255) NOT NULL,
user_id INTEGER NOT NULL,
create_at TIMESTAMP DEFAULT NOW(),
foreign key(user_id) references users(id)
);
create table comments(
	id INTEGER auto_increment primary key,
    comment_text VARCHAR(255) NOT NULL,
    user_id INTEGER NOT NULL,
    photo_id integer NOT NULL,
    create_at timestamp default now(),
    FOREIGN key(user_id) references users(id),
    foreign key(photo_id) references photo(id)
);
CREATE table likes(
	user_id integer not null,
    photo_id integer not null,
    create_at timestamp default now(),
    foreign key(user_id) references users(id),
    foreign key(photo_id) references photo(id),
    primary key(user_id, photo_id)
);
CREATE TABLE follows(
	follower_id integer not null,
    followee_id integer not null,
    create_at timestamp default now(),
    foreign key (follower_id) references user(id),
    foreign key (followee_id) references user(id),
    primary key(follower_id, followee_id)
);
create table tags(
	id integer auto_increment primary key,
    tag_name varchar(255) unique,
	create_at timestamp default now()
);
create table photo_tags(
photo_id integer not NUll,
tag_id integer not null,
foreign key(photo_id) references photos(id),
foreign key(tag_id) references tags(id),
primary key( photo_id, tag_id)
);


