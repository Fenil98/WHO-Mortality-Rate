SELECT min(YEAR(year)) AS min_year, max(YEAR(year)) AS max_year , pop.Country, country_codes.name
FROM pop
INNER join country_codes ON pop.Country = country_codes.country
where YEAR(year) >= 1991 and YEAR(year) <= 2000
group by pop.country,country_codes.name
ORDER BY min_year, max_year DESC


select * from Morticd9
INNER join country_codes ON Morticd9.Country = country_codes.country
where morticd9.Country in (2450, 2090, 4080, 5020, 2150) and YEAR(year) >= 1991 and YEAR(year) <= 1997
ORDER BY Morticd9.Country, Morticd9.Year

select * from pop
INNER join country_codes ON pop.Country = country_codes.country
where pop.Country in (2450, 2090, 4080, 5020, 2150) and YEAR(year) >= 1991 and YEAR(year) <= 1997
ORDER BY pop.Country, pop.Year