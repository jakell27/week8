DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS project_category;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS project;

CREATE TABLE project (
  project_id INT primary key NOT NULL,
  project_name TEXT NOT NULL,
  estimated_hours INT, 
  actual_hours INT,
  difficulty TEXT,
  noes TEXT
);

CREATE TABLE category (
  category_id INT AUTO_INCREMENT NOT NULL,
  category_name TEXT NOT NULL
);

CREATE TABLE material (
  material_id INT primary key NOT NULL,
  project_id foreign key NOT NULL,
  material_name NOT null,
  num_required int,
  cost int
);

CREATE TABLE project_category (
  project_id INT NOT NULL,
  category_id INT NOT NULL
);

CREATE TABLE step (
  step_id INT primary key NOT NULL,
  project_id INT NOT NULL,
  step_order INT NOT NULL,
  step_text TEXT NOT NULL
);

