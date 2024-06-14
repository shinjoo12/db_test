CREATE TABLE users (
    user_no INT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    user_address VARCHAR(255),
    user_phone VARCHAR(20),
    user_status VARCHAR(20)
);

CREATE TABLE books (
    book_code INT PRIMARY KEY,
    book_title VARCHAR(255) NOT NULL,
    book_quantity INT,
    book_status VARCHAR(20)
);

CREATE TABLE rentals (
    rental_id INT PRIMARY KEY AUTO_INCREMENT,
    user_no INT,
    book_code INT,
    rental_date DATE,
    FOREIGN KEY (user_no) REFERENCES users(user_no),
    FOREIGN KEY (book_code) REFERENCES books(book_code)
);


select * from users

SELECT b.book_title
FROM books b
JOIN rentals r ON b.book_code = r.book_code
WHERE r.user_no = 2;