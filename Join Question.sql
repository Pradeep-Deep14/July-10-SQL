CREATE TABLE t1(c1 INT);


CREATE TABLE t2(c2 VARCHAR);


INSERT INTO t1
VALUES
(4),
(6),
(7),
(9),
(3),
(9);


INSERT INTO t2
VALUES
(1),
(5),
(9),
(2),
(2),
(11);


SELECT * FROM t1
SELECT * FROM t2


--LEFT JOIN

SELECT t1.c1
FROM t1
LEFT JOIN t2 ON t1.c1 = CAST(t2.c2 AS INT);
