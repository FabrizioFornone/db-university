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
    `students`.`surname` AS `Surname`,
    `students`.`name` AS `Name`,
    `degrees`.`name` AS `Degree`,
    `degrees`.`level` AS `Level`,
    `departments`.`name` AS `Departments`
FROM
    `students`
    INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
    INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
ORDER BY
    `students`.`surname`,
    `students`.`name`;

-- 5° query
SELECT
    `degrees`.`name` AS `Degree`,
    `courses`.`name` AS `Course`,
    `teachers`.`name` `Name`,
    `teachers`.`surname` `Surname`
FROM
    `degrees`
    JOIN `courses` ON `degrees`.`id` = `courses`.`degree_id`
    JOIN `course_teacher` ON `courses`.`id` = `course_teacher`.`course_id`
    JOIN `teachers` ON `course_teacher`.`teacher_id` = `teachers`.`id`;

-- 6° query
SELECT
    DISTINCT `teachers`.`name`,
    `teachers`.`surname`,
    `departments`.`name`
FROM
    `teachers`
    JOIN `course_teacher` ON `teachers`.`id` = `course_teacher`.`teacher_id`
    JOIN `courses` ON `course_teacher`.`course_id` = `courses`.`id`
    JOIN `degrees` ON `courses`.`degree_id` = `degrees`.`id`
    JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
WHERE
    `departments`.`name` LIKE '%mate%';