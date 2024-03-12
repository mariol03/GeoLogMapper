create table Apache2Logs (
	ip varchar(15),
	datetime varchar(20),
	msg varchar(2000)
);

create table geolocatedips (
	ipaddr varchar(15),
	country varchar(50),
	latitude varchar(25),
	longitude varchar(25),
	countryCode varchar(2)
);

create table countriesISO3166 (
	countryNameEnglish varchar(50),
	countryCode2 varchar(2),
	countryCode3 varchar(3)
);

create table testing (logs varchar(2000));

create view countries as 
select cn.countryCode3 as country, COUNT(DISTINCT ips.ipaddr) as "differentIPs", COUNT(ips.ipaddr) as "timesFromCountry"
from geolocatedips ips inner join countriesISO3166 cn 
on ips.countrycode = cn.countryCode2
GROUP BY ips.country;

INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Afghanistan','AF','AFG'),
	 ('Åland Islands','AX','ALA'),
	 ('Albania','AL','ALB'),
	 ('Algeria','DZ','DZA'),
	 ('American Samoa','AS','ASM'),
	 ('Andorra','AD','AND'),
	 ('Angola','AO','AGO'),
	 ('Anguilla','AI','AIA'),
	 ('Antarctica','AQ','ATA'),
	 ('Antigua and Barbuda','AG','ATG');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Argentina','AR','ARG'),
	 ('Armenia','AM','ARM'),
	 ('Aruba','AW','ABW'),
	 ('Australia','AU','AUS'),
	 ('Austria','AT','AUT'),
	 ('Azerbaijan','AZ','AZE'),
	 ('Bahamas (the)','BS','BHS'),
	 ('Bahrain','BH','BHR'),
	 ('Bangladesh','BD','BGD'),
	 ('Barbados','BB','BRB');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Belarus','BY','BLR'),
	 ('Belgium','BE','BEL'),
	 ('Belize','BZ','BLZ'),
	 ('Benin','BJ','BEN'),
	 ('Bermuda','BM','BMU'),
	 ('Bhutan','BT','BTN'),
	 ('Bolivia (Plurinational State of)','BO','BOL'),
	 ('Bonaire
 Sint Eustatius
 Saba','BQ','BES'),
	 ('Bosnia and Herzegovina','BA','BIH'),
	 ('Botswana','BW','BWA');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Bouvet Island','BV','BVT'),
	 ('Brazil','BR','BRA'),
	 ('British Indian Ocean Territory (the)','IO','IOT'),
	 ('Brunei Darussalam','BN','BRN'),
	 ('Bulgaria','BG','BGR'),
	 ('Burkina Faso','BF','BFA'),
	 ('Burundi','BI','BDI'),
	 ('Cabo Verde','CV','CPV'),
	 ('Cambodia','KH','KHM'),
	 ('Cameroon','CM','CMR');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Canada','CA','CAN'),
	 ('Cayman Islands (the)','KY','CYM'),
	 ('Central African Republic (the)','CF','CAF'),
	 ('Chad','TD','TCD'),
	 ('Chile','CL','CHL'),
	 ('China','CN','CHN'),
	 ('Christmas Island','CX','CXR'),
	 ('Cocos (Keeling) Islands (the)','CC','CCK'),
	 ('Colombia','CO','COL'),
	 ('Comoros (the)','KM','COM');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Congo (the Democratic Republic of the)','CD','COD'),
	 ('Congo (the)','CG','COG'),
	 ('Cook Islands (the)','CK','COK'),
	 ('Costa Rica','CR','CRI'),
	 ('Côte d''Ivoire','CI','CIV'),
	 ('Croatia','HR','HRV'),
	 ('Cuba','CU','CUB'),
	 ('Curaçao','CW','CUW'),
	 ('Cyprus','CY','CYP'),
	 ('Czechia','CZ','CZE');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Denmark','DK','DNK'),
	 ('Djibouti','DJ','DJI'),
	 ('Dominica','DM','DMA'),
	 ('Dominican Republic (the)','DO','DOM'),
	 ('Ecuador','EC','ECU'),
	 ('Egypt','EG','EGY'),
	 ('El Salvador','SV','SLV'),
	 ('Equatorial Guinea','GQ','GNQ'),
	 ('Eritrea','ER','ERI'),
	 ('Estonia','EE','EST');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Eswatini','SZ','SWZ'),
	 ('Ethiopia','ET','ETH'),
	 ('Falkland Islands (the) [Malvinas]','FK','FLK'),
	 ('Faroe Islands (the)','FO','FRO'),
	 ('Fiji','FJ','FJI'),
	 ('Finland','FI','FIN'),
	 ('France','FR','FRA'),
	 ('French Guiana','GF','GUF'),
	 ('French Polynesia','PF','PYF'),
	 ('French Southern Territories (the)','TF','ATF');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Gabon','GA','GAB'),
	 ('Gambia (the)','GM','GMB'),
	 ('Georgia','GE','GEO'),
	 ('Germany','DE','DEU'),
	 ('Ghana','GH','GHA'),
	 ('Gibraltar','GI','GIB'),
	 ('Greece','GR','GRC'),
	 ('Greenland','GL','GRL'),
	 ('Grenada','GD','GRD'),
	 ('Guadeloupe','GP','GLP');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Guam','GU','GUM'),
	 ('Guatemala','GT','GTM'),
	 ('Guernsey','GG','GGY'),
	 ('Guinea','GN','GIN'),
	 ('Guinea-Bissau','GW','GNB'),
	 ('Guyana','GY','GUY'),
	 ('Haiti','HT','HTI'),
	 ('Heard Island and McDonald Islands','HM','HMD'),
	 ('Holy See (the)','VA','VAT'),
	 ('Honduras','HN','HND');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Hong Kong','HK','HKG'),
	 ('Hungary','HU','HUN'),
	 ('Iceland','IS','ISL'),
	 ('India','IN','IND'),
	 ('Indonesia','ID','IDN'),
	 ('Iran (Islamic Republic of)','IR','IRN'),
	 ('Iraq','IQ','IRQ'),
	 ('Ireland','IE','IRL'),
	 ('Isle of Man','IM','IMN'),
	 ('Israel','IL','ISR');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Italy','IT','ITA'),
	 ('Jamaica','JM','JAM'),
	 ('Japan','JP','JPN'),
	 ('Jersey','JE','JEY'),
	 ('Jordan','JO','JOR'),
	 ('Kazakhstan','KZ','KAZ'),
	 ('Kenya','KE','KEN'),
	 ('Kiribati','KI','KIR'),
	 ('Korea (the Democratic People''s Republic of)','KP','PRK'),
	 ('Korea (the Republic of)','KR','KOR');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Kuwait','KW','KWT'),
	 ('Kyrgyzstan','KG','KGZ'),
	 ('Lao People''s Democratic Republic (the)','LA','LAO'),
	 ('Latvia','LV','LVA'),
	 ('Lebanon','LB','LBN'),
	 ('Lesotho','LS','LSO'),
	 ('Liberia','LR','LBR'),
	 ('Libya','LY','LBY'),
	 ('Liechtenstein','LI','LIE'),
	 ('Lithuania','LT','LTU');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Luxembourg','LU','LUX'),
	 ('Macao','MO','MAC'),
	 ('Madagascar','MG','MDG'),
	 ('Malawi','MW','MWI'),
	 ('Malaysia','MY','MYS'),
	 ('Maldives','MV','MDV'),
	 ('Mali','ML','MLI'),
	 ('Malta','MT','MLT'),
	 ('Marshall Islands (the)','MH','MHL'),
	 ('Martinique','MQ','MTQ');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Mauritania','MR','MRT'),
	 ('Mauritius','MU','MUS'),
	 ('Mayotte','YT','MYT'),
	 ('Mexico','MX','MEX'),
	 ('Micronesia (Federated States of)','FM','FSM'),
	 ('Moldova (the Republic of)','MD','MDA'),
	 ('Monaco','MC','MCO'),
	 ('Mongolia','MN','MNG'),
	 ('Montenegro','ME','MNE'),
	 ('Montserrat','MS','MSR');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Morocco','MA','MAR'),
	 ('Mozambique','MZ','MOZ'),
	 ('Myanmar','MM','MMR'),
	 ('Namibia','NA','NAM'),
	 ('Nauru','NR','NRU'),
	 ('Nepal','NP','NPL'),
	 ('Netherlands, Kingdom of the','NL','NLD'),
	 ('New Caledonia','NC','NCL'),
	 ('New Zealand','NZ','NZL'),
	 ('Nicaragua','NI','NIC');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Niger (the)','NE','NER'),
	 ('Nigeria','NG','NGA'),
	 ('Niue','NU','NIU'),
	 ('Norfolk Island','NF','NFK'),
	 ('North Macedonia','MK','MKD'),
	 ('Northern Mariana Islands (the)','MP','MNP'),
	 ('Norway','NO','NOR'),
	 ('Oman','OM','OMN'),
	 ('Pakistan','PK','PAK'),
	 ('Palau','PW','PLW');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Palestine, State of','PS','PSE'),
	 ('Panama','PA','PAN'),
	 ('Papua New Guinea','PG','PNG'),
	 ('Paraguay','PY','PRY'),
	 ('Peru','PE','PER'),
	 ('Philippines (the)','PH','PHL'),
	 ('Pitcairn','PN','PCN'),
	 ('Poland','PL','POL'),
	 ('Portugal','PT','PRT'),
	 ('Puerto Rico','PR','PRI');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Qatar','QA','QAT'),
	 ('Réunion','RE','REU'),
	 ('Romania','RO','ROU'),
	 ('Russian Federation (the)','RU','RUS'),
	 ('Rwanda','RW','RWA'),
	 ('Saint Barthélemy','BL','BLM'),
	 ('Saint Helena
 Ascension Island
 Tristan da Cunha','SH','SHN'),
	 ('Saint Kitts and Nevis','KN','KNA'),
	 ('Saint Lucia','LC','LCA'),
	 ('Saint Martin (French part)','MF','MAF');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Saint Pierre and Miquelon','PM','SPM'),
	 ('Saint Vincent and the Grenadines','VC','VCT'),
	 ('Samoa','WS','WSM'),
	 ('San Marino','SM','SMR'),
	 ('Sao Tome and Principe','ST','STP'),
	 ('Saudi Arabia','SA','SAU'),
	 ('Senegal','SN','SEN'),
	 ('Serbia','RS','SRB'),
	 ('Seychelles','SC','SYC'),
	 ('Sierra Leone','SL','SLE');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Singapore','SG','SGP'),
	 ('Sint Maarten (Dutch part)','SX','SXM'),
	 ('Slovakia','SK','SVK'),
	 ('Slovenia','SI','SVN'),
	 ('Solomon Islands','SB','SLB'),
	 ('Somalia','SO','SOM'),
	 ('South Africa','ZA','ZAF'),
	 ('South Georgia and the South Sandwich Islands','GS','SGS'),
	 ('South Sudan','SS','SSD'),
	 ('Spain','ES','ESP');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Sri Lanka','LK','LKA'),
	 ('Sudan (the)','SD','SDN'),
	 ('Suriname','SR','SUR'),
	 ('Svalbard
 Jan Mayen','SJ','SJM'),
	 ('Sweden','SE','SWE'),
	 ('Switzerland','CH','CHE'),
	 ('Syrian Arab Republic (the)','SY','SYR'),
	 ('Taiwan (Province of China)','TW','TWN'),
	 ('Tajikistan','TJ','TJK'),
	 ('Tanzania, the United Republic of','TZ','TZA');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Thailand','TH','THA'),
	 ('Timor-Leste','TL','TLS'),
	 ('Togo','TG','TGO'),
	 ('Tokelau','TK','TKL'),
	 ('Tonga','TO','TON'),
	 ('Trinidad and Tobago','TT','TTO'),
	 ('Tunisia','TN','TUN'),
	 ('Türkiye','TR','TUR'),
	 ('Turkmenistan','TM','TKM'),
	 ('Turks and Caicos Islands (the)','TC','TCA');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Tuvalu','TV','TUV'),
	 ('Uganda','UG','UGA'),
	 ('Ukraine','UA','UKR'),
	 ('United Arab Emirates (the)','AE','ARE'),
	 ('United Kingdom of Great Britain and Northern Ireland (the)','GB','GBR'),
	 ('United States Minor Outlying Islands (the)','UM','UMI'),
	 ('United States of America (the)','US','USA'),
	 ('Uruguay','UY','URY'),
	 ('Uzbekistan','UZ','UZB'),
	 ('Vanuatu','VU','VUT');
INSERT INTO pythontests.countriesISO3166 (countryNameEnglish,countryCode2,countryCode3) VALUES
	 ('Venezuela (Bolivarian Republic of)','VE','VEN'),
	 ('Viet Nam','VN','VNM'),
	 ('Virgin Islands (British)','VG','VGB'),
	 ('Virgin Islands (U.S.)','VI','VIR'),
	 ('Wallis and Futuna','WF','WLF'),
	 ('Western Sahara','EH','ESH'),
	 ('Yemen','YE','YEM'),
	 ('Zambia','ZM','ZMB'),
	 ('Zimbabwe','ZW','ZWE');
