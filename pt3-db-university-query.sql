-- 1° query
SELECT
    *
FROM
    `students`
    INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
WHERE
    `degrees`.`name` LIKE '%economia%';

-- 2° query
SELECT
    *
FROM
    `courses`
    INNER JOIN `departments` ON `courses`.`id` = `departments`.`id`
WHERE
    `departments`.`name` LIKE '%neuro%';

-- 3° query
SELECT
    *
FROM
    `students`
    INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
    INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
ORDER BY
    `students`.`surname`;