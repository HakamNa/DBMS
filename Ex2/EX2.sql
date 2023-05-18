--> Hakam Nabulssi_207710443 
--> Helena Kahlilieh_322653080

CREATE TABLE IF NOT EXISTS Programmer (
  id INTEGER PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  education VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Team (
  name VARCHAR(100) PRIMARY KEY NOT NULL
);

CREATE TABLE IF NOT EXISTS Project (
  name VARCHAR(100) PRIMARY KEY NOT NULL,
  client VARCHAR(50),
  deadline DATE
);

CREATE TABLE IF NOT EXISTS Bug (
  bugDate DATE NOT NULL,
  description VARCHAR(200) NOT NULL,
  solved INTEGER NOT NULL,
  PRIMARY KEY (bugDate, description)
);

CREATE TABLE IF NOT EXISTS Work_at (
  role VARCHAR(50),
  team_name VARCHAR(100) NOT NULL,
  programmer_id INTEGER NOT NULL,
  FOREIGN KEY (team_name) REFERENCES Team(name),
  FOREIGN KEY (programmer_id) REFERENCES Programmer(id),
  PRIMARY KEY (team_name, programmer_id)
);

CREATE TABLE IF NOT EXISTS Develop (
  hours REAL,
  team_name VARCHAR(100) NOT NULL,
  project_name VARCHAR(100) NOT NULL,
  FOREIGN KEY (team_name) REFERENCES Team(name),
  FOREIGN KEY (project_name) REFERENCES Project(name),
  PRIMARY KEY (team_name, project_name)
); 


