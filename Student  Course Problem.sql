CREATE TABLE student_batch (
    StudentID INT,
    CourseID INT,
    EnrollmentYear INT
);


INSERT INTO student_batch (StudentID, CourseID, EnrollmentYear) VALUES
(1, 101, 2019),
(1, 102, 2019),
(1, 103, 2019),
(1, 104, 2019),
(1, 105, 2019),
(1, 106, 2019),
(1, 107, 2019),
(1, 108, 2019),
(1, 109, 2019),
(1, 110, 2019),
(2, 101, 2019),
(2, 102, 2019),
(2, 103, 2019),
(2, 104, 2019),
(2, 105, 2019),
(2, 106, 2019),
(2, 107, 2019),
(2, 108, 2019),
(2, 109, 2019),
(2, 110, 2019),
(3, 101, 2019),
(3, 102, 2019),
(3, 103, 2019),
(3, 104, 2019),
(3, 105, 2019),
(3, 106, 2019),
(3, 107, 2019),
(3, 108, 2019),
(4, 101, 2019),
(4, 102, 2019),
(4, 103, 2019),
(4, 104, 2019),
(4, 105, 2019),
(4, 106, 2019),
(4, 107, 2019),
(4, 108, 2019),
(4, 109, 2019),
(1, 105, 2020),
(1, 106, 2020),
(3, 107, 2020),
(4, 108, 2019),
(4, 109, 2020),
(2, 106, 2020),
(1, 107, 2020),
(4, 110, 2020),
(4, 111, 2020);

SELECT * FROM STUDENT_BATCH

-- studentid, count courseid 
-- group by 1
-- filter 2019
-- total d course count of 2019
-- compare 1 = 2

SELECT 
	STUDENTID FROM STUDENT_BATCH 
	WHERE ENROLLMENTYEAR = 2019
	GROUP BY STUDENTID
	HAVING COUNT(DISTINCT courseid)=
(SELECT COUNT(DISTINCT(COURSEID))FROM STUDENT_BATCH WHERE ENROLLMENTYEAR=2019)