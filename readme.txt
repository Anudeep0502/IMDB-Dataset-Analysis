Below is the link to our data source:
https://datasets.imdbws.com/

From this link we used 6 datasets namely:
name.basics.tsv.gz
title.basics.tsv..gz
title.crew.tsv.gz
title.episode.tsv.gz
title.principals.tsv.gz
title.ratings.tsv.gz

Also, we have used copy command to import the data into the database:
COPY name_basics FROM '(insert the datafiles path) D:\SEMESTER 2\DMQL\Project\Milestone 2\Project_Milestone_2' DELIMITER ',' CSV HEADER;
COPY title_crew FROM '(insert the datafiles path) D:\SEMESTER 2\DMQL\Project\Milestone 2\Project_Milestone_2' DELIMITER ',' CSV HEADER;
COPY title_ratings FROM '(insert the datafiles path) D:\SEMESTER 2\DMQL\Project\Milestone 2\Project_Milestone_2' DELIMITER ',' CSV HEADER;
COPY title_principals FROM '(insert the datafiles path) D:\SEMESTER 2\DMQL\Project\Milestone 2\Project_Milestone_2' DELIMITER ',' CSV HEADER;
COPY title_episode FROM '(insert the datafiles path) D:\SEMESTER 2\DMQL\Project\Milestone 2\Project_Milestone_2' DELIMITER ',' CSV HEADER;
COPY title_bacis FROM '(insert the datafiles path) D:\SEMESTER 2\DMQL\Project\Milestone 2\Project_Milestone_2' DELIMITER ',' CSV HEADER;

