-- 1° query
SELECT
    year,
    COUNT(*) AS `Subscribers`
FROM
    `courses`
GROUP BY
    `year`;

-- 2° query
SELECT
    `office_address`,
    COUNT(*) AS `Teachers`
FROM
    `teachers`
GROUP BY
    `office_address`;

-- 3° query
SELECT
    `exam_id` AS `Exam`,
    AVG(`vote`) AS `Average`
FROM
    `exam_student`
GROUP by
    `exam_id`;

-- 4° query
SELECT
    `department_id` AS `Departments`,
    COUNT(*) AS `Number`
FROM
    `degrees`
GROUP BY
    `department_id`;