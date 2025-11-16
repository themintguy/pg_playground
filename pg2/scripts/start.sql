CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    description_course VARCHAR(500),
    published_date date
)