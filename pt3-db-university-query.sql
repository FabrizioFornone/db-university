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
    `degrees`
    INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
WHERE
    `departments`.`name` LIKE '%neuro%';

-- 3° query
SELECT
    `teachers`.`name`,
    `teachers`.`surname`,
    `courses`.`name`
FROM
    `teachers`
    INNER JOIN `course_teacher` ON `teachers`.`id` = `course_teacher`.`teacher_id`
    INNER JOIN `courses` ON `course_teacher`.`course_id` = `courses`.`id`
WHERE
    `teachers`.`id` = '44';

-- 4° query
SELECT
    `students`.`surname`,
    `students`.`name`,
    `degrees`.`name`,
    `degrees`.`level`,
    `departments`.`name`
FROM
    `students`
    INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
    INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
ORDER BY
    `students`.`surname`,
    `students`.`name`;