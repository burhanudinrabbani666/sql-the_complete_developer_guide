-- INSERT INTO conversation (user_name, employer_name, message)
-- VALUES ('Burhandin Rabbani', 'employed', 'Hello, World!')
INSERT INTO employers (
        company_name,
        company_address,
        yearly_revenue,
        is_hiring
    )
VALUES ('pt-pelangi', 'bongas', 100.00, true);
INSERT INTO employers (
        company_name,
        company_address,
        yearly_revenue
    )
VALUES ('pt-alfamart', 'plumbon', 100.00);
INSERT INTO employers (
        company_name,
        company_address,
        yearly_revenue
    )
VALUES ('pt-artaboga', 'prapatan', 220.00);
------------
INSERT INTO conversation (user_name, employer_name, message)
VALUES(
        'Burhanudin Rabbani',
        'pt-artaboga',
        'HI, minalaidzin walfaidzin. Mohon maaf lahir batin!'
    );
INSERT INTO conversation (user_name, employer_name, message, date_sent)
VALUES(
        'Rabbani',
        'pt-pelangi',
        'Hello, World!',
        NOW()
    );
SELECT *
FROM conversation;