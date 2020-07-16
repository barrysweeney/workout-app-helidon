CREATE TABLE exercise (
    exercise_id INTEGER,
    name      VARCHAR(64),
    PRIMARY KEY (exercise_id)
);

CREATE TABLE exercise_tag (
    exercise_id INTEGER,
    tag       VARCHAR(16),
    PRIMARY KEY (exercise_id, tag)
);

INSERT INTO exercise VALUES (1, 'Pushups');
INSERT INTO exercise_tag VALUES (1, 'Chest');
INSERT INTO exercise_tag VALUES (1, 'Back');
INSERT INTO exercise_tag VALUES (1, 'Bodyweight');

INSERT INTO exercise VALUES (2, 'Pullups');
INSERT INTO exercise_tag VALUES (2, 'Back');
INSERT INTO exercise_tag VALUES (2, 'Bodyweight');

INSERT INTO exercise VALUES (3, 'Squats');
INSERT INTO exercise_tag VALUES (3, 'Legs');
INSERT INTO exercise_tag VALUES (3, 'Dumbbell');
INSERT INTO exercise_tag VALUES (3, 'Kettlebell');
INSERT INTO exercise_tag VALUES (3, 'Bodyweight');

INSERT INTO exercise VALUES (4, 'Plank');
INSERT INTO exercise_tag VALUES (4, 'Abdominal');
INSERT INTO exercise_tag VALUES (4, 'Bodyweight');

INSERT INTO exercise VALUES (5, 'Calf Raise');
INSERT INTO exercise_tag VALUES (5, 'Legs');
INSERT INTO exercise_tag VALUES (5, 'Bodyweight');
INSERT INTO exercise_tag VALUES (5, 'Kettlebell');
INSERT INTO exercise_tag VALUES (5, 'Dumbbell');

INSERT INTO exercise VALUES (6, 'Lunge');
INSERT INTO exercise_tag VALUES (6, 'Legs');
INSERT INTO exercise_tag VALUES (6, 'Bodyweight');
INSERT INTO exercise_tag VALUES (6, 'Kettlebell');
INSERT INTO exercise_tag VALUES (6, 'Dumbbell');

INSERT INTO exercise VALUES (7, 'Crunch');
INSERT INTO exercise_tag VALUES (7, 'Abdominal');
INSERT INTO exercise_tag VALUES (7, 'Bodyweight');

INSERT INTO exercise VALUES (8, 'Toe Touches');
INSERT INTO exercise_tag VALUES (8, 'Abdominal');
INSERT INTO exercise_tag VALUES (8, 'Bodyweight');

INSERT INTO exercise VALUES (9, 'Flutter Kicks');
INSERT INTO exercise_tag VALUES (9, 'Abdominal');
INSERT INTO exercise_tag VALUES (9, 'Bodyweight');

INSERT INTO exercise VALUES (10, 'Bicycle Crunch');
INSERT INTO exercise_tag VALUES (10, 'Abdominal');
INSERT INTO exercise_tag VALUES (10, 'Bodyweight');

INSERT INTO exercise VALUES (11, 'Reverse Crunch');
INSERT INTO exercise_tag VALUES (11, 'Abdominal');
INSERT INTO exercise_tag VALUES (11, 'Bodyweight');

INSERT INTO exercise VALUES (12, 'Side Plank');
INSERT INTO exercise_tag VALUES (12, 'Abdominal');
INSERT INTO exercise_tag VALUES (12, 'Bodyweight');

INSERT INTO exercise VALUES (13, 'Plank knees to elbows');
INSERT INTO exercise_tag VALUES (13, 'Abdominal');
INSERT INTO exercise_tag VALUES (13, 'Bodyweight');

INSERT INTO exercise VALUES (14, 'Diamond Pushups');
INSERT INTO exercise_tag VALUES (14, 'Chest');
INSERT INTO exercise_tag VALUES (14, 'Back');
INSERT INTO exercise_tag VALUES (14, 'Arms');
INSERT INTO exercise_tag VALUES (14, 'Bodyweight');

INSERT INTO exercise VALUES (15, 'Superman Hold');
INSERT INTO exercise_tag VALUES (15, 'Back');
INSERT INTO exercise_tag VALUES (15, 'Bodyweight');

INSERT INTO exercise VALUES (16, 'Curls');
INSERT INTO exercise_tag VALUES (16, 'Arms');
INSERT INTO exercise_tag VALUES (16, 'Dumbbell');

INSERT INTO exercise VALUES (17, 'Swings');
INSERT INTO exercise_tag VALUES (17, 'Legs');
INSERT INTO exercise_tag VALUES (17, 'Kettlebell');

INSERT INTO exercise VALUES (18, 'Rows');
INSERT INTO exercise_tag VALUES (18, 'Arms');
INSERT INTO exercise_tag VALUES (18, 'Back');
INSERT INTO exercise_tag VALUES (18, 'Dumbbell');
INSERT INTO exercise_tag VALUES (18, 'Kettlebell');

INSERT INTO exercise VALUES (19, 'Wide Pushups');
INSERT INTO exercise_tag VALUES (19, 'Chest');
INSERT INTO exercise_tag VALUES (19, 'Back');
INSERT INTO exercise_tag VALUES (19, 'Bodyweight');

INSERT INTO exercise VALUES (20, 'Single Arm Swings');
INSERT INTO exercise_tag VALUES (20, 'Legs');
INSERT INTO exercise_tag VALUES (20, 'Kettlebell');

INSERT INTO exercise VALUES (21, 'Press');
INSERT INTO exercise_tag VALUES (21, 'Chest');
INSERT INTO exercise_tag VALUES (21, 'Arms');
INSERT INTO exercise_tag VALUES (21, 'Kettlebell');
INSERT INTO exercise_tag VALUES (21, 'Dumbbell');

INSERT INTO exercise VALUES (22, 'Glute Bridges');
INSERT INTO exercise_tag VALUES (22, 'Legs');
INSERT INTO exercise_tag VALUES (22, 'Bodyweight');

INSERT INTO exercise VALUES (23, 'Mountain Climbers');
INSERT INTO exercise_tag VALUES (23, 'Legs');
INSERT INTO exercise_tag VALUES (23, 'Abdominal');
INSERT INTO exercise_tag VALUES (23, 'Bodyweight');

INSERT INTO exercise VALUES (24, 'Burpees');
INSERT INTO exercise_tag VALUES (24, 'Bodyweight');







