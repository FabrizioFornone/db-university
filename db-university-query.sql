-- 1° query
SELECT
    *
FROM
    `students`
WHERE
    YEAR(`date_of_birth`) = '1990' -- 2° query
SELECT
    *
FROM
    `courses`
WHERE
    `cfu` > '10';

-- 3° query
SELECT
    *
FROM
    `students`
WHERE
    YEAR(CURRENT_DATE) - YEAR(`date_of_birth`) > 30
ORDER BY
    `date_of_birth` DESC -- 4° query
SELECT
    *
FROM
    `courses`
WHERE
    `period` = 'I semestre'
    AND `year` = '1';

-- 5° query
SELECT
    *
FROM
    `exams`
WHERE
    `hour` > '14:00:00'
    AND `date` = '2020-06-20';

-- 6° query
SELECT
    *
FROM
    `degrees`
WHERE
    `level` = 'magistrale';

-- 7° query
SELECT
    COUNT(`id`)
FROM
    `departments`;

-- 8° query
SELECT
    COUNT(`phone`)
FROM
    `teachers`;