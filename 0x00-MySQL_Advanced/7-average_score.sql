--script that creates a stored procedure ComputeAverageScoreForUser
--computes and store the average score for a student. Note: An average score can be a decimal
DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
DELIMITER $$
CREATE PROCEDURE ComputeAverageScoreForUser(IN user_id INT)
BEGIN
DECLARE avg_score FLOAT;
SELECT AVG(score) INTO avg_score FROM corrections c WHERE c.user_id=user_id;
UPDATE users
       SET average_Score = avg_score
       WHERE id=user_id;
END;
$$
