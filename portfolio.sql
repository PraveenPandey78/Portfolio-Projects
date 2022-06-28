select *
from covidvaccination
order by 3,4;


select *
from coviddeaths;

select location,date,total_cases,new_cases,total_deaths,population
from coviddeaths
order by 1,2;


-- likelihood of dying if contract covid
select location,date,total_cases,total_deaths, (total_deaths/total_cases) *100 AS percent_deaths
from coviddeaths
where location = 'India'
order by 1,2;

-- looking at total cases vs population
 select location,date,total_cases,population, (total_cases/population) *100 AS percent_cases
from coviddeaths
where location = 'India'
order by 1,2;

-- looking at countries with highest infection rate w.r.t. population
select location,population, MAX(total_cases) AS max_cases, MAX((total_cases/population)) *100 AS max_percent_cases
from coviddeaths
GROUP BY population,location
order by max_percent_cases DESC;

-- showing countries with highest death count per population
select location, MAX(cast(total_deaths as int)) AS max_deaths
from coviddeaths
where continent is not null
GROUP BY location
order by max_deaths DESC;

-- LET'S BREAK THINGS DOWN BY CONTINENT

select location, MAX(cast(total_deaths as int)) AS max_deaths
from coviddeaths
where continent is not null
GROUP BY location
order by max_deaths DESC;

SELECT cast(date as date) AS date
from coviddeaths


