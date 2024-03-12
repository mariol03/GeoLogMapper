TYPE=VIEW
query=select `cn`.`countryCode3` AS `country`,count(distinct `ips`.`ipaddr`) AS `differentIPs`,count(`ips`.`ipaddr`) AS `timesFromCountry` from (`pythontests`.`geolocatedips` `ips` join `pythontests`.`countriesISO3166` `cn` on(`ips`.`countryCode` = `cn`.`countryCode2`)) group by `ips`.`country`
md5=63f099216e3741121f35d38ae03ade9a
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=0001710233675611290
create-version=2
source=select cn.countryCode3 as country, COUNT(DISTINCT ips.ipaddr) as "differentIPs", COUNT(ips.ipaddr) as "timesFromCountry"\nfrom geolocatedips ips inner join countriesISO3166 cn \non ips.countrycode = cn.countryCode2\nGROUP BY ips.country
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `cn`.`countryCode3` AS `country`,count(distinct `ips`.`ipaddr`) AS `differentIPs`,count(`ips`.`ipaddr`) AS `timesFromCountry` from (`pythontests`.`geolocatedips` `ips` join `pythontests`.`countriesISO3166` `cn` on(`ips`.`countryCode` = `cn`.`countryCode2`)) group by `ips`.`country`
mariadb-version=110302
