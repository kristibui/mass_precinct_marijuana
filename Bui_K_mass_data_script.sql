CREATE TABLE municipality (
  Municipality TEXT PRIMARY KEY,
  `Type` TEXT,
  County TEXT,
  `Per Capita Income` INTEGER,
  `Median Household Income` INTEGER,
  `Median Family Income` INTEGER,
  Population INTEGER,
  `# of Households` INTEGER
);

CREATE TABLE debt (
  Municipality TEXT,
    `Total Outstanding Debt - 2016` INTEGER,
  FOREIGN KEY (Municipality) REFERENCES municipality(Municipality)
);

CREATE TABLE crime (
  Municipality TEXT,
  `Violent Crime Rate - 2017`INTEGER,
  FOREIGN KEY (Municipality) REFERENCES municipality(Municipality)
);

CREATE TABLE revenue (
  Municipality TEXT,
  `Per Capita Revenue` INTEGER,
  FOREIGN KEY (Municipality) REFERENCES municipality(Municipality)
);

CREATE TABLE taxes (
  Municipality TEXT,
  `Tax Rate - 2017` REAL,
  FOREIGN KEY (Municipality) REFERENCES municipality(Municipality)
);

CREATE TABLE education (
  Municipality TEXT,
  `Education Spending Per Capita - 2015` INTEGER,
  FOREIGN KEY (Municipality) REFERENCES municipality(Municipality)
);

CREATE TABLE ballot (
  Municipality TEXT,
  Yes TEXT,
  No TEXT,
  `Voted Yes?` INTEGER,
  FOREIGN KEY (Municipality) REFERENCES municipality(Municipality)
);

.mode csv
.import med_household_database.csv municipality
.import outstanding_debt_database.csv debt
.import crime_rate_database.csv crime
.import revenue_database.csv revenue
.import tax_rates_database.csv taxes
.import education_spending_database.csv education
.import ballot_4_database.csv ballot
