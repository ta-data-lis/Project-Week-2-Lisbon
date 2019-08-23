#How many people live in Berlin? In millions
SELECT SUM(haufigkeit)/1000000
FROM population;

#Total of eligible voters in Berlin? In millions
SELECT SUM(wahlberechtigte)/1000000 AS Eligible_Voters
FROM elections;

#Total of valid votes in Berlin? In millions
SELECT SUM(gueltig)/1000000 AS Actual_Voters
FROM elections;

#German (D) and non_german (A) living in Berlin
SELECT staatsangeh AS Nationality,
SUM(haufigkeit)/1000000 AS Population
FROM population
GROUP BY staatsangeh;

#Total of actual voters in Berlin? In millions
SELECT SUM(waehler)/1000000 AS Actual_Voters
FROM elections;

#Percentage of voters per party in Berlin
SELECT SUM(gueltig) AS TotalVoters,
SUM(AfD)/SUM(gueltig)*100 AS RightWing,
SUM(CDU)/SUM(gueltig)*100 AS Conservative,
SUM(SPD)/SUM(gueltig)*100 AS Social,
SUM(GRUNE)/SUM(gueltig)*100 AS Green,
SUM(DIE_LINKE)/SUM(gueltig)*100 AS LeftWing,
((SUM(gueltig)) - (SUM(AfD + CDU + SPD + GRUNE + DIE_LINKE)))/SUM(gueltig)*100 AS Rest
FROM elections;

#Percentage of voters in the remaining parties
SELECT ((SUM(gueltig)) - (SUM(AfD + CDU + SPD + GRUNE + DIE_LINKE))) AS Rest
FROM elections;

#total voters per party (from the 6 main parties)
SELECT SUM(wahlberechtigte) AS TotalVoters, SUM(AfD) AS RightWing, SUM(CDU) AS Conservative, SUM(SPD) AS Social, SUM(GRUNE) AS Green, SUM(DIE_LINKE) AS LeftWing
FROM elections;

#Percentage of voters per party, per district in Berlin
SELECT bezirk AS District,
SUM(AfD)/SUM(gueltig)*100 AS RightWing,
SUM(CDU)/SUM(gueltig)*100 AS Conservative,
SUM(SPD)/SUM(gueltig)*100 AS Social,
SUM(GRUNE)/SUM(gueltig)*100 AS Green,
SUM(DIE_LINKE)/SUM(gueltig)*100 AS LeftWing,
((SUM(gueltig)) - (SUM(AfD + CDU + SPD + GRUNE + DIE_LINKE)))/SUM(gueltig)*100 AS Rest
FROM elections
GROUP BY bezirk;

#Distributions of ages in Berlin.
SELECT altersgr As Age, SUM(haufigkeit) AS Population 
FROM population
GROUP BY Age;

#Distribution of ages per district (colapse in python)
SELECT bezirk AS District, SUM(haufigkeit) AS Population, altersgr As Age 
FROM population
GROUP BY District, Age;
