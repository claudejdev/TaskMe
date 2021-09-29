CREATE DATABASE taskme;

CREATE TABLE users (
  idUser int(11) NOT NULL,
  fname varchar(60) NOT NULL,
  `name` varchar(60) NOT NULL,
  isAdmin tinyint(1) NOT NULL
);
CREATE TABLE tasks (
  idTask int(11) NOT NULL,
  `user` int(11) NOT NULL,
  what varchar(60) NOT NULL,
  `status` varchar(1) NOT NULL,
  time_creation TIME NOT NULL,
  time_start TIME NOT NULL,
  time_done TIME NOT NULL,
  repeating tinyint(1) NOT NULL
);
ALTER TABLE users
  ADD PRIMARY KEY (idUser),
  MODIFY idUser int(11) NOT NULL AUTO_INCREMENT;
ALTER TABLE tasks
  ADD PRIMARY KEY (idTask),
  MODIFY idTask int(11) NOT NULL AUTO_INCREMENT,
  ADD CONSTRAINT FK_TaskUser FOREIGN KEY (user) REFERENCES users(idUser);
INSERT INTO users (idUser,fname, name, isAdmin) VALUES (default,'Ben', 'Wyatt', 1);
INSERT INTO tasks (idTask, user, what, status, time_creation, time_start, time_done, repeating) VALUES
(default, LAST_INSERT_ID(), 'Manage the day', '0', now(), '', '', 0);
INSERT INTO users (idUser,fname, name, isAdmin) VALUES (default,'Leslie', 'Knope', 0);
INSERT INTO tasks (idTask, user, what, status, time_creation, time_start, time_done, repeating) VALUES
(default, LAST_INSERT_ID(), 'Kickass', '0', now(), '', '', 0);