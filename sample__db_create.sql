CREATE TABLE course
(
  crn   INT     NOT NULL,
  title varchar NOT NULL,
  PRIMARY KEY (crn)
);

CREATE TABLE student 
(
  uid        INT     NOT NULL,
  first_name varchar NOT NULL,
  PRIMARY KEY (uid)
);

CREATE TABLE student_course
(
  uid INT NOT NULL,
  crn INT NOT NULL,
  PRIMARY KEY (uid)
);

ALTER TABLE student_course
  ADD CONSTRAINT FK_student _TO_student_course
    FOREIGN KEY (uid)
    REFERENCES student  (uid);

ALTER TABLE student_course
  ADD CONSTRAINT FK_course_TO_student_course
    FOREIGN KEY (crn)
    REFERENCES course (crn);