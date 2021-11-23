--
-- PostgreSQL database dump
--

-- Dumped from database version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.8 (Ubuntu 12.8-0ubuntu0.20.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countries (
    id integer,
    country text,
    country_code text
);


--
-- Name: countries_short_names; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.countries_short_names (
    country_name text,
    country_code text
);


--
-- Name: languages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.languages (
    id integer,
    en_name text,
    es_name text,
    fr_name text,
    native_name text,
    speakers integer,
    lat numeric(7,4),
    long numeric(7,4),
    vulnerability_id integer
);


--
-- Name: languages_countries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.languages_countries (
    id integer,
    language_id integer,
    country_id integer
);


--
-- Name: vulnerabilities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.vulnerabilities (
    id integer,
    vulnerability text
);


--
-- Data for Name: countries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.countries (id, country, country_code) FROM stdin;
1	Italy	ITA
2	Germany	DEU
3	Denmark	DNK
4	Netherlands	NLD
5	Poland	POL
6	Russian Federation	RUS
7	Belarus	BRB
8	Latvia	LVA
9	Lithuania	LTU
10	Ukraine	UKR
11	Switzerland	CHE
12	Albania	ALB
13	Austria	AUT
14	Bosnia and Herzegovina	BIH
15	Bulgaria	BGR
16	Croatia	HRV
17	Estonia	EST
18	Finland	FIN
19	France	FRA
20	Greece	GRC
21	Hungary	HUN
22	The former Yugoslav Republic of Macedonia	MKD
23	Romania	ROU
24	United Kingdom of Great Britain and Northern Ireland	GBR
25	Slovakia	SVK
26	Slovenia	SVN
27	Czech Republic	CZE
28	Turkey	TUR
29	Serbia	SRB
30	Montenegro	MNE
31	Israel	ISR
32	India	IND
33	Belgium	BEL
34	Bolivia (Plurinational State of)	BOL
35	Nepal	NPL
36	Chile	CHL
37	Peru	PER
38	San Marino	SMR
39	Niger	NER
40	Monaco	MCO
41	Azerbaijan	AZE
42	Iran (Islamic Republic of)	IRN
43	Guatemala	GTM
44	Myanmar	MMR
45	Thailand	THA
46	Mali	MLI
47	Bangladesh	BGD
48	Spain	ESP
49	Luxembourg	LUX
50	Georgia	GEO
51	Pakistan	PAK
52	Afghanistan	AFG
53	Mexico	MEX
54	China	CHN
55	Colombia	COL
56	Venezuela (Bolivarian Republic of)	VEN
57	Iraq	IRQ
58	Jordan	JOR
59	Syrian Arab Republic	SYR
60	Armenia	ARM
61	Ecuador	ECU
62	Kyrgyzstan	KGZ
63	Mongolia	MNG
64	Nigeria	NGA
65	Libyan Arab Jamahiriya	LBY
66	Lebanon	LBN
67	Cambodia	KHM
68	Bhutan	BTN
69	Republic of Moldova	MDA
70	Panama	PAN
71	Portugal	PRT
72	Algeria	DZA
73	United States of America	USA
74	Argentina	ARG
75	Oman	OMN
76	Yemen	YEM
77	Nicaragua	NIC
78	Kenya	KEN
79	United Republic of Tanzania	TZA
80	Honduras	HND
81	Tajikistan	TJK
82	Sudan	SDN
83	Ethiopia	ETH
84	Lao People's Democratic Republic	LAO
85	Viet Nam	VNM
86	New Zealand	NZL
87	Guam (U.S.A.)	GUM
88	Faroe Islands	FRO
89	Costa Rica	CRI
90	Greenland (Kingdom of Denmark)	GRL
91	Ireland	IRL
92	Lesotho	LSO
93	Cook Islands	COK
94	Kazakhstan	KAZ
95	Senegal	SEN
96	Brazil	BRA
97	Indonesia	IDN
98	Norway	NOR
99	Sweden	SWE
100	Morocco	MAR
101	Guyana	GUY
102	Guinea-Bissau	GNB
103	Canada	CAN
104	Botswana	BWA
105		
106	Uganda	UGA
107	Malaysia	MYS
108	Egypt	EGY
109	French Polynesia (France)	PYF
110	Belize	BLZ
111	Niue	NIU
112	Guinea	GIN
113	Ghana	GHA
114	Tuvalu	TUV
115	Papua New Guinea	PNG
116	Uzbekistan	UZB
117	Chad	TCD
118	Tunisia	TUN
119	Turkmenistan	TKM
120	Japan	JPN
121	Paraguay	PRY
122	Burkina Faso	BFA
123	Central African Republic	CAF
124	Democratic Republic of the Congo	ZAI
125	Micronesia (Federated States of)	FSM
126	Nauru	NRU
127	Namibia	NAM
128	Tokelau	TKL
129	Cameroon	CMR
130	Equatorial Guinea	GNQ
131	Congo	COG
132	Gabon	GAB
133	Suriname	SUR
134	Mauritania	MRT
135	Eritrea	ERI
136	Uruguay	URY
137	Australia	AUS
138	Fiji	FJI
139	Timor-Leste	TLS
140	Angola	ANG
141	Philippines	PHL
142	French Guiana (France)	GUF
143	Benin	BEN
144	Côte d'Ivoire	CIV
145	Cyprus	CYP
146	Solomon Islands	SLB
147	New Caledonia (France)	NCL
148	Western Sahara	ESH
149	Vanuatu	VUT
150	Palau	PLW
151	Norfolk Island (Australia)	NFK
152	Sierra Leone	SLE
153	Sri Lanka	LKA
154	El Salvador	SLV
155	South Africa	ZAF
156	Pitcairn  (U.K.)	PCN
157	Togo	TGO
158	Dominica	DMA
159	Liechtenstein	LIE
160	Palestine	PSE
161	Republic of Korea	KOR
1	Italy	ITA
2	Germany	DEU
3	Denmark	DNK
4	Netherlands	NLD
5	Poland	POL
6	Russian Federation	RUS
7	Belarus	BRB
8	Latvia	LVA
9	Lithuania	LTU
10	Ukraine	UKR
11	Switzerland	CHE
12	Albania	ALB
13	Austria	AUT
14	Bosnia and Herzegovina	BIH
15	Bulgaria	BGR
16	Croatia	HRV
17	Estonia	EST
18	Finland	FIN
19	France	FRA
20	Greece	GRC
21	Hungary	HUN
22	The former Yugoslav Republic of Macedonia	MKD
23	Romania	ROU
24	United Kingdom of Great Britain and Northern Ireland	GBR
25	Slovakia	SVK
26	Slovenia	SVN
27	Czech Republic	CZE
28	Turkey	TUR
29	Serbia	SRB
30	Montenegro	MNE
31	Israel	ISR
32	India	IND
33	Belgium	BEL
34	Bolivia (Plurinational State of)	BOL
35	Nepal	NPL
36	Chile	CHL
37	Peru	PER
38	San Marino	SMR
39	Niger	NER
40	Monaco	MCO
41	Azerbaijan	AZE
42	Iran (Islamic Republic of)	IRN
43	Guatemala	GTM
44	Myanmar	MMR
45	Thailand	THA
46	Mali	MLI
47	Bangladesh	BGD
48	Spain	ESP
49	Luxembourg	LUX
50	Georgia	GEO
51	Pakistan	PAK
52	Afghanistan	AFG
53	Mexico	MEX
54	China	CHN
55	Colombia	COL
56	Venezuela (Bolivarian Republic of)	VEN
57	Iraq	IRQ
58	Jordan	JOR
59	Syrian Arab Republic	SYR
60	Armenia	ARM
61	Ecuador	ECU
62	Kyrgyzstan	KGZ
63	Mongolia	MNG
64	Nigeria	NGA
65	Libyan Arab Jamahiriya	LBY
66	Lebanon	LBN
67	Cambodia	KHM
68	Bhutan	BTN
69	Republic of Moldova	MDA
70	Panama	PAN
71	Portugal	PRT
72	Algeria	DZA
73	United States of America	USA
74	Argentina	ARG
75	Oman	OMN
76	Yemen	YEM
77	Nicaragua	NIC
78	Kenya	KEN
79	United Republic of Tanzania	TZA
80	Honduras	HND
81	Tajikistan	TJK
82	Sudan	SDN
83	Ethiopia	ETH
84	Lao People's Democratic Republic	LAO
85	Viet Nam	VNM
86	New Zealand	NZL
87	Guam (U.S.A.)	GUM
88	Faroe Islands	FRO
89	Costa Rica	CRI
90	Greenland (Kingdom of Denmark)	GRL
91	Ireland	IRL
92	Lesotho	LSO
93	Cook Islands	COK
94	Kazakhstan	KAZ
95	Senegal	SEN
96	Brazil	BRA
97	Indonesia	IDN
98	Norway	NOR
99	Sweden	SWE
100	Morocco	MAR
101	Guyana	GUY
102	Guinea-Bissau	GNB
103	Canada	CAN
104	Botswana	BWA
105	\N	\N
106	Uganda	UGA
107	Malaysia	MYS
108	Egypt	EGY
109	French Polynesia (France)	PYF
110	Belize	BLZ
111	Niue	NIU
112	Guinea	GIN
113	Ghana	GHA
114	Tuvalu	TUV
115	Papua New Guinea	PNG
116	Uzbekistan	UZB
117	Chad	TCD
118	Tunisia	TUN
119	Turkmenistan	TKM
120	Japan	JPN
121	Paraguay	PRY
122	Burkina Faso	BFA
123	Central African Republic	CAF
124	Democratic Republic of the Congo	ZAI
125	Micronesia (Federated States of)	FSM
126	Nauru	NRU
127	Namibia	NAM
128	Tokelau	TKL
129	Cameroon	CMR
130	Equatorial Guinea	GNQ
131	Congo	COG
132	Gabon	GAB
133	Suriname	SUR
134	Mauritania	MRT
135	Eritrea	ERI
136	Uruguay	URY
137	Australia	AUS
138	Fiji	FJI
139	Timor-Leste	TLS
140	Angola	ANG
141	Philippines	PHL
142	French Guiana (France)	GUF
143	Benin	BEN
144	Côte d'Ivoire	CIV
145	Cyprus	CYP
146	Solomon Islands	SLB
147	New Caledonia (France)	NCL
148	Western Sahara	ESH
149	Vanuatu	VUT
150	Palau	PLW
151	Norfolk Island (Australia)	NFK
152	Sierra Leone	SLE
153	Sri Lanka	LKA
154	El Salvador	SLV
155	South Africa	ZAF
156	Pitcairn  (U.K.)	PCN
157	Togo	TGO
158	Dominica	DMA
159	Liechtenstein	LIE
160	Palestine	PSE
161	Republic of Korea	KOR
\.


--
-- Data for Name: countries_short_names; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.countries_short_names (country_name, country_code) FROM stdin;
Albania	ALB
Algeria	DZA
Andorra	AND
Angola	AGO
Antigua and Barbuda	ATG
Argentina	ARG
Armenia	ARM
Australia	AUS
Austria	AUT
Azerbaijan	AZE
Bahamas	BHS
Bahrain	BHR
Bangladesh	BGD
Barbados	BRB
Belarus	BLR
Belgium	BEL
Belize	BLZ
Benin	BEN
Bhutan	BTN
Bolivia	BOL
Bosnia and Herzegovina	BIH
Botswana	BWA
Brazil	BRA
Brunei Darussalam	BRN
Bulgaria	BGR
Burkina Faso	BFA
Burundi	BDI
Cabo Verde	CPV
Cambodia	KHM
Cameroon	CMR
Canada	CAN
Central African Republic	CAF
Chad	TCD
Chile	CHL
China	CHN
Colombia	COL
Comoros	COM
Congo	COG
Cook Islands	COK
Costa Rica	CRI
Croatia	HRV
Cuba	CUB
Cyprus	CYP
Czechia	CZE
Ivory Coast	CIV
North Korea	PRK
Democratic Republic of the Congo	COD
Denmark	DNK
Djibouti	DJI
Dominica	DMA
Dominican Republic	DOM
Ecuador	ECU
Egypt	EGY
El Salvador	SLV
Equatorial Guinea	GNQ
Eritrea	ERI
Estonia	EST
Eswatini	SWZ
Ethiopia	ETH
Faroe Islands	FRO
Fiji	FJI
Finland	FIN
France	FRA
Gabon	GAB
Gambia	GMB
Georgia	GEO
Germany	DEU
Ghana	GHA
Greece	GRC
Grenada	GRD
Guatemala	GTM
Guinea	GIN
Guinea-Bissau	GNB
Guyana	GUY
Haiti	HTI
Honduras	HND
Hungary	HUN
Iceland	ISL
India	IND
Indonesia	IDN
Iran	IRN
Iraq	IRQ
Ireland	IRL
Israel	ISR
Italy	ITA
Jamaica	JAM
Japan	JPN
Jordan	JOR
Kazakhstan	KAZ
Kenya	KEN
Kiribati	KIR
Kuwait	KWT
Kyrgyzstan	KGZ
Laos	LAO
Latvia	LVA
Lebanon	LBN
Lesotho	LSO
Liberia	LBR
Libya	LBY
Lithuania	LTU
Luxembourg	LUX
Madagascar	MDG
Malawi	MWI
Malaysia	MYS
Maldives	MDV
Mali	MLI
Malta	MLT
Marshall Islands	MHL
Mauritania	MRT
Mauritius	MUS
Mexico	MEX
Micronesia	FSM
Monaco	MCO
Mongolia	MNG
Montenegro	MNE
Morocco	MAR
Mozambique	MOZ
Myanmar	MMR
Namibia	NAM
Nauru	NRU
Nepal	NPL
Netherlands	NLD
New Zealand	NZL
Nicaragua	NIC
Niger	NER
Nigeria	NGA
Niue	NIU
North Macedonia	MKD
Norway	NOR
Oman	OMN
Pakistan	PAK
Palau	PLW
Panama	PAN
Papua New Guinea	PNG
Paraguay	PRY
Peru	PER
Philippines	PHL
Poland	POL
Portugal	PRT
Qatar	QAT
South Korea	KOR
Moldova	MDA
Romania	ROU
Russia	RUS
Rwanda	RWA
Saint Kitts and Nevis	KNA
Saint Lucia	LCA
Saint Vincent and the Grenadines	VCT
Samoa	WSM
San Marino	SMR
Sao Tome and Principe	STP
Saudi Arabia	SAU
Senegal	SEN
Serbia	SRB
Seychelles	SYC
Sierra Leone	SLE
Singapore	SGP
Slovakia	SVK
Slovenia	SVN
Solomon Islands	SLB
Somalia	SOM
South Africa	ZAF
South Sudan	SSD
Spain	ESP
Sri Lanka	LKA
Sudan	SDN
Suriname	SUR
Sweden	SWE
Switzerland	CHE
Syria	SYR
Tajikistan	TJK
Thailand	THA
Timor-Leste	TLS
Togo	TGO
Tokelau	TKL
Tonga	TON
Trinidad and Tobago	TTO
Tunisia	TUN
Turkey	TUR
Turkmenistan	TKM
Tuvalu	TUV
Uganda	UGA
Ukraine	UKR
United Arab Emirates	ARE
United Kingdom	GBR
United Republic of Tanzania	TZA
United States of America	USA
Uruguay	URY
Uzbekistan	UZB
Vanuatu	VUT
Venezuela	VEN
Vietnam	VNM
Yemen	YEM
Zambia	ZMB
Zimbabwe	ZWE
Albania	ALB
Algeria	DZA
Andorra	AND
Angola	AGO
Antigua and Barbuda	ATG
Argentina	ARG
Armenia	ARM
Australia	AUS
Austria	AUT
Azerbaijan	AZE
Bahamas	BHS
Bahrain	BHR
Bangladesh	BGD
Barbados	BRB
Belarus	BLR
Belgium	BEL
Belize	BLZ
Benin	BEN
Bhutan	BTN
Bolivia	BOL
Bosnia and Herzegovina	BIH
Botswana	BWA
Brazil	BRA
Brunei Darussalam	BRN
Bulgaria	BGR
Burkina Faso	BFA
Burundi	BDI
Cabo Verde	CPV
Cambodia	KHM
Cameroon	CMR
Canada	CAN
Central African Republic	CAF
Chad	TCD
Chile	CHL
China	CHN
Colombia	COL
Comoros	COM
Congo	COG
Cook Islands	COK
Costa Rica	CRI
Croatia	HRV
Cuba	CUB
Cyprus	CYP
Czechia	CZE
Ivory Coast	CIV
North Korea	PRK
Democratic Republic of the Congo	COD
Denmark	DNK
Djibouti	DJI
Dominica	DMA
Dominican Republic	DOM
Ecuador	ECU
Egypt	EGY
El Salvador	SLV
Equatorial Guinea	GNQ
Eritrea	ERI
Estonia	EST
Eswatini	SWZ
Ethiopia	ETH
Faroe Islands	FRO
Fiji	FJI
Finland	FIN
France	FRA
Gabon	GAB
Gambia	GMB
Georgia	GEO
Germany	DEU
Ghana	GHA
Greece	GRC
Grenada	GRD
Guatemala	GTM
Guinea	GIN
Guinea-Bissau	GNB
Guyana	GUY
Haiti	HTI
Honduras	HND
Hungary	HUN
Iceland	ISL
India	IND
Indonesia	IDN
Iran	IRN
Iraq	IRQ
Ireland	IRL
Israel	ISR
Italy	ITA
Jamaica	JAM
Japan	JPN
Jordan	JOR
Kazakhstan	KAZ
Kenya	KEN
Kiribati	KIR
Kuwait	KWT
Kyrgyzstan	KGZ
Laos	LAO
Latvia	LVA
Lebanon	LBN
Lesotho	LSO
Liberia	LBR
Libya	LBY
Lithuania	LTU
Luxembourg	LUX
Madagascar	MDG
Malawi	MWI
Malaysia	MYS
Maldives	MDV
Mali	MLI
Malta	MLT
Marshall Islands	MHL
Mauritania	MRT
Mauritius	MUS
Mexico	MEX
Micronesia	FSM
Monaco	MCO
Mongolia	MNG
Montenegro	MNE
Morocco	MAR
Mozambique	MOZ
Myanmar	MMR
Namibia	NAM
Nauru	NRU
Nepal	NPL
Netherlands	NLD
New Zealand	NZL
Nicaragua	NIC
Niger	NER
Nigeria	NGA
Niue	NIU
North Macedonia	MKD
Norway	NOR
Oman	OMN
Pakistan	PAK
Palau	PLW
Panama	PAN
Papua New Guinea	PNG
Paraguay	PRY
Peru	PER
Philippines	PHL
Poland	POL
Portugal	PRT
Qatar	QAT
South Korea	KOR
Moldova	MDA
Romania	ROU
Russia	RUS
Rwanda	RWA
Saint Kitts and Nevis	KNA
Saint Lucia	LCA
Saint Vincent and the Grenadines	VCT
Samoa	WSM
San Marino	SMR
Sao Tome and Principe	STP
Saudi Arabia	SAU
Senegal	SEN
Serbia	SRB
Seychelles	SYC
Sierra Leone	SLE
Singapore	SGP
Slovakia	SVK
Slovenia	SVN
Solomon Islands	SLB
Somalia	SOM
South Africa	ZAF
South Sudan	SSD
Spain	ESP
Sri Lanka	LKA
Sudan	SDN
Suriname	SUR
Sweden	SWE
Switzerland	CHE
Syria	SYR
Tajikistan	TJK
Thailand	THA
Timor-Leste	TLS
Togo	TGO
Tokelau	TKL
Tonga	TON
Trinidad and Tobago	TTO
Tunisia	TUN
Turkey	TUR
Turkmenistan	TKM
Tuvalu	TUV
Uganda	UGA
Ukraine	UKR
United Arab Emirates	ARE
United Kingdom	GBR
United Republic of Tanzania	TZA
United States of America	USA
Uruguay	URY
Uzbekistan	UZB
Vanuatu	VUT
Venezuela	VEN
Vietnam	VNM
Yemen	YEM
Zambia	ZMB
Zimbabwe	ZWE
Albania	ALB
Algeria	DZA
Andorra	AND
Angola	AGO
Antigua and Barbuda	ATG
Argentina	ARG
Armenia	ARM
Australia	AUS
Austria	AUT
Azerbaijan	AZE
Bahamas	BHS
Bahrain	BHR
Bangladesh	BGD
Barbados	BRB
Belarus	BLR
Belgium	BEL
Belize	BLZ
Benin	BEN
Bhutan	BTN
Bolivia	BOL
Bosnia and Herzegovina	BIH
Botswana	BWA
Brazil	BRA
Brunei Darussalam	BRN
Bulgaria	BGR
Burkina Faso	BFA
Burundi	BDI
Cabo Verde	CPV
Cambodia	KHM
Cameroon	CMR
Canada	CAN
Central African Republic	CAF
Chad	TCD
Chile	CHL
China	CHN
Colombia	COL
Comoros	COM
Congo	COG
Cook Islands	COK
Costa Rica	CRI
Croatia	HRV
Cuba	CUB
Cyprus	CYP
Czechia	CZE
Ivory Coast	CIV
North Korea	PRK
Democratic Republic of the Congo	COD
Denmark	DNK
Djibouti	DJI
Dominica	DMA
Dominican Republic	DOM
Ecuador	ECU
Egypt	EGY
El Salvador	SLV
Equatorial Guinea	GNQ
Eritrea	ERI
Estonia	EST
Eswatini	SWZ
Ethiopia	ETH
Faroe Islands	FRO
Fiji	FJI
Finland	FIN
France	FRA
Gabon	GAB
Gambia	GMB
Georgia	GEO
Germany	DEU
Ghana	GHA
Greece	GRC
Grenada	GRD
Guatemala	GTM
Guinea	GIN
Guinea-Bissau	GNB
Guyana	GUY
Haiti	HTI
Honduras	HND
Hungary	HUN
Iceland	ISL
India	IND
Indonesia	IDN
Iran	IRN
Iraq	IRQ
Ireland	IRL
Israel	ISR
Italy	ITA
Jamaica	JAM
Japan	JPN
Jordan	JOR
Kazakhstan	KAZ
Kenya	KEN
Kiribati	KIR
Kuwait	KWT
Kyrgyzstan	KGZ
Laos	LAO
Latvia	LVA
Lebanon	LBN
Lesotho	LSO
Liberia	LBR
Libya	LBY
Lithuania	LTU
Luxembourg	LUX
Madagascar	MDG
Malawi	MWI
Malaysia	MYS
Maldives	MDV
Mali	MLI
Malta	MLT
Marshall Islands	MHL
Mauritania	MRT
Mauritius	MUS
Mexico	MEX
Micronesia	FSM
Monaco	MCO
Mongolia	MNG
Montenegro	MNE
Morocco	MAR
Mozambique	MOZ
Myanmar	MMR
Namibia	NAM
Nauru	NRU
Nepal	NPL
Netherlands	NLD
New Zealand	NZL
Nicaragua	NIC
Niger	NER
Nigeria	NGA
Niue	NIU
North Macedonia	MKD
Norway	NOR
Oman	OMN
Pakistan	PAK
Palau	PLW
Panama	PAN
Papua New Guinea	PNG
Paraguay	PRY
Peru	PER
Philippines	PHL
Poland	POL
Portugal	PRT
Qatar	QAT
South Korea	KOR
Moldova	MDA
Romania	ROU
Russia	RUS
Rwanda	RWA
Saint Kitts and Nevis	KNA
Saint Lucia	LCA
Saint Vincent and the Grenadines	VCT
Samoa	WSM
San Marino	SMR
Sao Tome and Principe	STP
Saudi Arabia	SAU
Senegal	SEN
Serbia	SRB
Seychelles	SYC
Sierra Leone	SLE
Singapore	SGP
Slovakia	SVK
Slovenia	SVN
Solomon Islands	SLB
Somalia	SOM
South Africa	ZAF
South Sudan	SSD
Spain	ESP
Sri Lanka	LKA
Sudan	SDN
Suriname	SUR
Sweden	SWE
Switzerland	CHE
Syria	SYR
Tajikistan	TJK
Thailand	THA
Timor-Leste	TLS
Togo	TGO
Tokelau	TKL
Tonga	TON
Trinidad and Tobago	TTO
Tunisia	TUN
Turkey	TUR
Turkmenistan	TKM
Tuvalu	TUV
Uganda	UGA
Ukraine	UKR
United Arab Emirates	ARE
United Kingdom	GBR
United Republic of Tanzania	TZA
United States of America	USA
Uruguay	URY
Uzbekistan	UZB
Vanuatu	VUT
Venezuela	VEN
Vietnam	VNM
Yemen	YEM
Zambia	ZMB
Zimbabwe	ZWE
Albania	ALB
Algeria	DZA
Andorra	AND
Angola	AGO
Antigua and Barbuda	ATG
Argentina	ARG
Armenia	ARM
Australia	AUS
Austria	AUT
Azerbaijan	AZE
Bahamas	BHS
Bahrain	BHR
Bangladesh	BGD
Barbados	BRB
Belarus	BLR
Belgium	BEL
Belize	BLZ
Benin	BEN
Bhutan	BTN
Bolivia	BOL
Bosnia and Herzegovina	BIH
Botswana	BWA
Brazil	BRA
Brunei Darussalam	BRN
Bulgaria	BGR
Burkina Faso	BFA
Burundi	BDI
Cabo Verde	CPV
Cambodia	KHM
Cameroon	CMR
Canada	CAN
Central African Republic	CAF
Chad	TCD
Chile	CHL
China	CHN
Colombia	COL
Comoros	COM
Congo	COG
Cook Islands	COK
Costa Rica	CRI
Croatia	HRV
Cuba	CUB
Cyprus	CYP
Czechia	CZE
Ivory Coast	CIV
North Korea	PRK
Democratic Republic of the Congo	COD
Denmark	DNK
Djibouti	DJI
Dominica	DMA
Dominican Republic	DOM
Ecuador	ECU
Egypt	EGY
El Salvador	SLV
Equatorial Guinea	GNQ
Eritrea	ERI
Estonia	EST
Eswatini	SWZ
Ethiopia	ETH
Faroe Islands	FRO
Fiji	FJI
Finland	FIN
France	FRA
Gabon	GAB
Gambia	GMB
Georgia	GEO
Germany	DEU
Ghana	GHA
Greece	GRC
Grenada	GRD
Guatemala	GTM
Guinea	GIN
Guinea-Bissau	GNB
Guyana	GUY
Haiti	HTI
Honduras	HND
Hungary	HUN
Iceland	ISL
India	IND
Indonesia	IDN
Iran	IRN
Iraq	IRQ
Ireland	IRL
Israel	ISR
Italy	ITA
Jamaica	JAM
Japan	JPN
Jordan	JOR
Kazakhstan	KAZ
Kenya	KEN
Kiribati	KIR
Kuwait	KWT
Kyrgyzstan	KGZ
Laos	LAO
Latvia	LVA
Lebanon	LBN
Lesotho	LSO
Liberia	LBR
Libya	LBY
Lithuania	LTU
Luxembourg	LUX
Madagascar	MDG
Malawi	MWI
Malaysia	MYS
Maldives	MDV
Mali	MLI
Malta	MLT
Marshall Islands	MHL
Mauritania	MRT
Mauritius	MUS
Mexico	MEX
Micronesia	FSM
Monaco	MCO
Mongolia	MNG
Montenegro	MNE
Morocco	MAR
Mozambique	MOZ
Myanmar	MMR
Namibia	NAM
Nauru	NRU
Nepal	NPL
Netherlands	NLD
New Zealand	NZL
Nicaragua	NIC
Niger	NER
Nigeria	NGA
Niue	NIU
North Macedonia	MKD
Norway	NOR
Oman	OMN
Pakistan	PAK
Palau	PLW
Panama	PAN
Papua New Guinea	PNG
Paraguay	PRY
Peru	PER
Philippines	PHL
Poland	POL
Portugal	PRT
Qatar	QAT
South Korea	KOR
Moldova	MDA
Romania	ROU
Russia	RUS
Rwanda	RWA
Saint Kitts and Nevis	KNA
Saint Lucia	LCA
Saint Vincent and the Grenadines	VCT
Samoa	WSM
San Marino	SMR
Sao Tome and Principe	STP
Saudi Arabia	SAU
Senegal	SEN
Serbia	SRB
Seychelles	SYC
Sierra Leone	SLE
Singapore	SGP
Slovakia	SVK
Slovenia	SVN
Solomon Islands	SLB
Somalia	SOM
South Africa	ZAF
South Sudan	SSD
Spain	ESP
Sri Lanka	LKA
Sudan	SDN
Suriname	SUR
Sweden	SWE
Switzerland	CHE
Syria	SYR
Tajikistan	TJK
Thailand	THA
Timor-Leste	TLS
Togo	TGO
Tokelau	TKL
Tonga	TON
Trinidad and Tobago	TTO
Tunisia	TUN
Turkey	TUR
Turkmenistan	TKM
Tuvalu	TUV
Uganda	UGA
Ukraine	UKR
United Arab Emirates	ARE
United Kingdom	GBR
United Republic of Tanzania	TZA
United States of America	USA
Uruguay	URY
Uzbekistan	UZB
Vanuatu	VUT
Venezuela	VEN
Vietnam	VNM
Yemen	YEM
Zambia	ZMB
Zimbabwe	ZWE
\.


--
-- Data for Name: languages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.languages (id, en_name, es_name, fr_name, native_name, speakers, lat, long, vulnerability_id) FROM stdin;
1	South Italian	napolitano-calabrés	italien du sud	\N	7500000	40.9798	15.2490	1
2	Sicilian	siciliano	sicilien	\N	5000000	37.4399	14.5019	1
3	Low Saxon	bajo sajón	bas-saxon	Neddersassisch	4800000	53.4029	10.3601	1
4	Belarusian	bielorruso	biélorusse	\N	4000000	53.9560	27.5756	1
5	Lombard	lombardo	lombard	\N	3500000	45.7215	9.3273	2
6	Romani	romaní	romani	\N	3500000	46.3165	22.3681	2
7	Yiddish (Israel)	yiddish (Israel)	yiddish (Israël)	\N	3000000	32.0833	34.8333	2
8	Gondi	gondí	gondi	\N	2713790	19.5804	80.4418	1
9	Limburgian-Ripuarian	limburgués-ripuarino	francique ripuaire -limbourgeois	\N	2600000	50.7781	6.0864	1
10	Quechua of Southern Bolivia	quechua boliviano meridional	quechua bolivien du sud	\N	2300000	-18.0675	-65.7641	1
11	Kumaoni	cumauní	kumaoni	\N	2003783	29.4778	79.8486	1
12	Aymara	aymara	aymara	\N	2000000	-16.5835	-68.3020	1
13	Emilian-Romagnol	emiliano	émilien-romagnol	\N	2000000	44.1270	12.0739	2
14	Piedmontese	piamontés	piémontais	\N	2000000	45.2013	7.8662	2
15	Venetan	veneciano	vénitien	\N	2000000	45.4601	12.1948	1
16	Zazaki	zaza	zazaki	\N	2000000	38.8824	40.4846	1
17	Kurux (India)	kuruj (India)	kurux (Inde)	\N	1751489	22.1467	85.2758	1
18	Tamajeq	tamacheq tahoua	tamajeq	\N	1750000	17.2352	8.0859	1
19	Tulu	tulú	tulu	\N	1722768	12.0178	75.7067	1
20	Kangdi	kangdi	Kangdi	\N	1700000	32.4356	76.1242	2
21	Scots	escocés	scots	\N	1500000	56.2189	-3.7683	1
22	Torlak	torlak	torlak	\N	1500000	42.9644	22.1374	1
23	West Flemish	flamenco occidental	flamand occidental	\N	1500000	51.0275	3.0541	1
24	Bashkir	baskir	bachkir	\N	1379727	54.7309	55.9863	1
25	Chechen	checheno	tchétchène	\N	1331844	43.1971	45.7031	1
26	Chuvash	chuvacho	tchouvache	\N	1325382	56.1394	47.2412	1
27	Meithei	mitei	meitei	\N	1250000	24.7667	93.8946	1
28	Tamang	tamang	tamang	\N	1196639	27.7365	85.6858	1
29	Quechua of Cuzco	quechua cuzqueño	quechua de Cuzco	\N	1115000	-13.4537	-72.0098	1
30	Eastern Slovak	eslovaco oriental	slovaque oriental	\N	1000000	48.8068	21.7968	1
31	Ligurian	ligur	ligurien	\N	1000000	44.5748	8.7011	2
32	Rusyn	rutenio	ruthène	\N	1000000	48.4437	22.9394	1
33	Talysh	talisí	talysh	\N	1000000	38.8140	48.6804	1
34	Kui	kui	kui	\N	916222	19.5908	83.9575	1
35	Khasi	jasí	khasi	\N	912000	25.6910	91.8676	1
36	Bodo	bodo	bodo	\N	900000	26.7554	92.8674	1
37	Campidanese	sardo campidanés	campidanien	\N	900000	39.2991	8.9868	2
38	K'iche' (Guatemala)	quiché (Guatemala)	k’iche' (Guatemala)	\N	890596	15.0309	-91.1485	1
39	Quechua of Ayacucho	quechua de Ayacucho	quechua d'Ayacucho	\N	850000	-13.1276	-74.2071	2
40	Newar	nevarí	newar	\N	825458	27.6981	85.3198	2
41	Mon	mon	môn	\N	800000	16.4666	97.7833	1
42	Polesian	polesio	polésien	\N	800000	51.8629	23.9501	1
43	Tamaceq	tamacheq tahoua	tamaceq	\N	800000	16.7992	-3.0102	2
44	Avar	avar	avar	\N	784840	42.4801	46.8017	1
45	Mundari	mundarí	mundari	\N	750000	22.3297	86.0449	1
46	Welsh	galés	gallois	Cymraeg	750000	52.4459	-3.5485	1
47	Angika	anga	angika	\N	740892	24.7451	85.3124	1
48	Q'eqchi' (Guatemala)	cachí (Guatemala)	q’eqchi' (Guatemala)	\N	716101	15.4707	-90.3722	1
49	Picard	picardo	picard	\N	700000	50.2331	2.7905	3
50	Kokborok	kok borok	kokborok	\N	695000	23.7752	91.6918	1
51	Basque	euskera	basque	euskara	660000	43.1330	-2.0764	1
52	Kabard-Cherkes	kabardái	kabarde-tcherkesse	\N	650000	43.7393	43.4289	1
53	Mandeali	mandeali	mandeali	\N	611930	31.4099	76.9921	2
54	Friulian	friulano	frioulan	\N	600000	46.1037	13.1396	2
55	Quechua of Ancash and Huánuco	quechua de Ancash y de Huánuco	quechua d'Ancash et Huánuco	\N	600000	-9.4598	-77.1789	2
56	Walloon	valón	wallon	\N	600000	50.4575	4.8559	2
57	Mising	mising	mising	\N	550000	26.9612	94.0539	2
58	Ossete	osético	ossète	\N	550000	42.9564	44.4946	1
59	Mizo	lushai	mizo	\N	529000	22.9988	92.9223	1
60	Dargwa	dargínico	dargwa	\N	503523	42.1145	47.4938	1
61	Aromanian	arrumano	aroumain	\N	500000	40.2292	21.1376	2
62	Brahui	birahuí	brahui	\N	500000	29.0369	66.5826	1
63	Languedocian	languedociano	languedocien	lengadocian	500000	43.8899	2.5378	3
64	Lezgian	lezguio	lezghien	\N	500000	41.4921	48.0541	1
65	Mahasui	paharí mahasu	mahasui	\N	496024	31.2738	77.1295	2
66	Magar	magarí	magar	\N	489383	28.0816	83.4301	2
67	Mam (Guatemala)	mam (Guatemala)	mam (Guatemala)	\N	477717	14.9305	-91.9078	1
68	Udmurt	votiaco	oudmourte	\N	463837	57.2315	52.8662	2
69	Huasteca Náhuatl	nahua de la Huasteca	náhuatl du Huasteca	\N	463183	21.3835	-98.9902	1
70	Kumyk	kumyko	koumyk	\N	458121	43.3970	46.9775	1
71	Yakut	yakuto	yakoute	\N	456288	62.3496	130.8691	1
72	Kaqchikel (Guatemala)	cachiquel (Guatemala)	kaqchikel (Guatemala)	\N	444954	14.7814	-90.7925	1
73	Karbi	miquirés	karbi	\N	420000	26.2934	93.2299	1
74	Eastern Mari	marí oriental	mari oriental	\N	414211	56.6320	47.8784	2
75	Ingush	inguso	ingouche	\N	405343	43.1450	45.1043	1
76	Erzya	mordovo erzya	erzya	\N	400000	54.1302	45.4394	2
77	Ho	ho	ho	\N	400000	21.6370	86.4404	1
78	Judezmo (Israel)	sefardí (Israel)	judéo-espagnol (Israël)	\N	400000	32.0872	34.7737	3
79	Lalo	lalo	lalo	\N	400000	25.3830	99.9426	1
80	Limousin	lemosín	limousin	lemosin	400000	46.0579	1.8017	3
81	Logudorese	sardo logudorés	logoudorien	\N	400000	40.1116	9.1845	2
82	Mapuche (Chile)	mapuche (Chile)	mapuche  (Chile)	\N	400000	-38.5653	-73.0810	2
83	Central Náhuatl	nahua central	náhuatl central	\N	395581	19.1910	-99.0236	1
84	Moselle Franconian	franconio del Mosela	francique mosellan	Lëtzebuergesch	390000	49.6071	6.1248	1
85	Bantawa	bantawa	bantawa	\N	371056	27.0994	87.0048	1
86	Santa	santa	dongxiang	\N	360000	35.5411	102.7935	1
87	Mingrelian	mingrelio	mingrélien	\N	350000	42.4599	41.7205	2
88	West Frisian	frisón occidental	frison occidental	\N	350000	53.1006	5.6579	1
89	Gurung	gurung	gurung	\N	338925	28.2750	84.1782	2
90	Guajiro	guajiro	guajiro	\N	318500	11.8673	-71.9824	1
91	Karachay-Balkar	karachay-balkar	karatchaï-balkar	\N	302748	44.2137	42.8466	1
92	Adyge	adiga	adyguéen	\N	300000	44.9181	39.7485	1
93	Buryat (Trans-Baikal)	buriato (transbaikálico)	bouriate (Transbaïkalie)	\N	300000	50.8336	109.5117	2
94	Kurru	yerukala	kurru	\N	300000	16.6151	81.6284	2
95	Kuvi	kuvi	kouvi	\N	300000	18.9478	83.5839	2
96	Limbu	limbu	limbu	\N	300000	27.0960	87.7356	2
97	Moroccan Judeo-Arabic (Israel)	judeo-árabe marroquí (Israel)	judéo-arabe du Maroc (Israël)	\N	300000	32.0476	34.7552	2
98	Plautdietsch	bajo alemán	plautdietsch	\N	300000	47.0738	35.5545	2
99	Pontic Greek	póntico	grec pontique	\N	300000	40.8470	40.0149	2
100	Quichua (Cotopaxi, Tungurahua and Chimborazo)	quichua (sierra central)	quichua (Cotopaxi, Tungurahua et Chimborazo)	\N	300000	-1.8673	-78.9257	2
101	Waxiang	vasianhuá	waxiang	\N	300000	28.5652	110.3576	1
102	Oyrat	oirato	oïrat	\N	280000	46.1950	88.7255	2
103	Garhwali	garhwali	garhwali	\N	279500	30.0976	79.1235	1
104	Bade	badé	bade	\N	250000	12.8010	11.1181	1
105	Breton	bretón	breton	\N	250000	48.2246	-3.9331	3
106	Gascon	gascón	gascon	gascon	250000	43.1811	-0.1428	2
107	Phula (China)	pula (China)	phula (Chine)	\N	250000	22.6001	104.0004	1
108	Sora	sora	sora	\N	250000	19.1244	83.2104	1
109	Konyak	coñac	konyak	\N	248000	26.9367	95.1745	1
110	Ao	ao	ao	\N	243000	26.4361	94.6472	1
111	Tuvan	tuva	touvain	\N	242754	51.7134	94.3945	1
112	Nafusi	jabal nafusah	nefousi	\N	240000	32.6393	13.4252	3
113	Suret	neo-arameo oriental	soureth	\N	240000	36.4477	43.2971	2
114	Malto	malto	malto	\N	224926	23.7853	85.4736	2
115	Khowar	jovaro	khowar	\N	222800	35.8667	71.7956	1
116	Maiya	khili	maiya	\N	220000	35.3151	72.9080	1
117	Komi	komi	komi	\N	217316	62.3087	51.5917	2
118	Alpine Provençal	provenzal alpino	provençal alpin	provençau aupenc	200000	44.7467	6.6796	2
119	Gallo	gallo	gallo	galo	200000	47.9310	-2.0544	3
120	Gera	gera	gera	\N	200000	10.5553	10.0579	1
121	Irula	irula	irula	\N	200000	11.4369	76.5032	1
122	Kharia	jariá	kharia	\N	200000	21.8003	85.4956	1
123	Khorasani Turk	turco jorasaní	turc du Khorassan	\N	200000	36.6596	57.8540	1
124	Korku	koraku	korku	\N	200000	20.3034	80.2441	1
125	Moksha	mordovo moksha	mokcha	\N	200000	54.1817	43.2751	2
126	Western Armenian (Middle East)	armenio occidental (Oriente Medio)	arménien occidental (Moyen-Orient)	արևմտահայ	200000	33.8840	35.5133	2
127	Western Cham	chamo occidental	cham de l'ouest	\N	200000	12.0333	105.4333	1
128	Tshangla	changla	tshangla	\N	193000	27.1275	91.9335	1
129	Thado	chin tado	thado	\N	191000	24.4521	93.2354	1
130	Gagauz (Bessarabia)	gagauso (Besarabia)	gagaouze (Bessarabia)	\N	180000	46.0922	28.7951	2
131	Kului	paharí de Kullu	kului	\N	170770	31.4403	77.1487	2
132	Adi	adi	adi	\N	170000	28.3527	95.2294	1
133	Lhota	lota	lhota	\N	170000	26.1603	94.3725	1
134	Nyishi	nisi	nyishi	\N	170000	27.5277	93.0981	1
135	Ngäbere (Panama)	guaymí (Panamá)	ngäbere (Panama)	\N	169130	9.3395	-82.2428	1
136	Kodagu	codagú	kodagu	\N	166187	11.6952	75.9375	2
137	Corsican	corso	corse	\N	160000	42.0819	9.0307	2
138	Dzongkha	butanés	dzongkha	\N	160000	27.4400	89.6731	1
139	Kalmyk	kalmiko	kalmouk	\N	153602	46.2026	45.8239	2
140	Lak	laco	lak	\N	153373	42.0125	47.2521	1
141	Asturian-Leonese	astur-leonés	asturien-léonais	astur-leonés	150000	42.7954	-5.6689	2
142	Latgalian	letón	latgalien	\N	150000	56.1822	27.1362	1
143	Provençal	provenzal	provençal	provençau	150000	43.5485	6.1083	3
144	Rabha	rabha	rabha	\N	150000	25.9284	90.9777	1
145	Tamzabit	tumzabí	tamzabit	\N	150000	32.4816	3.6694	1
146	Sherpa	sherpa	sherpa	\N	143693	27.7390	86.8390	1
147	Tangkhul	tangkhul	tangkhul	\N	142000	25.0358	94.4824	1
148	Q'aanjob'al	canjobalés	q’aanjob'al	\N	139830	15.6019	-91.4441	1
149	Badaga	badaga	badaga	\N	134514	11.3642	76.5266	2
150	Angami	angami	angami	\N	132000	25.7553	94.1308	1
151	Laz	laz	laze	\N	130000	41.2736	41.2646	2
152	Tabasaran	tabasarano	tabassaran	\N	128391	41.8081	47.9882	1
153	Chambeali	chameali	chambeali	\N	126589	32.9072	76.5307	2
154	Abkhaz	abjaso	abkhaze	\N	125000	43.1330	40.8471	1
155	Phom	phom	phom	\N	123000	26.7799	94.9493	1
156	Kolami	colami	kolami	\N	121855	20.5093	78.1787	2
157	Navajo	navajo	navajo	\N	120000	35.8044	-108.4750	1
158	Sassarese	sasarés	sassarien	\N	120000	40.6139	8.6132	2
159	Tamahaq (Algeria)	tamahaq (Argelia)	tamahaq (Algérie)	\N	120000	22.8369	5.5371	1
160	Konda	conda-dora	konda	\N	118597	18.2763	82.9385	2
161	Sierra Totonac	totonacano de Sierra	totonaque de la Sierra	\N	118367	20.2461	-97.6586	3
162	Jaunsari	jaunsari	jaunsari	\N	114733	30.4859	78.0908	2
163	Dimasa	dimasa	dimasa	\N	112000	24.7368	92.9003	1
164	Ladakhi	ladakhi	ladakhi	\N	105000	34.0617	77.5909	1
165	Salar	salar	salar	\N	104503	36.2752	102.4584	1
166	Simi	simí	simi	\N	104000	25.9777	94.5922	1
167	Phurhepecha	purépecha	purepecha	\N	102988	19.3111	-102.0410	1
168	Crimean Tatar (Crimea)	tártaro crimeano (Crimea)	tatar de Crimée (Crimée)	\N	100000	45.3212	34.3212	3
169	Dagur (Nonni)	daguro (Nonni)	dagour (Nonni)	\N	100000	47.9163	124.1235	2
170	Francoprovençal	francoprovenzal	francoprovençal	\N	100000	45.7828	6.9982	2
171	Gallurese	sardo galurés	gallurien	\N	100000	40.8802	9.4482	2
172	Mapuche (Argentina)	mapuche (Argentina)	mapuche (Argentine)	\N	100000	-40.0791	-71.0156	3
173	Mehri	mahri	mehri	\N	100000	16.5993	52.8057	2
174	Miskito (Nicaragua)	misquito (Nicaragua)	miskito (Nicaragua)	\N	100000	12.4001	-83.7332	1
175	Ordos	ordoso	ordos	\N	100000	39.1641	108.1054	2
176	Quechua of Northern Bolivia	quechua boliviano septentrional	quechua bolivien du nord	\N	100000	-15.3649	-69.0518	1
177	Suba	suba	suba	\N	100000	-0.9942	34.5190	1
178	Garífuna (Honduras)	garífuna (Honduras)	garifuna (Honduras)	\N	98000	15.6754	-88.1476	1
179	Embera (Colombia)	embera  (Colombia)	embera (Colombie)	\N	95000	6.1624	-76.8383	1
180	Kabui	kabui	kabui	\N	95000	24.7218	93.6584	1
181	Shughni	chugní	shughni	\N	95000	37.4879	71.5374	1
182	Permyak	permiaco	permiak	\N	94328	59.2040	54.5361	2
183	Poqomchi'	Poqomchí	poqomchi'	\N	92941	15.3757	-90.4288	1
184	Yimchungru	yimchungru	yimchungru	\N	92000	25.9629	94.9713	1
185	Nogay (Caucasus)	nogái (Cáucaso)	nogaï (Caucase)	\N	90020	43.8028	46.2744	2
186	Heiban	heibán	heiban	\N	90000	10.8575	30.2371	1
187	Quichua (Cañar and Azuay)	quichua (Cañar y Azuay)	quichua (Cañar et Azuay)	\N	90000	-2.6577	-78.8378	3
188	Mezquital Otomí	otomí del valle de Mezquital	otomí de Mezquital	\N	88789	20.4831	-99.2170	2
189	Eastern Mazahua	mazahua oriental	mazahua oriental	\N	88001	19.7129	-99.9515	2
190	Burushaski	buruchaski	bourouchaski	\N	87000	35.9090	74.2153	1
191	Central Otomí	otomí central	otomí central	\N	84593	19.4661	-99.5944	2
192	Chokri	chokrí	chokri	\N	84000	25.8691	94.7131	1
193	Sangtam	sangtam	sangtam	\N	84000	26.6032	94.9603	1
194	Ixil (Guatemala)	ijilo (Guatemala)	ixil (Guatemala)	\N	83574	15.4849	-91.0358	1
195	Achi'	achí	achi'	\N	82640	15.0845	-90.4888	1
196	Yem	yemsa	yem	\N	81613	7.6347	37.3205	1
197	Mao	mao	mao	\N	81000	25.5027	94.2681	1
198	Arbëresh	arberés	arbërerisht	arbrisht	80000	40.9321	14.8645	2
199	Lari	lari	lari	\N	80000	27.8585	54.8547	2
200	Páez	páez	páez	\N	80000	2.8237	-76.3117	2
201	Quechua of Santiago del Estero	quechua de Santiago del Estero	quechua de Santiago del Estero	\N	80000	-26.7848	-63.6767	2
202	Svan	svan	svane	\N	80000	43.0207	42.3193	2
203	Tai Daeng	taidaén	tai daeng	\N	80000	19.8833	104.6166	1
204	Taznatit	taznatit	taznatit	\N	80000	29.3413	0.3955	3
205	Razihi	razihi	razihi	\N	75000	16.8834	43.2655	2
206	Wakhi	vakí	wakhi	\N	75000	37.1603	74.9047	2
207	Bishnupriya Manipuri Creole	manipurí	créole bishnupriya manipuri	\N	72899	24.2970	92.4499	1
208	Acheron	acheron	acheron	\N	70000	10.8090	30.2453	3
209	Maori	maorí	maori	\N	70000	-38.4105	177.3632	1
210	Tai Neua	tainuá	tai nüa	\N	70000	20.5166	104.3166	1
211	Bhadravahi	bhadri	bhadravahi	\N	66918	33.5413	76.3330	2
212	Kinnauri	kinaurí	kinnauri	\N	65097	31.5410	78.3764	2
213	Gallo-Sicilian	galo-siciliano	gallo-sicilien	\N	65000	38.0167	14.5994	2
214	Kurux (Bangladesh)	kuruj (Bangladesh)	kurux (Bangladesh)	\N	65000	25.8196	88.9672	1
215	Tz'utujil	zutuguilés	tz’utujil	\N	63237	14.6394	-91.2301	2
216	Chamorro	chamorro	chamorro	\N	62500	13.4323	144.7338	1
217	Ashaninka (Peru)	asháninca	ashaninka (Pérou)	\N	62468	-10.6929	-74.3444	1
218	Chang	chang	chang	\N	62000	26.2934	94.9493	1
219	Kuna (Panama)	kuna (Panamá)	kuna (Panama)	\N	61703	9.5983	-79.6334	1
220	Churahi	churahi	churahi	\N	61199	33.1835	76.5747	2
221	Nruanghmei	rongmei	rongmei	\N	61000	24.9661	93.5375	1
222	Rengma	rengma	Rengma	\N	61000	25.9580	94.2462	1
223	Faroese	faroés	féroïen	\N	60000	62.0112	-6.7785	1
224	Northern Tujia	tujia septentrional	tujia du nord	\N	60000	28.8280	109.5904	3
225	Torwali	torvalí	torwali	\N	60000	35.5833	72.5000	2
226	Chuj (Guatemala)	chuj (Guatemala)	chuj (Guatemala)	\N	59048	15.8259	-91.4783	1
227	Kachari	kachari	kachari	\N	59000	25.2844	93.2189	2
228	Scottish Gaelic	gaélico escocés	gaélique écossais	\N	58552	58.1011	-6.7675	2
229	Sierra de Puebla Náhuatl	nahua de la sierra de Puebla	náhuatl de la Sierra de Puebla	\N	57189	19.6223	-97.8149	2
230	Limonese Creole	criollo limonense	créole de Limón	mekaytelyuw	55000	9.9916	-83.0316	2
231	Kashubian	casubio	kachoube	\N	53000	54.2267	18.1713	3
232	Khakas	jacaso	khakasse	\N	52217	53.7746	90.3735	2
233	Parji	duruwa	parji	\N	51216	18.5629	82.8039	4
234	Arvanitika	arvanitika	arvanitika	arbërisht	50000	38.1863	23.6096	3
235	Buryat (Cis-Baikal)	buriato (cisbaikálico)	bouriate (Cis-Baïkalie)	\N	50000	52.7961	104.8809	3
236	Buryat (Manchuria)	buriato (Manchuria)	bouriate (Mandchourie)	\N	50000	49.8096	119.7509	2
237	Cuona Menba	monpa de Cuona	cuona menba	\N	50000	26.8279	95.3623	1
238	Eastern Cham	chamo oriental	cham de l'est	\N	50000	10.7833	108.0833	2
239	Hmar	hmar	hmar	\N	50000	24.5770	93.3178	1
240	Huzhu Monguor	monguor de Huzhu	monguor de Huzhu	\N	50000	36.7608	102.4255	3
241	Paite	chin paite	paite	\N	50000	24.1968	93.3563	1
242	Quichua (Imbabura)	quichua (Imbabura)	quichua (Imbabura)	\N	50000	0.1757	-78.2006	2
243	Soqotri	soqotrí	soqotri	\N	50000	12.5331	53.7670	3
244	Southern Altay	altái meridional	altaï méridional	\N	50000	51.0690	86.5942	2
245	Transylvanian Saxon	sajón de Transilvania	saxon transylvanien	\N	50000	46.2140	24.2413	3
246	Turoyo	turoyo	touroyo	\N	50000	37.4050	41.3745	3
247	Võro-Seto	vorû setu	võro-seto	\N	50000	57.8096	27.2900	2
248	West Greenlandic	groenlandés occidental	kalaallisut	\N	50000	64.1681	-51.7236	1
249	Western Armenian (Turkey)	armenio occidental (Turquía)	arménien occidental (Turquie)	արևմտահայ	50000	41.0213	28.9324	2
250	Zaramo	zalamo / saramo	zaramo	\N	50000	-6.9220	39.2409	2
251	Zenatiya	zenatiya	zenatiya	\N	50000	35.5702	1.8099	4
252	Papantla Totonac	totonaco papantla	totonaque de Papantla	\N	49748	20.4477	-97.3200	2
253	Wancho	wancho	wancho	\N	49000	26.9759	95.4656	1
254	Bhumji	bhumji	bhumji	\N	47000	21.8003	86.8139	1
255	Cosung (China)	cosung (China)	cosung (Chine)	\N	47000	22.6833	102.6666	2
256	Cosung (Viet Nam)	cosung (Vietnam)	cosung (kucong)	\N	47000	22.6166	102.7500	2
257	Baheng (China)	baheng (China)	baheng (Chine)	\N	45000	26.1900	110.2400	1
258	Lumun	lomón	lumun	\N	45000	10.8387	30.0338	2
259	Quichua (Loja)	quichua (Loja)	quichua (Loja)	\N	45000	-3.6236	-79.2388	3
260	Chamling	chamlingo	chamling	\N	44093	27.0499	86.7329	2
261	Irish	irlandés	irlandais	\N	44000	53.7876	-9.1845	2
262	Reshe	reshe	reshe	\N	44000	10.8791	4.6115	1
263	Sierra Otomí	otomí de la Sierra	otomí de la Sierra	\N	43468	20.1021	-97.6220	1
264	Phuthi	suací	phuthi	\N	43000	-29.3791	28.2838	2
265	Rarotongan	rarotongano	rarotongien	\N	43000	-21.2343	-159.7837	1
266	Khalaj	jalái	khalaj	\N	42100	34.3751	50.3063	1
267	Dungan	dungano	doungane	\N	41000	42.4518	78.4643	2
268	Kheza	khezha	kheza	\N	41000	25.6811	94.3670	1
269	Jola-Kassa	kasa	jola-kassa	\N	40850	13.1089	-15.8999	1
270	Satār	satar	satār	\N	40260	26.5541	87.9180	1
271	Guaraní Boliviano	guaraní boliviano	guarani de Bolivie	\N	40000	-20.1694	-63.8525	1
272	Gutob	gutob	goutob	\N	40000	18.7086	83.5839	1
273	Kheng	kheng	khengkha	\N	40000	27.0786	91.0272	1
274	Laro	laro	Laru	\N	40000	10.7685	29.9020	2
275	Minyong	minyong	minyong	\N	40000	28.2632	95.0537	1
276	Mru	mru	mru	\N	40000	21.7748	92.2741	3
277	Patani Malay	patani	malais de patani	\N	40000	6.6482	100.0387	1
278	Quechua of Cajatambo, Pasco and northern Junín	quechua de Cajatambo, de Paso y de Junín septentrional.	quehcua de Cajatambo Pasco et du Junín nord	\N	40000	-10.6147	-76.5060	3
279	Quichua (Napo)	quichua (Napo)	quichua (Napo)	\N	40000	-0.6371	-77.1459	2
280	Tangsa	tangsa	tangsa	\N	40000	27.4059	96.4270	1
281	Tetserret	tetserret	tetserret	\N	40000	15.4907	6.2072	3
282	Awajun	aguaruna	awajun	\N	39000	-4.3464	-77.8271	1
283	Khiamngan	khiamngan	khiamngan	\N	38000	26.0518	95.1031	1
284	Ngile	taloca	ngile	\N	38000	10.7901	29.8635	3
285	Phunoi	phunoi	phunoi	\N	37311	21.6833	102.1000	1
286	Lower Mixe	mixé bajo	bas mixe	\N	37000	16.9616	-95.0930	1
287	Maram	maram	maram	\N	37000	25.1850	93.9715	1
288	Western Mari	marí occidental	mari occidental	\N	36822	56.3317	46.5545	3
289	Chepang	chepang	chepang	\N	36807	27.7552	84.8144	1
290	Chontal Tabasco	chontal de Tabasco	chontal du Tabasco	\N	36514	17.7607	-92.5936	3
291	Muji	muyi	muji	\N	36500	23.6000	102.7333	2
292	Akatek (Guatemala)	canjobalés occidental (Guatemala)	acatèque (Guatemala)	\N	35763	15.5724	-91.4218	1
293	Huichol	huichol	huichol	\N	35724	22.6500	-103.5833	1
294	Romansh	romanche	romanche	\N	35095	46.5777	9.6954	2
295	Apatani	apatani	apatani	\N	35000	27.5228	93.8177	1
296	Galo	adi-galo	gallong	\N	35000	28.1688	94.7433	1
297	Korwa	korwa	korwa	\N	35000	22.4922	84.1552	1
298	Shuar chicham	shuar chicham	shuar chicham	\N	35000	-2.8826	-78.0303	2
299	Ticuna	ticuna	tikuna	\N	35000	-4.3464	-70.0048	2
300	Wanka Quechua	quechua de Huanca	quechua wanka	\N	35000	-12.1360	-75.2453	3
301	Sikuani	guahibo	sikuani	\N	34614	3.4256	-68.8183	1
302	Jakaltek (Guatemala)	jacalteko (Guatemala)	jacaltèque (Guatemala)	\N	34038	15.6685	-91.7111	2
303	Liangmai	liangmai	Liangmai	\N	34000	25.2794	93.6694	1
304	Zeme	zeme	zemi	\N	34000	25.5027	93.5595	1
305	Highland Mazatec	mazateco de la sierra	mazatèque des hautes terres	\N	33859	18.1307	-96.8436	1
306	Thangmi	thangmi	thangmi	\N	33500	27.6969	86.0057	2
307	Nocte	nocte	nocte	\N	33000	27.1618	95.7952	1
308	Mayo	mayo	mayo	\N	32869	26.9114	-109.6271	4
309	Lauje	lauje	Lauje	\N	32000	-0.4531	119.9816	1
310	Danuwar	danvar	dhanwar	\N	31849	26.9661	86.3223	3
311	Sirmaudi	sirmauri	sirmauri	\N	31144	30.9823	77.1569	4
312	Abaza	abaza	abaza	\N	31000	44.1556	41.9368	2
313	Koch	koch	koch	\N	31000	25.7603	90.3955	2
314	Amis	ami	amis	\N	30000	23.4456	121.4483	1
315	Biak	biaco	biak	\N	30000	-0.3076	131.2207	1
316	Bumthang	kebumtamp	bumthangkha	\N	30000	27.4920	90.7159	1
317	Burgenland Croatian	serbocroata de Burgenland	croate du Burgenland	\N	30000	47.8435	16.5179	2
318	Dzhidi	dzhidi	dzhidi	\N	30000	33.5139	48.0102	2
319	Judeo-Berber (Israel)	judeo-bereber (Israel)	judéo-berbère (Israël)	\N	30000	31.6767	34.5684	3
320	Kham	jamí	kham	\N	30000	28.4321	82.9635	2
321	Ladin	ladino	ladin	\N	30000	46.5531	11.8597	2
322	Lepcha	lepcha	lepcha	\N	30000	27.1153	88.4687	2
323	Maonan	maonan	maonan	\N	30000	24.8341	107.5770	1
324	Mok (Myanmar, Thailand)	mok (Myanmar, Tailandia)	mok (Myanmar, Thaïlande)	\N	30000	21.7333	99.7666	2
325	Moro	moro	moro	\N	30000	10.8872	30.1904	2
326	Mulam	mulamo	mulam	\N	30000	24.6341	108.2895	1
327	North Saami	saamí septentrional	saami nord	davvisámegiella	30000	68.9099	22.9394	2
328	Quechua of Cajamarca	quechua de Cajamarca	quechua de Cajamarca	\N	30000	-7.1772	-78.6730	3
329	Quichua (Pastaza)	quichua (Pastaza)	quichua (Pastaza)	\N	30000	-1.7575	-76.8603	2
330	Rushani	rusaní	rushâni	\N	30000	37.8705	71.5979	2
331	Tagin	tagin	tagin	\N	30000	28.0380	94.2022	1
332	Tialo	tomini	tialo	\N	30000	0.4888	120.8935	1
333	Tidikelt	tidikelt	tidikelt	\N	30000	26.8828	2.5488	4
334	Toba	toba	toba	\N	30000	-25.9580	-59.0625	2
335	Tundra Nenets	néncico de la tundra	nénètse de la toundra	\N	30000	67.5001	67.7856	2
336	Vojvodina Rusyn	rutenio de Voivodina	ruthène de Voïvodine	\N	30000	45.6351	19.1903	2
337	Wuse	wusehuá	wuse	\N	30000	24.8780	109.1053	1
338	Agul	agul	agul	\N	29399	41.7518	47.6875	2
339	Rutul	rutul	routoul	\N	29383	41.5332	47.3181	2
340	Bateri	bateri	bateri	\N	29000	34.9073	72.8675	2
341	Mzieme	mzieme	mzieme	\N	29000	25.6019	93.8891	1
342	Ghale	ghale	ghale	\N	28989	28.2501	84.7180	1
343	Sierra Popoluca	popoluca de Sierra	populaca de la Sierra	\N	28700	18.2450	-94.7600	1
344	Kurux (Nepal)	kuruj (Nepal)	kurux (Népal)	\N	28615	26.6032	87.2259	1
345	Deori	deori	deori	\N	28000	27.1911	94.1528	2
346	Soyaltepec Mazatec	mazateco de Soyaltepec	mazatèque de Soyaltepec	\N	27524	18.2499	-96.3995	1
347	Western Mazahua	mazahua occidental	mazahua occidental	\N	27037	19.4372	-100.3552	2
348	Sibe	xibo	xibe	\N	27000	43.6599	81.3427	3
349	Isthmus Náhuatl	nahua del istmo	náhuatl de l'Isthme	\N	26632	18.2209	-94.8382	1
350	Sunwar	sunwar	sunwar	\N	26611	27.3485	86.2337	1
351	Mancagne	mancaña	mancagne	\N	26450	12.7743	-15.6967	1
352	Gadaba	gadaba	gadaba	\N	26262	18.3858	82.7819	4
353	Banat Bulgarian	búlgaro del Bánato	bulgare de Banat	\N	25000	45.4832	20.9069	2
354	Csángó Hungarian	csángó	hongrois csángó	\N	25000	46.7925	27.1911	3
355	Koda	koda	koda	\N	25000	22.1263	87.0776	1
356	Minhe Monguor	monguor de Minhe	minhe monguor	\N	25000	36.4919	102.6452	2
357	Miskito (Honduras)	misquito (Honduras)	miskito (Honduras)	\N	25000	15.3393	-84.6034	1
358	Olonetsian	olonetsiano	olonetsien	\N	25000	61.1273	32.8765	2
359	Saek	saek	saek	\N	25000	19.3166	104.7833	2
360	Sioux	dacota / siu	sioux	\N	25000	43.0588	-102.5244	1
361	Tamazight (Beni Iznassen)	tamazight (Beni Iznassen)	tamazight (Beni Iznassen)	\N	25000	34.7506	-2.1917	2
362	Tsakhur	tsajur	tsakhour	\N	25000	41.6523	46.9775	2
363	Warao	warao	warao	\N	25000	8.6027	-61.3806	2
364	Majhi	bote-majhi	majhi	\N	24664	27.9208	83.5082	3
365	Jone	choni	choni	\N	24000	34.5947	103.5653	2
366	Andi	andi	andi	\N	23729	42.7308	46.2963	2
367	Guambiano	guambiano	guambiano	\N	23462	2.6138	-76.3906	2
368	Anal	anal	anal	\N	23000	24.1517	93.9385	1
369	Hawrami	hawrami	hawrami	\N	23000	35.4259	46.2551	2
370	Juang	yuango	juang	\N	23000	21.0742	85.6164	2
371	Tiwa	tigua	tiwa	\N	23000	25.7801	92.5927	2
372	Embera (Panama)	embera (Panamá)	embera (Panama)	\N	22485	8.1179	-77.7429	1
373	Ediamat	eyamat	ediamat	\N	22025	12.2621	-16.5289	1
374	Mara	chin mara	mara	\N	22000	23.5237	92.9003	2
375	Maring	naga maring	maring	\N	22000	24.6769	94.3835	1
376	Polci cluster	polci	groupe Polci	\N	22000	9.9742	9.3328	2
377	Sarikoli	sarikoli	sarikoli	\N	22000	37.9463	75.1272	2
378	Krongo	crongo	krongo	\N	21688	10.5850	29.8883	2
379	Ashtiani	astianí	ashtiani	\N	21000	34.4861	51.0562	2
380	Khunsari	junsarí	khunsari	\N	21000	32.8795	51.6796	2
381	Semnani	semnani	semnani	\N	21000	34.8679	53.4924	2
382	Plains Cree	clisteno de las llanuras	cree des plaines	\N	20933	56.3544	-113.8345	1
383	Higher Reservoir Mazatec	mazateco de la presa alto	mazatèque de la Presa (haut)	\N	20665	18.1580	-96.7045	1
384	Chilchotla Mazatec	mazateco de Chilchotla	mazatèque de Chilchotla	\N	20585	18.2934	-96.7029	1
385	Zapotec of the Valleys, middle northwest	zapoteco del valle medio noroccidental	zapotèque des vallées,  nord-ouest central	\N	20448	17.0500	-96.6333	2
386	Aluo	laka	aluo	\N	20000	25.9368	102.1839	2
387	Bangni	bangni	bangni	\N	20000	28.0331	93.0651	1
388	Bru	bru	bru	\N	20000	15.3174	105.4938	2
389	Cho-ca-nga-ca-kha	chocangacakha	chocangacakha	\N	20000	27.4107	91.2277	2
390	Crimean Tatar (Dobruja)	tártaro crimeano (Dobruja)	tatar de Crimée (Dobroudja)	\N	20000	43.9414	28.3062	3
391	Dhimal	dhimal	dhimal	\N	20000	26.6192	87.4635	3
392	Griko (Salento)	griko salentino	griko (Salento)	\N	20000	40.1578	18.2208	3
393	Kaiowá Guarani	guaraní kaiowá	guarani-kaiowá	\N	20000	-21.5812	-55.0759	1
394	Karelian (Karelia)	carelio (Carelia)	carélien (Carélie)	\N	20000	63.0474	33.4616	2
395	Khoirao	khoirao	khoirao	\N	20000	25.2198	94.1583	1
396	Manchad	lahuli de Chamba	manchad	\N	20000	32.6578	77.5415	1
397	Mariupolitan Greek	mauropoliano	grec de Marioupol	\N	20000	47.1364	37.5444	3
398	Padam	padam	padam	\N	20000	28.2463	95.3668	1
399	Pemon (Venezuela)	pemón (Venezuela)	pemon (République bolivarienne du Venezuela)	\N	20000	5.1347	-61.8530	1
400	Tacenwit	tacenwit	tacenwit	\N	20000	36.5703	2.2892	1
401	Tangwang	tangwang	tangwang	\N	20000	35.7643	102.8979	2
566	Lisela	lisela	lisela	\N	9000	-3.2392	127.0239	1
402	Western Neo-Aramaic	neo-arameo sirio	araméen occidental	\N	20000	33.8339	36.5405	2
403	Yaghnobi	yagnobí	yaghnobi	\N	20000	38.5632	68.4475	2
404	Yaw	yos	yaw	\N	20000	21.6000	94.8333	2
405	Yeyi	yeyi	yeyi	\N	20000	-19.4562	23.2031	2
406	Boro	boro	boro	\N	19878	10.3581	35.0024	2
407	Sorbian	sorbio	sorbien	\N	19500	51.5001	14.4744	2
408	Biete	biete	biete	\N	19000	25.6514	93.2409	2
409	Hrangkhol	rancol	hrangkhol	\N	19000	24.1467	92.3071	1
410	Terena	tereno	terêna	\N	19000	-20.2841	-55.4638	3
411	Kati	katí	kati	\N	18700	35.3845	71.3177	2
412	Kulung	kulungo	kulung	\N	18686	27.5180	86.9375	1
413	Kaingang	kaingán	kaingang	\N	18500	-28.1495	-52.4707	2
414	Lowland Mazatec	mazateco del este bajo	mazatèque des basses terres	\N	18389	18.0801	-96.5236	1
415	Vafsi	vafsí	vafsi	\N	18000	34.0867	49.8861	2
416	Bassari	basarí	bassari	\N	17910	12.4419	-12.6617	1
417	Bayot	bayot	bayotte	\N	17150	12.4218	-16.4149	1
418	Pochuri	pochuri	pochuri	\N	17000	25.6712	94.7790	1
419	Tamahaq (Libya)	tamahaq (Libia)	tamahaq (Jamahiriya arabe libyenne)	\N	17000	24.9611	10.1733	2
420	Swampy Cree	clisteno occidental	swampy cree	\N	16685	53.9849	-97.7626	1
421	Koraga	koraga	koraga	\N	16665	11.6952	75.6738	4
422	Oyda	oyda	oyda	\N	16597	5.9438	36.6503	1
423	Pangvali	paharí pangwalí	pangvali	\N	16285	33.4589	76.9152	4
424	Shipibo-Conibo	shipibo-conibo	shipibo-conibo	\N	16085	-8.4289	-74.6411	2
425	Amba	amba	amba	\N	16000	0.6737	30.1980	1
426	Tsez	dido	tsez	\N	15356	42.2376	45.8734	2
427	Bonan	bonan	bonan	\N	15000	36.0890	102.8430	2
428	Chrau	gro	chrau	\N	15000	10.5634	107.1496	2
429	Dari	darí	dari	\N	15000	31.8402	54.1625	2
430	Dzala	dzalakha	dzalakha	\N	15000	27.7078	91.3623	1
431	Ersu	ersu	ersu	\N	15000	28.7778	102.1277	2
432	Gangte	gangte	gangte	\N	15000	24.1968	93.5870	2
433	Gurdu-Mbaaru	guruntum	gurdu-mbaaru	\N	15000	9.7415	10.4534	3
434	Ha-lung Tibetan	halung tibetano	walung	\N	15000	27.6831	87.8256	2
435	Hlersu	sansu	hlersu	\N	15000	24.3789	102.0460	1
436	Juk	juk	juk	\N	15000	15.3333	106.8500	2
437	Kwama	kwama	kwama	\N	15000	9.5465	34.2059	1
438	Laemae	lama	laemae	\N	15000	26.4179	98.7758	3
439	Lavua	lavüa	lavua	\N	15000	18.4483	98.1848	2
440	Macushi (Brazil)	macusí (Brasil)	macushi (Brésil)	\N	15000	3.7765	-61.1279	1
441	Nahali	nahalí	nahali	\N	15000	21.4735	74.0258	2
442	Naluo	naluo	naluo	\N	15000	26.5895	100.8506	1
443	Nyoe	nyoe	nyoe	\N	15000	14.9102	104.6049	2
444	O'odham (Akimel)	papago (Akimel)	o'odham (Akimel)	\N	15000	33.0590	-112.0479	2
445	O'odham (Tohono)	papago (Tohono)	o'odham (Tohono)	\N	15000	31.9186	-111.8798	2
446	Paiwan	paiwan	paiwan	\N	15000	22.4313	120.7809	1
447	Rao	rao	rao	\N	15000	25.8710	107.0476	2
448	Semai	semái	semai	\N	15000	4.3039	101.4450	3
449	Shatt	shatt	shatt	\N	15000	10.8117	29.7235	3
450	Siwi	siví	siwi	\N	15000	29.1905	25.5322	2
451	Tagargrent	wargla	tagargrent	\N	15000	30.9587	4.0209	3
452	Tayurayt	tayurayt	tayurayt	\N	15000	36.5648	1.9061	1
453	Totoli	tolitoli	totoli	\N	15000	0.8953	120.2838	1
454	Aruaco	aruaco	aruaco	\N	14799	10.0986	-73.5424	1
455	Yakkha	yakha	yakkha	\N	14648	27.1908	87.3358	4
456	Kuruba	kurumba	kuruba	\N	14613	11.4369	76.3549	4
457	Tuamotuan	tuamotuano	tuamotuan	\N	14400	-14.9354	-147.7455	2
458	Katla	catla	katla	\N	14208	11.7329	29.3939	2
459	Garífuna (Belize)	garífuna (Belize)	garifuna (Belize)	\N	14061	17.1833	-88.5833	1
460	Thulung	thulungo	thulung	\N	14034	27.4534	86.6423	2
461	Bawm	chin bom	bawm	\N	14000	22.1874	92.6477	2
462	Guajajara	guajajara	guajajára	\N	14000	-4.8282	-46.8017	1
463	Niuean	niue	niue	\N	14000	-19.0491	-169.8706	2
464	Uhunduni	uhunduní	uhunduni	\N	14000	-4.2054	137.0310	1
465	Gusilay	gusilay	gusilay	\N	13950	12.7019	-16.4382	1
466	Xavante	xavanté	xavante	\N	13303	-14.4832	-53.5305	1
467	Dondo	dondo	dondo	\N	13000	0.7470	120.4266	1
468	Khampti	jamtí	khampti	\N	13000	27.8827	96.5093	1
469	Nalu	nalu	nalu	\N	13000	10.9523	-14.7629	2
470	Tagoi	tagoí	tagoi	\N	13000	10.8252	30.1657	3
471	Karko	karko	karko	\N	12986	11.9640	29.4186	2
472	San Mateo del Mar Huave	huave de San Mateo del Mar	huave de San Mateo del Mar	\N	12667	16.2000	-94.9833	1
473	Q'eqchi' (Belize)	cachí (Belize)	q’eqchi' (Belize)	\N	12366	16.8107	-88.3999	1
474	Kadaru	kadaru	kadaru	\N	12360	12.1789	30.2398	2
475	Mazatlán Mazatec	mazateco de Mazatlán	mazatèque de Mazatlán	\N	12340	18.0330	-96.8999	1
476	Badiaranke	badiara / badyara	badiaranké	\N	12205	12.4043	-13.5736	3
477	Alune	alune	alune	\N	12000	-3.0637	128.3752	1
478	Bangani	bangani	bangani	\N	12000	29.8692	79.0686	4
479	Chamalal	chamalal	chamalal	\N	12000	42.5712	46.0739	2
480	Chru	cru	chru	\N	12000	11.4666	109.0500	1
481	Hill Miri	hill miri	miri	\N	12000	27.7078	94.0374	2
482	Jinuo	yinuo	jinuo	\N	12000	21.4758	101.3111	2
483	Muya	muya	muya	\N	12000	30.2593	101.7497	1
484	Samei	samei	sani	\N	12000	25.0756	103.0133	3
485	Tajio	tajio	tajio	\N	12000	-0.0954	120.0173	1
486	Tobada'	tobada'	tobada	\N	12000	-2.0190	119.4708	5
487	Yurt Tatar	tártaro de yurt	tatar yurt	\N	12000	46.3943	48.3288	2
488	Yaqui (Mexico)	yaqui (México)	yaqui (Mexique)	\N	11806	27.6436	-110.2960	1
489	Ch'orti' (Guatemala)	chortí (Guatemala)	ch’orti' (Guatemala)	\N	11734	14.9680	-89.2905	2
490	Filomeno Mata Totonac	totonacano filomeno mata-coahuillán	totonaque de Filomeno Mata	\N	11710	20.1980	-97.7022	1
491	Northern Totonac	totonacano septentrional	totonaque septentrional	\N	11529	20.2741	-97.9550	4
492	Komo	como	komo	\N	11500	9.0804	34.0905	2
493	Tuwuli	bowiri	bowili	\N	11400	7.0572	0.3845	1
494	Poqomam	Poqomam	pokomam	\N	11273	14.6455	-89.7274	2
495	Idu	chulikata	idu	\N	11101	28.6496	95.8419	2
496	Kari'ña (Venezuela)	galibi (Venezuela)	galibi (République bolivarienne du Venezuela)	\N	11000	8.4941	-64.0942	3
497	Machiguenga	machiguenga	machiguenga	\N	11000	-11.8888	-72.9052	2
498	Piaroa (Venezuela)	piaroa (Venezuela)	piaroa (République bolivarienne du Venezuela)	\N	11000	4.5435	-66.7089	1
499	Tuvaluan	tuvaluano	tuvalu	\N	11000	-8.5049	179.1870	2
500	Waunana (Colombia)	waumeo (Colombia)	waunana (Colombie)	\N	11000	4.2806	-77.0581	1
501	Noon	noono	noon	\N	10925	14.8173	-16.5234	1
502	Sampang	sampang	sampang	\N	10810	27.2570	86.9444	1
503	Central Alaskan Yupik (2)	yupí alasquiano central (2)	yupik d'Alaska Centrale (2)	\N	10400	61.4387	-160.4882	1
504	Central Alaskan Yupik (Nuniak Island)	yupí alasquiano central (isla de Nunivak)	yupik d'Alaska Centrale (île Nunivak)	\N	10400	59.8889	-166.2890	1
505	Bukiyip	arapeso montañés	bukiyip	\N	10304	-3.4256	143.0886	1
506	Saparua	saparua	saparua	\N	10216	-3.5757	128.6464	2
507	Darai	darai	darai	\N	10210	27.9264	84.3310	3
508	Bandial	bandal	bandial	\N	10125	12.5317	-16.1553	1
509	Bongo	bongo	bongo	\N	10084	6.1405	31.7999	2
510	Northwestern Tarahumara	tarahumara noroccidental	tarahumara nord-occidental	\N	10031	27.9169	-107.0552	1
511	Algherese Catalan	alguerés	catalan alguerais	\N	10000	40.5638	8.3276	2
512	Aragonese	aragonés	aragonais	\N	10000	42.2935	-0.4394	2
513	Baima	baima	baima	\N	10000	33.1531	103.8696	1
514	Bukharic	bukárico	boukharique	\N	10000	39.8043	64.4224	2
515	Bunun	bunún	bunun	\N	10000	23.3624	121.1077	1
516	Burunge	burunguí	burunge	\N	10000	-4.7297	35.7769	1
517	Chayahuita	chayahuita	chayahuita	\N	10000	-5.3425	-76.6955	2
518	Cherokee (Oklahoma)	cheroki (Oklahoma)	cherokee (Oklahoma)	\N	10000	36.7544	-98.3569	2
519	Dalecarlian	dalecarliano	dalécarlien	\N	10000	61.2385	14.0295	2
520	Huitoto (Colombia, Peru)	huitoto (Colombia, Perú)	huitoto (Colombie, Pérou)	\N	10000	-3.0308	-71.8066	2
521	Hulaula (Israel)	hulaulá (Israel)	hulaula (Israël)	\N	10000	32.2128	34.9118	3
522	Karang	karango	karanga	\N	10000	8.3093	15.3588	1
523	Karelian (Tver)	carelio (Tver)	carélien (Tver)	\N	10000	58.1533	36.1010	2
524	Karone	karon	karone	\N	10000	12.7769	-16.7733	1
525	Kryz	kryts	kriz	\N	10000	41.1455	48.1640	3
526	Kurripako (Colombia, Venezuela)	curripaco (Colombia, Venezuela)	kurripako (Colombie, République bolivarienne du Venezuela)	\N	10000	2.3723	-67.5659	2
527	Kurtöp	kurtöp	kurtöp	\N	10000	27.7127	90.9667	1
528	Lamgang	lamkang	lamgang	\N	10000	24.2569	94.0759	4
529	Miqie	michal miqie	yi de miqie	\N	10000	26.9053	100.8506	2
530	Mojo	mojo	moxo	\N	10000	-14.9660	-65.1708	2
531	Muot	nicobarés central	muot	\N	10000	8.0932	93.4963	4
532	Naiki	naiquí	naiki	\N	10000	19.8287	78.2281	4
533	Ñandeva Guarani	guaraní ñandeva	guarani-ñandeva	\N	10000	-22.0652	-54.7558	1
534	Ngwaba	enguaba	ngwaba	\N	10000	9.9904	12.8100	3
535	North Frisian	frisón septentrional	frison du nord	\N	10000	54.7341	8.7478	3
536	Northern Khanty	jantí septentrional	khanty septentrional	\N	10000	63.7047	66.6760	2
537	Nyah Kur	ñahkur	nyahkur	\N	10000	15.6587	101.5068	2
538	Nyenkha	nyenkha	nyenkha	\N	10000	27.4595	90.4119	1
539	Orang Hulu	yakuno	orang hulu	\N	10000	1.8871	103.9840	2
540	Otoro	otoro	otoro	\N	10000	11.1864	30.6353	3
541	Solon	solon	solon	\N	10000	48.1660	119.4873	2
542	Southern Tujia	tujia meridional	tujia du sud	\N	10000	28.2580	109.9398	3
543	Taba	taba	taba	\N	10000	0.0659	127.4084	1
544	Talu	talu	talu	\N	10000	26.5623	102.8506	1
545	Tamazight (Tunisia)	tamazight (Túnez)	tamazight (Tunisie)	\N	10000	36.0313	9.8767	3
546	Tayal	atayal	tayal	\N	10000	24.5458	121.3591	1
547	Temein	temeino	temein	\N	10000	11.8377	29.4625	3
548	Temiar	temiar	temiar	\N	10000	4.9493	101.4113	2
549	Trukhmen	trukhmenio	trukhmen	\N	10000	44.4886	44.5385	2
550	Vidunda	vidunda	vidunda	\N	10000	-6.8664	37.3040	1
551	Kogui	cogui	kogui	\N	9911	10.8548	-74.0258	1
552	Paloor	palor	paloor	\N	9680	14.7801	-16.8035	1
553	Awakatek (Guatemala)	aguacateco (Guatemala)	awacatèque (Guatemala)	\N	9613	15.3429	-91.3120	1
554	Choctaw (Louisiana)	chocta (Luisiana)	choctaw (Louisiane)	\N	9500	31.6822	-92.1252	1
555	Choctaw (Mississipi)	chocta (Mississipi)	choctaw (Mississippi)	\N	9500	32.7713	-89.1163	1
556	Choctaw (Oklahoma)	chocta (Oklahoma)	choctaw (Oklahoma)	\N	9500	34.1472	-94.8100	1
557	Gawar-Bati	gavar-batí	gawar-bati	\N	9500	35.1580	71.4083	2
558	Taruang	digarú	darang deng	\N	9332	28.1200	95.8800	1
559	Khaling	jalingo	khaling	\N	9288	27.5781	86.7163	2
560	Western Tarahumara	tarahumara occidental	tarahumara occidental	\N	9196	27.3361	-108.5007	1
561	Nunavimmiutitut	nunavimmiutitut	nunavimmiutitut	\N	9105	58.1665	-68.3605	1
562	Woods Cree	clisteno del bosque	cree des bois	\N	9095	55.1711	-102.9061	1
563	Phula (Viet Nam)	pula (Vietnam)	phula (Viet Nam)	\N	9046	22.7833	105.4666	2
564	Dol-po	dolpo	dolpo	\N	9000	29.2193	83.0676	2
565	Helong	helong	helong	\N	9000	-10.1905	123.5247	3
567	Motuo Menba	monpa de Motuo	menba de Motuo	\N	9000	28.6640	94.0347	2
568	Panamahka	panamaka	panamahka	\N	9000	14.2856	-84.5947	1
569	Zuni	zuñí	zuni	\N	9000	35.0820	-108.7600	1
570	Mopán (Belize)	mopán (Belize)	mopán (Belize)	\N	8980	16.2449	-88.8654	3
571	Tulishi	tulishi	tulishi	\N	8628	11.5984	29.0917	3
572	Central Cuicatec	cuicateco central	cuicatèque central	\N	8621	17.8000	-96.9610	1
573	Ts'amay	tsamai	ts'amakko	\N	8621	5.4382	37.2463	2
574	Phalura	phalura	phalura	\N	8600	35.7264	71.7434	2
575	Northern Popoloc	popoloca septentrional	popoloc septentrional	\N	8597	18.6818	-97.6580	1
576	Ixcatlán Mazatec	mazateco de Ixcatlán	mazatèque d'Ixcatlán	\N	8593	18.1447	-96.4855	1
577	Patla-Chicontla Totonac	totonacano de Patla	totonaque de Patla-Chicontla	\N	8590	20.1644	-97.6927	3
578	Toram	toram	toram	\N	8456	11.1581	19.6023	3
579	Northwestern Tlapanec	tlapaneco noroccidental	tlapanèque nord-occidental	\N	8409	17.5595	-98.9332	1
580	Dene	dené	dene	\N	8195	56.4807	-109.4127	1
581	Micmac (Massachusetts)	micmac (Massachussets)	micmac (Massachusetts)	\N	8145	42.3589	-71.0578	2
582	Argobba	argobba	argobba	\N	8000	10.5958	39.9792	4
583	Austral dialects	dialectos de las islas Australes	dialectes des Iles Australes	\N	8000	-23.3775	-149.4909	2
584	Belanda Bor	belanda bor	belanda bor	\N	8000	6.4954	27.7404	2
585	Feroge	feroge	feroge	\N	8000	8.5049	25.7189	1
586	Hachijō	hachijō	hachijō	\N	8000	33.1100	139.7891	2
587	Inga	inga	inga	\N	8000	1.1658	-77.0011	3
588	Kanga	canga	kanga	\N	8000	10.8440	29.4708	3
589	Lajia	lakia	lajia	\N	8000	23.7439	110.0526	2
590	Lakha	lakha	lakha	\N	8000	27.5898	90.3735	2
591	Mbya Guarani (Paraguay)	guaraní mbyá (Paraguay)	mbyá guarani (Paraguay)	\N	8000	-26.5099	-55.2832	2
592	Mundurukú	mundurucú	mundurukú	\N	8000	-8.1027	-57.3486	1
593	Ojibwe	oyibua	ojibwe	\N	8000	46.0706	-93.6677	3
594	Quichua (Salasaca)	quichua (Salasaca)	quichua (Salasaca)	\N	8000	-1.3511	-78.6511	2
595	Rongpo	rangpo	rongpo	\N	8000	30.7229	79.7387	1
596	Sanyi	sanie	sanyi	\N	8000	24.9262	102.5134	3
597	Temuan	temuano	temuan	\N	8000	3.3709	101.9840	3
598	Tingal	tingal	tingal	\N	8000	12.2380	31.1215	2
599	Wampis	huambisa	huambisa (wampis)	\N	8000	-3.4476	-77.7941	1
600	Wunai Bunu	bunú wunai	bunu wunai	\N	8000	24.4146	107.8378	2
601	Yanesha	amuesa	yanesha	\N	8000	-10.3743	-75.2343	3
602	Mam (Mexico)	mam (México)	mam (Mexique)	\N	7977	17.3661	-93.5334	3
603	Pana	pana	pana	\N	7800	13.1650	-3.4277	2
604	Macushi (Guyana)	macusí (Guyana)	macushi (Guyane)	\N	7750	3.6888	-59.4799	1
605	Chukchi	chukoto	tchouktche	\N	7742	67.6248	176.1767	3
606	Cabécar	cabécar	cabecar	\N	7622	9.9012	-83.6844	1
607	Awa Cuaiquer	cuaiquer	awa-cuaiquer	\N	7500	1.4939	-78.5742	4
608	Lishana Deni (Israel)	lishana deni  (Israel)	lishana deni (Israël)	\N	7500	31.7748	35.1013	3
609	Central Pame	pame central	pamé central	\N	7399	21.9208	-99.3741	1
610	Puinave	puinave	puinave	\N	7377	4.4340	-68.1591	2
611	Mebengokre	cayapó	mebengokre	\N	7266	-6.5569	-52.4707	1
612	Tunebo	tunebo	tunebo	\N	7231	6.4463	-72.0483	2
613	Quechua of Peruvian Amazonia	quechua amazónico peruano	quechua de l'Amazonie péruvienne	\N	7200	-2.3723	-74.1137	1
614	Asur	asuri	asuri	\N	7000	22.4719	84.9023	2
615	Bashkardi	baskardí	bashkardi	\N	7000	28.5169	57.7551	2
616	Burji	buryí	burji	\N	7000	2.1857	37.9248	1
617	Choyi	queyu	choyi	\N	7000	30.8519	99.6659	2
618	Gazi	gazi	gazi	\N	7000	32.8036	51.6211	2
619	Guichong	guichión	guiqiong	\N	7000	30.8148	101.7021	1
620	Karagash	tofa	karagash	\N	7000	47.2643	47.2412	2
621	Natanzi	natanzí	natanzi	\N	7000	33.4520	51.3006	3
622	Nayini	nayiní	nayini	\N	7000	32.8519	53.1573	3
623	Parya	parya	parya	\N	7000	38.5094	68.0932	3
624	Segeju	daiso	segeju	\N	7000	-4.8173	39.0783	3
625	Sivandi	sivandi	sivandi	\N	7000	29.9168	51.5945	2
626	Soi	soi	soi	\N	7000	31.6533	55.6787	2
627	Tucano (Brazil)	tucano (Brasil)	tucano (Brésil)	\N	7000	0.1757	-67.2363	1
628	Wapishana (Guyana)	wapishana (Guyana)	wapishana (Guyane)	\N	7000	2.3065	-59.6997	1
629	Yulu	yulu	yulu	\N	7000	8.3854	24.1754	1
630	Zhaba	chaba	zhaba	\N	7000	31.4000	100.4734	1
631	Sakapultek	sacapulteco	sakapultèque	\N	6973	14.9752	-91.0527	2
632	Chara	chara	chara	\N	6932	6.4790	36.3647	1
633	Kosraean	kosreano	kosrae	\N	6900	5.3220	162.9904	3
634	Waunana (Panama)	waumeo (Panamá)	waunana (Panama)	\N	6882	8.2984	-78.1018	3
635	San Francisco del Mar Huave	huave de San Francisco del Mar	huave de San Francisco del Mar	\N	6874	16.3333	-94.5166	4
636	Northern East Cree	clisteno nororiental	cree du nord-est	\N	6870	53.6916	-78.8011	1
637	Micmac (Canada)	micmac (Canadá)	micmac (Canada)	\N	6850	45.9646	-60.6172	1
638	Northern Tepehuán	tepehuano septentrional	tepehuan septentrional	\N	6802	26.4258	-107.2683	2
639	Miju	miju	miju	\N	6700	28.1155	96.2896	1
640	Rio Grande Keresan	queresano de Río Grande	keresan du Rio Grande	\N	6685	35.5147	-106.3655	2
641	Western Mazatec	mazateco del oeste	mazatèque occidental	\N	6639	18.1351	-96.9057	1
642	Bussa	busa	bussa	\N	6624	5.7225	37.1406	1
643	Beli	beli	beli	\N	6600	6.4736	29.2675	2
644	Chesu	chesu	chesu	\N	6600	24.4211	102.0459	2
645	Thuri	thuri	thuri	\N	6600	8.4397	25.4333	1
646	Karata	karata	karata	\N	6574	42.5874	46.3348	2
647	Saulteau	saulteaux	saulteau	\N	6558	50.5573	-98.6562	1
648	Kumāle	kumhali	kumāle	\N	6533	27.7880	84.5480	3
649	Lower Northwestern Otomí	otomí noroccidental bajo	bas otomí du nord-est	\N	6509	20.1865	-100.1469	1
650	Dimme	dimé	dime	\N	6501	5.9548	36.2988	1
651	Chiquitano (Bolivia)	Chiquitano (Bolivia)	chiquitano (État plurinational de Bolivie)	\N	6500	-16.5835	-61.6113	2
652	Tumtum	tumtum	tumtum	\N	6500	10.4770	30.4321	3
653	Bezhta	bejila	bezhta	\N	6461	42.1369	46.1508	2
654	Thakali	thakali	thakali	\N	6441	28.7146	83.6478	1
655	Dongotono	dongotono	dongotono	\N	6219	4.9650	35.3210	1
656	Mawé	mawé-sateré	mawé	\N	6219	-3.8642	-56.7773	1
657	Shor	sorio	chor	\N	6210	53.0544	87.7478	3
658	Central Tlapanec	tlapaneco central	tlapanèque cental	\N	6191	17.2624	-98.7482	1
659	Oji-Cree	oyi-clisteno	oji-cree	\N	6110	53.8141	-94.8977	1
660	Keiga	keiga	keiga	\N	6072	11.3184	29.6960	3
661	Ampibabo Lauje	lauje	ampibabo-lauje	\N	6000	0.3295	120.1904	1
662	Cashinahua (Brazil)	cashinahua (Brasil)	cashinahua (Brésil)	\N	6000	-9.2603	-71.5304	1
663	Geji cluster	grupo geji	groupe geji	\N	6000	10.1960	9.5581	3
664	Mbya Guarani (Brazil)	guaraní mbyá (Brasil)	mbyá guarani (Brésil)	\N	6000	-30.1451	-50.6250	1
665	Moklen	moklen	moklen	\N	6000	8.1953	98.3036	2
666	Nauruan	nauruano	nauruan	\N	6000	-0.5300	166.9221	3
667	Nheengatu / Yeral (Brazil)	nheengatú  (Brasil)	nheengatú / yeral (Brésil)	\N	6000	-0.4833	-67.0166	3
668	Parachi	parachí	parachi	\N	6000	34.4658	68.6370	2
669	Quechua of San Martín	quechua de San Martín	quechua de San Martín	\N	6000	-6.5336	-76.4428	3
670	Sawkna	sokna	sawkna	\N	6000	27.2520	17.7539	4
671	Sulung	sulung	sulung	\N	6000	27.8390	92.8784	2
672	Tindi	tindi	tindi	\N	6000	42.4660	46.1453	2
673	Western Apache	apache occidental	apache occidental	\N	6000	33.2563	-110.4637	2
674	Yanomami (Brazil)	yanomamö (Brasil)	yanomami (Brésil)	\N	6000	3.0746	-63.4570	1
675	Yazgulami	yazgulamí	yazgulâmi	\N	6000	38.1982	71.4276	3
676	Chantyal	chantel	chantyal	\N	5912	28.4493	83.4054	2
677	Mortlockese	mortlock	mortlock	\N	5904	5.5811	153.5668	2
678	Baníwa do Içana	baniwa	baniwa de l'Içana	\N	5811	1.2743	-68.2910	1
679	Akawaio (Guyana, Venezuela)	akawaio (Guyana, Venezuela)	akawaio (Guyane, République bolivarienne du Venezuela)	\N	5800	5.3753	-60.5126	2
680	Akhvakh	ajvaj	akhvakh	\N	5793	42.4720	46.3238	2
681	Veps	vepsio	veps	\N	5753	60.3269	34.8046	3
682	Qikiqtaaluk nigiani	qikiqtaaluk nigiani	nigiani de Qikiqtaaluk	\N	5740	63.7577	-68.5178	1
683	Sipakapense	sipacapense	sipakapense	\N	5687	15.2121	-91.6335	2
684	Bribri (Costa Rica)	talamanca (Costa Rica)	bribri (Costa Rica)	\N	5647	9.5596	-83.3073	1
685	Bainouk-Gunyaamolo	bainuko-gunyaamolo	bainouk-gunyaamolo	\N	5635	12.7421	-16.1141	1
686	Kwatay	kwatay	kwatay	\N	5625	12.4204	-16.7596	3
687	Baheng (Viet Nam)	baheng (Vietnam)	baheng (Viet Nam)	\N	5569	22.8166	106.3500	1
688	Central Zoque	zoqué central	zoque central	\N	5500	17.0965	-93.2095	2
689	Dameli	damelí	dameli	\N	5500	35.5780	71.8684	3
690	Sak (Bangladesh)	sak (Bangladesh)	sak (Bangladesh)	\N	5500	21.5041	92.2055	3
691	Yidgha	munyaní	yidgha	\N	5500	36.0024	71.6006	2
692	Southeastern Tarahumara	tarahumara suroriental	tarahumara du sud-est	\N	5406	26.0891	-106.9645	1
693	Chimané	chimané	chimané	\N	5300	-15.2629	-66.8518	1
694	Dilling	dillingo	dilling	\N	5295	12.0178	29.6630	2
695	San Dionisio del Mar Huave	huave de San Dionisio del Mar	huave de San Dionisio	\N	5165	16.3166	-94.7500	2
696	Lafofa	lafofa	lafofa	\N	5140	10.3716	30.6243	3
697	Akeu	akeu	akeu	\N	5000	21.5833	101.0166	2
698	Anung (China)	anung (China)	anong (Chine)	\N	5000	26.7368	98.7766	4
699	Bagvalal	bagvalal	bagvalal	\N	5000	42.5247	46.1920	2
700	Bambassi	bambeshi	bambassi	\N	5000	9.7469	34.7662	2
701	Barí	motilón	barí	\N	5000	9.0261	-73.2678	1
702	Bartangi	bartangí	bartangi	\N	5000	38.0480	71.8286	3
703	Bokar	bokar	bokar	\N	5000	28.8735	94.3807	1
704	Brokpa	sagtenpa	brokpa	\N	5000	27.3766	91.9981	2
705	Creek	muskoguí	creek	\N	5000	35.6319	-95.9616	2
706	Cubeo (Colombia)	cubeo (Colombia)	cubeo (Colombie)	\N	5000	1.5000	-70.5000	1
707	Dagur (Hailar)	daguro (Hailar)	dagour (Hailar)	\N	5000	48.6111	119.7949	2
708	Damal	damal	damal	\N	5000	-4.2806	137.0324	1
709	Dhaiso	daisa	dhaiso	\N	5000	-5.0745	38.4741	2
710	Gorum	gorumo	gorum	\N	5000	18.6670	83.0346	2
711	Guarayu	guarayo	guarayu	\N	5000	-15.9190	-62.8747	2
712	Gutnish	gotlandiano	gutnisk	\N	5000	57.3027	18.5284	2
713	Hopi	hopí	hopi	\N	5000	35.8721	-110.6205	1
714	Ilue	ilue	ilue	\N	5000	4.9185	8.2397	4
715	Jibbali	yibalí	jibbali	\N	5000	18.0623	52.4267	3
716	Kalasha	calasa	kalasha	\N	5000	35.6684	71.7201	3
717	Kami	kami	kami	\N	5000	-6.8937	37.1337	3
718	Kathu	gasu	katou	\N	5000	24.1360	105.2490	2
719	Khojki	luvatí	khojki	\N	5000	23.6193	58.5653	3
720	Khwe	xun	khwe	\N	5000	-18.2710	21.4892	2
721	Kom	kom	kom	\N	5000	24.0414	93.6639	2
722	Korandje	Korandje	korandje	\N	5000	29.4049	-3.2605	3
723	Lachi	lati	lachi	\N	5000	22.5000	104.1333	2
724	Mak	ching	mak	\N	5000	25.5532	107.3809	2
725	Manihiki	manihiki-rakahanga	manihiki	\N	5000	-10.4000	-161.0000	2
726	Megleno-Romanian	rumano meglenita	mégléno-roumain	\N	5000	41.1042	22.2025	3
727	Miji	miji	miji	\N	5000	27.3351	92.5735	2
728	Mo'ang (China)	moang (China)	mo’ang (Chine)	\N	5000	23.8421	103.9116	2
729	Mo'ang (Viet Nam)	moang (Vietnam)	mo’ang (Viet Nam)	\N	5000	22.7833	105.3666	2
730	Molise Croatian	croata molise	croate de Molise	\N	5000	41.8787	14.7065	3
731	Moroccan Judeo-Arabic (Morocco)	judeo-árabe marroquí (Marruecos)	judéo-arabe marocain (Maroc)	\N	5000	34.0435	-5.0097	3
732	Namuyi	namuyi	namuyi	\N	5000	28.0727	101.9565	1
733	Padoe	padoe	padoe	\N	5000	-2.6467	121.2615	1
734	Patamona (Guyana)	patamona (Guyana)	patamona (Guyane)	\N	5000	4.5873	-59.8095	1
735	Pu	pur	pu	\N	5000	8.2549	93.1022	4
736	Pume	yaruro	yaruro	\N	5000	6.7518	-68.2470	2
737	Singpho	yingpho	singpho	\N	5000	27.5569	96.7456	2
738	Turi	turi	turi	\N	5000	21.8411	87.2973	2
739	Udi (Azerbaijan)	udi (Azerbaiyán)	oudi (Azerbaïdjan)	\N	5000	41.0689	47.4609	3
740	Yecuana (Venezuela)	ye'cuana (Venezuela)	yecuana (République bolivarienne du Venezuela)	\N	5000	4.8501	-64.5117	1
741	Jirel	jirel	jirel	\N	4919	27.6419	86.2123	2
742	Dolgan	dolgán	dolgane	\N	4865	71.3851	97.3388	2
743	Romani (Colombia)	Romaní (Colombia)	\N	\N	4858	\N	\N	1
744	Tsum	tsum	tsum	\N	4786	28.4723	85.0080	2
745	Northern Tlapanec	tlapaneco septentrional	tlapanèque septentrional	\N	4771	17.4203	-98.7814	1
746	Taroko	taroko	taroko	\N	4750	24.0916	121.5218	1
747	Kivallirmiutut	kivallirmiutut	kivallirmiut	\N	4675	61.0982	-94.1201	1
748	Puebla Mazatec	mazateco de Puebla	mazatèque de Puebla	\N	4660	18.4760	-96.8351	1
749	Zapotec of Petapa	zapoteco de Petapa	zapotèque de Petapa	\N	4613	16.8333	-95.1166	2
750	Dungmali	dungmali	dungmali	\N	4609	27.1874	87.1902	2
751	Saryg Yugur	yugur sarig	sari yougour	\N	4600	39.2747	98.8439	3
752	Qikiqtaaluk uannangani	qikiqtaaluk uannangani	uannangani de Qikiqtaaluk	\N	4550	69.3878	-81.6150	1
753	Afitti	afitti	afitti	\N	4512	12.4419	30.7534	3
754	Nomatsiguenga	nomatsiguenga	nomatsiguenga	\N	4500	-11.3292	-74.3664	3
755	Piapoko	piapoko	piapoko	\N	4500	4.0396	-68.0712	2
756	Tokelauan	tokelauano	tokelau	\N	4500	-9.1699	-171.8206	3
757	Wotu	wotu	wotu	\N	4500	-2.6303	120.8880	1
758	Wambule	wambule	wambule	\N	4471	27.1746	86.4363	1
759	Southern East Cree	clisteno suroriental	cree du sud-est	\N	4455	50.5870	-73.6365	1
760	Arbore	arbore	arbore	\N	4441	5.0690	36.8920	2
761	Ebang	heibano	ebang	\N	4412	11.3130	30.5886	3
762	Tafi	tafi	tafi	\N	4400	6.7300	0.4421	1
763	Puma	puma	puma	\N	4310	26.9692	86.9004	3
764	Gyele	guiele	gyele	\N	4280	2.2241	9.8986	2
765	Bwisi	talinga-bwisi	bwisi	\N	4248	-3.5572	11.4477	2
766	Eastern Montagnais	montañés oriental	montagnais de l'est	\N	4180	50.2136	-66.1930	1
767	Atikamekw	atikamek	atikamekw	\N	4155	47.2104	-74.3827	1
768	Western Zoque	zoqué occidental	zoque occidental	\N	4100	16.9063	-91.7333	1
769	Acoma-Laguna	queresano occidental	acoma-laguna	\N	4000	34.8964	-107.5816	2
770	Aka	aka	aka	\N	4000	27.1666	92.6312	2
771	Baga Manduri	baga maduri	baga manduri	\N	4000	10.0986	-14.0405	2
772	Baga Sitemu	baga sitemu	baga sitemou	\N	4000	10.1094	-14.1586	3
773	Botlikh	botlij	botlikh	\N	4000	42.6602	46.2222	2
774	Bunan	bunán	bunan	\N	4000	32.7503	76.2451	2
775	Cashinahua (Peru)	cashinahua (Perú)	cashinahua (Pérou)	\N	4000	-10.3581	-71.5869	2
776	Cha'palaa	cayapa	chapalaa	\N	4000	0.9386	-79.0055	2
777	Evenki (Manchuria)	evenki (Manchuria)	évenki (Mandchourie)	\N	4000	50.3400	123.4300	3
778	Gazhuo	kaduo	gazhuo	\N	4000	24.0959	102.5463	2
779	Godoberi	godoberí	godoberi	\N	4000	42.6430	46.1027	2
780	Kari'ña (Guyana, Suriname)	galibi (Guyana, Surinam)	galibi (Guyane, Suriname)	\N	4000	6.8828	-60.2929	3
781	Lishan Didan (Israel)	lishanán (Israel)	lishan didan (Israël)	\N	4000	32.0383	34.7827	3
782	Maleng	pakatan	maleng	\N	4000	18.0166	105.0000	2
783	Napu	napu	napu	\N	4000	-1.2882	120.2536	1
784	Rahambuu	rahambuu	rahambuu	\N	4000	-3.1898	121.0858	1
785	Shingsaba	lhomi	lhomi	\N	4000	27.7163	87.4731	1
786	Sinkiang Dagur	daguro de Xinjiang	dagour du Sinkiang	\N	4000	46.7737	83.0017	2
787	Taa	engamaní	taa	\N	4000	-24.1367	20.1049	2
788	Tennet	tenet	tennet	\N	4000	4.8611	33.2226	1
789	Wapishana (Brazil)	wapishana (Brasil)	wapishana (Brésil)	\N	4000	2.8113	-61.2377	2
790	Yagua	yagua	yagua	\N	4000	-3.3598	-72.3779	2
791	Yanomám	yanomámi	yanomam	\N	4000	3.3818	-63.8085	1
792	Yanomami (Venezuela)	yanomamö (Venezuela)	yanomami (République bolivarienne du Venezuela)	\N	4000	2.5918	-64.7314	1
793	Younuo Bunu	bunú yunuo	bunu younuo	\N	4000	25.1463	106.5405	2
794	Zenaga (Mauritania)	zenaga  (Mauritania)	zenaga (Mauritanie)	\N	4000	17.3086	-13.0078	3
795	Baghati	baghati	baghati	\N	3976	31.1940	77.0471	4
796	Bharmauri	gaddi	bharmauri	\N	3976	32.4912	76.8383	2
797	Uspantek	uspanteco	uspantèque	\N	3971	15.3475	-90.8684	1
798	Khang Quang Lam	jang	khang quang lam	\N	3921	22.0333	102.6666	3
799	Konni	konni	koma	\N	3800	10.3311	-1.6973	1
800	Tocho	tocho	tocho	\N	3800	10.8764	30.1135	3
801	Mixtec of the Puebla-Oaxaca border	Mixteco de la frontera Puebla-Oaxaca	mixtèque de la frontière Puebla-Oaxaca	\N	3791	18.1333	-97.6833	2
802	Nupri	nubrí	nupri	\N	3776	28.6384	84.6079	2
803	Ayoreo	ayoreo	ayoreo	\N	3700	-18.7190	-59.6228	2
804	Moyon	moyon	moyon	\N	3700	24.4171	94.3780	2
805	Utsat	utsat	utsat	\N	3700	18.2727	109.3871	2
806	Nayi	nayí	nayi	\N	3656	7.2698	36.1724	1
807	Mussau-Emira	emira	mussau-emira	\N	3651	-1.4774	149.6392	2
808	Narim	longarim	narim	\N	3623	4.9048	34.2224	2
809	Garífuna (Guatemala)	garífuna (Guatemala)	garifuna (Guatemala)	\N	3564	15.8268	-88.7506	1
810	Nachiring	nacherín	nachiring	\N	3553	27.4144	86.7521	3
811	Eastern Popoloc	popoloca oriental	popoloc oriental	\N	3544	18.3322	-97.3471	1
812	Nding	nding	nding	\N	3513	10.4121	30.6024	4
813	Anung (Myanmar)	anung (Myanmar)	anong (Myanmar)	\N	3500	27.2000	98.6333	3
814	Camsá	camsá	camsá	\N	3500	0.8788	-76.7724	2
815	Crow	absáraca	crow	\N	3500	45.5963	-107.4613	2
816	Sak (Myanmar)	sak (Myanmar)	sak (Myanmar)	\N	3500	21.2333	93.0761	1
817	Shwai	chirumba	shwai	\N	3500	11.3184	30.4156	4
818	Wano	wano	wano	\N	3500	-3.5463	137.9058	2
819	Northwestern Ojibwe	oyibua noroccidental	ojibwe du nord-ouest	\N	3465	52.0016	-95.4274	1
820	Bakpinka	bakpinka	bakpinka	\N	3416	5.3644	8.2397	4
821	Morokodo	morocodo	morokodo	\N	3400	6.0313	29.7949	3
822	Eloxochitlán Mazatec	mazateco de Eloxochitlán	mazatèque d'Eloxochitlán	\N	3384	18.1754	-96.8765	1
823	Menik	budik	ménik	\N	3375	12.7528	-12.2717	2
824	Teribe (Panama)	naso (Panamá)	teribe (Panama)	\N	3305	9.4472	-82.5166	2
825	Tima	tima	tima	\N	3305	11.7033	29.1934	3
826	Mursi	mursi	mursi	\N	3278	5.5831	36.5075	1
827	Pendau	pendau	pendau	\N	3200	0.1922	120.0091	1
828	Ayautla Mazatec	mazateco de Ayautla	mazatèque d'Ayautla	\N	3192	18.0190	-96.7441	1
829	Yucatec	yucateco	yucatèque	\N	3155	17.0922	-89.1221	2
830	Sayultec	sayulteco	sayultec	\N	3150	17.8816	-94.9597	2
831	Eastern Tlapanec	tlapaneco oriental	tlapanèque oriental	\N	3088	17.8135	-98.6040	1
832	Juhur (Caucasus)	judeo-tatí (Cáucaso)	juhuri (Caucase)	\N	3016	42.0044	48.2409	2
833	Awjila	auyila	awjila	\N	3000	26.6278	24.5214	3
834	Baleasang	balaesano	baleasang	\N	3000	-0.0494	119.6850	2
835	Benga	benga	benga	\N	3000	0.9997	9.8657	2
836	Besoa	bada	behoa	\N	3000	-1.7163	120.4211	1
837	Boni	boni	boni	\N	3000	-0.8294	40.8142	2
838	Bonjo	bonjo	bonjo	\N	3000	1.7712	17.9598	3
839	Brokshat	broskatí	brokpa	\N	3000	34.6478	76.4978	2
840	Budukh	buduj	boudoukh	\N	3000	41.1207	48.3233	3
841	Dahaalik	dahaalik	dahlik	\N	3000	15.6917	40.0671	4
842	East Greenlandic	groenlandés oriental	tunumiit oraasiat	\N	3000	65.6061	-37.6858	2
843	Eastern Khanty	jantí oriental	khanty oriental	\N	3000	61.2491	74.5092	2
844	Fyem	fyam	fyem	\N	3000	9.6332	8.8632	3
845	Geta?	geta	geta?	\N	3000	18.2293	82.7270	3
846	Gura	gura	gura	\N	3000	10.0750	6.8499	3
847	Harsusi	harsusi	harsusi	\N	3000	19.9372	56.2637	2
848	Hozo	hozo-seco	hozo	\N	3000	9.3352	34.5300	2
849	Jemez	towa	jemez	\N	3000	35.6151	-106.7242	1
850	Kamara	kamara	kamara	\N	3000	9.0858	-2.2576	2
851	Kapingamarangi	kapingamarangi	kapingamarangi	\N	3000	1.0828	154.8081	3
852	Koitabu	coita	koitabu	\N	3000	-9.3460	147.1179	1
853	Kuk	kuk	kuk	\N	3000	6.4326	10.2365	2
854	Lai	palyu	paliu	\N	3000	24.4871	105.2160	2
855	Limirong Tibetan	limirong	tibétain de Limirong	\N	3000	29.9164	81.7617	2
856	Lishanid Noshan (Israel)	lisánido nosán (Israel)	lishanid noshan (Israël)	\N	3000	31.7188	34.7772	3
857	Lude	ludio	lude	\N	3000	61.5867	33.6813	3
858	Mbya Guarani (Argentina, Uruguay)	guaraní mbyá (Argentina, Uruguay)	mbyá guarani (Argentine, Uruguay)	\N	3000	-29.6116	-57.4804	3
859	Mohawk (Akwesasne, St. Regis)	mohaqués (Akwesasne, St Regis)	mohawk (Akwesasne, St. Regis)	\N	3000	45.0033	-74.6497	2
860	Nanay	nanái	nanaï	\N	3000	49.3537	136.5243	3
861	Palu'e	palu'e	palu'e	\N	3000	-8.3242	121.7106	2
862	Panare	panare	panare	\N	3000	6.5445	-66.4233	1
863	Pilagá	pilagá	pilagá	\N	3000	-25.4035	-58.6669	1
864	Pitjantjatjara	pichanchachara	pitjantjatjara	\N	3000	-26.0719	129.9517	1
865	Pukur	baga de Binari	pukur	\N	3000	10.4013	-14.4799	2
866	Rotuman	rotumano	rotuman	\N	3000	-12.5063	177.0776	1
867	Savi	saví	savi	\N	3000	35.2085	71.8450	2
868	Sherdukpen	sherdukpen	sherdukpen	\N	3000	27.1935	92.3510	1
869	Shira Yugur	yugur sira	shira yougur	\N	3000	39.1002	99.2065	3
870	Takahanyilang	takahanyilang	takahanyilang	\N	3000	6.8500	93.8726	4
871	U	u	u	\N	3000	23.4844	99.8404	2
872	Ulithian	ulitiano	ulithi	\N	3000	10.0229	139.6801	3
873	Waima'a	vaimaa	waima'a	\N	3000	-8.4995	126.3372	2
874	Warlpiri	valpiri	warlpiri	\N	3000	-20.8177	131.6601	1
875	Yukpa	yukpa	yukpa	\N	3000	9.7956	-72.9382	1
876	Western Montagnais	montañés occidental	montagnais de l'ouest	\N	2980	48.9635	-68.5729	1
877	Waiwai (Brazil)	waiwai (Brasil)	waiwai (Brésil)	\N	2916	-0.7909	-58.2714	1
878	Jersey French	francés de Jersey	jersiais	\N	2874	49.2211	-2.1368	3
879	Bahing	bahing	bahing	\N	2765	27.3126	86.5571	2
880	Stoney	estoni	stoney	\N	2765	51.1610	-114.8533	1
881	Southwestern Tepehuan	tepehuano suroccidental	tepehuan sud-occidental	\N	2756	22.8349	-105.7276	1
882	Northern Mansi	mansí septentrional	mansi du Nord	\N	2746	62.6539	63.1494	3
883	Bisu	bisú	bisu	\N	2740	19.7150	99.6789	2
884	Wari	tubarão/ huarí	wari	\N	2721	-11.7275	-65.0061	2
885	Pakan	bugán	pakan	\N	2700	23.7447	105.2235	2
886	Yami	yami	yami	\N	2700	22.0512	121.5403	1
887	Ko	ko	ko	\N	2683	10.6714	30.8386	4
888	Yuracaré	yuracaré	yuracaré	\N	2675	-16.6888	-65.4345	2
889	Aimol	aimol	aimol	\N	2643	24.4971	93.6145	4
890	Kohi	koi	kohi	\N	2641	27.3607	86.8661	1
891	Chatino of the western lowlands	chatino de la zona baja occidental	chatino des basses-terres occidentales	\N	2640	16.3049	-97.5466	2
892	Bolo	bolo	bolo	\N	2627	-10.5526	14.9633	2
893	Logol	logol	logol	\N	2600	10.8521	30.6463	3
894	Sila	sila	sila	\N	2600	22.3094	102.0410	2
895	Pisaflores Tepehua	tepehuano de Pisa Flores	tepehua de Pisaflores	\N	2578	20.6883	-98.0125	1
896	Xerente	xerénte	xerente	\N	2569	-9.3356	-48.2227	3
897	Bribri (Panama)	talamanca (Panamá)	bribri (Panama)	\N	2521	9.4813	-82.6174	3
898	Achuar	achuar chicham	achuar chicham	\N	2500	-2.8991	-77.4316	2
899	Bai	bai	bai	\N	2500	8.0592	25.5102	2
900	Banka	banka	banka	\N	2500	11.4261	-5.6744	2
901	Culina (Peru)	culina (Perú)	culina (Pérou)	\N	2500	-9.6224	-70.7958	2
902	Gadang	gadango	gadang	\N	2500	10.3473	17.2485	2
903	Khinalug	jinalug	khinalough	\N	2500	41.1579	48.0706	3
904	Laomian (China)	laomian (China)	laomian (Chine)	\N	2500	23.7645	100.0195	2
905	Laomian (Myanmar)	laomian (Myanmar)	laomien (Myanmar)	\N	2500	22.6833	99.2500	2
906	Lhokpu	lokpu	lhokpu	\N	2500	26.9514	89.2968	2
907	Martuwangka	martu wangka	martu wangka	\N	2500	-24.1975	122.9589	1
908	Mayoruna (Peru)	matsés (Perú)	mayoruna (Pérou)	\N	2500	-5.5285	-73.4765	1
909	Pingelapese	pingilapés	pingelap	\N	2500	6.2279	160.7107	3
910	Rapanui	rapanui	rapanui	\N	2500	-27.1080	-109.3579	3
911	Remo	remo	remo	\N	2500	19.1659	82.6391	3
912	Roshorvi	oroshori	roshorvi	\N	2500	38.1086	72.1719	3
913	Sanglechi	sanglechí	sanglîchi	\N	2500	36.6585	71.4784	3
914	Semelai	semelái	semelai	\N	2500	3.1761	102.4818	3
915	Urak Lawoi (Malaysia)	urak lawoi (Malasia)	urak lawoi’ (Malaisie)	\N	2500	6.4194	99.7869	2
916	Urak Lawoi (Thailand)	urak lawoi (Tailandia)	urak lawoi (Thaïlande)	\N	2500	7.7756	98.3306	2
917	Zirenkel	zirenkel	zirenkel	\N	2500	12.1360	18.4735	2
918	Vumbu	vumbu	vumba	\N	2460	-1.8783	10.8160	2
919	Mopán (Guatemala)	mopán (Guatemala)	mopán (Guatemala)	\N	2455	16.5144	-89.4167	3
920	Cuiba	cuiba	cuiba	\N	2445	6.4463	-69.9389	3
921	Raji	raji	raji	\N	2413	27.9721	82.3135	3
922	Highland Chontal	chontal de la sierra	chontal des hautes terres	\N	2410	16.2832	-95.8570	3
923	Yasa	yasa	yasa	\N	2401	2.3284	9.8464	2
924	Bumbita Arapesh	arapeso bumbita	bumbita arapesh	\N	2353	-3.6449	142.8002	1
925	Mang (China)	mang (China)	mang (Chine)	\N	2300	22.8293	103.1039	2
926	Mang (Viet Nam)	mang  (Vietnam)	mang (Viet Nam)	\N	2300	22.3500	102.9666	2
927	Tlachichilco Tepehua	tepehuano de Tlachichilco	tepehua de Tlachichilco	\N	2234	20.6205	-98.1991	2
928	Blackfoot (Canada)	pies negros (Canadá)	pied-noir (Canada)	\N	2200	49.3535	-113.2884	2
929	Jaya	yaya	jaya	\N	2200	12.1870	18.1645	3
930	Karipuna do Amapá	karipuna del Amapá	karipuna de l'Amapá	\N	2200	3.3379	-51.6796	1
931	Kulfa	kulfa	koulfa	\N	2200	9.9742	19.1848	2
932	Krahô	krahó	krahô	\N	2184	-8.4071	-47.2851	1
933	Kristang	papia kristang	kristang	\N	2150	2.1935	102.2560	3
934	Yine	piro	yine	\N	2150	-11.4584	-73.0261	2
935	North Alaskan Inupiaq (Kotzebue Sound)	inuí alaskiano septentrional (estrecho de Kotzebue)	Inupiaq du nord de l'Alaska  (Golfe de Kotzebue)	\N	2144	66.8972	-162.5855	3
936	North Alaskan Inupiaq (North Slope)	inuí alaskiano septentrional (zona ártica septentrional)	Inupiaq de nord de l'Alaska (North Slope)	\N	2144	71.2725	-156.7749	3
937	Seward Peninsula Inupiaq (King Island)	inuit de la Península Seward (i. del Rey)	inupiaq de la péninsule de Seward  (King Island)	\N	2144	64.9728	-168.0616	4
938	Seward Peninsula Inupiaq (Little Diomede Island)	inuit de la Península Seward (i. Diómedes menor)	inupiaq de la péninsule de Seward (Petite Diomède)	\N	2144	65.7550	-168.9167	4
939	Seward Peninsula Inupiaq (Norton Sound)	inuit de la Península Seward (estrecho de Norton)	inupiaq de la péninsule de Seward (Norton Sound)	\N	2144	64.5433	-163.0290	4
940	Katukína-Kanamarí	canamarí	katukína-kanamarí	\N	2100	-5.6159	-68.7304	1
941	Tiwi	tiví	tiwi	\N	2100	-11.6091	130.8911	1
942	Zaozou	zaozou	zaozou	\N	2100	26.1554	99.2944	1
943	Ngäbere (Costa Rica)	guaymí (Costa Rica)	ngäbere (Costa Rica)	\N	2041	8.4723	-82.9907	2
944	Aiton	aitón	aiton	\N	2000	26.6523	94.2901	3
945	Anindilyakwa	anindilyakwa	anindilyakwa	\N	2000	-13.9987	136.5820	1
946	Apurinã	apurinã	apurinã	\N	2000	-5.4847	-63.8964	2
947	Arrernte	aranda	arrernte	\N	2000	-24.1668	132.0996	1
948	Ashkun	askún	ashkun	\N	2000	34.9973	71.0746	2
949	Ata	ata	ata	\N	2000	9.6081	122.9155	4
950	Athpahariya	atpariya	athpahariya	\N	2000	26.9520	87.3399	2
951	Ava-Guaraní	avá-guaraní	ava-guarani	\N	2000	-23.1403	-64.3359	2
952	Bayso	bayso	bayso	\N	2000	6.4081	37.7490	2
953	Birhor	birhor	birhor	\N	2000	21.7594	85.9350	4
954	Boano	boano	boano	\N	2000	0.4724	120.9979	1
955	Bori	bori	bori	\N	2000	28.9889	94.4439	2
956	Chepya	chepya	chepya	\N	2000	21.3833	101.8166	2
957	Chilisso	chiliss	chilisso	\N	2000	35.2136	73.2396	3
958	Culina (Brazil)	culina (Brasil)	culina (Brésil)	\N	2000	-7.1008	-68.7744	1
959	Damana	malayo	damana	\N	2000	10.9196	-73.4985	2
960	Duguza	duguza	duguza	\N	2000	9.9039	9.1186	2
961	Galibi Marworno	caribe-marworno	galibi-marworno	\N	2000	3.4256	-52.0312	1
962	Gats'ama - Ganjule - Harro	gatsama - ganjule - harro	harro	\N	2000	5.9548	37.5292	2
963	Gebe	gebe	gebe	\N	2000	-0.1922	129.5397	1
964	Ghadames	gadamés	ghadamès	\N	2000	30.1166	9.5251	1
965	Griko (Calabria)	griko calabrés	griko (Calabre)	\N	2000	37.9961	15.9329	3
966	Huilliche	huilliche	huilliche	\N	2000	-40.4803	-73.5424	4
967	Ik	ik	ik	\N	2000	3.5024	34.1894	3
968	Jangshung	yansún	jangshung	\N	2000	31.7748	78.4753	2
969	Jero	yerún	jero	\N	2000	27.2241	86.3909	1
970	Kari'ña (French Guyana)	galibi (Guayana Francesa)	galibi (Guyane Française)	\N	2000	5.5066	-53.6572	2
971	Khamnigan Mongol	mongol jamnigan	khamnigan mongol	\N	2000	50.3454	114.1094	2
972	Kona	jukun kona	kona	\N	2000	9.0587	11.2829	3
973	Koreguaje	coreguaje	koreguaje	\N	2000	1.0000	-75.0000	2
974	Koryak	coriaco	koryak	\N	2000	61.8561	168.6621	3
975	Kota	cota	Kota	\N	2000	11.4154	76.8576	4
976	Logorik	logori	logorik	\N	2000	11.1433	29.8306	4
977	Lule Saami	saamí de Lule	lule saami	julevsábme	2000	67.2720	17.7978	3
978	Luro	teressa	luro	\N	2000	7.9150	93.3837	4
979	Mambai	mambai	mambay	\N	2000	9.6007	14.0899	3
980	Milang	milang	milang	\N	2000	28.4880	95.2954	2
981	Mocoví	mocoví	mocoví	\N	2000	-27.6056	-59.7656	2
982	Momuna	momuna	momuna	\N	2000	-5.0000	139.0000	1
983	Mpi	mpi	mpi	\N	2000	18.2554	100.2227	2
984	Muda	muda	muda	\N	2000	21.8421	100.6851	1
985	Munji	munyí	munji	\N	2000	36.0379	70.6723	3
986	Nguon	nguôn	nguon	\N	2000	17.5333	105.3833	1
987	Nheengatu / Yeral (Venezuela)	nheengatú (Venezuela)	nheengatú / Yeral (République bolivarienne du Venezuela)	\N	2000	1.2303	-66.8408	3
988	Nihali	nihali	nihali	\N	2000	20.5402	76.0913	4
989	Nyishangba	nyishangba	nyishangba	\N	2000	28.6423	84.1017	2
990	Ottawa (Walpole Island)	oyibua odahua (Isla de Walpole)	ottawa (île Walpole)	\N	2000	42.6068	-82.5195	3
991	Prasun	prasuní	prasun	\N	2000	35.3543	71.2600	2
992	Rukai	rukái	rukai	\N	2000	22.7920	120.8104	1
993	Sáliba	sáliva	sáliba	\N	2000	5.3097	-69.8730	3
994	Sangkong	sangkong	sangkong	\N	2000	21.5158	100.6957	1
995	Sarwa	sarwa	sarwa	\N	2000	10.5958	17.0397	2
996	Shoshoni (Idaho)	shoshone  (Idaho)	shoshone (Idaho)	\N	2000	43.0438	-112.4629	3
997	Shoshoni (Nevada)	shoshone (Nevada)	shoshone (Nevada)	\N	2000	40.0358	-113.9835	3
998	Shoshoni (Wyoming)	shoshone (Wyoming)	shoshone (Wyoming)	\N	2000	43.0140	-108.8209	3
999	Tai Phake	phake	tai phake	\N	2000	27.5033	95.2185	3
1000	Tamazight (Arzew)	tamazight (Arzew)	tamazight (Arzew)	\N	2000	35.5869	-0.4737	4
1001	Tanglang	tanglang	tanglang	\N	2000	26.0863	99.7119	1
1002	Tchitchege	tchitchege	tchitchege	\N	2000	-1.8508	13.6120	2
1003	Tinan	tinan	tinan	\N	2000	32.5190	77.6733	2
1004	Tsafiki	tsafiki	tsa’fiki	\N	2000	-0.2500	-79.1500	2
1005	Ukhwejo	ukhwejo	ukhwejo	\N	2000	3.3626	16.0565	3
1006	Urarina	urarina	urarina	\N	2000	-4.3464	-75.3002	1
1007	Ushojo	usoyo	ushojo	\N	2000	35.0209	72.8970	2
1008	Waigali	vaigalí	waigali	\N	2000	35.1895	71.1941	2
1009	Waotededo	huao terero	huaotededo	\N	2000	-1.1864	-76.6296	1
1010	Wotapuri-Katarqalai	votapurí	wotapuri-katarqalai	\N	2000	34.4166	70.3333	2
1011	Wutun	wutunhua	wutun	\N	2000	35.7910	102.4365	2
1012	Candoshi	candoshi	candoshi	\N	1900	-3.7107	-76.9042	2
1013	Hupda (Brazil)	hupdé macú (Brasil)	hupda (Brésil)	\N	1900	0.7909	-68.2470	1
1014	Mixtec of the central Ravine	Mixteco de la Cañada Central	mixtèque de Cañada Central	\N	1878	17.9666	-96.8333	2
1015	Kendeje	kendeye	kedendje	\N	1859	13.6299	21.5771	2
1016	Hunzib	hunzib	hunzib	\N	1839	42.1654	46.2991	2
1017	Tchumbuli	tchumbuli	tchumbuli	\N	1838	8.7113	2.1533	4
1018	Cashibo-Cacataibo	cachibo	cashibo-cacataibo	\N	1800	-8.9393	-75.0915	2
1019	Grass Koiari	coyarí	grass koiari	\N	1800	-9.4558	147.5559	1
1020	Isirawa	isirawa	isirawa	\N	1800	-1.8783	138.5485	1
1021	Lanoh	lanoh	lanoh	\N	1800	5.2509	101.0206	4
1022	Lemolang	lemolango	lemolang	\N	1800	-2.6303	120.1849	1
1023	Nila (Seram Island)	nila (isla Seram)	nila (île de Seram)	\N	1800	-3.2173	128.9849	2
1024	Shixing	sichín	shixing	\N	1800	28.5263	100.4734	2
1025	Chuj (Mexico)	chuj (México)	chuj (Mexique)	\N	1771	16.1203	-92.0407	4
1026	Darma	darma	darma	\N	1761	30.0037	80.5641	2
1027	Kung	cungo	kung	\N	1750	6.5227	10.1074	3
1028	Lokono (Guyana)	lokono (Guyana)	arawak lokono (Guyane)	\N	1750	6.2934	-58.0957	4
1029	Byangsi	byangsi	byangsi	\N	1734	30.0595	80.7824	2
1030	Pasing	pasing	pasing	\N	1732	21.1254	101.4697	2
1031	Yamphu	yamphu	yamphu	\N	1722	27.5935	87.3316	2
1032	Andio	andio	andio	\N	1700	-0.8514	123.1457	1
1033	Cheyenne (Montana)	cheyén (Montana)	cheyenne (Montana)	\N	1700	45.5495	-106.5263	2
1034	Kumzari	kumzari	kumzari	\N	1700	26.1936	56.2431	3
1035	Quechua of Yauyos	quechua de Yauyos.	quechua de Yauyos	\N	1700	-12.9081	-75.6958	4
1036	Bainouk-Samik	bainuko-samik	bainouk-samik	\N	1685	12.5733	-16.2652	3
1037	Côông	cung	công	\N	1676	22.5943	102.7455	2
1038	Dogrib	dogrí	dogrib	\N	1675	62.8292	-115.9904	1
1039	Upland Yuman	yumano alto	Upland Yuman	\N	1650	36.2377	-112.7094	1
1040	Eastern Cuicatec	cuicateco oriental	cuicatèque oriental	\N	1641	17.9666	-96.7166	1
1041	Tamazight (Ait Rouadi)	tamazight (Ait Rouadi)	tamazight (Ait Rouadi)	\N	1637	32.5745	-5.9655	5
1042	Woleaian	woleayano	woleai	\N	1631	7.3515	143.8769	3
1043	Huehuetla Tepehua	tepehuano de Huehuetla	Tepehua de Huehuetla	\N	1603	20.4600	-98.0761	2
1044	Kadiwéu	kadiwéu	kadiwéu	\N	1600	-20.5222	-56.7237	2
1045	Southern Tiwa (Isleta Pueblo)	tiwa meridional (Isleta)	tiwa méridional (Pueblo Isleta)	\N	1600	34.9057	-106.7066	2
1046	Southern Tiwa (Sandia Pueblo)	tiwa meridional (Sandía)	tiwa méridional (Pueblo Sandia)	\N	1600	35.2516	-106.5650	2
1047	Tewa (Arizona)	tehua (Arizona)	tewa (Arizona)	\N	1600	35.8334	-110.3798	2
1048	Tewa (New Mexico)	tehua (Nuevo México)	tewa (Nouveau-Mexique)	\N	1600	36.0530	-106.0708	3
1049	ǁGana	ganakue	ǁgana	\N	1550	-21.7824	21.8971	1
1050	Akwáwa	assuriní do Tocantins	akwáwa	\N	1548	-5.2441	-52.7014	1
1051	Northern Cuicatec	cuicateco septentrional	cuicatèque septentrional	\N	1503	17.9511	-96.7384	1
1052	Chiquihuitlán Mazatec	mazateco de San Juan Chiquihuillán	mazatèque de Chiquihuitlán	\N	1502	17.9953	-96.7449	2
1053	Apinajé	apinayé	apinajé	\N	1500	-6.0317	-47.5604	1
1054	Bashkarik	bascarí	bashkarik	\N	1500	35.2893	72.6168	3
1055	Chintang	chintán	chintang	\N	1500	26.9367	87.1991	3
1056	Forest Nenets	néncico de los bosques	nénètse des forêts	\N	1500	64.9188	77.7941	3
1057	Hupda (Colombia)	hupdé macú (Colombia)	hupda (Colombie)	\N	1500	0.3845	-70.1367	2
1058	Jah Hut	jah het	jah hut	\N	1500	3.6452	102.3065	3
1059	Jeri	jeri	jeri kuo	\N	1500	9.2647	-5.8666	3
1060	Jonkor Bourmataguil	jonjor	djonkor de Bourmataguil	\N	1500	11.4261	19.0145	3
1061	K'emant	kemant	k'emant	\N	1500	12.9349	37.2326	3
1062	Kanashi	kanashi	kanashi	\N	1500	32.0406	77.1075	2
1063	Karajá	karajá	karajá	\N	1500	-11.0921	-50.3393	1
1064	Karelian (Tikhvin)	carelio (Tijvin)	carélien (Tikhvin)	\N	1500	59.6010	33.3544	3
1065	Kendem	kendem	kendem	\N	1500	5.7061	9.6377	3
1066	Khamba	khamba	khamba	\N	1500	29.0105	94.7653	2
1067	Lishpa	lishpa	monpa	\N	1500	27.3327	92.3840	2
1068	Mayoruna (Brazil)	matsés (Brasil)	mayoruna (Brésil)	\N	1500	-3.3379	-64.8413	1
1069	Mescalero-Chiricahua Apache (New Mexico)	apache mescalero-chiricahua (Nuevo México)	apache mescalero-chiricahua (Nouveau-Mexique)	\N	1500	33.1514	-105.7942	2
1070	Numao Bunu	bunú bunao	bunu numao	\N	1500	24.3902	107.2701	2
1071	Orang Seletar	orang seletar	orang seletar	\N	1500	1.3387	103.4640	3
1072	Palenque Creole	palenquero	créole de Palenque	\N	1500	10.0952	-75.1142	2
1073	Pong	pong	pong	\N	1500	18.4666	105.0500	2
1074	Pyuma	pyuma	pyuma	\N	1500	22.8027	121.0748	1
1075	Saaroa	saaroa	saaroa	\N	1500	23.1283	120.7062	4
1076	Saluan	saluan	saluan	\N	1500	-0.8129	122.8710	1
1077	Semaq Beri	semaq beri	semaq beri	\N	1500	4.0012	102.8443	4
1078	Talodi	talodí	talodi	\N	1500	10.6902	30.3964	4
1079	Wayana (Suriname)	wayana (Surinam)	oayana (Suriname)	\N	1500	2.7455	-54.5800	1
1080	Wik Mungkan	wik mungkan	wik mungkan	\N	1500	-12.9403	141.9873	1
1081	Natsilingmiutut	natsilingmiutut	natsilingmiutut	\N	1455	68.6430	-95.8863	1
1082	Movima	movima	movima	\N	1452	-13.7954	-65.4345	3
1083	Ngombe	engombé	ngombé	\N	1450	3.9492	15.2352	2
1084	Cinta Larga	cinta larga	cinta larga	\N	1440	-11.4154	-59.7216	1
1085	Dupaninan Agta	agta de Cagayán oriental	agta de Cagayan oriental	\N	1400	17.9682	122.0361	1
1086	Tese	tese	tese	\N	1400	11.2161	29.8471	4
1087	Bororo	borôro	bororo	\N	1390	-15.5172	-53.1024	2
1088	Puluwat	puluwat	puluwat	\N	1364	7.5803	149.4250	3
1089	Kanela Rankokamekra	canela ramkokomekra	canela rankokamekra	\N	1337	-6.0750	-44.9121	1
1090	Saba	saba	saba	\N	1335	11.1487	18.0175	2
1091	Kurripako (Brazil)	curripaco (Brasil)	kurripako (Brésil)	\N	1332	0.7001	-68.3789	1
1092	Triw	trii	triw	\N	1328	15.6833	107.2000	2
1093	Guernsey French	francés de Guernesey	guernesiais	\N	1327	49.4502	-2.5927	3
1094	Paafang	pááfango	paafang	\N	1318	7.6198	155.1571	3
1095	Chɨlɨng	chulún	Chɨlɨng	\N	1314	26.9483	87.2527	2
1096	Zapotec of the Valleys north	zapoteco del valle septentrional	zapotèque des vallées, nord	\N	1303	17.0666	-96.6500	3
1097	Cypriot Arabic	árabe chipriota	arabe chypriote	\N	1300	35.3196	33.3380	3
1098	Palikur (Brazil)	palikur (Brasil)	palikur (Brésil)	\N	1300	4.0396	-51.7236	1
1099	Sanenyo	chaura	sanenyo	\N	1300	7.9504	93.5760	4
1100	Tecóatl Mazatec	mazateco de Tecóatl	mazatèque de Tecoatl	\N	1300	18.1653	-96.9124	1
1101	Xinka	xinka	xinka	\N	1283	14.3447	-90.2603	4
1102	Ozomatlán Totonac	totonacano de Ozumatlán	totonaque d'Ozomatlán	\N	1276	20.1766	-98.0527	4
1103	Kāgate	kagate	kāgate	\N	1273	27.5449	86.2925	2
1104	Maxakali	maxacalí	maxakali	\N	1271	-16.5519	-40.3417	1
1105	Murik	múrico	murik	\N	1256	-3.8368	144.2807	1
1106	Pengo	pengo	pengo	\N	1254	19.0621	83.4851	4
1107	Marúbo	marúbu	marubo	\N	1252	-6.0968	-70.2246	1
1108	Aivilingmiutut	aivilingmiutut	aivilingmiut	\N	1245	64.1657	-83.2430	1
1109	Besme	besme	besme	\N	1228	9.6386	16.0180	3
1110	Oirata	oirata	oirata	\N	1221	-8.0755	127.1777	2
1111	Lohorung	lohorong	lohorung	\N	1207	27.4266	87.2498	3
1112	Harakmbut	harakambeto	harakmbet	\N	1206	-12.9403	-70.2685	2
1113	Buyang	buyán	buyang	\N	1200	23.4146	105.7632	3
1114	Dakka	dakka	dakka	\N	1200	-3.3160	119.2071	1
1115	Mah Meri	besisi	mah meri	\N	1200	2.8360	101.4299	3
1116	Manjui	manjui	manjui	\N	1200	-23.1201	-62.7539	2
1117	Te'un (Seram Island)	teun (isla Seram)	te'un (île de Seram)	\N	1200	-3.1843	128.9465	2
1118	Tsou	tsou	tsou	\N	1200	23.5174	120.8564	1
1119	Ujir	ujir	ujir	\N	1200	-5.6105	134.2776	2
1120	White Gelao (China)	gelao blanco (China)	gelao blanc (China)	\N	1200	26.4894	105.0210	3
1121	Dakkang	dakkang	dakkang	\N	1198	15.6333	107.2500	2
1122	Northern Algonquin	algonquino septentrional	algonquin du nord	\N	1180	48.0616	-77.3521	1
1123	Akawaio (Brazil)	akawaio (Brasil)	akawaio (Brésil)	\N	1170	4.1711	-60.2490	1
1124	Huehuetlán Mazatec	mazateco de Huehuetlán	mazatèque de Huehuetlán	\N	1169	18.1964	-96.9471	1
1125	Trio (Brazil)	trió (Brasil)	trio (Brésil)	\N	1156	1.7136	-55.2392	1
1126	Savo	savo	savo	\N	1147	-9.1292	159.8071	2
1127	Tektitek	tectiteco	tektitèque	\N	1144	15.3073	-92.0609	2
1128	Fwâi	fwâi	fwâi	\N	1131	-20.7048	164.9034	1
1129	Waimirí-Atroarí	atroarí	waimirí-atroarí	\N	1120	-1.0985	-60.8203	1
1130	Guayabero	guayabero	guayabero	\N	1118	2.6028	-72.3999	2
1131	Fagauvea (Northern)	uveano (septentrional)	fagauvea (nord)	\N	1107	-20.4089	166.5444	1
1132	Fagauvea (Southern)	uveano (meridional)	fagauvea (sud)	\N	1107	-20.7381	166.4126	1
1133	Fania	fanya	fania	\N	1100	10.0581	18.3993	3
1134	Ubi	ubi	oubi	\N	1100	12.1534	18.6946	3
1135	Warnang	warnango	warnang	\N	1100	10.6538	30.6298	3
1136	Itzá	itzá	itzá	\N	1094	16.9838	-89.8990	4
1137	Mixtec of the southwest of Puebla	Mixteco del sureste de Puebla	mixtèque du sud-est de Puebla	\N	1074	18.6333	-98.0666	2
1138	Lowland Chontal	chontal bajo	chontal des basses terres	\N	1060	16.0286	-95.6683	4
1139	Koireng	liangmai	koireng	\N	1056	24.2319	93.7463	4
1140	Chipaya	chipaya	chipaya	\N	1050	-19.2074	-68.2031	2
1141	Mokilese	moquilés	mokil	\N	1050	6.6864	159.7631	4
1142	Western Náhuatl	nahua de occidente	náhuatl occidental	\N	1041	18.3745	-103.3026	3
1143	Acatepec Mazatec	mazateco de Acatepec	mazatèque d'Acatepec	\N	1038	18.1621	-96.8766	1
1144	Mixtec of Villa de Tututepec	Mixteco de Villa de Tututepec	mixtèque de Villa de Tutatepec	\N	1019	16.1333	-97.6000	2
1145	Toda	toda	toda	\N	1006	11.3184	76.8273	4
1146	Adabe	adabe	adabe	\N	1000	-8.2549	125.5737	1
1147	Alutor	aliutor	alutor	\N	1000	60.2016	165.4238	3
1148	Arapaho (Wyoming)	arapaho (Wyoming)	arapaho (Wyoming)	\N	1000	43.0139	-108.8214	3
1149	Beeke	beeke	beeke	\N	1000	0.9997	28.7951	3
1150	Blackfoot (United States of America)	pies negros (Estados Unidos)	pied-noir (États-Unis d'Amérique)	\N	1000	48.5699	-113.0918	2
1151	Bohtan Neo-Aramaic	neo-arameo de Bohtan	néo-araméen du Bhotan	\N	1000	41.5579	45.0219	3
1152	Bola	bela	bola	\N	1000	25.0638	98.2414	2
1153	Bong'om	bong'om	bong'om	\N	1000	1.1315	35.0134	2
1154	Bora	bora	bora	\N	1000	-2.7455	-71.8835	1
1155	Central Siberian Yupik (St. Lawrence Island)	yupí siberiano central (isla de San Lorenzo)	yupik de Sibérie (île Saint Laurent)	\N	1000	63.7444	-171.7242	2
1156	Chali	chalimpa	chalikha	\N	1000	27.3010	91.2991	2
1157	Cherokee (North Carolina)	cheroki (Carolina del Norte)	cherokee (Caroline du Nord)	\N	1000	35.1130	-84.0588	3
1158	Cocama-Cocamilla (Peru)	cocama-cocamilla (Perú)	cocama-cocamilla (Pérou)	\N	1000	-4.8282	-74.2565	3
1159	Dair	dair	dair	\N	1000	12.5170	30.5914	3
1160	Dakpa	dakpa	dakpakha	\N	1000	27.3937	91.8965	2
1161	Dampelas	dampelasa	dampelas	\N	1000	0.2005	119.8965	2
1162	Danaw	danáu	danaw	\N	1000	21.1920	97.3937	4
1163	Ega	ega	ega	\N	1000	5.8018	-5.4492	3
1164	El Hugeirat	el hugeirat	el hugeirat	\N	1000	12.3131	28.4243	3
1165	Faghani	gani	faghani	\N	1000	-10.4337	161.5979	1
1166	Fongoro	fongoro	fongoro	\N	1000	11.1029	22.7197	3
1167	Gambiri	gambirí	gambiri	\N	1000	34.9017	70.9085	3
1168	Gongduk	gongduk	gongduk	\N	1000	27.0860	91.2002	1
1169	Gorap	gorap	gorap	\N	1000	2.1528	128.2516	2
1170	Guugu Yimidhirr	guguyimidjir	guugu yimidhirr	\N	1000	-14.8598	144.7338	1
1171	Gyem	gyem	gyem	\N	1000	10.3865	9.3122	4
1172	Habu	habu	habu	\N	1000	-8.7819	126.0021	1
1173	Hawaiian	hawaiano	hawaïen	\N	1000	21.9226	-160.1147	4
1174	Hértevin	hertevino	hértevin	\N	1000	37.9268	42.5473	4
1175	Hu	hu	hu	\N	1000	22.1743	100.9264	2
1176	Hualapai	walapái	walapai	\N	1000	35.5279	-113.4297	1
1177	Hung	hung	hung	\N	1000	18.9062	105.0500	2
1178	Inkhokvari	injokari	inkhokvari	\N	1000	42.3981	46.0299	2
1179	Ishkashimi	iskashmi	ishkâshimi	\N	1000	36.6915	71.7668	3
1180	Iyive	iyive	iyive	\N	1000	6.4354	9.5278	3
1181	Jiongnai Bunu	bunú jiongnai	bunu jiongnai	\N	1000	23.3902	108.5135	2
1182	Kaande	kande	kaande	\N	1000	-0.1318	11.8103	3
1183	Kaco'	kaco'	kraco'	\N	1000	13.9340	107.4222	2
1184	Kadu	gadu	kadu	\N	1000	24.2042	95.6332	3
1185	Kairui-Midiki	kairui-midiki	kairui-midiki	\N	1000	-8.7222	126.2878	1
1186	Kari	carí	kari	\N	1000	4.8392	25.5432	3
1187	Kayabi	kayabí	kayabi	\N	1000	-11.1972	-53.2342	1
1188	Khowa	bugun	khowa	\N	1000	27.2546	92.5323	2
1189	Kodeoha	kodeoha	kodeoha	\N	1000	-3.4147	120.9155	1
1190	Kujarge	kujarke	kujarge	\N	1000	11.7490	22.2431	2
1191	Kukatja	kukatja	kukatja	\N	1000	-21.2074	126.4746	1
1192	Kuot	kuot	kuot	\N	1000	-3.0692	151.5234	1
1193	Lokono (Suriname)	lokono (Surinam)	lokono (Suriname)	\N	1000	5.6487	-55.1074	3
1194	Mahongwe	mahongüe	mahongwe	\N	1000	1.0216	13.9031	3
1195	Manchurian Ölöt	oirato	eleuthe mandchou	\N	1000	48.1953	124.2993	3
1196	May	may	may	\N	1000	18.0623	105.5786	2
1197	Mbara	mbara	mbara	\N	1000	10.8009	15.6335	3
1198	Mech	bodo	mech	\N	1000	26.5688	89.1979	3
1199	Mòcheno	mócheno	mocheno	\N	1000	46.1194	11.3258	2
1200	Naueti	naueti	naueti	\N	1000	-8.7357	126.7053	1
1201	North Greenlandic	groenlandés septentrional	avanersuarmiutut	\N	1000	77.4815	-69.3511	2
1202	Ormuri	ormurí	ormuri	\N	1000	32.5180	69.7830	2
1203	Paiter	suruí	suruí	\N	1000	-11.1245	-61.3476	1
1204	Pareci	parecís	pareci	\N	1000	-14.3525	-58.0174	2
1205	Pasi	pasi	pasi (adi)	\N	1000	28.1834	95.2651	2
1206	Resian	resiano	résien	\N	1000	46.3734	13.3058	2
1207	Sach	sach	sach	\N	1000	17.7800	105.7666	2
1208	Sake	sake	saké	\N	1000	-0.0247	11.7691	3
1209	Saterlandic	frisón oriental	frison oriental	\N	1000	53.1059	7.6787	3
1210	She	che	she	\N	1000	23.3333	115.2459	4
1211	Shumashti	chumashtí	shumashti	\N	1000	34.6108	70.7569	3
1212	Sighu	sighu	sighu	\N	1000	-0.0549	13.5461	3
1213	Sobei	sobei	sobei	\N	1000	-1.8632	138.7408	2
1214	Thavung (Laos)	thavung (Laos)	thavung (République démocratique populaire lao)	\N	1000	18.4666	104.6666	2
1215	Tirma	tirma	tirma	\N	1000	6.4899	34.3212	4
1216	Tombelala	tombelala	tombelala	\N	1000	-2.5315	121.9454	1
1217	Toto	toto	toto	\N	1000	26.6867	89.5056	4
1218	Trio (Suriname)	trió (Surinam)	trio (Suriname)	\N	1000	2.1528	-56.3818	1
1219	Tum	tum	tamang du nord-ouest	\N	1000	18.7000	105.0500	2
1220	Tuotomb	tuotombo	tuotomb	\N	1000	4.4449	10.3710	3
1221	Yatê	fulnió	yathê	\N	1000	-7.0136	-37.0458	3
1222	Zaiwa	zaiwa	zaiwa	\N	1000	28.4735	96.4764	2
1223	Zay	zaisé	zay	\N	1000	8.0728	38.8476	3
1224	Zenaga (Western Sahara)	zenaga (Sáhara Occidental)	zenaga (Sahara occidental)	\N	1000	22.2687	-13.7109	4
1225	|Gui	güikue	|gui	\N	1000	-21.8385	21.7858	1
1226	ǁAni	handá	ǁani	\N	1000	-18.6462	22.1319	2
1227	Buglé	buglere	buglé	\N	993	8.5858	-82.3856	2
1228	Ka'apór	urubú-kaapor	ka'apór	\N	991	-2.8991	-46.3183	1
1229	Hadza	hadza	hadza	\N	975	-3.4010	35.3897	1
1230	Kunwinjku	gunwinggu	kunwinjku	\N	974	-12.1333	133.4014	1
1231	Bakairi	bakairí	bakairi	\N	950	-14.4213	-54.0305	1
1232	Drubea	drubea	nââ drubea	\N	946	-22.0347	166.5527	1
1233	Namonuito	namonuito	namonuito	\N	944	8.6299	150.0128	3
1234	Hya	hya	hya	\N	940	10.3311	13.5269	3
1235	Machineri (Brazil)	machinere (Brasil)	maxineri (Brésil)	\N	937	-10.5742	-70.4882	1
1236	South Slavey	eslavi meridional	slavey du sud	\N	920	61.8154	-121.3346	2
1237	Wajãpi	wayãpi	wayãpi	\N	905	0.7470	-52.8442	1
1238	Mewahang	meohang	mewahang	\N	904	27.5441	87.1401	3
1239	Awapit	awap'it	awapit	\N	900	1.0985	-78.7060	3
1240	Chimila	chimila	chimila	\N	900	10.0986	-73.8940	3
1241	Kua	macua	kua	\N	900	-22.7106	26.4605	2
1242	Njalgulgule	nyalgulgule	njalgulgule	\N	900	8.4452	25.3015	3
1243	Pech	pechí	pech	\N	900	15.0819	-85.5552	3
1244	Rikbaktsa	rikbaktsa	rikbaktsa	\N	900	-10.6174	-58.2714	3
1245	Caac	caac	caac	\N	890	-20.3883	164.5614	1
1246	Inuinnaqtun	inuinnaqtun	inuinnaqtun	\N	890	67.8443	-115.2742	2
1247	Voh-Koné dialects	dialectos de Voh-Koné	dialectes de Voh-Koné	\N	878	-20.9665	164.7866	2
1248	Kuna (Colombia)	kuna (Colombia)	kuna (Colombie)	\N	876	7.8633	-76.9042	3
1249	Dení	dení	dení	\N	875	-6.5773	-68.1591	1
1250	Tarao	tarao	tarao	\N	870	24.2970	93.4497	4
1251	Santa María del Mar Huave	huave de Santa María del Mar	huave de Santa María del Mar	\N	862	16.2166	-94.8500	3
1252	Nukuoro	nukuoro	nukuoro	\N	860	3.8574	154.9786	2
1253	Mixtec of Santa Cruz Itundujia	mixteco de Santa Cruz Itundujia	mixtèque de Santa Cruz Itundujia	\N	851	16.7666	-97.6000	2
1254	Zapotec of the Southern mountains, northeast	zapoteco de la sierra sur, nororiental	zapotèque des montagnes du sud, nord-est	\N	849	16.2666	-96.2833	2
1255	Kumak	kumak	kumak	\N	847	-20.1278	164.0259	1
1256	Pukapukan	pukapukano	pukapuka	\N	840	-10.8710	-165.8441	2
1257	Lola	lola	buru	\N	830	-6.3316	134.8818	1
1258	Ashaninka (Brazil)	ashéninca	ashaninca (Brésil)	\N	813	-9.3786	-73.1414	1
1259	Ottawa (Canada)	oyibua odahua (Canadá)	ottawa (Canada)	\N	810	46.1519	-82.2243	3
1260	Bati	bati	bati	\N	800	4.2012	10.7858	3
1261	Chorote Iyojwa'ja	chorote iyojwa’ja	choroti iyojwa'ja	\N	800	-24.2870	-60.3808	3
1262	Eman	emán	eman	\N	800	6.0531	9.7338	3
1263	Isu	isu	isu	\N	800	4.0094	9.5745	3
1264	Jamamadí	yamamadí	jamanadí	\N	800	-9.0424	-68.3789	1
1265	Javaé	javaé	javaé	\N	800	-11.1568	-50.4711	2
1266	Nubaca	nubaca	nubaca	\N	800	4.2971	10.7446	3
1267	Panasuan	panasuano	panasuan	\N	800	-2.2516	119.5806	2
1268	Piaroa (Colombia)	piaroa (Colombia)	piaroa (Colombie)	\N	800	4.0000	-68.6666	2
1269	Taos	taos	taos	\N	800	36.4717	-105.5596	2
1270	Taulil	taulil-butam	taulil	\N	800	-4.5435	152.0397	1
1271	Tuyuca (Brazil)	tuyuca (Brasil)	tuyaca (Brésil)	\N	800	0.4394	-66.8847	1
1272	Kaike	kaike	kaike	\N	794	28.9642	82.9819	2
1273	Kildin Saami	saamí de Kildin	saami Kildin	\N	787	68.0075	35.0079	3
1274	Ese eja	tiatinagua	ese ejja	\N	782	-12.5867	-69.0161	2
1275	Central Cagayan Agta	agta de Cagayán central	agta de Cagayan central	\N	779	17.9891	121.8603	1
1276	Mixtec of Santa Inés de Zaragoza	mixteco de Santa Inés de Zaragoza	mixtèque de Santa Inés de Zaragoza	\N	775	17.2333	-97.1666	2
1277	Ocopetatillo Mazatec	mazateco de Ocopetatillo	mazatèque d'Ocopetatillo	\N	757	18.1856	-96.9113	1
1278	Jaqaru	jaqarú	jaqaru	\N	750	-12.7488	-75.8248	3
1279	Waiwai (Suriname)	waiwai (Surinam)	waiwai (Suriname)	\N	750	2.1528	-56.2060	4
1280	Laal	laal	laal	\N	749	9.9607	17.6083	4
1281	Ulcha	ulchi	ulcha	\N	732	52.0457	140.4162	4
1282	Jawe	jawe	jawe	\N	729	-20.4913	164.6960	1
1283	Maslam	maslam	maslam	\N	723	12.1360	14.6914	3
1284	Nambiquara do Sul	nambikuára meridional	nambikwara du sud	\N	721	-13.2506	-59.5404	1
1285	North Slavey	eslavi septentrional	slavey du nord	\N	720	65.2161	-123.4362	2
1286	Gitksan	nass-gitskan	gitskan	\N	710	55.3550	-127.6828	3
1287	A'ingae / Cofan (Ecuador)	cofán (Ecuador)	a’ingae (Équateur)	\N	700	0.0659	-76.7065	2
1288	Animere	animere	animere	\N	700	7.6129	0.4064	4
1289	Batek	batek	batek	\N	700	4.6695	102.5051	4
1290	Enggano	enggano	enggano	\N	700	-5.4191	102.2717	1
1291	Indri	Indri	indri	\N	700	8.4397	25.5926	3
1292	Kalaw Lagaw Ya	mabuyago	kalaw lagaw ya	\N	700	-10.0828	142.1081	2
1293	Lakon	lakona	lakon	\N	700	-14.2510	167.4220	1
1294	Mok (China)	mok (China)	mok (Chine)	\N	700	21.5158	100.2210	2
1295	Ngaanyatjarra	engañacharra	ngaanyatjarra	\N	700	-26.0370	124.5410	1
1296	Ngatikese Men's Creole	ngatik	créole de Ngatik	\N	700	5.8305	157.2308	2
1297	Piratapuya (Brazil)	pira-tapuya (Brasil)	piratapuya (Brésil)	\N	700	0.5712	-66.7089	3
1298	Mountain Guarijío	guarijío del norte	guarijío du nord	\N	696	27.8758	-108.5530	1
1299	Nivkh (Sakhalin)	nivejí (Sajalín)	nivkhe (Sakhaline)	\N	688	51.7814	143.1628	3
1300	Krikati	krikati	krikati	\N	682	-5.8674	-46.7468	1
1301	Dakota	dakota	dakota	\N	675	49.8461	-100.5035	2
1302	Carrier	carrier	carrier	\N	660	54.2395	-125.7621	3
1303	Matlatzinca	matlatzinca	matlatzinca	\N	651	19.0479	-100.2197	2
1304	Kasanga	kasanga	kasanga	\N	650	12.2702	-16.1553	4
1305	Wanano / Kotiria (Brazil)	guanano / kótedia (Brasil)	wanano / kotirya (Brésil)	\N	650	0.6152	-67.5000	1
1306	Central Popoloc	popoloca central	popoloc central	\N	641	18.5842	-97.9295	3
1307	Eastern Ojibwe	oyibua oriental	ojibwe de l'est	\N	620	44.8381	-80.1983	3
1308	River Guarijío	guarijío del sur	guarijío du sud	\N	617	27.5196	-109.2525	1
1309	Yuhup (Brazil)	yuhupo (Brasil)	yuhup (Brésil)	\N	617	-1.0546	-69.3896	1
1310	Ocoyoacac Otomí	otomí de Ocoyoacac	otomí d'Ocoyoacac	\N	609	19.2716	-99.4613	3
1311	Akum	akum	akum	\N	600	6.7300	9.9316	4
1312	Blablanga	blablanga	blablanga	\N	600	-8.2060	159.4638	2
1313	Bubia	bubia	bubia	\N	600	4.0204	9.2037	3
1314	Chickasaw	chicasa	chickasaw	\N	600	34.6000	-96.8161	3
1315	Desano (Brazil)	desano (Brasil)	desano (Brésil)	\N	600	0.0878	-67.9394	2
1316	Faetar	faetar	faetar	\N	600	41.3265	15.1721	2
1317	Hixkaryána	hixkaryana	hixkaryána	\N	600	-0.5493	-58.5131	1
1318	Hoava	hoava	hoava	\N	600	-8.1883	157.6036	1
1319	Hodi	yuwana	hodi	\N	600	6.0750	-65.6323	1
1320	Iñapari	iñapari	iñapari	\N	600	-12.0822	-69.7412	4
1321	Koke	koke	koké	\N	600	10.8575	18.1315	3
1322	Kowiai	kowiai	kowiai	\N	600	-3.9437	134.0881	1
1323	Kuikuro	kuikuro	kuikuro	\N	600	-12.3500	-53.2100	1
1324	Laiyolo	laiyolo	Laiyolo	\N	600	-6.3862	120.4733	2
1325	Mo'da	moda	mo'da	\N	600	6.5008	29.9377	4
1326	Northern Selkup	selcupo septentrional	selkoupe septentrional	\N	600	65.7035	82.4441	3
1327	Penrhyn	penrhyn	penrhyn	\N	600	-9.0153	-158.0218	3
1328	Pintupi	pintupi-luritja	pintupi	\N	600	-22.8882	128.3203	1
1329	Piratapuya (Colombia)	pira-tapuya (Colombia)	piratapuya (Colombie)	\N	600	0.8333	-69.5000	4
1330	Siona / Secoya (Ecuador)	siona / secoya (Ecuador)	paicoca /secoya (Équateur)	\N	600	-0.0659	-76.3989	3
1331	Sonsorol	sonsorol	sonsorol	\N	600	7.4278	134.5495	3
1332	Teanu	teanu	teanu	\N	600	-11.6219	166.9633	2
1333	Yaminahua (Brazil)	yaminahua (Brasil)	yaminawa (Brésil)	\N	600	-10.6606	-69.6972	1
1334	Andoke	andoque	andoque, 'Gens de la Hache'	\N	597	-0.7690	-72.2351	3
1335	Southern Tlapanec	tlapaneco meridional	tlapanèque méridional	\N	592	16.7325	-98.6034	3
1336	Orowe	orowe	ôrôê	\N	587	-21.4223	165.4678	2
1337	Mosetén	mosetenan	mosetén	\N	585	-15.4113	-67.5000	3
1338	Chatong	chatong	chatong	\N	580	15.6500	107.1166	2
1339	Norfolk-Pitcairn (Norfolk)	pitcairn-norfolk (Norfolk)	pitkern-norfolk (Norfolk)	\N	580	-29.0225	167.9425	2
1340	Nunatsiavummiutut	nunatsiavummiutut	nunatsiavummiutut	\N	575	56.5320	-61.7408	2
1341	Shuswap	chusvapo	shuswap	\N	570	51.7886	-122.2286	2
1342	Xaragure	xaragure	xârâgurè	\N	566	-21.8054	166.4964	1
1343	Tapirapé	tapirapé	tapirapé	\N	564	-10.6606	-50.4602	1
1344	Lacandón	lacandón	lacandon	\N	563	16.7060	-91.0641	4
1345	Zapotec of Zimatlán de Álvarez	zapoteco de Zimatlán de Álvarez	zapotèque de Zimatlán de Álvarez	\N	562	16.8666	-96.7833	2
1346	Chilcotin	chilcotín	chilcotin	\N	560	52.0310	-123.1678	2
1347	Chácobo	chácobo	chácobo	\N	550	-11.3454	-65.8135	2
1348	Gao	gao	gao	\N	550	-8.3514	159.8167	1
1349	Geme	gueme	gemé	\N	550	8.4941	20.6378	4
1350	Karore	karore	karore	\N	550	-6.1542	149.8205	1
1351	Yuhup (Colombia)	yuhupo (Colombia)	yuhup (Colombie)	\N	550	-0.5493	-69.9169	2
1352	Western Tlapanec	tlapaneco occidental	tlapanèque occidental	\N	549	17.4101	-99.2423	1
1353	Hinukh	hinuj	hinukh	\N	548	42.1801	45.9770	2
1354	Anuki	anuki	anuki	\N	542	-9.6522	149.7656	2
1355	Imeraguen	imeraguén	imeraguen	\N	534	18.9166	-15.9960	2
1356	Narpa	narpú	narpa	\N	533	28.7315	84.2610	2
1357	Akatek (Mexico)	canjobalés occidental (México)	acatèque (Mexique)	\N	532	16.7823	-93.1061	1
1358	Naskapi	naskapí	naskapi	\N	525	54.9030	-66.8020	1
1359	Archi	archi	archi	\N	524	41.9839	46.8127	2
1360	Yawanawá	yawanawá	yawanawá	\N	519	-10.8333	-70.0927	1
1361	Raute	raute	raute	\N	518	28.9744	80.7969	3
1362	Seri	seri	seri	\N	518	29.2333	-112.2000	1
1363	Western Popoloc	popoloca occidental	popoloc occidental	\N	516	18.4141	-98.0176	3
1364	Yaqui (United States of America)	yaqui (Estados Unidos)	yaki (États-Unis d'Amérique)	\N	510	32.1158	-111.0638	2
1365	Kalapalo	kalapalo	kalapalo	\N	506	-12.1574	-53.2521	1
1366	Nganasan	enganasán	nganassan	\N	505	72.8160	91.5820	3
1367	Jakaltek (Mexico)	jacalteko (México)	jacaltèque (Mexique)	\N	504	16.3137	-93.2084	3
1368	Zapotec of San Antonino el Alto	zapoteco de San Antonino el Alto	zapotèque de San Antonio el Alto	\N	504	16.8166	-97.0333	2
1369	Purum	purum	purum	\N	503	24.3521	93.5925	4
1370	Aheu	phon sung	aheu	\N	500	18.4333	104.5000	2
1371	Amahuaca	amahuaca	amahuaca	\N	500	-10.8764	-72.2900	3
1372	Anfillo	anfillo	anfillo	\N	500	8.5049	34.7415	4
1373	Arbanasi	arbanasi	arbanasi	\N	500	44.0994	15.2545	3
1374	Baniva	baniva	baniva	\N	500	2.8333	-67.5219	3
1375	Bataan Ayta	ayta de Bataan	ayta du Bataan	\N	500	14.4324	120.4788	2
1376	Bats	bácico	bats	\N	500	42.0982	45.0878	3
1377	Black Mountain	monpa	olekha	\N	500	27.1955	90.4300	2
1378	Busoa	busoa	busoa	\N	500	-5.5722	122.6074	1
1379	Chong	chong	chong	\N	500	12.9506	102.0374	3
1380	Domaaki	domakí	domaaki	\N	500	36.0979	73.9627	3
1381	Ganan	ganan	ganan	\N	500	24.2317	95.3778	3
1382	Havasupai	havasupái	havasupai	\N	500	36.2429	-112.6897	2
1383	Kensiw (Thailand)	kensiu (Tailandia)	kensiw (Thaïlande)	\N	500	7.1712	99.7915	3
1384	Khmin	bit	khmin	\N	500	22.0469	100.8065	1
1385	Khvarshi	javarsí	khvarshi	\N	500	42.3417	46.1212	2
1386	Kundal Shahi	kundalshahi	kundal shahi	\N	500	34.5500	73.8833	2
1387	Laghuu	laopán	laghuu	\N	500	23.6166	105.6833	2
1388	Laha (Lao Cai)	laha (Lao Cai)	laha (Lào Cai)	\N	500	22.0333	103.7500	2
1389	Laha (Son La)	laha (Son La)	laha (Son La)	\N	500	21.4666	103.7500	2
1390	Langa	langa	langa	\N	500	6.5404	11.6427	3
1391	Laxudumau	laxudumau	laxudumau	\N	500	-2.8922	151.2467	1
1392	Majera	mayera	majera	\N	500	11.3231	14.9839	4
1393	Maliseet-Passamaquoddy	malesí-openango	maliseet-passamaquoddy	\N	500	44.9572	-67.0496	3
1394	Mikasuki	mikasuki	mikasuki	\N	500	26.3202	-80.9877	1
1395	Mlomp	mlomp	mlomp	\N	500	12.7421	-16.4904	4
1396	Onin	onin	onin	\N	500	-2.9745	132.2383	1
1397	Ormu	ormu	ormu	\N	500	-2.5136	140.6675	1
1398	Palikur (French Guyana)	palikur (Guayana Francesa)	palikur (Guyane Française)	\N	500	3.9080	-51.9873	3
1399	Pemon (Brazil)	pemón (Brasil)	pemon (Brésil)	\N	500	4.6640	-60.2160	1
1400	Quechua of Chachapoyas	quechua de Chachapoyas	quechua de Chachapoyas	\N	500	-6.2606	-77.7722	4
1401	Samatu	samatu	samatu	\N	500	24.2105	98.9655	4
1402	Seke	seke	seke	\N	500	28.9282	83.8249	1
1403	Siona / Secoya (Colombia)	siona / secoya (Colombia)	siona / secoya (Colombie)	\N	500	0.4930	-76.2464	4
1404	South Saami	saamí meridional	saami méridional	åarjelsaemien gïele	500	64.2063	13.4802	3
1405	Taikat	taikat	taikat	\N	500	-2.8429	140.8460	2
1406	Taloki	taloki	taloki	\N	500	-4.5928	122.8628	2
1407	Tamki	tamki	temki	\N	500	11.4800	18.2125	4
1408	Tawahka	tawahka	tawahka	\N	500	15.3602	-85.1373	3
1409	Thavung (Thailand)	thavung (Tailandia)	thavung (Thaïlande)	\N	500	17.3168	103.5142	3
1410	Tomadino	tomadino	tomadino	\N	500	-2.5836	121.9729	2
1411	Toratán	ratahan	ratahan	\N	500	1.0354	124.7985	2
1412	Tunisian Judeo-Arabic (Tunisia)	judeo-árabe tunecino (Túnez)	judéo-arabe tunisien (Tunisie)	\N	500	33.8795	10.0634	4
1413	Ulwa	sumo	ulwa	\N	500	12.8894	-83.5779	3
1414	Ute (Colorado, Ute Mountain)	uté (Colorado, uté de montaña)	ute (Colorado, Ute des montagnes)	\N	500	37.2105	-108.7223	3
1415	Walmajarri	walmajarri	walmatjari	\N	500	-19.9939	125.5297	2
1416	Warekena (Venezuela)	guarequena (Venezuela)	warekana (République bolivarienne du Venezuela)	\N	500	2.5479	-67.2802	3
1417	Boguru	boguru	boguru	\N	494	4.3902	29.2016	4
1418	Pukobyê	gavião pukobiê	pukobyê	\N	494	-5.3316	-46.7138	1
1419	Swoeng	swoeng	swoeng	\N	492	15.3333	106.7500	2
1420	Wali	wali	wali	\N	487	11.9372	29.3005	4
1421	Gavião do Pará	gavião do Para	gavião du Pará	\N	476	-5.1784	-48.9990	1
1422	Malecite	malesí	malécite	\N	475	46.8023	-67.6686	2
1423	Ninam (Brazil)	ninam (Brasil)	ninam (Brésil)	\N	466	3.1185	-62.9736	1
1424	Zoró	zoró	zoró	\N	464	-10.9519	-61.0729	1
1425	Sanema (Brazil)	sanemá	sanema (Brésil)	\N	462	2.8113	-63.0615	1
1426	Ixtenco Otomí	otomí de Ixtenco	otomí d'Ixtenco	\N	461	19.2495	-97.8943	3
1427	Ottawa (Michigan)	oyibua odahua (Míchigan)	ottawa (Michigan)	\N	459	43.5971	-84.7752	4
1428	Kanela Apaniekra	canela apaniekra	canela apaniekra	\N	458	-6.2716	-46.1865	1
1429	Satawal	satawalés	satawal	\N	458	7.3406	147.0410	3
1430	Chatino of Zacatepec	chatino de Zacatepeco	chatino de Zacatepec	\N	453	16.1333	-97.3500	2
1431	Demisa	demisa	demisa	\N	450	-2.7016	136.6699	2
1432	Koasati (Louisiana)	koasati (Luisiana)	koasati (Louisiane)	\N	450	30.4855	-92.8494	2
1433	Koasati (Texas)	koasati (Texas)	koasati (Texas)	\N	450	30.7155	-94.6965	2
1434	Nanti	cogapacorí	nanti	\N	450	-11.6629	-72.6965	1
1435	Shabo	shabo	shabo	\N	450	7.3270	35.2935	3
1436	Sharanahua	sharanahua	sharanahua	\N	450	-10.3365	-70.9277	3
1679	Mwatebu	mwatebu	mwatebu	\N	166	-10.0202	151.0537	2
1437	Siona  Secoya (Peru)	siona  secoya (Perú)	siona  secoya (Pérou)	\N	450	-0.5712	-74.8828	2
1438	Tolomako	tolomako	tolomako	\N	450	-15.1834	166.8438	2
1439	Enawenê-Nawê	salumá	enawenê-nawê	\N	445	-12.5223	-59.7656	1
1440	Valle Nacional Chinantec	chinanteco de Valle Nacional	chinantèque de Valle Nacional	\N	442	17.7747	-96.3034	2
1441	Gavião de Rondônia	gavião de Rondônia	gavião du Rondônia	\N	436	-10.4445	-61.6992	1
1442	Tabasco Náhuatl	nahua de Tabasco	náhuatl de Tabasco	\N	434	18.0026	-93.3722	4
1443	Sera	sera	sera	\N	432	-3.0033	141.9158	3
1444	Yecuana (Brazil)	ye'cuana (Brasil)	yecuana (Brésil)	\N	430	2.8552	-63.3251	1
1445	Alabugat Tatar	alabugat	tatar alabugat	\N	422	45.4447	47.0324	2
1446	Zapotec of the Southern mountains, eastern lowlands	zapoteco de la sierra sur, llanura oriental	zapotèque des montagnes du sud, basses terres orientales	\N	420	16.2000	-96.7000	2
1447	Western Otomí	otomí occidental	otomí occidental	\N	415	19.4335	-100.3456	3
1448	Moose Cree	clisteno moose	cree de Moose	\N	405	52.2827	-81.6276	1
1449	Tlahuica	tlahuica	tlahuica	\N	405	18.9664	-99.4137	3
1450	Katukina do Acre	catuquina del Acre	katukina de l'Acre	\N	404	-6.4899	-69.2578	3
1451	Abai Sungai	abai sungai	abai sungai	\N	400	5.5870	118.3695	2
1452	Barasana (Colombia)	barasana (Colombia)	barasana (Colombie)	\N	400	0.0769	-70.3894	4
1453	Beezen	beezen	beezen	\N	400	6.7518	10.0744	3
1454	Buga	mangayat	buga	\N	400	8.2495	25.7574	4
1455	Cheyenne (Oklahoma)	cheyén (Oklahoma)	cheyenne (Oklahoma)	\N	400	35.6022	-97.9766	3
1456	Cimbrian	cimbriano	cimbre	\N	400	45.8670	11.4268	2
1457	Cobiana	kobiana	kobiana	\N	400	12.4017	-16.3229	4
1458	Dagur (Amur)	daguro (Amur)	dagour (Amour)	\N	400	49.5252	127.5402	4
1459	Dahalo	sanye	dahalo	\N	400	-2.2625	40.7537	3
1460	Émérillon	emerilón	émérillon	\N	400	2.8991	-52.8881	3
1461	Gagauz (Maritime)	gagauso (marítimo)	gagaouze balkanique	\N	400	43.2932	27.9602	3
1462	Hijuk	hijuk	hijuk	\N	400	4.2861	10.4919	4
1463	Hobyot	hobioto	hobyot	\N	400	16.6388	53.0612	3
1464	Inari Saami	saamí de Inari	saami inari	anarâškielâ	400	68.8446	27.2817	3
1465	Istriot	istriano	istriot	\N	400	45.0541	13.7246	3
1466	Kalao	kalao	kalao	\N	400	-7.3134	121.0034	2
1467	Kamaiurá	kamayurá	kamaiurá	\N	400	-12.1655	-53.4292	1
1468	Kickapoo (Kansas)	quicapú (Kansas)	kickapoo (Kansas)	\N	400	39.6972	-95.7089	3
1469	Kickapoo (Oklahoma)	quicapú (Oklahoma)	kickapoo (Oklahoma)	\N	400	35.4245	-97.0713	3
1470	Kickapoo (Texas)	quicapú (Texas)	kickapoo (Texas)	\N	400	28.6147	-100.4386	3
1471	Kiowa	quiova	kiowa	\N	400	35.1016	-98.6197	3
1472	Koroni	koroni	koroni	\N	400	-2.6412	121.9894	2
1473	Lamongse	lamongshé	lamongse	\N	400	7.3134	93.6968	4
1474	Ndunda	ndunda	ndunda	\N	400	6.9482	10.9698	3
1475	Northern Paiute (Nevada)	payuté septentrional (Nevada)	paiute du nord  (Nevada)	\N	400	41.9979	-117.7193	2
1476	Pupeo	pupeo	pupeo	\N	400	23.1666	105.1000	2
1477	Rapa	rapano	rapa	\N	400	-27.8973	-143.5034	3
1478	Red Gelao (China)	gelao rojo (China)	gelao rouge (Chine)	\N	400	26.2553	105.8571	4
1479	Sengseng	sengseng	sengseng	\N	400	-6.0681	150.2792	1
1480	Sirionó	sirionó	sirionó	\N	400	-14.5570	-63.7316	3
1481	Talondo	talondo'	talondo	\N	400	-2.3723	119.3774	2
1482	Yaminahua (Bolivia, Peru)	Yaminahua (Bolivia, Perú)	yaminawa (État plurinational de Bolivie, Pérou)	\N	400	-10.7469	-71.7297	3
1483	Mixtec of Zapotitlán	Mixteco de Zapotitlán	mixtèque de Zapotitlán	\N	396	18.3333	-97.4666	3
1484	Sanema (Venezuela)	sanemá (Venezuela)	sanema (République bolivarienne du Venezuela)	\N	393	4.4669	-64.1931	1
1485	Ts'ixa	ts'ixa	ts'ixa	\N	390	-18.9894	23.6920	2
1486	Pirahã	mura-piraha	pirahã	\N	389	-6.9264	-61.1279	1
1487	Mixtec of San Pedro Tidaá	mixteco de San Pedro Tidaá	mixtèque de San Pedro Tidaá	\N	384	17.3500	-97.3833	3
1488	Yerong	yerón	yerong	\N	380	23.0732	106.0789	3
1489	A'ingae / Cofan (Colombia)	cofán (Colombia)	cofán (Colombie)	\N	379	0.4525	-76.9191	3
1490	Halkomelem	halkomelén	halkomelem	\N	375	48.7715	-123.6678	3
1491	Yudja	yudja	yudja	\N	362	-10.9560	-53.3235	1
1492	Kisêdjê	kisêdjê	kisêdjê	\N	351	-11.5795	-53.0310	1
1493	Auye	auye	auye	\N	350	-3.5627	135.9915	1
1494	Awyi	aviú	awyi	\N	350	-2.9430	140.6359	1
1495	Bierebo	bierebo	bierebo	\N	350	-16.6539	168.1539	1
1496	Fayu	fayu	fayu	\N	350	-3.1000	136.8000	1
1497	Labo	labo	labo	\N	350	-16.4492	167.4481	1
1498	Mra	mra	mra	\N	350	28.3914	93.3837	4
1499	Myky	myky	myky	\N	350	-12.5331	-59.5019	1
1500	Na	na	na	\N	350	28.4638	93.3041	4
1501	Nadëb	macú nadeb	nadëb	\N	350	-1.9771	-67.0166	2
1502	Taje	taje	taje	\N	350	-0.7470	120.0860	4
1503	Tenharim	tenharim	tenharím	\N	350	-8.4071	-61.1499	3
1504	Mako	mako	mako	\N	345	4.2149	-65.7421	4
1505	Barām	baraamu / baramú	barām	\N	342	28.0410	84.6290	4
1506	Ikpeng	Ikpeng	ikpeng	\N	342	-11.7376	-53.6160	1
1507	Gardiol	gardiol	gardiol	\N	340	39.4658	15.9933	3
1508	Araweté	araweté	araweté	\N	339	-5.1347	-52.3388	1
1509	Northern Pame	pame del norte	pamé septentrional	\N	337	21.9955	-99.6458	2
1510	Thompson	nikutamú	thompson	\N	335	50.1909	-120.8431	3
1511	Serili	serili	serili	\N	328	-8.1136	129.9023	1
1512	Kaningara	kaningra	kaningara	\N	327	-4.5784	143.3612	1
1513	Misantla Totonac	totonaco de Misantla	totonaque de Misantla	\N	325	19.8650	-96.7755	4
1514	Nemi	nemi	nemi	\N	325	-20.6494	164.6878	2
1515	Nambiquara do Norte	nambikuára septentrional	nambikwara du nord	\N	323	-11.8028	-59.8095	1
1516	Matís	matis	matis	\N	322	-6.1405	-70.6640	1
1517	Wauja	wauja	wauja	\N	321	-12.2554	-53.5899	1
1518	Benggoi	benggoi	benggoi	\N	320	-3.0748	130.0918	2
1519	Karitiana	caritiana	karitiána	\N	320	-9.7307	-64.0942	1
1520	Apalai	aparaí	apalai	\N	317	1.2084	-55.1074	1
1521	Kwak'wala	kwakwala	kwak'wala	\N	315	50.7338	-127.4982	4
1522	Southern Zoque	zoqué meridional	zoque méridional	\N	312	16.7138	-93.1194	2
1523	Tilung	halesidanda	tilung	\N	310	27.1501	86.5077	2
1524	Opuuo	opúo	opuo	\N	307	8.3202	33.8873	4
1525	Panará	panará	panará	\N	306	-9.4490	-54.5965	1
1526	Aka	aka	aka	\N	300	11.0112	34.2333	4
1527	Bakole	bakole	bakole	\N	300	4.5764	8.8439	4
1528	Bathari	batarí	bathari	\N	300	17.8846	55.5853	4
1529	Brokkat	brokkat	brokkat	\N	300	27.5618	90.6152	2
1530	Duwet	guwot	duwet	\N	300	-6.4763	146.8377	1
1531	Faire Atta	atta meridional	atta faire	\N	300	18.0270	120.4929	3
1532	Green Gelao (China)	gelao (China)	gelao vert (Chine)	\N	300	27.7022	106.0952	4
1533	Green Gelao (Viet Nam)	gelao (Vietnam)	gelao vert (Viet Nam)	\N	300	23.1333	105.2500	4
1534	Guatuso	guatuso	guatuso	\N	300	10.6723	-84.8256	3
1535	Gupapuyngu	gupapuyngu	gupapuyngu	\N	300	-12.6624	136.5490	1
1536	Istro-Romanian	istro-rumano	istro-roumain	\N	300	45.3907	14.4360	3
1537	Jicarilla Apache	apache jicarilla	apache jicarilla	\N	300	36.9336	-106.9984	3
1538	Kandas	kandas	kandas	\N	300	-4.4121	152.7868	1
1539	Kangjia	kangjia	kangjia	\N	300	36.0757	102.2991	3
1540	Kaxarari	kaxararí	kaxarari	\N	300	-9.5682	-66.1596	4
1541	Kwansu	kuansu	Kwansu	\N	300	-2.5383	140.2061	1
1542	Legenyem	legenyem	legenyem	\N	300	-0.3186	130.7345	1
1543	Mandaic	mandeo	mandéen	\N	300	31.3348	48.7023	4
1544	Mangareva	mangarevano	mangareva	\N	300	-23.1226	-134.9780	3
1545	Mani	mani	mani	\N	300	9.1129	-13.2165	4
1546	Maniq	maniq	maniq	\N	300	7.3500	99.9333	2
1547	Mono	mon-non	mono	\N	300	8.6679	14.1723	4
1548	Northern Paiute (Oregon)	payuté septentrional (Oregon)	paiute du nord (Oregon)	\N	300	43.5883	-119.0595	4
1549	Phong	pong	phong	\N	300	18.3333	105.0000	2
1550	Shanenawa	shanenawa	shanenawa	\N	300	-8.1014	-70.2129	1
1551	Sissano	sissano	sissano	\N	300	-3.0129	142.0491	4
1552	Skolt Saami	saamí de Skolt	saami skolt	sää´mǩiõll	300	69.5333	28.6269	3
1553	Tarpia	tarpia	tarpia	\N	300	-2.3723	140.0317	3
1554	Tause	tause	tause	\N	300	-2.8744	136.2469	1
1555	Thaayorre	tayore	thayore	\N	300	-15.0867	141.7167	2
1556	Tlingit (United States of America)	coluchano (Estados Unidos)	tlingit (États-Unis d'Amérique)	\N	300	58.3340	-133.7475	4
1557	Tol	tol	tolupan	\N	300	15.2930	-87.1416	4
1558	Tsakonian	tsakoniano	tsakonien	\N	300	37.1712	22.7911	4
1559	Tuahka	tuahka	tuahka	\N	300	13.8380	-84.4409	3
1560	Ute (Utah)	uté (Utah)	ute (Utah)	\N	300	40.2329	-109.8223	3
1561	Vedda	veda	vedda	\N	300	7.3460	81.3935	2
1562	Vera'a	vatrata	vera'a	\N	300	-13.8720	167.4323	2
1563	Warapu	varapú	warapu	\N	300	-2.9876	141.9838	3
1564	Waru	waru	waru	\N	300	-3.4393	121.9921	2
1565	Yawarana	yabarana	yawarana	\N	300	5.3863	-66.0058	3
1566	Yimas	yimaso	yimas	\N	300	-4.6038	143.6077	3
1567	Tilapa Otomí	otomí de Tilapa	otomí de Tilapa	\N	292	18.8923	-99.2986	3
1568	Paumarí	paumarí	paumarí	\N	290	-5.8947	-64.5996	3
1569	Wayana (Brazil)	wayana (Brasil)	wayana (Brésil)	\N	288	1.3182	-55.2612	1
1570	Achagua	achagua	achagua	\N	283	4.4340	-70.8837	3
1571	Guajá	guajá	guajá	\N	283	-3.4914	-46.2963	1
1572	Maniwaki Algonquin	algonquino de Maniwaki	algonquin maniwaki	\N	280	46.3392	-76.0485	3
1573	Alabama	alabama-koasati	alabama	\N	275	30.7158	-94.7028	2
1574	Cocopa (Arizona)	cocopa (Arizona)	cocopa (Arizona)	\N	275	32.6080	-114.6497	3
1575	Miltu	miltú	miltou	\N	272	10.2149	17.3913	4
1576	Arara do Pará	arára de Pará	arara du Pará	\N	271	-3.7546	-52.9760	1
1577	Kaki Ae	tate	kaki ae	\N	266	-7.9653	145.7858	1
1578	Nisga'a	nasguixián niska	nisga’a	\N	265	55.2035	-129.0700	3
1579	Zapotec of the Valleys, central	zapoteco del valle central	zapotèque des vallées, centre	\N	257	16.8500	-96.6666	3
1580	Bosilewa	bosilewa	bosilewa	\N	250	-9.4490	150.6610	1
1581	Caquinte Campa	caquinté	caquinte campa	\N	250	-11.1460	-73.4765	2
1582	Gwich'in (Canada)	güichín (Canadá)	gwichin (Canada)	\N	250	67.4407	-134.8272	3
1583	Kaibobo	kaibobo	kaibobo	\N	250	-3.1843	128.1829	2
1584	Kaiep	kaiep	kaiep	\N	250	-3.6666	143.8166	1
1585	Kaiy	kaiy	kaiy	\N	250	-2.9430	138.1777	1
1586	Laji	lají	laji	\N	250	22.5304	105.8850	4
1587	Lehali	lehali	lehali	\N	250	-13.5205	167.2998	1
1588	Lillooet	liluet	lillooet	\N	250	50.3326	-122.6789	3
1589	Löyöp	löyöp	löyöp	\N	250	-13.5311	167.3368	1
1590	Nyangumarta	ñangumarta	nyangumarta	\N	250	-20.0160	120.4101	1
1591	Pear	pear	pear	\N	250	12.4666	102.6500	3
1592	Ruc	ruc	ruc	\N	250	17.6833	105.7833	2
1593	Sause	sause	sause	\N	250	-3.1706	139.7515	3
1594	Texistepecan	popoluca de Texistepeco	texistepèque	\N	250	17.8941	-94.8163	3
1595	Winnebago (Nebraska)	winnebago (Nebraska)	winnebago (Nebraska)	\N	250	42.2475	-96.4722	3
1596	Winnebago (Wisconsin)	winnebago (Wisconsin)	winnebago (Wisconsin)	\N	250	44.2986	-90.8508	3
1597	Zapotec of San Bartolo Yautepec	zapoteco de San Bartolo Yautepec	zapotèque de San Bartolo Yautepec	\N	246	16.4333	-95.9666	3
1598	Mixtec of San Miguel Piedras	mixteco de San Miguel Piedras	mixtèque de San Miguel Piedras	\N	243	17.0000	-97.0500	3
1599	North Alaskan Inupiaq (Canada)	inuí alaskiano septentrional (Canadá)	inupiaq du nord de l'Alaska (Canada)	\N	240	68.3217	-133.5320	3
1600	Waiwai (Guyana)	waiwai (Guyana)	tunayana (Guyane)	\N	240	1.5598	-58.5131	1
1601	As	as	as	\N	230	-0.7360	131.7727	1
1602	Siglitun	siglitun	siglitun	\N	230	69.4386	-132.9998	3
1603	K'iche' (Mexico)	quiché (México)	k'iche' (Mexique)	\N	226	19.3482	-90.7177	2
1604	Paipai	paipái	paipai	\N	226	29.6500	-115.1333	3
1605	Garuwahi	garuvahi	garuwahi	\N	225	-10.2284	150.4083	2
1606	Picuris	picuris	picuris	\N	225	36.1914	-105.7151	1
1607	Neku	neku	neku	\N	221	-21.5169	165.4568	3
1608	Tiri	tiri	tîrî	\N	221	-21.6141	165.7836	2
1609	Danisi	danisa	danisi	\N	220	-19.4769	25.2136	4
1610	Emplawas	emplavas	emplawas	\N	220	-8.0374	129.7375	2
1611	Mixtec of the northeast lowlands	Mixteco del noreste bajo	mixtèque des basses terres du nord-est	\N	220	17.5333	-97.3500	3
1612	Musom	musom	musom	\N	219	-6.5391	146.9119	2
1613	Pwaamèi	pwaamei	pwaamèi	\N	219	-20.8767	164.7413	2
1614	Zapotec of the Valleys, west	zapoteco del valle occidental	zapotèque des vallées, ouest	\N	211	16.2666	-96.8833	2
1615	Karo	karo	káro	\N	208	-10.5749	-61.5893	1
1616	Cocopa (Mexico)	cocopa (México)	cucapá (Mexique)	\N	206	32.2500	-115.2500	2
1617	Korúbo	korubo	korúbo	\N	205	-5.8346	-70.9277	1
1618	Aja	aja	aja	\N	200	8.6136	25.2465	4
1619	Antakirinya	antakariña	antakirinya	\N	200	-26.7848	134.2968	2
1620	Bana	bana	bana	\N	200	20.4836	100.3161	3
1621	Baras	baras	baras	\N	200	-1.8838	119.3774	3
1622	Batak	bataco	batak	\N	200	10.1081	119.0000	2
1623	Birri	birri	birri	\N	200	5.4902	26.8505	4
1624	Bonggo	bonggo	bonggo	\N	200	-2.2461	139.5208	3
1625	Central Siberian Yupik (Chukotka)	yupí siberiano central (península Chukchi)	yupik de Sibérie (Chukotka)	\N	200	64.5460	-173.1280	3
1626	Chawte	chote naga	chawte	\N	200	24.1918	94.2736	2
1627	Che Wong	chuba	che wong	\N	200	3.6271	102.1907	2
1628	Defaka	defaka	defaka	\N	200	4.5380	7.5311	4
1629	Doga	doga	doga	\N	200	-9.6278	149.8384	2
1630	Dorig	wetamut	dorig	\N	200	-14.3236	167.5669	2
1631	Dukha	dukha	tukha	\N	200	51.9307	98.9318	3
1632	Emae	mae	emae	\N	200	-17.0567	168.3956	1
1633	Erokwanas	erokwanas	erokwanas	\N	200	-2.8113	132.6708	1
1634	Gowro	gowro	gowro	\N	200	35.0254	72.9341	3
1635	Hayu	hayu	hayu	\N	200	27.2912	86.0696	4
1636	Hidatsa	hidatsa	hidatsa	\N	200	47.7321	-102.6758	2
1637	Ingrian	ingriano	ingrien	\N	200	59.7397	28.7017	3
1638	Iwaidja	iwaidya	iwaidja	\N	200	-11.4592	132.5500	1
1639	Kadai	kadai	kadai	\N	200	-1.7465	125.2606	2
1640	Kao	kao	kao	\N	200	1.1479	127.8204	2
1641	Karo	karo	karo	\N	200	5.2003	36.0681	4
1642	Kelo	kelo	kelo	\N	200	9.4463	34.0219	4
1643	Kokota	kokota	kokota	\N	200	-8.0347	159.1781	1
1644	Koneraw	koneraw	koneraw	\N	200	-8.3854	137.9415	1
1645	Koroshi	korochí	koroshi	\N	200	29.8978	52.6574	4
1646	Magori	magori	magori	\N	200	-10.2554	149.2108	1
1647	Maung	maungo	maung	\N	200	-11.9130	133.7255	1
1648	Mehináku	mehinakú	mehináku	\N	200	-12.5423	-53.2403	1
1649	Moghol	mogol	moghol	\N	200	34.3569	61.5875	4
1650	Ningalami	ningalamí	ningalami	\N	200	35.2355	71.5100	3
1651	Northern Alta	alta septentrional	alta du nord	\N	200	15.7162	121.4085	3
1652	Numbani	siboma	numbani	\N	200	-7.5177	147.2991	1
1653	Nung Ven	nun	nung ven	\N	200	23.1500	105.2166	1
1654	Ongamo	ngasa	ongamo	\N	200	-2.9320	37.4853	4
1655	Orejón	orejón	orejón	\N	200	-2.7674	-72.9492	3
1656	Pacific Gulf Yupik	yupí del Pacífico	yupik du golfe du Pacifique	\N	200	58.1938	-155.6542	3
1657	Pipil	pipil	pipil	\N	200	13.7220	-89.7195	4
1658	Saisiyat	saisiyat	saisiyat	\N	200	24.5977	121.0762	3
1659	Sauk-Fox	fox	sauk-fox	\N	200	41.9637	-92.5768	4
1660	Sepa	sepa	sepa	\N	200	-4.3245	144.9755	1
1661	Shark Bay	lengua de la Bahía del Tiburón	shark Bay	\N	200	-15.2987	167.1459	1
1662	Southern Chocho	chochoteco meridional	chocho méridional	\N	200	17.6608	-97.3350	3
1663	Theen	theen	theen	\N	200	20.2022	102.8538	3
1664	Töitschu	töitschu	töitschu	\N	200	45.6913	7.8682	3
1665	|Xaise	|xaise	|xaise	\N	200	-21.2458	26.1776	4
1666	Beaver	castor	beaver	\N	195	56.4810	-121.8831	2
1667	Nootka	nutka	nootka	\N	185	49.2818	-126.0627	3
1668	Tipai (Mexico)	tipai (México)	tipai (Mexique)	\N	184	32.0000	-116.1166	3
1669	Uru-eu-au-au	uru-eu-uau-uau	uru-eu-wau-wau	\N	183	-11.6852	-63.6547	1
1670	Eastern Chocho	Chocholteco del este	chocho oriental	\N	181	17.7223	-97.3213	3
1671	Bahonsuai	bahonsuái	bahonsuai	\N	180	-2.2186	121.6845	2
1672	Bedoanas	bedoanas	bedoanas	\N	180	-2.7263	132.5582	1
1673	Jarawára	yarawara	jarawára	\N	180	-7.2153	-65.0115	1
1674	Keder	keder	keder	\N	180	-2.0430	139.0979	3
1675	Straits Salish	straits salish	salish straits	\N	180	48.4457	-123.4205	3
1676	Zo'é	poturú	zo'é	\N	177	0.7909	-57.1289	1
1677	Central Ojibwe	oyibua central	ojibwe central	\N	175	50.2275	-86.9635	2
1678	Kuurinji	gurinji	gurindji	\N	175	-18.1047	129.8474	2
1680	Zazao	zazao	zazao	\N	166	-8.1832	159.2269	4
1681	Zapotec of the Southern mountains, northwest lowlands	zapoteco de la sierra sur, llanura noroccidental	zapotèque des montagnes du sud, basses terres nord-occidentales	\N	164	16.6333	-96.9500	2
1682	Pije	pije	pije	\N	161	-20.7869	164.9487	3
1683	Aweti	awetí	aweti	\N	160	-12.2053	-53.3705	1
1684	Koro	koro	koro	\N	160	-14.3242	167.4728	2
1685	Meriam Mir	meriam	meriam mir	\N	160	-9.9201	144.0472	2
1686	Onjab	onjab	onjob	\N	160	-9.2973	149.1613	1
1687	Tsimshian	chimesiano	tshimsian	\N	160	54.5016	-130.3832	4
1688	Chihuahua Lower Pima	pima bajo de Chihuahua	bas-pima du Chihuahua	\N	159	28.6860	-106.1378	2
1689	Sonora Lower Pima	pima bajo de Sonora	bas-pima de Sonora	\N	159	28.3716	-108.9265	3
1690	Kaska	kaska	kaska	\N	155	61.9751	-132.4544	3
1691	Aikana	aikaná	aikaná	\N	150	-12.6510	-60.3918	2
1692	Aleut (Eastern)	aleutiano (oriental)	aleut (oriental)	\N	150	54.7212	-164.4433	4
1693	Aleut (Western)	aleutiano (occidental)	aleut (occidental)	\N	150	52.2304	-174.1978	3
1694	Amblong	amblong	amblong	\N	150	-15.4933	166.9846	2
1695	Arguni	arguni	arguni	\N	150	-2.6632	132.5418	1
1696	Assiniboine (United States of America)	asinibóin (Estados Unidos)	assiniboine (États-Unis d'Amérique)	\N	150	48.4466	-114.8783	4
1697	Baki	baki	baki	\N	150	-16.7013	168.1450	1
1698	Cacua	cacua	kakwa	\N	150	0.9166	-69.5000	3
1699	Camarines Norte Agta	agta de Camarines Norte	agta de Camarines-nord	\N	150	14.0135	122.8873	3
1700	Cubeo (Brazil)	cubeo (Brasil)	cubeo (Brésil)	\N	150	1.2713	-67.8076	2
1701	Gwich'in (United States of America)	güichín (Estados Unidos)	gwich’in (États-Unis d'Amérique)	\N	150	68.1171	-145.5173	3
1702	Hiw	hiw	hiw	\N	150	-13.1343	166.5671	2
1703	Katxuyana-Xikuyána	cachuana-warikyana	kaxuiâna-xikuyána	\N	150	2.0430	-55.4589	1
1704	Ket	keto	ket	\N	150	62.6236	87.7148	3
1705	Koyukon	koyuko	koyukon	\N	150	66.3375	-151.1608	4
1706	Malmariv	malmariv	malmariv	\N	150	-15.2656	166.9104	1
1707	Mt. Iraya Agta	agta del Monte Iraya	agta du Mont Iraya	\N	150	13.4590	123.5467	2
1708	Ocaina (Peru)	ocaina (Perú)	ocaina (Pérou)	\N	150	-2.8552	-71.9824	4
1709	Papapana	papapana	papapana	\N	150	-5.8974	155.2505	2
1710	Quechan	quechan	quechan	\N	150	32.7279	-114.7255	2
1711	Southern Ayta	ayta meridional	ayta du sud	\N	150	13.0270	124.1549	4
1712	Tundra Yukagir	yucaguiro de la tundra	youkaguire de la toundra	\N	150	69.1654	154.4732	4
1713	Tupari	tuparí	tuparí	\N	150	-12.0876	-62.4792	2
1714	Wari	wari	wari	\N	150	-3.2173	138.4497	2
1715	Yavapai	yavapái	yavapai	\N	150	34.5638	-112.4453	3
1716	Mlabri	mlabri	mlabri	\N	149	18.4796	101.0961	2
1717	Negidal	neguidal	negidal	\N	147	52.9420	139.7790	4
1718	Suarmin	suarmín	suarmin	\N	145	-5.0526	141.9818	2
1719	Kickapoo (Mexico)	quicapú (México)	kickapoo (Mexique)	\N	144	28.0000	-101.7500	4
1720	Wab	wab	wab	\N	142	-5.6296	146.3900	1
1721	Motocintlec	mochó	motocintlèque	\N	141	15.3709	-92.2484	4
1722	Dengalu	dengalu	dengalu	\N	140	-7.0572	146.3598	2
1723	Dimbong	dimbongo	dimbong	\N	140	4.7078	10.6567	4
1724	Kunbarlang	kumbarlán	kunbarlang	\N	140	-12.0661	134.0661	3
1725	Machineri (Bolivia)	machinere (Bolivia)	maxineri (État plurinational de Bolivie)	\N	140	-11.1460	-69.0161	3
1726	Taworta	taworta	taworta	\N	140	-3.2776	138.7902	1
1727	ǂHoa	|hua-owani	ǂhoa	\N	140	-24.1668	24.4885	4
1728	Handuri	handuri	handuri	\N	138	31.0011	77.3107	4
1729	Suruahá	suruahá	suruahá	\N	136	-6.8828	-66.9726	1
1730	Kutenai	kutenái	kutenai	\N	135	49.6467	-115.7372	3
1731	Nauna	nauna	nauna	\N	130	-2.2159	148.1986	1
1732	Okanagan	okanogán	okanagan	\N	130	50.3059	-119.3228	2
1733	Piu	piu	piu	\N	130	-6.9591	146.4257	2
1734	Ocaina (Colombia)	ocaina (Colombia)	ocaina (Colombie)	\N	126	-2.0000	-71.5000	3
1735	Yuki	yuquí	yuki	\N	125	-16.2463	-65.0061	3
1736	Asurini do Xingu	assuriní do Xingú	asuriní du Xingu	\N	124	-3.9095	-52.4707	1
1737	Nahukwa	nahukwa	nahukwa	\N	124	-12.1043	-53.2944	2
1738	Aputai	aputai	aputai	\N	120	-7.6511	126.4086	4
1739	Budibud	budibud	budibud	\N	120	-9.2973	153.6891	1
1740	Capanahua	capanahua	capanahua	\N	120	-6.5991	-74.2895	3
1741	Dâw	kamá	dâw	\N	120	0.2197	-68.7744	1
1742	Ili Turk	ili turki	ili turki	\N	120	44.0244	81.1450	3
1743	Lamu	lamu	lamu	\N	120	26.2434	100.8654	4
1744	Obokuitai	obokuitái	obokuitai	\N	120	-2.9046	138.0816	1
1745	Polonomombauk	polonombauk	polonombauk	\N	120	-15.4907	167.0814	2
1746	Samre	samrè	samre	\N	120	12.1166	103.0833	4
1747	Tutuba	tutuba	tutuba	\N	120	-15.5727	167.2750	2
1748	Northern Tutchone	tutchone septentrional	tutchone du nord	\N	115	62.8255	-136.5838	2
1749	Dubu	dubu	dubu	\N	110	-3.5134	140.8612	1
1750	Haisla	haisla	haisla	\N	110	53.9745	-128.6443	4
1751	Heiltsuk	heilchuco	heiltsuk	\N	105	52.1591	-128.1546	4
1752	Kwegu	kwegu	kwegu	\N	103	5.4191	36.0791	4
1753	Adnyamathanha	adiñamantana	adnymathanta	\N	100	-30.6000	138.6035	2
1754	Ainbai	ainbai	ainba	\N	100	-3.1000	141.2000	3
1755	Arem	aremo	arem	\N	100	18.1771	105.3369	3
1756	Banawá Yafi	banahuá	banawá yafi	\N	100	-6.6427	-64.5996	1
1757	Bara (Colombia)	bará (Colombia)	bará (Colombie)	\N	100	0.0500	-70.1733	4
1758	Bikaru	bikaru	bikaru	\N	100	-4.8000	143.0000	3
1759	Boor	boor	boor	\N	100	10.2149	17.3721	4
1760	Burate	burate	burate	\N	100	-2.7811	135.9915	3
1761	Callahuaya	callawalla	kallawaya	\N	100	-15.1357	-69.1699	4
1762	Comanche	comanche	comanche	\N	100	34.6086	-98.3904	3
1763	Dabra	dabra	dabra	\N	100	-3.4092	139.0209	1
1764	Djinang	djinang	djinang	\N	100	-12.3507	135.1098	2
1765	Dulbu	dulbu	dulbu	\N	100	9.9850	10.0579	4
1766	Ghomara	ghomara	ghomara	\N	100	35.0108	-5.5151	4
1767	Itelmen	itelmeno	itelmen	\N	100	57.1496	156.9012	4
1768	Jebero	jebero	jebero	\N	100	-5.3097	-75.9814	4
1769	Jilbe	yilbe	jilbe	\N	100	11.7490	14.5458	4
1770	Kalamo	kalamo	kalamo	\N	100	-6.7000	142.5000	3
1771	Kanowit	kanowit	kanowit	\N	100	2.0652	112.1489	3
1772	Karas	karas	karas	\N	100	-3.4585	132.6599	3
1773	Kiong	kiong	kiong	\N	100	5.2906	8.3523	4
1774	Kofei	kifei	kofei	\N	100	-2.3833	136.7907	3
1775	Likum	likum	likum	\N	100	-2.1651	146.6921	2
1776	Maricopa	maricopa	maricopa	\N	100	33.3772	-112.1676	3
1777	Mohave (Arizona)	mohave (Arizona)	mohave (Arizona)	\N	100	34.0231	-114.5045	3
1778	Mohave (California)	mohave (California)	mohave (Californie)	\N	100	34.6905	-114.5980	3
1779	Molo	molo	molo	\N	100	10.8980	34.2773	4
1780	Mulao	mulao	mulao	\N	100	26.5851	107.9524	3
1781	Mvanip	mvanip	mvanip	\N	100	6.7027	11.2225	4
1782	Nafi	nafi	nafi	\N	100	-6.3999	146.8020	3
1783	Nemadi	nemadí	nemadi	\N	100	18.4118	-9.4482	4
1784	Ninam (Venezuela)	ninam (Venezuela)	ninam (République bolivarienne du Venezuela)	\N	100	4.5435	-63.5668	1
1785	Omagua (Peru)	omagua (Perú)	omagua (Pérou)	\N	100	-4.0724	-73.1030	4
1786	Oroch	orochi	oroch	\N	100	49.1781	139.7625	4
1787	Oroha	oroha	oroha	\N	100	-9.7686	161.5100	3
1788	Pauwi	pauwi	pauwi	\N	100	-1.8151	137.8193	1
1789	Piame	piame	piame	\N	100	-4.9000	142.8500	3
1790	Pyu	pyu	pyu	\N	100	-4.5000	140.9000	3
1791	Ruga	ruga	ruga	\N	100	25.2844	90.4614	4
1792	Sahaptin	sahaptín	sahaptin	\N	100	44.7712	-121.2871	3
1793	Samatao	samaduo	samatao	\N	100	24.9359	102.7935	4
1794	Seneca (United States of America)	seneca (Estados Unidos)	seneca (États-Unis d'Amérique)	\N	100	42.3291	-78.8680	3
1795	Senggi	senggi	senggi	\N	100	-3.4339	140.7685	1
1796	Shawnee	chavanés	shawnee	\N	100	35.3590	-96.9298	3
1797	Shiwiar	shiwiar chicham	shiwiar chicham	\N	100	-2.2186	-76.8164	3
1798	Shompen	shom peng	shompen	\N	100	7.0245	93.8232	4
1799	Soo	tepes	soo	\N	100	2.1610	34.5986	4
1800	Tai Nora	nora	tai nora	\N	100	26.8485	94.5648	4
1801	Tai Rong	tairong	tai-rong	\N	100	26.9024	94.7570	4
1802	Tangam	tangam	tangam	\N	100	29.1473	94.5538	4
1803	Tariana (Brazil)	tariano (Brasil)	tariana (Brésil)	\N	100	0.9228	-67.5439	4
1804	Tirahi	tirahí	tirahi	\N	100	34.3139	70.3729	4
1805	Ute (Colorado, Southern Ute)	uté (Colorado, uté meridional)	ute (Colorado, Ute méridional)	\N	100	37.1150	-107.6331	3
1806	Vehes	vehes	vehes	\N	100	-6.9427	146.9311	3
1807	Wik Ngathan	wik ngathan	wik-ngathana	\N	100	-14.9561	141.8884	2
1808	Xokleng	xokleng	xokleng	\N	100	-26.5522	-49.0779	4
1809	Yangkam	bachirí	yangkam	\N	100	9.1048	9.8904	4
1810	Yarawata	yarawata	yarawata	\N	98	-4.9377	145.4946	3
1811	O'odham (Mexico)	papago (México)	o'odham (Mexique)	\N	94	31.5188	-112.7472	2
1812	Samosa	samosa	samosa	\N	94	-5.0116	145.5386	3
1813	Mindiri	mindiri	mindiri	\N	93	-5.5517	146.1538	3
1814	Usu	usu	usu	\N	93	-5.2851	145.4974	3
1815	Iteri	iteri	iteri	\N	90	-4.0807	141.5039	3
1816	Ngarinyin	engariñín	ngarinyin	\N	90	-16.9096	125.4199	2
1817	Repanbitip	repanbitip	repanbitip	\N	90	-16.3155	167.6026	2
1818	Tofanma	tofanma	tofanma	\N	90	-3.5675	140.7925	1
1819	Taiap	gapun	taiap	\N	89	-4.1000	144.5000	3
1820	Kusunda	kusunda	kusunda	\N	87	27.9275	84.2866	4
1821	Patamona (Brazil)	patamona (Brasil)	patamona (Brésil)	\N	87	4.5216	-60.3808	1
1822	Xiri	ziri	xiri	\N	87	-31.3924	21.0498	4
1823	Narau	naráu	narau	\N	85	-3.3818	139.8202	3
1824	Ak	ak	ak	\N	83	-3.6093	141.6604	3
1825	Araona	araona	araona	\N	81	-12.4473	-68.1372	3
1826	Ari	ari	ari	\N	80	-8.0000	142.4000	3
1827	Assiniboine (Canada)	asinibóin (Canadá)	assiniboine (Canada)	\N	80	50.3536	-103.4841	4
1828	Dorro	dorro	dorro	\N	80	-9.1834	141.8994	3
1829	Gong	ugong	gong	\N	80	15.0880	99.5230	3
1830	Itik	itik	itik	\N	80	-2.3181	139.1480	1
1831	Mari	mari	mari	\N	80	-9.0478	141.8994	3
1832	Pwapwa	pwapwa	pwapwa	\N	80	-20.8074	164.5367	3
1833	Somm	som	som	\N	80	-6.1296	146.4642	2
1834	Tobati	tobati	tobati	\N	80	-2.6059	140.7997	3
1835	Moré	moré	moré	\N	76	-12.0822	-64.9731	4
1836	Mores	morés	mores	\N	75	-15.3583	166.8988	3
1837	Musan	musan	musan	\N	75	-4.0355	141.3610	3
1838	Papi	papi	papi	\N	75	-4.5000	142.0000	3
1839	Sarcee	sarsi	sarcee	\N	75	50.9682	-114.3851	4
1840	Sekani	sekaní	sekani	\N	75	58.0952	-122.7067	4
1841	Arawun	arawum	arawum	\N	73	-5.5093	145.8929	3
1842	Siriano (Brazil)	siriano (Brasil)	siriano (Brésil)	\N	71	0.5244	-67.5000	1
1843	Teko	teco	teko	\N	71	15.6582	-92.1427	3
1844	Anus	sobei	anus	\N	70	-2.1268	139.5126	3
1845	Awera	awera	awera	\N	70	-2.7084	136.0395	1
1846	Boruca	borunca	boruca	\N	70	9.0010	-83.3230	4
1847	Doutai	tolitai	doutai	\N	70	-3.2282	138.2189	3
1848	East Cape Yupik	yupí naukán	yupik du Cap Est	\N	70	66.0166	-169.7166	4
1849	Iresim	iresim	iresim	\N	70	-3.6011	135.1428	3
1850	Mafea	mafea	mafea	\N	70	-15.4219	167.2366	2
1851	Vilamovian	vilamoviciano	wilamowicien	\N	70	49.7909	18.7620	3
1852	Western Chocho	chochoteco occidental	chocho occidental	\N	70	17.7486	-97.4409	3
1853	Yankunytjatjara	yankuntachara	yankuntjatjara	\N	70	-27.3132	132.0666	2
1854	Yanyuwa	yanyuwa	yanyuwa	\N	70	-15.9613	136.3842	3
1855	Yapunda	yapunda	yapunda	\N	69	-3.5000	142.4000	3
1856	Bothar	bothar	bothar	\N	68	-9.0695	141.1550	3
1857	Kari'ña (Brazil)	galibi (Brasil)	galibi (Brésil)	\N	66	4.0067	-51.6027	2
1858	Ritharrngu	ritarungo	ritarungo	\N	66	-13.1543	134.8242	2
1859	Northern Straits Salish	straits salish septentrional	salish straits du nord	\N	65	48.4880	-122.6363	4
1860	Sumariup	sumariup	sumariup	\N	65	-4.7000	143.3000	3
1861	Ixil (Mexico)	ijilo (México)	ixil (Mexique)	\N	64	19.5080	-89.3188	4
1862	Orok	oroki	orok	\N	64	52.3437	143.0557	4
1863	Carapana (Brazil)	carapana (Brasil)	carapana (Brésil)	\N	63	-3.0966	-65.0610	3
1864	Yan-nhangu	yarnango	yan-nhangu	\N	61	-12.0940	134.8900	2
1865	Atemble	atemble	atemble	\N	60	-5.1292	144.7421	2
1866	Bagupi	bagupi	bagupi	\N	60	-5.0454	145.5822	2
1867	Carapana (Colombia)	carapana (Colombia)	carapana (Colombie)	\N	60	0.9337	-70.8178	2
1868	Gooniyandi	guniyandi	gooniyandi	\N	60	-18.8335	125.9912	3
1869	Gurrgoni	guragone	gurrgoni	\N	60	-12.1037	134.3408	1
1870	Kija	kitja	kitja	\N	60	-18.0832	128.1884	3
1871	Montana Salish	salish de Montana	salish du Montana	\N	60	47.5944	-114.1182	4
1872	Ngangikurunggurr	nangikurrunggurr	ngangikurunggurr	\N	60	-14.6792	130.3967	3
1873	Olultecan	oluteco	olultecan	\N	60	17.9277	-94.8969	3
1874	Senaya	neo-arameo cristiano	senaya	\N	60	36.2664	50.0042	4
1875	Tahltan	tahltan	tahltan	\N	60	57.8451	-129.9745	4
1876	Tembé	tembé	tembé	\N	60	-2.6467	-46.7248	3
1877	Mosimo	mosimo	mosimo	\N	58	-4.9473	145.5551	3
1878	Tapayuna	tapayuna	tapayuna	\N	58	-10.5559	-53.0639	3
1879	Bepour	bepour	bepour	\N	57	-4.5860	145.4184	3
1880	Faita	faita	faita	\N	57	-5.6570	145.5001	3
1881	Teribe (Costa Rica)	naso (Costa Rica)	teribe (Costa Rica)	\N	57	9.0593	-83.2876	4
1882	Kiliwa	kiliwa	kiliwa	\N	56	31.2500	-115.6166	4
1883	Moere	moere	moere	\N	56	-4.6038	145.4370	3
1884	Baure	bauré	bauré	\N	55	-13.1008	-64.5007	4
1885	Southern Haida	haida meridional	haida méridional	\N	55	53.2697	-131.9861	4
1886	Tlingit (Canada)	coluchano (Canadá)	tlingit (Canada)	\N	55	60.1710	-132.7395	4
1887	Upper Tanana (United States of America)	tanana alto (Estados Unidos)	haut-tanana (États-Unis d'Amérique)	\N	55	62.6867	-141.2182	4
1888	Zapotec of Asunción Tlacolulita	zapoteco de Asunción Tlacolulita	zapotèque d'Asunción Tlacolulita	\N	53	16.3000	-95.7166	4
1889	Trumai	trumaí	trumai	\N	51	-11.8807	-53.6009	4
1890	Arabela	arabela	arabela	\N	50	-1.5818	-75.3881	3
1891	Arha	ara	arha	\N	50	-21.3047	165.0146	4
1892	Banjima	panchima	banjima	\N	50	-22.2890	119.3774	3
1893	Bella Coola	bilcula	bella coola	\N	50	52.3823	-126.7255	4
1894	Budong-Budong	budón-budón	budong-budong	\N	50	-2.0601	119.3074	4
1895	Bulgebi	bulgebi	bulgebi	\N	50	-5.7485	146.4532	2
1896	Chiquitano (Brazil)	Chiquitano (Brasil)	chiquitano (Brésil)	\N	50	-17.4345	-58.0627	4
1897	Forest Yukagir	yucaguiro de los bosques	youkaguire des forêts	\N	50	65.4936	151.0757	4
1898	Gorovu	gorovu	gorovu	\N	50	-4.5000	144.6000	3
1899	Iduh (Lao PDR)	odu (Laos)	iduh (République démocratique populaire lao)	\N	50	19.3292	103.3758	4
1900	Karaim (Lithuania)	karaím (Lituania)	karaïm (Lituanie)	\N	50	54.6420	24.9499	3
1901	Kasong	kasong	kasong	\N	50	12.5640	102.5290	4
1902	Kayupulau	kayapulau	kayupulau	\N	50	-2.5464	140.7250	4
1903	Lolak	lolak	lolak	\N	50	0.8569	124.0081	4
1904	Maku'a	maku'a	maku'a	\N	50	-8.4017	127.2271	4
1905	Makurap	makuráp	makurap	\N	50	-12.1682	-63.0285	3
1906	Miriwoong	miriwung	miriwung	\N	50	-16.7631	128.9025	4
1907	Moraori	moraori	moraori	\N	50	-8.7113	140.7128	3
1908	Nakkara	nakara	nakara	\N	50	-12.1145	134.5825	3
1909	Ngarinman	engarinmán	ngarinman	\N	50	-16.6782	129.7485	3
1910	Norfolk-Pitcairn (Pitcairn)	pitcairn-norfolk (Pitcairn)	pitkern-norfolk (Pitcairn)	\N	50	-24.3721	-128.3203	1
1911	Omaha-Ponca	omaha	omaha	\N	50	42.0817	-96.4855	4
1912	Omotik	omótico	omotik	\N	50	-1.1150	35.9143	4
1913	Onge	önge	onge	\N	50	10.6390	92.4938	4
1914	Patua	macanés	patua	\N	50	22.1632	113.5464	4
1915	Paulohi	solehua	paulohi	\N	50	-3.2721	128.7570	4
1916	Potawatomi (Kansas)	potahuatomí (Kansas)	potawatomi (Kansas)	\N	50	39.3251	-95.8495	4
1917	Potawatomi (Michigan)	potahuatomí (Míchigan)	potawatomi (Michigan)	\N	50	45.0269	-84.1992	4
1918	Potawatomi (Oklahoma)	potahuatomí (Oklahoma)	potawatomi (Oklahoma)	\N	50	35.3135	-96.9255	4
1919	Potawatomi (Wisconsin)	potahuatomí (Wisconsin)	potawatomi (Wisconsin)	\N	50	45.5601	-88.8300	4
1920	Salas	salas gunung	salas	\N	50	-3.1350	130.5505	3
1921	Samray	somray	somray	\N	50	13.6850	101.5931	4
1922	Sapé	sapé	sape-kaliana	\N	50	5.0033	-63.5449	4
1923	Sentilese	sentinel	sentinelese	\N	50	11.5446	92.2576	4
1924	Sian	sian	sian	\N	50	2.3854	114.3354	3
1925	Tambotalo	tambotalo	tambotalo	\N	50	-15.4655	167.1027	3
1926	Tanacross	tanacross	tanacross	\N	50	64.2159	-145.9643	4
1927	Tanaina	tanaina	dena’ina	\N	50	63.3422	-148.8647	3
1928	Tanimbili	tanimbili	tanimbili	\N	50	-11.2935	166.5211	3
1929	Warumungu	warumungu	warumungu	\N	50	-19.5183	133.9453	3
1930	Zapotec of San Felipe Tejalapan	zapoteco de San Felipe Tejalápam	zapotèque de San Felipe Tejalapan	\N	50	17.1099	-96.8539	4
1931	Tench	tenis	tench	\N	49	-1.6394	150.6939	4
1932	Mudburra	mudbura	mudbura	\N	48	-16.9727	131.7700	3
1933	Nunggubuyu	nunggubuyu	nunggubuyu	\N	44	-13.8807	135.7250	3
1934	Dumun	dumun	dumun	\N	42	-5.5421	146.0906	4
1935	Kudu-Camo	kuda-chamo	kudu-camo	\N	42	11.0166	8.8879	4
1936	Asumboa	asumbuo	asumboa	\N	40	-11.2982	166.4868	3
1937	Bunuba	bunaba	bunuba	\N	40	-17.8951	125.7495	3
1938	Chamacoco	chamacoco	chamacoco	\N	40	-23.0595	-55.6127	4
1939	Garrwa	garava	garawa	\N	40	-17.1197	137.6806	3
1940	Gumbaynggirr	kumbaingari	gumbaynggirr	\N	40	-30.3349	152.8198	4
1941	Maremgi	maremgi	maremgi	\N	40	-2.2571	139.5455	2
1942	Mono (Western)	mono (occidental)	mono (occidental)	\N	40	37.0943	-119.4999	4
1943	Southern Tutchone	tutchone meridional	tutchone du sud	\N	40	60.7796	-137.4983	4
1944	Tipai (United States of America)	tipai (Estados Unidos)	diegueño (États-Unis d'Amérique)	\N	40	32.6049	-116.4678	3
1945	Tofa	tofa	tofa	\N	40	53.7324	98.2589	4
1946	Udege	udihe	udihe	\N	40	47.6209	136.0903	4
1947	Yoki	yoki	yoki	\N	40	-1.5893	137.9127	3
1948	Noy	noy	noy	\N	36	8.9312	17.8829	4
1949	Chulym Turk	chulimo túrcico	tchoulim turcique	\N	35	57.3354	88.1542	4
1950	Kapori	kapori	kapauri	\N	35	-3.4000	139.7000	4
1951	Kaqchikel (Mexico)	cachiquel (México)	kaqchikel (Mexique)	\N	35	19.4044	-90.0604	4
1952	Menominee	menominí	menominee	\N	35	44.9356	-88.6144	4
1953	Quechua of Pacaraos	quechua de Pacaraos	quechua de Pacaraos	\N	35	-11.2538	-76.8054	4
1954	Turaka	turaka	turaka	\N	35	-9.7960	149.4470	4
1955	Barasana (Brazil)	barasana (Brasil)	barasana (Brésil)	\N	34	0.7909	-68.6425	3
1956	Bilakura	bilakura	bilakura	\N	34	-4.9404	145.5303	4
1957	Macuna (Brazil)	macuna (Brasil)	macuna (Brésil)	\N	32	1.1395	-67.7636	1
1958	Jarawa	jarawa	jarawa	\N	31	12.6028	92.7520	4
1959	Kowaki	kowaki	kowaki	\N	31	-4.6079	145.4067	4
1960	Kri	kri	kri	\N	31	18.2500	105.0000	3
1961	Mawak	mawak	mawak	\N	31	-4.5819	145.3079	4
1962	Alabat Island Agta	agta de la isla Alabat	agta de l'île d'Alabat	\N	30	14.1209	122.0282	4
1963	Amahai	amahai	amahai	\N	30	-3.3352	128.9314	4
1964	Bardi	bardi	bardi	\N	30	-16.9307	122.8710	3
1965	Cahuilla	cahuilla	cahuilla	\N	30	33.5404	-116.7436	4
1966	Cambap	cambap	cambap	\N	30	6.4872	11.8020	4
1967	Carijona	carijona	carijona	\N	30	-1.2743	-70.1147	4
1968	Chintaw	chaunta	chintaw	\N	30	24.9263	98.2414	4
1969	Comox/Sliammon	cómox	comox/sliammon	\N	30	49.6795	-124.9542	4
1970	Djeoromitxi	jabutí	djeoromitxi	\N	30	-12.0500	-64.6655	3
1971	Duriankere	duriankere	duriankere	\N	30	-1.3896	130.9247	4
1972	Goundo	gundo	goundo	\N	30	9.4761	16.2652	4
1973	Kawucha	kawucha	kawacha	\N	30	-6.9373	146.1621	4
1974	Kwerisa	kwerisa	Kwerisa	\N	30	-2.9759	138.1530	4
1975	Mono (Eastern)	mono (oriental)	mono (oriental)	\N	30	37.3674	-118.3953	4
1976	Ngalkbun	engalbún	ngalkbun	\N	30	-13.5178	134.6264	3
1977	Punan Batu	punan batu	punan batu	\N	30	2.6021	114.0000	4
1978	Rama	rama	rama	\N	30	11.8847	-83.7995	4
1979	Sia Pedee	sia pedee	sia pedee	\N	30	0.9887	-79.1674	4
1980	Ske	seke	ske	\N	30	-15.9085	168.1924	3
1981	Valley Yokuts	yokuts del valle	yokuts de la vallée	\N	30	36.0582	-119.5241	3
1982	Warnman	wanman	warnman	\N	30	-22.9786	122.7832	3
1983	Wik Ngencherr	wik ngencherr	wik-ngenchera	\N	30	-14.0939	141.8554	3
1984	Wiradjuri	wiradhuri	wiradjuri	\N	30	-34.5608	147.0410	4
1985	Malinaltepec Tlapanec	tlapaneco malinaltepeco	tlapanèque de Malinaltepec	\N	29	17.2451	-98.6717	1
1986	Ahtna	atna	ahtna	\N	25	62.7547	-144.3164	4
1987	Bieria	bieria	bieria	\N	25	-16.8045	168.2446	4
1988	Caddo	cado	caddo	\N	25	35.0985	-98.2603	4
1989	Columbian	columbiano	columbian	\N	25	48.1764	-119.0523	4
1990	Iquito	iquito	iquito	\N	25	-3.6449	-74.1577	4
1991	Kwazá	kwaza	kwaza	\N	25	-12.6510	-60.4138	4
1992	Marrithiyel	marithiel	marithiel	\N	25	-13.8060	130.0451	4
1993	Massep	masepo	massep	\N	25	-1.7575	138.3178	4
1994	Mor	mor	mor	\N	25	-2.8607	132.7697	3
1995	Pisamira	pisamira	pisamira	\N	25	1.0656	-70.4388	4
1996	Sakurabiat	sakirabiá	sakirabiát	\N	25	-12.9670	-61.2652	3
1997	Surel	surel	surel	\N	25	27.6969	86.3058	4
1998	Upper Kuskokwim	cuscoquín alto	haut-kuskokwim	\N	25	63.0091	-154.3889	4
1999	Zumaya	zumaya	zumaya	\N	25	10.5323	14.3591	4
2000	Kashaya	kashaya	kashaya	\N	24	38.6603	-123.3045	4
2001	Kavalan	kavalano	kavalan	\N	24	24.7393	121.6996	4
2002	Wardaman	yibwan	wardaman	\N	24	-14.9925	131.9293	3
2003	Washo	washo	washo	\N	24	38.9226	-119.7256	3
2004	Kuku Yalanji	yalanyí	kuku-yalanji	\N	23	-15.8148	144.9316	3
2005	Sām	saam / saamo	sām	\N	23	27.3595	86.9979	3
2006	Southwestern Tlapanec	tlapaneco suroccidental	tlapanèque sud-occidental	\N	23	16.9629	-99.0953	1
2007	Alawa	alava	alawa	\N	22	-16.4676	134.0771	4
2008	Tobian	tobiano	tobien	\N	22	2.9594	131.8084	4
2009	Bara (Brazil)	bará (Brasil)	bará (Brésil)	\N	21	0.3515	-68.9721	1
2010	Ixcatec	ixcateco	ixatèque	\N	21	17.8493	-97.1810	4
2011	Añu	paraujano	anun	\N	20	11.0220	-71.7352	4
2012	Barzani Jewish Neo-Aramaic (Israel)	neo-arameo judío barzani (Israel)	judéo-araméen barszani (Israël)	\N	20	31.7888	35.1947	4
2013	Bom	bom	bom	\N	20	7.3188	-11.9915	3
2014	Bundjalung	banyalango	bandjalang	\N	20	-28.9998	152.9077	3
2015	Chung (Cambodia)	sa-och (Camboya)	chung (Cambodge)	\N	20	10.6875	103.8084	4
2016	Dusner	dusner	dusner	\N	20	-2.7139	134.3888	4
2017	Forest Enets	éncico de los bosques	enets des forêts	\N	20	68.6836	86.2727	4
2018	Foya	foya	foya	\N	20	-2.4107	138.6996	4
2019	Hermit	hermit	hermit	\N	20	-2.0869	146.9311	4
2020	Jawoyn	jawan	djauan	\N	20	-14.2004	132.5500	3
2021	Kamasa	kamasa	kamasa	\N	20	-6.9500	146.2000	4
2022	Kanakanabu	kanakanabu	kanakanabu	\N	20	23.1463	120.6782	4
2023	Kembra	kembra	kembra	\N	20	-3.9080	140.3942	4
2024	Kilen	kilen	kilen	\N	20	47.4689	133.8574	4
2025	Kim	krim	kim	\N	20	7.2425	-11.9476	4
2026	Koko Bera	gugubera	koko-bera	\N	20	-15.6865	141.5917	3
2027	Kulina Páno	culina	kulina páno	\N	20	-5.6597	-71.5429	3
2028	Leco	leco	leco	\N	20	-15.5860	-67.9064	4
2029	Loun	loun	loun	\N	20	-2.8717	128.8366	4
2030	Mander	mander	mander	\N	20	-2.4341	138.7284	4
2031	Mangarla	mangala	mangala	\N	20	-20.1590	122.6513	4
2032	Maringarr	maringarr	maringarr	\N	20	-14.1525	129.6166	4
2033	Nataoran	amí nataorano	nataoran	\N	20	24.0088	121.5898	4
2034	Nez Perce	nez-percés	nez-percé	\N	20	46.4347	-116.8268	4
2035	Nisvai	nisvai	nisvai	\N	20	-16.4492	167.7117	4
2036	Nyamal	ñamal	nyamal	\N	20	-21.4019	119.3225	3
2037	Nyikina	nyigina	nyigina	\N	20	-18.2613	124.6179	3
2038	Panamint	panamint	panamint	\N	20	36.4555	-116.8666	4
2039	Pite Saami	saamí de Pite	pite saami	\N	20	66.0447	17.8857	4
2040	Qawasqar	kahuéskar	kawesqar	\N	20	-49.6391	-74.3554	4
2041	Red Gelao (Viet Nam)	gelao rojo (Vietnam)	gelao rouge (Viet Nam)	\N	20	23.1666	105.2500	4
2042	Somyev	somieve	somyewe	\N	20	6.9318	11.5136	4
2043	Ume Saami	saamí de Ume	saami ume	\N	20	65.1091	18.2153	4
2044	Usku	usku	usku	\N	20	-3.5449	140.7499	4
2045	Vote	votiano	vote	\N	20	59.5858	28.4518	4
2046	Wajarri	watjari	wadjari	\N	20	-26.8841	116.6748	3
2047	Wambaya	huambaya	wambaya	\N	20	-17.7696	134.9230	4
2048	Warekena (Brazil)	guarequena (Brasil)	warekena (Brésil)	\N	20	0.7909	-68.3789	4
2049	White Gelao (Viet Nam)	gelao blanco (Vietnam)	gelao blanc (Viet Nam)	\N	20	23.2000	105.3333	3
2050	Mixtec of Tlaltempan	Mixteco de Tlaltempan	mixtèque de Tlaltempan	\N	19	18.6166	-98.0833	2
2051	Uruak	arutaní	awaké-uruak	\N	19	3.9957	-63.5888	4
2052	Pacahuara	acahuara	pacawara	\N	18	-11.4369	-65.6762	4
2053	Ririo	ririo	ririo	\N	18	-6.9100	156.9671	4
2054	Ava-Canoeiro	avá-canoeiro	avá-canoeiro	\N	16	-14.0847	-48.0418	4
2055	Chorotega	chorotega	chorotega	\N	16	9.8991	-83.6855	4
2056	Ainu (Hokkaido)	ainú (Hokkaido)	aïnou (Hokkaido)	\N	15	43.2612	142.8222	4
2057	Jaminjung	djamindjung	djamindjung	\N	15	-15.2417	130.5725	3
2058	Mwesen	mosina	mwesen	\N	15	-13.8740	167.5415	4
2059	Sechelt	sechelt	sechelt	\N	15	50.0846	-123.7437	4
2060	Tanana	tanana	tanana	\N	15	64.6050	-149.0625	4
2061	Ingalik	ingalik	ingalik	\N	14	62.1655	-156.3134	4
2062	Jingulu	chunguloo	jingulu	\N	14	-17.3716	134.1870	3
2063	Zapotec of Mixtepe	zapoteco mixtepeco	zapotèque de Mixtepe	\N	14	16.2666	-96.3666	4
2064	Woria	woria	woria	\N	13	-2.4011	136.4886	4
2065	Aruá	aruá	aruá	\N	12	-12.0285	-64.7094	3
2066	Han (United States of America)	han (Estados Unidos)	han (États-Unis d'Amérique)	\N	12	64.7837	-141.2172	4
2067	Hupa	hupa	hupa	\N	12	41.7624	-123.7028	4
2068	Karuk	karuk	karuk	\N	12	41.7929	-123.3763	3
2069	Makah	makah	makah	\N	12	48.3658	-124.6118	4
2070	Ngaatjatjara	engaachachara	ngaatjatjara	\N	12	-25.1651	127.3535	3
2071	Ngaliwuru	engaliwuru	ngaliwuru	\N	12	-15.5595	131.0614	4
2072	Ofayé	opayé	ofayé	\N	12	-21.3610	-52.0532	4
2073	Umpila	umpila	umpila	\N	12	-13.0366	143.3386	3
2074	Yurok	yurok	yurok	\N	12	41.0607	-124.1413	4
2075	Kinikinau	kinikinau	kinikinau	\N	11	-21.0685	-56.2765	4
2076	Wagiman	wageman	wagiman	\N	11	-14.1845	131.6546	3
2077	Achumawi	achumawi	achumawi	\N	10	40.8816	-122.6715	4
2078	Arho	aro	arho	\N	10	-21.2740	165.0503	4
2079	Arikara	arikara	arikara	\N	10	47.6480	-101.8327	4
2080	Ayizi	ayizi	ayizi	\N	10	24.5964	103.7329	4
2081	Bangsa	Bangsa	bangsa	\N	10	-16.1460	167.3890	4
2082	Ch'orti' (Honduras)	chortí (Honduras)	ch’orti' (Honduras)	\N	10	14.9364	-88.8650	4
2083	Chung (Thailand)	sa-och (Tailandia)	chung (Thaïlande)	\N	10	14.4897	99.1661	4
2084	Copper Island Aleut	aleutiano de la isla Copper	aleut de l'île Copper	\N	10	54.7753	167.5662	4
2085	Gros Ventre	atsina	atsina (gros ventre)	\N	10	48.4824	-108.7639	4
2086	Gweno	gweno	gweno	\N	10	-3.7135	37.6501	4
2087	Hoti	hoti	hoti	\N	10	-3.0143	130.3692	4
2088	Hulung	hulung	hulung	\N	10	-2.8614	128.5606	4
2089	Ibu	ibu	ibu	\N	10	1.5269	127.5265	4
2090	Iranxe	irantxe	irantxe-mynky	\N	10	-12.6939	-57.8430	4
2091	Kamarian	kamarian	kamarian	\N	10	-3.4366	128.5345	4
2092	Karajarri	karacheri	karadjeri	\N	10	-19.0205	122.3437	4
2093	Karipuna	karipuna	karipuna	\N	10	-10.2284	-64.5556	2
2094	Katawixi	catahuichí	katawixí	\N	10	-8.8416	-66.0937	4
2095	Kawaiisu	kawaiisu	kawaiisu	\N	10	35.0589	-118.4026	4
2096	Khövsgöl Uryangkhay	urianjai de Khövsgöl	ouïghour uryangkhai	\N	10	50.9722	101.3159	4
2097	Krenak	botokudo	krenák	\N	10	-19.1937	-41.1527	4
2098	Kurrama	kurrama	kurrama	\N	10	-21.6383	117.9711	4
2099	Lardil	lardil	lardil	\N	10	-16.5526	139.3176	4
2100	Lom	lom	belom, mapor	\N	10	-1.6751	105.8917	4
2101	Lorediakarkar	lorediakarkar	lorediakarkar	\N	10	-15.1967	167.0498	4
2102	Madngele	madngele	madnegele	\N	10	-13.3789	130.5395	4
2103	Malak Malak	mulukomuluko	malak-malak	\N	10	-13.7713	130.6384	4
2104	Manchu (Amur)	manchú (Amur)	mandchou (Amour)	\N	10	49.7666	127.5000	4
2105	Manchu (Nonni)	manchú (Nonni)	mandchou (Nonni)	\N	10	48.0083	124.3542	4
2106	Mandan	mandano	mandan	\N	10	47.5165	-102.2461	4
2107	Marrisyefin	maridjabin	maridjabin	\N	10	-13.9340	129.8254	4
2108	Massalat	massalat	massalat	\N	10	12.7635	20.5993	4
2109	Matanvat	matanvat	matanvat	\N	10	-15.8972	167.1947	4
2110	Matipu	matipuhy	matipu	\N	10	-12.2366	-53.1875	4
2111	Mawayana (Brazil)	mawayana (Brasil)	mawayana (Brésil)	\N	10	-0.9447	-58.2495	4
2112	Munsee (Canada)	unamí (Canadá)	munsee (Canada)	\N	10	42.5700	-81.8790	4
2113	Naati	naati	naati	\N	10	-16.5150	167.4645	4
2114	Ngardi	engardi	ngardi	\N	10	-20.6327	128.5839	4
2115	Ngbinda	ngbinda	ngbinda	\N	10	4.6092	27.0812	4
2116	Northern Paiute (Idaho)	payuté septentrional (Idaho)	paiute du nord (Idaho)	\N	10	43.0439	-112.4566	4
2117	Nusa Laut	nusa laut	nusa laut	\N	10	-3.6833	128.8000	4
2118	Oneida (Wisconsin)	oneida (Wisconsin)	oneida (Wisconsin)	\N	10	44.5158	-88.0075	4
2119	Onondaga (New York)	onondaga (Nueva York)	onondaga (New York)	\N	10	43.0470	-76.1422	4
2120	Osage	osague	osage	\N	10	36.6683	-96.3316	4
2121	Parintintin	parintintin	parintintín	\N	10	-6.5773	-61.7871	4
2122	Pawnee	paní	pawnee	\N	10	36.3372	-96.8032	4
2123	Puari	puari	puari	\N	10	-2.8689	141.6577	4
2124	Rembarrnga	rembarunga	rembaranga	\N	10	-13.3896	133.6706	4
2125	Sene	sene	sene	\N	10	-6.3753	147.7825	4
2126	Sowa	sowa	sowa	\N	10	-15.8609	168.1842	4
2127	Susuami	susuami	susuami	\N	10	-7.2044	146.5493	4
2128	Taap	wantoat	taap	\N	10	-6.1460	146.3955	4
2129	Tape	tape	tape	\N	10	-16.0953	167.3094	4
2130	Ter Saami	saamí de Ter	saami ter	\N	10	68.0638	38.7063	4
2131	Thao	thao	thao	\N	10	23.8808	120.9206	4
2132	Tule-Kaweah Yokuts	yokuts de Tule-Kaweah	yokuts de Tule-Kaweah	\N	10	36.0269	-118.7213	4
2133	Tundra Enets	éncico de la tundra	enets de la toundra	\N	10	71.6973	83.5839	4
2134	Wichita	quivira	wichita	\N	10	35.0647	-98.2788	4
2135	Xambioá	chamboa	kaparajá	\N	10	-7.1717	-49.1583	4
2136	Yawalapiti	yawalapití	yawalapiti	\N	10	-12.1702	-53.3365	4
2137	Yiiji	yiiji	yiiji	\N	10	-15.8458	127.6281	4
2138	Arára Shawãdáwa	catuquina	arara-shawanawa	\N	9	-8.5810	-72.2900	4
2139	Kuuku Ya'u	kuuku-ya'u	kuuku-ya'u	\N	9	-12.0185	142.8112	4
2140	Ngandi	engandi	ngandi	\N	9	-13.6459	135.2087	4
2141	Ngarluma	engarluma	ngarluma	\N	9	-21.1664	117.3339	4
2142	Zaparo	záparo	zaparo	\N	9	-2.2186	-76.5087	4
2143	Ongota	birale	ongota	\N	8	5.3207	37.2244	4
2144	Ajuru	huayoró	ayuru	\N	8	-12.0178	-64.7534	3
2145	Araki	araki	araki	\N	8	-15.6322	166.9413	4
2146	Ayapanec	ayapaneco	ayapanec	\N	8	18.2241	-93.1108	4
2147	Busuu	busú	busuu	\N	8	6.8282	10.1087	4
2148	Chamicuro	chamicuro	chamicuro	\N	8	-5.5285	-75.5969	4
2149	Dumi	dumí	dumi	\N	8	27.3095	86.7521	4
2150	Kayardild	gayardil	kayardild	\N	8	-17.1197	139.4604	4
2151	Munichi	muniche	munichi	\N	8	-5.8182	-76.1846	4
2152	N|uu	engukí	n|uu	\N	8	-28.5169	21.4453	4
2153	Xetá	xetá	xetá	\N	8	-23.2867	-53.3935	4
2154	Kiksht	kiksht	kiksht	\N	7	44.2708	-121.2871	4
2155	Makolkol	makolkol	makolkol	\N	7	-4.8994	151.6827	4
2156	Akuntsu	akuntsu	akuntsu	\N	6	-13.1169	-61.0180	4
2157	Anambé	anambé	anambé	\N	6	-2.7674	-49.2297	4
2158	Arabana	arabana	arabana	\N	6	-28.6134	135.8349	4
2159	Ipai	ipái	diegueño du nord	\N	6	32.9359	-116.8680	4
2160	Karaim (Western Ukraine)	karaím (Ucrania occidental)	karaïm (Ukraine occidentale)	\N	6	50.7538	25.3351	4
2161	Kings River Yokuts	yokuts del río Kings	yokuts kings river	\N	6	36.9104	-118.9261	4
2162	Korana	korana	korana	\N	6	-26.9352	24.1254	4
2163	Mangarrayi	mangarai	mangarayi	\N	6	-14.8067	133.8793	4
2164	Northern Sierra Miwok	miwokano serrano septentrional	miwok de la Sierra du nord	\N	6	38.4008	-120.5351	4
2165	Abaga	abaga	abaga	\N	5	-6.1883	145.5976	4
2166	Aleut (Western, Commander Islands)	aleutiano (occidental, islas del Comandante)	aleut (occidental, îles du Commandeur)	\N	5	55.1710	166.0940	4
2167	Aqaw Gelao	aqao	gelao aqaw	\N	5	28.7447	106.0714	4
2168	Aveteian	aveteian	aveteian	\N	5	-16.3985	167.4213	4
2169	Central Selkup	selcupo central	selkup central	\N	5	59.8903	82.0129	4
2170	Cocama-Cocamilla (Brazil)	cocama-cocamilla (Brasil)	cocama-cocamilla (Brésil)	\N	5	-1.8043	-66.5332	4
2171	Dyirbal	chirbal	dyirbal	\N	5	-18.0205	145.4809	4
2172	Gamilaraay	kamilaroi	kamilaroi	\N	5	-29.7929	149.7106	4
2173	Great andamanese	andamanés	grand andamanais	\N	5	12.2326	92.9031	4
2174	Guató	guató	guató	\N	5	-17.6440	-57.6562	4
2175	Holikachuk	holikachuk	holikachuk	\N	5	64.2254	-155.3027	4
2176	Iduh (Viet Nam)	odu (Vitenam)	iduh (Viet Nam)	\N	5	19.4162	104.4870	4
2177	Isarog Agta	agta de Isarog	agta d'Isarog	\N	5	13.6805	123.3805	4
2178	Itonama	itonama	itonama	\N	5	-13.6246	-63.5668	4
2179	Juma	yuma	juma	\N	5	-7.4496	-63.8195	4
2180	Kalispel	kalispel	kalispel	\N	5	48.2549	-117.2174	4
2181	Kanoê	kanoé	kanoê	\N	5	-13.1222	-61.0510	4
2182	Liki	sobei	liki	\N	5	-1.6202	138.7380	4
2183	Luiseño	luiseño	luiseño	\N	5	33.4622	-117.1269	4
2184	Lushootseed	pugué	lushootseed	\N	5	47.6074	-122.5681	4
2185	Manchurian Kirghiz	quirguís manchuriano	kirghiz de Mandchourie	\N	5	47.8000	124.2000	4
2186	Mansim	borai	mansim	\N	5	-0.9008	134.0441	4
2187	Naman	naman	naman	\N	5	-16.1216	167.4337	4
2188	Nasarian	nasariano	nasarian	\N	5	-16.3517	167.4659	4
2189	Navwien	navwien	navwien	\N	5	-16.4690	167.4975	4
2190	Ndai	ndai	ndai	\N	5	8.3990	14.1641	4
2191	Ngalakan	engalakán	ngalakan	\N	5	-14.5729	134.4946	4
2192	Nivat	nivat	nivat	\N	5	-16.1302	167.3835	4
2193	Niviar	niviar	niviar	\N	5	-16.1302	167.3945	4
2194	Olrat	olrat	olrat	\N	5	-14.2796	167.4302	4
2195	Oro Win	orovín	oro win	\N	5	-11.6683	-65.1379	4
2196	Paunaca	paunaca	paunaca	\N	5	-16.5730	-61.4355	4
2197	Resígaro	resígaro	resigaro	\N	5	-2.7674	-71.7187	4
2198	Sorsorian	sorsorian	sorsorian	\N	5	-16.4709	167.6499	4
2199	Southern Selkup	selcupo meridional	selkoupe meridional	\N	5	58.6626	85.8581	4
2200	Tuzantec	tuzanteco	tuzantec	\N	5	15.1455	-92.4232	4
2201	Umbrul	Umbrul	Umbrul	\N	5	\N	\N	4
2202	Vano	vano	vano	\N	5	-11.6286	166.8383	4
2203	Wunambal	wunambal	wunambal	\N	5	-15.6124	125.0024	4
2204	Yuchi	yuchi	yuchi	\N	5	36.0009	-96.0988	4
2205	Bonerif	bonerif	bonerif	\N	4	-2.1088	139.2352	4
2206	Coeur d'Alene	cordaleno	coeur d’Alene	\N	4	43.3433	-116.8873	4
2207	Dharawal	thurawal	dharawal	\N	4	-34.7235	150.5786	4
2208	Guranalum	guramalumo	guranalum	\N	4	-4.3464	152.8417	4
2209	Lengilu	lengilu	Lengilu	\N	4	3.7327	115.8728	4
2210	Njerep	ñerup	njerep	\N	4	6.4572	11.2884	4
2211	Ouma	ouma	ouma	\N	4	-10.2330	149.1000	4
2212	Paakantyi	baagandji	baagandji	\N	4	-31.5598	143.3935	4
2213	Saponi	saponi	saponi	\N	4	-2.4025	136.5037	4
2214	Tanema	tanema	tanema	\N	4	-11.6986	166.9111	4
2215	Tehuelche	tehuelche	tehuelche	\N	4	-51.5087	-70.3125	4
2216	Totoró	totoró	totoró	\N	4	2.5040	-76.4016	4
2217	Waanyi	waanyi	waanji	\N	4	-17.7486	138.2739	4
2218	Worrorra	worora	worrorra	\N	4	-16.4887	124.6289	4
2219	Awakatek (Mexico)	aguacateco (México)	awacatèque (Mexique)	\N	3	19.3481	-90.7177	4
2220	Baldemu	baldamu	baldamou	\N	3	10.5742	14.5623	4
2221	Bung	bung	bung	\N	3	6.5718	11.8267	4
2222	Canichana	canichana	canichana	\N	3	-14.5835	-64.9731	5
2223	Central Pomo	pomo central	pomo central	\N	3	38.9704	-123.6893	4
2224	Central Sierra Miwok	miwokano serrano central	miwok de la Sierra centrale	\N	3	37.9620	-120.2384	4
2225	Chemehuevi	chemehuevi	chemehuevi	\N	3	34.0138	-114.2146	4
2226	Kiowa Apache	apache de Kiowa	kiowa apache	\N	3	35.1018	-98.6033	4
2227	Konkow	maidú noroccidental	konkow	\N	3	39.4670	-121.5155	4
2228	Lake Miwok	miwokano del lago	miwok du lac	\N	3	38.6426	-122.3849	4
2229	Mabiri	mabiri	mabire	\N	3	12.1682	18.7275	4
2230	Mescalero-Chiricahua Apache (Oklahoma)	apache mescalero-chiricahua (Oklahoma)	apache mescalero-chiricahua (Oklahoma)	\N	3	34.8986	-98.3589	4
2231	Northern Pomo	pomo septentrional	pomo du nord	\N	3	39.4143	-123.3502	4
2232	Sabanê	sabanês	sabanê	\N	3	-12.5277	-59.6859	4
2233	Southern Pomo	pomo meridional	pomo du sud	\N	3	38.7048	-122.8971	4
2234	Southern Sierra Miwok	miwokano serrano meridional	miwok de la Sierra méridionale	\N	3	37.6148	-119.7890	4
2235	Tubatulabal	tubatulabal	tubatulabal	\N	3	35.6444	-118.5183	4
2236	Tuscarora (United States of America)	tuscarora (Estados Unidos)	tuscarora (États-Unis d'Amérique)	\N	3	43.0877	-79.0627	4
2237	Ura	ura	ura	\N	3	-18.6540	169.0740	4
2238	Andoa (Peru)	andoa (Perú)	andoa (Pérou)	\N	2	-2.6796	-76.2011	4
2239	Arikapu	arikapú	arikapu	\N	2	-12.0527	-64.7259	4
2240	Aurê-Aurá	aurá	aurê-aurá	\N	2	-2.9649	-46.2084	4
2241	Baré (Brazil)	baré (Brasil)	baré (Brésil)	\N	2	0.4394	-68.2031	4
2242	Cayuvava	cayubaba	cayuvava	\N	2	-12.7903	-65.3247	4
2243	Gajerrong	gadjerawang	kadjerong	\N	2	-15.2220	128.6059	4
2244	Ganggalidda	ganggalida	ganggalida	\N	2	-17.1001	138.3618	4
2245	Guarasu	guarasú	guarasu	\N	2	-13.4724	-61.0427	4
2246	Klallam	clallam	klallam	\N	2	47.8475	-122.5850	4
2247	Kujubim	kuyubí	kujubim	\N	2	-11.9963	-64.7534	4
2248	Kunjen	kunjen	kunjen	\N	2	-16.1316	142.2070	4
2249	Kuruáya	kuruáya	kuruáya	\N	2	-5.0033	-53.9208	4
2250	Lemerig	lemerig	lemerig	\N	2	-13.7473	167.4096	4
2251	Luri	lurí	luri	\N	2	9.9255	9.5965	4
2252	Maidu	maidú nororiental	maidu	\N	2	40.4134	-120.6738	4
2253	Oneida (New York)	oneida (Nueva York)	oneida (New York)	\N	2	43.0778	-75.6622	4
2254	Poyanawa	poyanáwa	poyanawa	\N	2	-7.6238	-73.2568	4
2255	Puruborá	puruborá	puruborá	\N	2	-12.3292	-64.2919	4
2256	Salamãy	mondé	mondé	\N	2	-8.7602	-63.9074	4
2257	Sambe	sambe	sambe	\N	2	8.6027	8.3825	4
2258	Spokane	espokane	spokane	\N	2	47.9286	-118.0165	4
2259	Tharkarri	dalanchi	tharkarri	\N	2	-24.1480	114.6533	4
2260	Vacacocha	abishira	auishiri (tekiraka)	\N	2	-2.0869	-74.5092	4
2261	Wangaaybuwan	vangaybuván	Wangaaybuwan	\N	2	-31.1093	144.9975	4
2262	Xipáya	xipaya	xipaya	\N	2	-4.3902	-53.9648	4
2263	Apiaká	apiaká	apiaká	\N	1	-11.1519	-57.3113	4
2264	Bikya	bikya	bikya	\N	1	6.8309	10.0277	4
2265	Bishuo	bishuo	bishuo	\N	1	6.9032	10.0991	4
2266	Chaná	chaná	chaná	\N	1	-31.8402	-60.5786	4
2267	Dampel	dampal	dampal	\N	1	0.7923	120.2494	4
2268	Diahói	diahói	diahói	\N	1	-7.9939	-62.1936	4
2269	Kaixána	kaixana	kaixana	\N	1	-2.0649	-67.4121	4
2270	Lae	lae	lae	\N	1	-6.6318	147.1810	5
2271	Laua	laua	laua	\N	1	-10.1824	149.2053	4
2272	Patwin	patwin	patwin	\N	1	38.7608	-122.0354	4
2273	Pazeh	pazeh	pazeh	\N	1	24.2469	120.7727	4
2274	Pémono	pémono	pémono	\N	1	5.6487	-65.8081	4
2275	Taushiro	tausiro	taushiro	\N	1	-3.2502	-75.8935	4
2276	Tinigua	tinigua	tinigua	\N	1	2.3833	-73.6413	4
2277	Tolowa	tolowa	tolowa	\N	1	41.9566	-124.1915	4
2278	Uru	uru	uru	\N	1	-16.5519	-68.6645	5
2279	Volow	volow	volow	\N	1	-13.6433	167.7159	4
2280	Wintu-Nomlaki	wintu	wintu-nomlaki	\N	1	39.8637	-122.0822	4
2281	Yahgan	yámana	yahgan	\N	1	-55.0028	-67.4615	4
2282	Yarawi	suena	yarawi	\N	1	-7.9001	147.6411	4
2283	!Gan!ne	!gan!ne	!gan!ne	\N	0	-31.3911	26.6748	5
2284	Aasax	aasáx	aasax	\N	0	-5.1948	37.7380	5
2285	Ahom	ahom	ahom	\N	0	26.5393	92.5378	5
2286	Ainu (Kuril)	ainú (Islas Kuriles)	aïnou (Kouriles)	\N	0	46.8882	152.0068	5
2287	Ainu (Sakhalin)	ainú (Sajalín)	aïnou (Sakhaline)	\N	0	47.3983	142.2949	5
2288	Akkala Saami	saamí de Akkala / lapón de Akkala	saami akkala	\N	0	67.5809	31.6680	5
2289	Alderney French	francés de Alderney	auregnais	\N	0	49.7098	-2.2075	5
2290	Amanayé	amanayé	amanayé	\N	0	-3.7327	-49.1088	5
2291	Andoa (Ecuador)	andoa (Ecuador)	andoa (Équateur)	\N	0	-2.3341	-76.5016	5
2292	Andro	andro	andro	\N	0	24.8415	94.0539	5
2293	Antoniano	antoniano	antoniano	\N	0	35.9717	-121.1757	5
2294	Aore	aore	aore	\N	0	-15.5767	167.1638	5
2295	Apolista	apolista	apolista	\N	0	-14.4027	-68.6206	5
2296	Arapaho (Oklahoma)	arapaho (Oklahoma)	arapaho (Oklahoma)	\N	0	35.6020	-97.9712	5
2297	Arapáso	arapaso	arapáso	\N	0	0.0000	-66.0000	5
2298	Aribwatsa	aribuacha	aribwatsa	\N	0	-6.6523	147.2291	5
2299	Arin	\N	\N	\N	0	56.2982	91.7468	5
2300	Arman	arman	arman	\N	0	59.6732	150.1391	5
2301	Arta	arta	arta	\N	0	16.4225	121.7042	5
2302	Atacameño	kunza	acatameño	\N	0	-22.7559	-68.2470	5
2303	Atsugewi	atsugewi	atsugewi	\N	0	40.8824	-122.6661	5
2304	Babuza	babuza	babuza	\N	0	24.0100	120.6230	5
2305	Badala	badala	badala	\N	0	-25.2850	153.1054	4
2306	Baga Kalem	baga kalem	baga kaloum	\N	0	10.4013	-14.3151	5
2307	Baga Mboteni	baga emboteni	baga mboteni	\N	0	10.7415	-14.5513	4
2308	Barbareño	barbareño	barbareño	\N	0	34.4227	-119.7039	5
2309	Barzani Jewish Neo-Aramaic (Iraq)	neo-arameo judío barzani (Iraq)	judéo-araméen barszani (Iraq)	\N	0	36.2619	43.9892	5
2310	Basay	basay	basay	\N	0	25.1378	121.6543	5
2311	Baygo	baygo	baygo	\N	0	11.7436	24.6423	5
2312	Berakou	babalia	berakou	\N	0	12.8492	15.0320	5
2313	Berti	berti	berti	\N	0	14.6898	25.9524	5
2314	Bina	bina	bina	\N	0	-10.2365	149.6063	5
2315	Birgid	birked	birgid	\N	0	14.8598	25.0103	5
2316	Boro	karaboro	boro	\N	0	8.6244	0.6262	5
2317	Cacaopera	cacaopera	cacaopera	\N	0	13.4109	-87.8741	5
2318	Cape Khoekhoe	nama	khoekhoe du Cap	\N	0	-34.4522	19.7314	5
2319	Cappadocian Greek (Turkey)	griego capadocio (Turquía)	grec cappadocien (Turquie)	\N	0	38.0480	32.6953	5
2320	Catawba	catauba	catawba	\N	0	34.9361	-81.0272	5
2321	Cayuga (Oklahoma)	cayuga (Oklahoma)	cayuga (Oklahoma)	\N	0	36.6302	-94.6441	5
2322	Cayuse	cayuse	cayuse	\N	0	44.9647	-118.5424	5
2323	Central Kalapuyan	kalapuya central	kalapuya central	\N	0	43.8000	-123.0600	5
2324	Chairel	\N	\N	\N	0	24.9760	94.2407	5
2325	Cholon	cholón	cholon	\N	0	-8.8633	-76.1791	5
2326	Coptic	copto	copte	\N	0	26.8915	29.0959	5
2327	Cowlitz	cowlitz	cowlitz	\N	0	46.1320	-122.8642	5
2328	Culle	culle	culle	\N	0	-8.1951	-78.2940	5
2329	Cuman	\N	\N	\N	0	46.5815	19.6765	5
2330	Cupeño	cupeño	cupeno	\N	0	33.3640	-117.0756	5
2331	Dalmatian	dálmata	dalmate	\N	0	45.0599	14.5719	5
2332	Deti	cuengo deti	deti	\N	0	-20.9614	24.4610	5
2333	Dharug	iyora	dharug	\N	0	-34.0344	150.9301	4
2334	Dhurga	dhurga	dhurga	\N	0	-35.4964	150.2490	4
2335	Dicamay Agta	agta de Dicamay	agta de Dicamay	\N	0	16.6998	122.0167	5
2336	Dorasque	Dorasque	\N	\N	0	\N	\N	5
2337	Dororo	dororo	dororo	\N	0	-8.2169	157.3901	5
2338	Duli	duli	duli	\N	0	9.3813	13.5708	5
2339	Dungidjau	dungidjau	dungidjau	\N	0	-26.5885	152.2705	5
2340	Dura	dura	dura	\N	0	28.2898	84.4519	5
2341	Eastern Abenaki	abenakí oriental	abénaqui oriental	\N	0	44.9423	-68.7328	5
2342	Eastern Kamchadal	\N	\N	\N	0	56.5110	161.0156	5
2343	Eastern Pomo	pomo oriental	pomo oriental	\N	0	39.0461	-122.9211	5
2344	Eel River Athabaskan	wailaki	athabaskan d'Eel River	\N	0	40.1880	-123.6477	5
2345	Eliri	nding	eliri	\N	0	4.5706	30.8580	3
2346	Elmolo	emolo	elmolo	\N	0	2.7212	36.7326	5
2347	Eotile	beti	éotilé	\N	0	5.2495	-3.3233	5
2348	Eyak	eyak / eyaco	eyak	\N	0	60.2165	-143.3935	5
2349	Gaagudju	gagadú	gaagudju	\N	0	-12.2755	132.6379	5
2350	Gafat	gafat	gafat	\N	0	10.6768	35.8264	5
2351	Garífuna (Nicaragua)	garífuna (Nicaragua)	garifuna (Nicaragua)	\N	0	12.5666	-83.7166	4
2352	Ge'ez	gueez	Ge'ez	\N	0	8.9936	38.7597	5
2353	Getmata	getmata	getmata	\N	0	-5.8346	149.0405	5
2354	Gey	gueve	gey	\N	0	9.3840	13.5296	5
2355	Gothic	\N	\N	\N	0	44.6530	33.8598	5
2356	Guanche	\N	\N	\N	0	27.9264	-15.6774	5
2357	Gule	gule	gule	\N	0	10.0986	34.1235	5
2358	Guliguli	\N	\N	\N	0	-8.2114	157.4615	5
2359	Gününa Küne	puelche	gününa yajich	\N	0	-43.4848	-68.1591	5
2360	Gyasumdo	gyasumdo	gyasumdo	\N	0	28.5969	84.2253	2
2361	Hanis	hanis	hanis	\N	0	43.4060	-124.2402	5
2362	Hoanya	hoanya	hoanya	\N	0	23.5665	120.3826	5
2363	Homa	homa	homa	\N	0	5.5011	27.3779	5
2364	Horo	horo	horo	\N	0	9.2390	18.3444	5
2365	Hpun	hpon	hpun	\N	0	24.6500	97.0666	5
2366	Huitoto (Brazil)	huitoto (Brasil)	huitoto (Brésil)	\N	0	-2.3723	-66.0937	5
2367	Hukumina	hukumina	hukumina	\N	0	-3.1514	126.2713	5
2368	Huron-Wyandot (United States of America)	huron (Estados Unidos)	wyandotte (États-Unis d'Amérique)	\N	0	36.7923	-94.7229	5
2369	Ifo	ifo	ifo	\N	0	-18.6605	169.1434	5
2370	Ineseño	ineseño	ineseño	\N	0	34.5942	-120.1371	5
2371	Island Carib	caribe isleño	caraïbe	\N	0	15.4325	-61.2817	5
2372	Island Chumash	chumasho	chumash	\N	0	34.3821	-119.4574	5
2373	Jorá	jorá	jorá	\N	0	-14.0246	-63.3581	4
2374	Judeo-Berber (Morocco)	judeo-bereber (Marruecos)	judéo-berbère (Maroc)	\N	0	30.8220	-6.8005	5
2375	Kamas	kamas	kamasse	\N	0	57.9964	92.8784	5
2376	Kamas Turk	kamasiano	turc kamasse	\N	0	58.1090	92.7101	5
2377	Kaniet	kaniet	kaniet	\N	0	-0.8980	145.5441	5
2378	Kansa	kansa	kansa	\N	0	36.7657	-96.8652	5
2379	Karaim (Crimea)	karaím (Crimea)	karaïm (Crimée)	\N	0	45.0580	33.9477	5
2380	Karami	karami	karami	\N	0	-7.1335	143.8659	5
2381	Karelian (Valday)	carelio (Valday)	carélien (Valday)	\N	0	58.0284	33.3215	5
2382	Katabaga	catabaga	katabaga	\N	0	13.4366	122.5569	5
2383	Kato	kato	kato	\N	0	39.6770	-123.4944	5
2384	Kayeli	kayeli	kayeli	\N	0	-3.3900	127.1008	5
2385	Kazukuru	kazukuru	kazukuru	\N	0	-8.1598	157.4629	5
2386	Kede	kede	kede	\N	0	-17.1617	16.1059	5
2387	Kemi Saami	\N	\N	\N	0	67.0631	27.6635	5
2388	Kenaboi	kenaboi	kenaboi	\N	0	3.1129	102.0322	5
2389	Kerek	kerek	kerek	\N	0	62.5996	176.9183	5
2390	Ketangalan	ketangalano	ketangalan	\N	0	25.0433	121.4813	5
2391	Khaccaḍ Bhoṭe	bhotte	tibétain d'âne	\N	0	28.1113	85.3674	2
2392	Kilit	kilit	kilit	\N	0	38.9455	46.0989	5
2393	Kinare	kinare	kinare	\N	0	-0.7250	37.2436	5
2394	Klamath-Modoc	lutuamí-modoco	klamath	\N	0	42.5767	-121.8637	5
2395	Konomihu	konomihu	konomihu	\N	0	41.2583	-123.3216	5
2396	Kore	koyra	Kore	\N	0	-2.2845	40.9185	5
2397	Kott	\N	\N	\N	0	56.3013	94.5318	5
2398	Krenjê	kreye	krenjê	\N	0	-2.5644	-46.6589	5
2399	Krevin	\N	\N	\N	0	56.3500	24.2907	5
2400	Kulun	kulun	kulun	\N	0	24.9823	121.3591	5
2401	Kurtjar	gurdjar	gurdjar	\N	0	-18.0623	140.4052	5
2402	Kw'adza	kw'adza	kw'adza	\N	0	-5.3753	35.8621	5
2403	Kwadi	kuadí	kwadi	\N	0	-15.2523	12.2277	5
2404	Kwisi	kwisi	kwisi	\N	0	-16.7309	13.0572	5
2405	Kyakala	\N	\N	\N	0	45.3819	128.7597	5
2406	Laghu	laghu	laghu	\N	0	-7.6157	158.7359	5
2407	Langthang Tibetan	langthang	tibétain du Langthang	\N	0	28.2100	85.5697	2
2408	Lenca	lenca	lenca	\N	0	13.6459	-87.0996	5
2409	Li-Ngbee	ngbee	Ngbee	\N	0	2.4931	28.0590	5
2410	Liliali	liliali	liliali	\N	0	-3.3900	127.1008	5
2411	Lipan	lipán	lipan	\N	0	33.1513	-105.7990	5
2412	Lishan Didan (Iran)	lishanán (Irán)	lishan didan (République islamique d'Iran)	\N	0	37.9615	44.6044	5
2413	Lishana Deni (Iraq)	lishana deni (Iraq)	lishana deni (Iraq)	\N	0	36.9279	42.5115	5
2414	Lishanid Noshan (Iraq)	lisánido nosán (Iraq)	lishanid noshan (Iraq)	\N	0	36.1777	44.1650	5
2415	Loke Tibetan	loke	tibétain de Loke	\N	0	28.8200	83.7721	2
2416	Lorkoti	lorkoti	lorkoti	\N	0	-0.4943	37.3590	5
2417	Lower Chehalis	chehalí bajo	bas-chehalis	\N	0	46.3227	-123.9724	5
2418	Mahigi	mahigi	mahigi	\N	0	-7.6688	143.0227	5
2419	Máku	makú	maku	\N	0	4.0615	-61.8310	5
2420	Malin	malin	malin	\N	0	24.5700	94.5600	5
2421	Mapia	mapia	mapia	\N	0	0.8321	134.3023	5
2422	Maragus	maragus	maragus	\N	0	-16.0405	167.2778	5
2423	Marrgu	margu	margu	\N	0	-11.3292	132.0227	5
2424	Matagalpa	matagalpa	matagalpa	\N	0	12.9517	-85.4381	5
2425	Mator	\N	\N	\N	0	54.0593	95.4492	5
2426	Mattole	mattole	mattole	\N	0	39.1375	-123.6931	5
2427	Miami-Illinois	miami	miami-illinois	\N	0	36.8866	-94.8775	5
2428	Migueleño	migueleño	migueleño	\N	0	35.7587	-120.6951	5
2429	Miraña (Brazil)	miraña (Brasil)	miraña (Brésil)	\N	0	-2.0210	-65.6982	4
2430	Mirití Tapuia	miriti tapuya	mirití-tapuia	\N	0	0.3076	-69.1699	4
2431	Mlahso (Syria)	melasó (Siria)	mlahso (République arabe syrienne)	\N	0	37.0542	41.2363	5
2432	Mlahso (Turkey)	melasó (Turquía)	mlahso (Turquie)	\N	0	38.4595	40.6507	5
2433	Mo-peng	mo-peng	mo-peng	\N	0	7.4714	-12.2607	5
2434	Mochica	mochica	mohica	\N	0	-7.0790	-79.6453	5
2435	Moksela	moksela	moksela	\N	0	-3.4654	127.1694	5
2436	Molala	molala	molala	\N	0	44.8636	-122.4645	5
2437	Mozarabic	\N	\N	\N	0	37.4574	-3.9880	5
2438	Mulaha	mulaha	mulaha	\N	0	-9.7002	147.4351	5
2439	Múra	mura	múra	\N	0	-3.3598	-59.2382	5
2440	Nagumi	nagumi	nagumi	\N	0	8.6814	13.1835	5
2441	Naka'ela	naka'ela	naka'ela	\N	0	-2.8470	128.5208	5
2442	Napore	napore	napore	\N	0	3.8478	33.9147	5
2443	Natchez	nachez	natchez	\N	0	31.5544	-91.3875	5
2444	New River Shasta	shasta	shasta de New River	\N	0	45.2835	-121.7134	5
2445	Ngarla	engarla	ngarla	\N	0	-20.5916	119.0917	5
2446	Ngong	ngong	ngong	\N	0	9.0044	13.5104	5
2447	Nila (Nila Island)	nila (isla Nila)	nila (île de Nila)	\N	0	-6.7331	129.5288	5
2448	Nisenan	nisenan	nisenan	\N	0	38.7654	-121.0064	5
2449	Nooksack	nucsaqués	nooksack	\N	0	49.0378	-122.4865	5
2450	Norn	\N	\N	\N	0	60.3051	-1.2744	5
2451	Northeastern Pomo	pomo nororiental	pomo du nord-est	\N	0	39.3774	-122.5454	5
2452	Nukiní	nukuini	nukuini	\N	0	-7.4931	-73.4765	5
2453	Nupbikha	nupbikha	nupbikha	\N	0	27.3937	90.5003	1
2454	Nyang'i	ñangui	nyang'i	\N	0	3.5024	33.3764	5
2455	Obispeño	obispeño	obispeño	\N	0	35.2692	-120.6707	5
2456	Odut	odut	odut	\N	0	5.3077	8.2672	5
2457	Old Prussian	\N	\N	\N	0	54.8987	20.4895	5
2458	Old Sirenik	sirenik antiguo	vieux sirenik	\N	0	64.4194	-173.9657	5
2459	Omagua (Brazil)	omagua (Brasil)	omagua (Brésil)	\N	0	-3.5572	-64.5117	4
2460	Ona	ona	ona	\N	0	-54.6229	-67.4121	5
2461	Ongkor Solon	solon ongkor	solon d'Ongkor	\N	0	46.7774	83.0456	5
2462	Opon-Carare	opón-carare	opon-carare	\N	0	6.2060	-73.7402	5
2463	Orang Kanaq	orang kanaq	orang kanaq	\N	0	1.8858	103.9814	5
2464	Palumata	palumata	palumata	\N	0	-3.1569	126.0516	5
2465	Panobo	panobo	panobo	\N	0	-6.9700	-74.9267	5
2466	Papora	papora	papora	\N	0	24.2006	120.6037	5
2467	Pentlatch	pentlatch	pentlatch	\N	0	49.6971	-125.0033	5
2468	Phalok	palok	phalok	\N	0	18.9582	98.7890	5
2469	Pijao	pijao	pijao	\N	0	3.9519	-75.0146	5
2470	Piru	piru	piru	\N	0	-3.0500	128.1747	5
2471	Polabian	\N	\N	\N	0	53.0940	11.3461	5
2472	Pumpokol	\N	\N	\N	0	58.6397	87.5170	5
2473	Purisimeño	purisimeño	purisimeño	\N	0	34.6608	-120.4711	5
2474	Pyu	pyu	pyu	\N	0	18.9424	94.8751	5
2475	Quapaw	quapaw	quapaw	\N	0	36.9494	-94.7877	5
2476	Quileute	quileutés	quileute	\N	0	47.9083	-124.6365	5
2477	Qwarenya	qwarenya	qwarenya	\N	0	9.9207	38.3828	5
2478	Rangkas	rangkas	rangkas	\N	0	30.0358	80.1342	5
2479	Sanhaja of Srair	senhaja de Srair	senhaja de Srair	\N	0	34.8318	-4.9658	4
2480	Sei	sei	sei	\N	0	7.5857	-12.5354	5
2481	Sened	sened	sened	\N	0	35.5858	10.8984	5
2482	Sengmai	sengmai	sengmai	\N	0	24.6445	94.0567	5
2483	Serrano	serrano	serrano	\N	0	34.1212	-117.2221	5
2484	Seru	seru	seru	\N	0	1.9195	111.2049	5
2485	Seward Peninsula Inupiaq (Big Diomede Island)	inuit de la Península Seward (i. Gran Diómedes)	inupiaq de la péninsule de Seward (Grande Diomède)	\N	0	65.7853	-169.0686	5
2486	Singa	singa	singa	\N	0	-0.1373	33.6950	5
2487	Siraiya	siraiya	siraya	\N	0	23.0013	120.3634	5
2488	Sishee	zire	sishee	\N	0	-21.7193	165.6738	5
2489	Siuslaw	siuslaw	siuslaw	\N	0	43.3773	-124.2371	5
2490	Slovincian	eslovincio	slovince	\N	0	54.6484	17.2485	5
2491	Southeastern Pomo	pomo suroriental	pomo du sud-est	\N	0	39.0160	-122.6779	5
2492	Southern Kamchadal	\N	\N	\N	0	52.6963	156.7089	5
2493	Southern Khanty	jantí meridional	khanty méridional	\N	0	60.4301	69.9829	5
2494	Southern Mansi	mansí meridional	mansi du Sud	\N	0	58.4362	65.5664	5
2495	Soyot	tuva	soyote	\N	0	52.0406	101.0659	5
2496	Subtiaba	subtiaba	subtiaba	\N	0	12.5266	-86.6670	5
2497	Taman	taman	taman	\N	0	25.1651	95.2514	5
2498	Tandia	tandia	tandia	\N	0	-2.8552	134.5220	5
2499	Taokas	taokas	taokas	\N	0	24.4471	120.7232	5
2500	Te'un (Te'un Island)	teun (isla Te'un)	te'un (île de Te'un)	\N	0	-6.9809	129.1394	5
2501	Tetete	tetete	tetete	\N	0	-0.0109	-76.5966	5
2502	Tillamook	tilamuco	tillamook	\N	0	45.3449	-123.5309	5
2503	Togoyo	togoyo	togoyo	\N	0	8.5049	24.7961	5
2504	Tonjon	tonjon	tonjon	\N	0	8.4397	-4.3807	5
2505	Torá	torá	torá	\N	0	-6.6646	-61.4135	5
2506	Tsetsaut	tsetsaut	tsetsaut	\N	0	55.9360	-129.9911	5
2507	Tunica	tunica	tunica	\N	0	31.1262	-92.0673	5
2508	Tututni	tututni	tututni	\N	0	42.5756	-124.0688	5
2509	Twana	tuana	twana	\N	0	47.3344	-123.1607	5
2510	Ubykh (Caucasus)	ubijé (Cáucaso)	oubykh (Causase)	\N	0	43.5585	39.8597	5
2511	Ubykh (Turkey)	ubijé  (Turquía)	oubykh (Turquie)	\N	0	40.0402	28.0096	5
2512	Umutina	umutina	umutina	\N	0	-15.0425	-57.1026	5
2513	Upper Chehalis	chehalí alto	haut-chehalis	\N	0	46.4111	-122.9949	5
2514	Upper Umpqua	umpqua alto	haut-umpqua	\N	0	43.4476	-123.7700	5
2515	Uruava	uruava	uruava	\N	0	-5.9821	155.3137	5
2516	Urupá	urupá	urupá	\N	0	-10.8980	-61.8090	5
2517	Ventureño	ventureño	ventureño	\N	0	34.2809	-119.2979	5
2518	Vilela	vilela	vilela	\N	0	-26.9808	-59.6777	5
2519	Wanai	mapoyo	wanai	\N	0	7.1117	-66.7199	4
2520	Wangkumara	wangkumara	wangkumara	\N	0	-27.2064	142.4597	4
2521	Wappo	wappo	wappo	\N	0	38.8701	-122.5154	5
2522	Western Mansi	mansi occidental	mansi occidental	\N	0	61.1432	62.4023	5
2523	Wiyot	wiyot	wiyot	\N	0	40.5984	-124.2519	5
2524	Xakriabá	sakiriabá	xakriabá	\N	0	-14.5306	-44.0438	5
2525	Yaaku	yaaku	yaaku	\N	0	0.4394	37.1777	5
2526	Yameo	yameo	yameo	\N	0	-4.4449	-73.5644	5
2527	Yir Yoront	yir yoront	yir yoront	\N	0	-16.3095	141.4489	5
2528	Yoba	yoba	yoba	\N	0	-10.0337	149.2272	5
2529	Yola	\N	\N	\N	0	52.2266	-6.4846	5
2530	Yug	yuguí	yug	\N	0	61.0901	88.1982	5
2531	Yuki	yuki	yuki	\N	0	37.4336	-118.5908	5
2532	Yurats	\N	\N	\N	0	69.2872	81.9140	5
2533	Yurutí (Brazil)	yurutí (Brasil)	yurutí (Brésil)	\N	0	-0.1318	-69.1699	5
2534	Zeem	zeemo	zeem	\N	0	9.8389	9.0911	5
2535	|'Auni	|'auni	|'auni	\N	0	-26.0105	20.3630	5
2536	|Xam	|xam	|xam	\N	0	-32.2853	20.7590	5
2537	ǁKu ǁ'e	ǁkuǁe	ǁku ǁ'e	\N	0	-29.9739	27.0812	5
2538	ǁKx'au	ǁkx'au	ǁkx'au	\N	0	-32.2896	21.7968	5
2539	ǁXegwi	ǁxegwi	ǁxegwi	\N	0	-25.3500	30.9900	5
2540	A'tong	atong	a'tong	\N	\N	25.2844	91.1755	3
2541	Aché	aché	aché	\N	\N	-25.6613	-55.6787	2
2542	Akie	oquieco	akie	\N	\N	-4.7735	37.3315	4
2543	Akuriyo	akurio	akuriyo	\N	\N	2.8442	-55.7556	4
2544	Alemannic	alemánico	alémanique	\N	\N	47.2792	7.6904	1
2545	Amami	amami	amani	\N	\N	28.3672	129.4958	2
2546	Amok	amok	amok	\N	\N	21.3610	100.6457	4
2547	Angku	angku	angku	\N	\N	21.4888	100.8325	4
2548	Auvergnat	auvernés	auvergnat	auvernhat	\N	45.1278	3.1311	3
2549	Balti	balti	balti	\N	\N	35.0659	76.1901	1
2550	Baraba Tatar	tártaro de Baraba	tatar baraba	\N	\N	55.2478	77.8930	3
2551	Baré (Venezuela)	baré (Venezuela)	baré (République bolivarienne du Venezuela)	\N	\N	1.4280	-66.9287	4
2552	Bavarian	bávaro	bavarois	\N	\N	48.4146	12.6123	1
2553	Bay Islands Creole	criollo de las Islas de la Bahía	créole des Iles-de-la-Baie (Islas de la Bahía)	\N	\N	16.3297	-86.5299	4
2554	Bellari	belarí	bellari	\N	\N	11.6952	76.4648	4
2555	Berbice Dutch Creole	berbice	créole néerlandais de Berbice	\N	\N	5.3918	-57.7770	4
2556	Bhalesi	bhalesi	bhalesi	\N	\N	33.3947	76.1352	2
2557	Brao	brao	brao	\N	\N	14.1177	106.7644	3
2558	Bungee	bungui	bungee	\N	\N	50.0667	-96.9763	4
2559	Burgundian	borgoñón	bourguignon	\N	\N	47.2344	4.2517	3
2560	Cabiyarí	cabiyarí	cabiyarí	\N	\N	0.1208	-71.1474	4
2561	Cappadocian Greek (Greece)	griego capadocio (Grecia)	grec cappadocien (Grèce)	\N	\N	40.9798	24.1040	4
2562	Carabayo	carabayo	carabayo	\N	\N	-1.6666	-70.3333	5
2563	Cavineña	cavineña	cavineña	\N	\N	-12.3829	-66.7419	2
2564	Cayuga (Canada)	cayuga (Canadá)	cayuga (Canada)	\N	\N	43.0190	-80.1506	4
2565	Central Asian Arabic	árabe asiático central	arabe d'Asie centrale	\N	\N	36.9608	66.8133	2
2566	Champenois	champañés	champenois	\N	\N	48.6474	4.3725	3
2567	Chichimec	chichimeca	chichimèque	\N	\N	21.2941	-100.5233	1
2568	Chinook Jargon	chinuco	jargon chinook	\N	\N	45.0591	-123.6091	4
2569	Chiwere	chiwere	chiwere	\N	\N	35.9761	-97.3336	5
2570	Chuang	chuang	chuang	\N	\N	13.5688	105.0589	4
2571	Corfiot Italkian	italkiano de Corfú	italkien de Corfou	\N	\N	39.5908	19.8591	4
2572	Cornish	córnico	cornique	Kernewek	\N	50.4575	-4.7460	4
2573	Crimean Turkish	turco crimeano	turc de Crimée	\N	\N	44.6764	34.3267	3
2574	Desano (Colombia)	desano (Colombia)	desano (Colombie)	\N	\N	0.8898	-70.0543	2
2575	Domari	domarí	domari	\N	\N	32.2128	35.2908	3
2576	East Franconian	franconio oriental	francique oriental	\N	\N	50.0571	10.7336	1
2577	Eastern Mansi	mansí oriental	mansi oriental	\N	\N	60.7752	67.6098	4
2578	En	en	En	\N	\N	21.2872	99.4816	4
2579	Even (Kamtchatka)	evén (Kamchatka)	évène (Kamtchatka)	\N	\N	56.0620	158.9501	3
2580	Even (Siberia)	evén (Siberia)	évène (Sibérie)	\N	\N	67.6593	134.6594	3
2581	Evenki (Northern Siberia)	evenki (Siberia septentrional)	evenki (Sibérie du nord)	\N	\N	64.2875	100.2282	3
2582	Evenki (Sakhalin)	evenki(Sajalín)	evenki (Sakhalin)	\N	\N	51.7270	142.5585	3
2583	Evenki (Southern Siberia)	evenki (Siberia meridional)	évenki (Sibérie du sud)	\N	\N	51.9833	116.5833	3
2584	Figuig	figuig	figuig	\N	\N	32.0895	-1.2222	1
2585	Franc-Comtois	franco-condado	franc-comtois	\N	\N	47.2829	6.5093	3
2586	Gagauz (Deli Orman)	gagauso  (Deli Orman)	gagaouze (Deli Orman)	\N	\N	43.5963	26.8286	4
2587	Gagauz (South Balkans)	gagauso (sur de los Balcanes)	gagaouze (Balkans du sud)	\N	\N	41.4633	22.6977	3
2588	Gangou	gangou	gangou	\N	\N	35.5500	102.4300	3
2589	Gottscheerish	gottscheerish	gottscheerish	\N	\N	45.6332	14.8123	4
2590	Guaná	guaná	guaná	\N	\N	-21.9532	-58.0517	4
2591	Han (Canada)	han (Canadá)	han (Canada)	\N	\N	64.0620	-139.4278	4
2592	Homshetsma (Caucasus)	homshetsma (Cáucaso)	homshetsma (Caucase)	\N	\N	43.2452	40.3582	3
2593	Homshetsma (Turkey)	homshetsma (Turquía)	homshetsma (Turquie)	\N	\N	41.4680	41.5580	2
2594	Hulaula (Iran)	hulaulá (Iran)	hulaula (République islamique d'Iran)	\N	\N	35.9068	46.1535	5
2595	Huron-Wyandot (Canada)	huron (Canadá)	huron-wyandot (Canada)	\N	\N	46.8722	-71.3651	4
2596	Jad	jad	jad	\N	\N	30.6450	78.3627	2
2597	Jahai	yehai	jahai	\N	\N	5.3597	101.7763	4
2598	Javindo Creole	criollo javindo	créole javindo	\N	\N	-7.0136	110.4345	4
2599	Jeju	\N	\N	제주어	\N	33.3671	126.4974	4
2600	Jitnu	macaguán	jitnu (macaguán)	\N	\N	6.5118	-70.8837	2
2601	Judezmo (Europe)	sefardí (Europa)	judéo-espagnol  (Europe)	\N	\N	41.2607	28.4985	3
2602	Juhur (Israel)	judeo-tatí (Israel)	juhuri (Israël)	\N	\N	31.5166	34.5964	2
2603	Kaurna	kaurna	kaurna	\N	\N	-34.8498	138.6474	4
2604	Kensiw (Malaysia)	kensiu (Malasia)	kensiw (Malaisie)	\N	\N	5.9033	100.9227	4
2605	Kentak	kentak	kentak	\N	\N	5.5383	100.7861	4
2606	Khasali	khasālī	khasali	\N	\N	32.0267	77.8930	2
2607	Kili	kili	kili	\N	\N	48.8068	134.1210	3
2608	Koro	koro	koro	Koro	\N	27.1667	92.6312	2
2609	Kraol	kraol	kraol	\N	\N	13.5880	106.9438	4
2610	Kravet	kravet	kravet	\N	\N	14.0175	107.0136	4
2611	Krueng	krungo	kreung	\N	\N	13.8219	106.9938	3
2612	Kuay	kuayo	kuay	\N	\N	13.9047	105.3712	3
2613	Kunigami	kunigami	kunigami	\N	\N	26.7186	128.2131	2
2614	Lakota	lakota	lakota	\N	\N	49.3276	-106.4439	4
2615	Langrong	langrong	langrong	\N	\N	24.4671	94.1473	4
2616	Lengua	lengua	lengua	\N	\N	-22.5125	-58.0957	3
2617	Livonian	livón	live	rānda kēļ	\N	57.6101	22.2802	4
2618	Lorrain	loreno	lorrain	\N	\N	48.8357	6.0644	3
2619	Lua	lua'	lua	\N	\N	19.0049	101.1840	2
2620	Macaguaje	macaguaje	macaguaje	\N	\N	0.0000	-75.0000	5
2621	Macuna (Colombia)	macuna (Colombia)	macuna (Colombie)	\N	\N	-0.2636	-70.2026	2
2622	Maká	macá	maká	\N	\N	-25.2645	-57.2387	2
2623	Manda	manda	manda	\N	\N	20.1384	84.0289	4
2624	Manx	manx	mannois	Gaelg	\N	54.2106	-4.5318	4
2625	Mawayana (Guyana)	mawayana (Guyana)	mawayana (Guyane)	\N	\N	1.5159	-58.4143	4
2626	Menri'	menri'	menri'	\N	\N	5.0550	102.2502	4
2627	Michif	michif	michif	\N	\N	51.3119	-103.9790	4
2628	Miraña (Colombia)	miraña (Colombia)	miraña (Colombie)	\N	\N	-1.5818	-70.5651	3
2629	Miyako	miyako	miyako	\N	\N	24.8004	125.2798	2
2630	Mohawk (Ganienkeh)	mohaqués (Ganienkeh)	mohawk (Ganienkeh)	\N	\N	44.8675	-73.6700	2
2631	Mohawk (Kahnawake)	mohaqués (Kahnawake)	mohawk (Kahnawake)	\N	\N	45.4013	-73.6677	2
2632	Mohawk (Kanatsiohareke)	mohaqués (Kanatsiohareke)	mohawk (Kanatsiohareke)	\N	\N	42.9116	-74.5587	2
2633	Mohawk (Kanesatake)	mohaqués (Kanesatake)	mohawk (Kanesatake)	\N	\N	45.4685	-74.0972	2
2634	Mohawk (Six nations)	mohaqués (seis naciones)	mohawk (Six nations)	\N	\N	43.0463	-80.0690	2
2635	Mohawk (Tyendinega)	mohaqués (Tyendinega)	mohawk (Tyendinaga)	\N	\N	44.1890	-77.1494	2
2636	Mohawk (Wahta)	mohaqués (Wahta)	mohawk (Wahta)	\N	\N	45.0333	-79.7333	2
2637	Mok (Lao PDR)	mok (Laos)	mok (République démocratique populaire lao)	\N	\N	20.7300	101.4197	2
2638	Mosquitia Creole	criollo de la Mosquitia	créole de Mosquitia	\N	\N	12.0114	-83.7638	2
2639	Muinane	muinane	muiname	\N	\N	-1.4061	-72.3779	2
2640	Munsee (United States of America)	unamí (Estados Unidos)	delaware	\N	\N	40.8969	-76.3769	4
2641	Nivaclé	chulupí	nivaclé	\N	\N	-23.3019	-60.3369	1
2642	Nivkh (Amur)	nivejí (Amur)	nivkhe (Amour)	\N	\N	53.2684	140.4107	4
2643	Nogay (Crimea)	nogái (Crimea)	nogaï (Crimée)	\N	\N	45.9435	33.9477	3
2644	Nogay (Dobruja)	nogái (Dobruja)	nogaï (Dobroudja)	\N	\N	44.6491	27.8173	3
2645	Nonuya	nonuya / nonuña	nonuya	\N	\N	-0.7470	-71.9165	4
2646	Norman	normando	normand	\N	\N	49.0810	-0.6591	3
2647	Northern Altay	altái septentrional	altaï septentrional	\N	\N	52.2816	87.4827	3
2648	Northern Haida	haida septentrional	haida septentrional	\N	\N	54.0397	-132.1776	4
2649	Northwestern Otomí	otomí noroccidental	otomí nord-occidental	\N	\N	21.0996	-100.1584	1
2650	Nukak	nukak-makú	nukak	\N	\N	2.3504	-71.3507	2
2651	Okinawan	okinawano	okinawaïen	\N	\N	26.2047	127.6831	2
2652	Oneida (Canada)	oneida (Canadá)	oneida (Canada)	\N	\N	42.8286	-81.4068	4
2653	Onondaga (Canada)	onondaga (Canadá)	onondaga (Canada)	\N	\N	43.1194	-80.1174	4
2654	Padri	bhadri	padari	\N	\N	33.8886	76.3000	1
2655	Palaung	palaungo shwe	palaung	\N	\N	23.1058	97.4880	3
2656	Pale	palaungo pale	pale	\N	\N	22.1511	97.8386	3
2657	Panamanian Creole	criollo inglés panameño	créole panaméen	\N	\N	9.3878	-82.2696	2
2658	Pashayi	pasayí	pashai	\N	\N	34.6600	70.2000	1
2659	Peco' Creole	criollo petjo	créole pecok	\N	\N	-6.2716	106.7871	4
2660	Phnong	mnong central	phnong	\N	\N	12.5525	107.3011	3
2661	Poitevin-Saintongeais	poitevino-santongés	poitevin-saintongeais	\N	\N	46.0579	-0.5493	3
2662	Potawatomi (Canada)	potahuatomí (Canadá)	potawatomi (Canada)	\N	\N	42.5163	-82.5555	4
2663	Purik	purik	purik	\N	\N	34.3706	76.0144	1
2664	Quinault	quinault	quinault	\N	\N	47.3332	-124.2864	5
2665	Rama Cay Creole	rama cay	créole de Rama Cay	\N	\N	11.8834	-83.8000	2
2666	Reyesano	reyesano	reyesano	\N	\N	-14.7748	-66.9396	4
2667	Rhenish Franconian	franconio renano	francique rhénan	\N	\N	49.4467	8.2067	1
2668	Riang	riang	riang	\N	\N	21.9048	98.2342	4
2669	Rigolet Inuktitut	inuí rigolet	inuktitut rigolet	\N	\N	54.1772	-58.4218	4
2670	Rumai	palaungo rumái	rumai	\N	\N	23.7363	97.9927	3
2671	Samrai	samrè	samrai	\N	\N	12.5063	102.8344	4
2672	San Andres Creole	criollo sanandresano	créole de San Andrés	\N	\N	12.5833	-81.7000	1
2673	Sanapaná	sanapaná	sanapaná	\N	\N	-22.0000	-59.0000	2
2674	Scanian	escaniano	scanien	\N	\N	55.7240	13.6614	1
2675	Seneca (Canada)	seneca (Canadá)	seneca (Canada)	\N	\N	43.0555	-80.1938	4
2676	Siberian Tatar	tártaro de Siberia	tatar de Sibérie	\N	\N	56.4624	73.3447	2
2677	Sikïiyana	sikiana	sikiyana	\N	\N	1.9991	-56.2719	4
2678	Siriano (Colombia)	siriano (Colombia)	siriano (Colombie)	\N	\N	0.8788	-70.2685	2
2679	So-ng	son	so-ng	\N	\N	11.7244	104.0447	4
2680	Sogoo	sogoo	sogoo	\N	\N	-1.0435	36.6006	5
2681	South Jutish	juto meridional	jute méridional	\N	\N	54.8497	9.3081	2
2682	Southern Paiute	payuté meridional	paiute du sud	\N	\N	37.6818	-113.0880	3
2683	Spiti	spiti	spiti	\N	\N	32.2871	78.2652	1
2684	Squamish	esquihuamés	squamish	\N	\N	49.3234	-123.1301	4
2685	Stieng	stieng	stieng	\N	\N	12.1288	106.7852	3
2686	Tacana	tacana	tacana	\N	\N	-13.2720	-67.7856	2
2687	Tagish	tagís	tagish	\N	\N	60.1601	-134.6842	4
2688	Tailoi	tailói	thaï loi	\N	\N	21.4275	100.7473	4
2689	Tanimuca-Letuama	tanimuca-retuarã	tanimuca-letuama	\N	\N	-0.6262	-70.5432	3
2690	Tapieté	tapieté	tapieté	\N	\N	-21.7799	-62.6440	3
2691	Tariana (Colombia)	tariano (Colombia)	tariana (Colombie)	\N	\N	0.8349	-69.1918	4
2692	Taruma	taruma	taruma	\N	\N	2.5150	-59.5678	4
2693	Tasnusit	tasnusit	tasnusit	\N	\N	34.6230	-1.5614	3
2694	Tat	tatí musulmán	tat	\N	\N	41.3438	48.6254	3
2695	Tati	tatí	tati	\N	\N	38.2036	48.2519	2
2696	Tatuyo	tatuyo	tatuyo	\N	\N	0.4174	-70.4882	2
2697	Tazy	tazy	taz	\N	\N	43.9236	134.7967	3
2698	Tempuan	tempuan	tempuan	\N	\N	13.7238	107.2038	3
2699	Toba-Maskoy	toba-mascói	toba-maskoy	\N	\N	-21.5578	-58.0064	3
2700	Tolcha	tolcha	tolcha	\N	\N	29.9333	80.0326	5
2701	Touggourt Tamazight	tougourt	touggourt	\N	\N	33.0777	6.0671	3
2702	Tucano (Colombia)	tucano (Colombia)	tucano (Colombie)	\N	\N	0.6921	-69.8291	1
2703	Tunisian Judeo-Arabic (Israel)	judeo-árabe tunecino (Israel)	judeo-arabe tunisien (Israël)	\N	\N	32.0779	34.8019	3
2704	Tuscarora (Canada)	tuscarora (Canadá)	tuscarora (Canada)	\N	\N	43.0720	-80.0150	4
2705	Tuyuca (Colombia)	tuyuca (Colombia)	tuyuca (Colombie)	\N	\N	0.3515	-70.2026	2
2706	Udi (Georgia)	udi (Rep. de Georgia)	udi (Géorgie)	\N	\N	41.8905	45.9130	3
2707	Unami	unamí	delaware	\N	\N	39.1300	-76.0253	5
2708	Upper Tanana (Canada)	tanana alto  (Canadá)	haut-tanana (Canada)	\N	\N	62.3824	-140.8984	4
2709	Urum	urumo	urum	\N	\N	47.0102	36.7822	2
2710	Wa	wa	wa	\N	\N	21.8705	99.6519	3
2711	Wanano / Kotiria (Colombia)	guanano / kótedia (Colombia)	wanano / kotirya (Colombie)	\N	\N	1.0106	-69.6423	2
2712	Western Abenaki (Canada)	abenakí occidental (Canadá)	abénaqui occidental (Canada)	\N	\N	46.0785	-72.8141	4
2713	Western Abenaki (United States of America)	abenakí occidental (Estados Unidos)	abénaqui occidental (États-Unis d'Amérique)	\N	\N	43.0046	-72.2460	5
2714	Wichi	wichí	wichi	\N	\N	-22.0041	-63.4130	1
2715	Yaeyama	yaeyama	yaeyama	\N	\N	24.3420	124.1537	3
2716	Yazva Komi	komi yaz'va	komi yazva	\N	\N	60.0348	57.5360	3
2717	Yiddish (Europe)	yiddish (Europa)	yiddish (Europe)	\N	\N	53.3571	25.2465	2
2718	Yonaguni	yonaguni	yonaguni	\N	\N	24.4580	122.9802	3
2719	Yucuna	yucuna	yucuna	\N	\N	-1.2633	-70.6640	2
2720	Yurutí (Colombia)	yurutí (Colombia)	yurutí (Colombie)	\N	\N	1.1370	-70.2136	2
2721	Zangskari	zangskari	zangskari	\N	\N	34.0833	76.8500	2
2722	Zidgali	zidgali	zidgali	\N	\N	23.4027	58.0957	4
\.


--
-- Data for Name: languages_countries; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.languages_countries (id, language_id, country_id) FROM stdin;
1	1	1
2	2	1
3	3	2
3	3	3
3	3	4
3	3	5
3	3	6
4	4	7
4	4	8
4	4	9
4	4	5
4	4	6
4	4	10
5	5	1
5	5	11
6	6	12
6	6	2
6	6	13
6	6	7
6	6	14
6	6	15
6	6	16
6	6	17
6	6	18
6	6	19
6	6	20
6	6	21
6	6	1
6	6	8
6	6	9
6	6	22
6	6	4
6	6	5
6	6	23
6	6	24
6	6	6
6	6	25
6	6	26
6	6	11
6	6	27
6	6	28
6	6	10
6	6	29
6	6	30
7	7	31
8	8	32
9	9	2
9	9	33
9	9	4
10	10	34
11	11	32
11	11	35
12	12	34
12	12	36
12	12	37
13	13	1
13	13	38
14	14	1
15	15	16
15	15	1
15	15	26
16	16	28
17	17	32
18	18	39
19	19	32
20	20	32
21	21	24
22	22	12
22	22	15
22	22	22
22	22	23
22	22	29
23	23	33
23	23	19
23	23	4
24	24	6
25	25	6
26	26	6
27	27	32
28	28	32
28	28	35
29	29	37
30	30	25
30	30	10
31	31	19
31	31	1
31	31	40
32	32	21
32	32	5
32	32	23
32	32	25
32	32	10
33	33	41
33	33	42
34	34	32
35	35	32
36	36	32
37	37	1
38	38	43
39	39	37
40	40	35
41	41	44
41	41	45
42	42	7
42	42	5
42	42	10
43	43	46
44	44	6
45	45	32
46	46	24
47	47	32
47	47	35
48	48	43
49	49	33
49	49	19
50	50	47
50	50	32
51	51	48
51	51	19
52	52	6
52	52	28
53	53	32
54	54	1
55	55	37
56	56	33
56	56	19
56	56	49
57	57	32
58	58	50
58	58	6
59	59	32
60	60	6
61	61	12
61	61	15
61	61	20
61	61	22
61	61	29
62	62	42
62	62	51
62	62	52
63	63	19
64	64	41
64	64	6
65	65	32
66	66	35
67	67	43
68	68	6
69	69	53
70	70	6
71	71	6
72	72	43
73	73	32
74	74	6
75	75	6
76	76	6
77	77	32
78	78	31
79	79	54
80	80	19
81	81	1
82	82	36
83	83	53
84	84	2
84	84	33
84	84	19
84	84	49
85	85	35
86	86	54
87	87	50
88	88	4
89	89	35
90	90	55
90	90	56
91	91	6
92	92	57
92	92	31
92	92	58
92	92	22
92	92	6
92	92	59
92	92	28
93	93	6
94	94	32
95	95	32
96	96	32
96	96	35
97	97	31
98	98	10
99	99	60
99	99	50
99	99	20
99	99	6
99	99	28
99	99	10
100	100	61
101	101	54
102	102	54
102	102	62
102	102	63
103	103	32
104	104	64
105	105	19
106	106	48
106	106	19
107	107	54
108	108	32
109	109	32
110	110	32
111	111	54
111	111	63
111	111	6
112	112	65
113	113	60
113	113	42
113	113	57
113	113	59
113	113	28
114	114	32
115	115	51
116	116	51
117	117	6
118	118	19
118	118	1
119	119	19
120	120	64
121	121	32
122	122	32
123	123	42
124	124	32
125	125	6
126	126	57
126	126	66
126	126	59
127	127	67
128	128	68
128	128	54
128	128	32
129	129	32
130	130	69
130	130	10
131	131	32
132	132	54
132	132	32
133	133	32
134	134	32
135	135	70
136	136	32
137	137	19
137	137	1
138	138	68
139	139	6
140	140	6
141	141	48
141	141	71
142	142	8
142	142	6
143	143	19
144	144	32
145	145	72
146	146	54
146	146	32
146	146	35
147	147	32
148	148	43
149	149	32
150	150	32
151	151	50
151	151	28
152	152	6
153	153	32
154	154	50
154	154	6
154	154	28
155	155	32
156	156	32
157	157	73
158	158	1
159	159	72
160	160	32
161	161	53
162	162	32
163	163	32
164	164	54
164	164	32
165	165	54
166	166	32
167	167	53
168	168	10
169	169	54
170	170	19
170	170	1
170	170	11
171	171	1
172	172	74
173	173	75
173	173	76
174	174	77
175	175	54
176	176	34
177	177	78
177	177	79
178	178	80
179	179	55
180	180	32
181	181	81
181	181	52
182	182	6
183	183	43
184	184	32
185	185	6
186	186	82
187	187	61
188	188	53
189	189	53
190	190	51
191	191	53
192	192	32
193	193	32
194	194	43
195	195	43
196	196	83
197	197	32
198	198	1
199	199	42
200	200	55
201	201	74
202	202	50
203	203	84
203	203	85
204	204	72
205	205	76
206	206	54
206	206	51
206	206	81
206	206	52
207	207	47
207	207	32
208	208	82
209	209	86
210	210	84
211	211	32
211	211	51
212	212	32
213	213	1
214	214	47
215	215	43
216	216	87
217	217	37
218	218	32
219	219	70
220	220	32
221	221	32
222	222	32
223	223	88
224	224	54
225	225	51
226	226	43
227	227	32
228	228	24
229	229	53
230	230	89
231	231	5
232	232	6
233	233	32
234	234	20
235	235	6
236	236	54
236	236	63
237	237	68
237	237	54
237	237	32
238	238	85
239	239	32
240	240	54
241	241	32
242	242	61
243	243	76
244	244	6
245	245	23
246	246	59
246	246	28
247	247	17
247	247	6
248	248	90
249	249	28
250	250	79
251	251	72
252	252	53
253	253	32
254	254	32
255	255	54
256	256	85
257	257	54
258	258	82
259	259	61
260	260	35
261	261	91
261	261	24
262	262	64
263	263	53
264	264	92
265	265	93
266	266	42
267	267	94
267	267	62
268	268	32
269	269	95
270	270	35
271	271	74
271	271	34
272	272	32
273	273	68
274	274	82
275	275	32
276	276	44
277	277	45
278	278	37
279	279	61
280	280	32
281	281	39
282	282	37
283	283	32
284	284	82
285	285	84
286	286	53
287	287	32
288	288	6
289	289	35
290	290	53
291	291	54
292	292	43
293	293	53
294	294	11
295	295	32
296	296	32
297	297	32
298	298	61
299	299	96
299	299	55
299	299	37
300	300	37
301	301	55
301	301	56
302	302	43
303	303	32
304	304	32
305	305	53
306	306	35
307	307	32
308	308	53
309	309	97
310	310	35
311	311	32
312	312	6
312	312	28
313	313	32
314	314	54
315	315	97
316	316	68
317	317	13
317	317	21
317	317	25
318	318	42
319	319	31
320	320	35
321	321	1
322	322	68
322	322	32
322	322	35
323	323	54
324	324	44
324	324	45
325	325	82
326	326	54
327	327	18
327	327	98
327	327	6
327	327	99
328	328	37
329	329	61
330	330	81
330	330	52
331	331	32
332	332	97
333	333	72
334	334	74
335	335	6
336	336	16
336	336	29
337	337	54
338	338	6
339	339	41
339	339	6
340	340	51
341	341	32
342	342	35
343	343	53
344	344	35
345	345	32
346	346	53
347	347	53
348	348	54
349	349	53
350	350	35
351	351	95
352	352	32
353	353	23
353	353	29
354	354	23
355	355	32
356	356	54
357	357	80
358	358	18
358	358	6
359	359	84
359	359	45
360	360	73
361	361	100
362	362	41
362	362	6
363	363	101
363	363	56
364	364	35
365	365	54
366	366	6
367	367	55
368	368	32
369	369	42
369	369	57
370	370	32
371	371	32
372	372	70
373	373	102
374	374	32
375	375	32
376	376	64
377	377	54
378	378	82
379	379	42
380	380	42
381	381	42
382	382	103
383	383	53
384	384	53
385	385	53
386	386	54
387	387	32
388	388	45
389	389	68
390	390	15
390	390	23
391	391	35
392	392	1
393	393	96
394	394	18
394	394	6
395	395	32
396	396	32
397	397	10
398	398	32
399	399	101
399	399	56
400	400	72
401	401	54
402	402	59
403	403	81
404	404	44
405	405	104
406	406	105
407	407	2
408	408	32
409	409	32
410	410	96
411	411	51
411	411	52
412	412	35
413	413	96
414	414	53
415	415	42
416	416	95
417	417	95
418	418	32
419	419	65
420	420	103
421	421	32
422	422	83
423	423	32
424	424	37
425	425	106
426	426	6
427	427	54
428	428	85
429	429	42
430	430	68
431	431	54
432	432	32
433	433	64
434	434	35
435	435	54
436	436	84
437	437	83
438	438	54
439	439	45
440	440	96
441	441	32
442	442	54
443	443	45
444	444	73
445	445	73
446	446	54
447	447	54
448	448	107
449	449	82
450	450	108
451	451	72
452	452	72
453	453	97
454	454	55
455	455	35
456	456	32
457	457	109
458	458	82
459	459	110
460	460	35
461	461	47
461	461	32
462	462	96
463	463	111
464	464	97
465	465	95
466	466	96
467	467	97
468	468	32
469	469	112
470	470	82
471	471	82
472	472	53
473	473	110
474	474	82
475	475	53
476	476	112
477	477	97
478	478	32
479	479	6
480	480	85
481	481	32
482	482	54
483	483	54
484	484	54
485	485	97
486	486	97
487	487	6
488	488	53
489	489	43
490	490	53
491	491	53
492	492	83
492	492	82
493	493	113
494	494	43
495	495	54
495	495	32
496	496	56
497	497	37
498	498	56
499	499	114
500	500	55
501	501	95
502	502	35
503	503	73
504	504	73
505	505	115
506	506	97
507	507	35
508	508	95
509	509	82
510	510	53
511	511	1
512	512	48
513	513	54
514	514	116
515	515	54
516	516	79
517	517	37
518	518	73
519	519	99
520	520	55
520	520	37
521	521	31
522	522	117
523	523	6
524	524	95
525	525	41
526	526	55
526	526	56
527	527	68
528	528	32
529	529	54
530	530	34
531	531	32
532	532	32
533	533	96
534	534	64
535	535	2
536	536	6
537	537	45
538	538	68
539	539	107
540	540	82
541	541	54
542	542	54
543	543	97
544	544	54
545	545	118
546	546	54
547	547	82
548	548	107
549	549	6
549	549	119
550	550	79
551	551	55
552	552	95
553	553	43
554	554	73
555	555	73
556	556	73
557	557	51
557	557	52
558	558	54
558	558	32
558	558	44
559	559	35
560	560	53
561	561	103
562	562	103
563	563	85
564	564	35
565	565	97
566	566	97
567	567	54
567	567	32
568	568	77
569	569	73
570	570	110
571	571	82
572	572	53
573	573	83
574	574	51
575	575	53
576	576	53
577	577	53
578	578	117
579	579	53
580	580	103
581	581	73
582	582	83
583	583	109
584	584	82
585	585	82
586	586	120
587	587	55
588	588	82
589	589	54
590	590	68
591	591	121
592	592	96
593	593	73
594	594	61
595	595	32
596	596	54
597	597	107
598	598	82
599	599	37
600	600	54
601	601	37
602	602	53
603	603	122
604	604	101
605	605	6
606	606	89
607	607	55
608	608	31
609	609	53
610	610	55
610	610	56
611	611	96
612	612	55
612	612	56
613	613	37
614	614	32
615	615	42
616	616	78
617	617	54
618	618	42
619	619	54
620	620	6
621	621	42
622	622	42
623	623	116
623	623	81
623	623	52
624	624	79
625	625	42
626	626	42
627	627	96
628	628	101
629	629	123
629	629	124
629	629	82
630	630	54
631	631	43
632	632	83
633	633	125
633	633	126
634	634	70
635	635	53
636	636	103
637	637	103
638	638	53
639	639	54
639	639	32
640	640	73
641	641	53
642	642	83
643	643	82
644	644	54
645	645	82
646	646	6
647	647	103
648	648	35
649	649	53
650	650	83
651	651	34
652	652	82
653	653	6
654	654	35
655	655	82
656	656	96
657	657	6
658	658	53
659	659	103
660	660	82
661	661	97
662	662	96
663	663	64
664	664	96
665	665	44
665	665	45
666	666	126
667	667	96
668	668	52
669	669	37
670	670	65
671	671	54
671	671	32
672	672	6
673	673	73
674	674	96
675	675	81
676	676	35
677	677	125
678	678	96
678	678	55
678	678	56
679	679	101
679	679	56
680	680	6
681	681	6
682	682	103
683	683	43
684	684	89
685	685	95
686	686	95
687	687	85
688	688	53
689	689	51
690	690	47
691	691	51
692	692	53
693	693	34
694	694	82
695	695	53
696	696	82
697	697	84
697	697	44
697	697	45
698	698	54
699	699	6
700	700	83
701	701	55
702	702	81
703	703	54
703	703	32
704	704	68
705	705	73
706	706	55
707	707	54
708	708	97
709	709	79
710	710	32
711	711	34
712	712	99
713	713	73
714	714	64
715	715	75
716	716	51
717	717	79
718	718	54
719	719	75
720	720	127
721	721	32
722	722	72
723	723	85
724	724	54
725	725	93
726	726	20
726	726	22
727	727	32
728	728	54
729	729	85
730	730	1
731	731	100
732	732	54
733	733	97
734	734	101
735	735	32
736	736	56
737	737	32
738	738	32
739	739	41
740	740	56
741	741	35
742	742	6
743	743	55
744	744	35
745	745	53
746	746	54
747	747	103
748	748	53
749	749	53
750	750	35
751	751	54
752	752	103
753	753	82
754	754	37
755	755	55
755	755	56
756	756	128
757	757	97
758	758	35
759	759	103
760	760	83
761	761	82
762	762	113
763	763	35
764	764	129
764	764	130
765	765	131
765	765	132
766	766	103
767	767	103
768	768	53
769	769	73
770	770	32
770	770	82
771	771	112
772	772	112
773	773	6
774	774	32
775	775	37
776	776	61
777	777	54
778	778	54
779	779	6
780	780	101
780	780	133
781	781	31
782	782	84
783	783	97
784	784	97
785	785	54
785	785	35
786	786	54
787	787	104
788	788	82
789	789	96
790	790	37
791	791	96
792	792	56
793	793	54
794	794	134
795	795	32
796	796	32
797	797	43
798	798	85
799	799	113
800	800	82
801	801	53
802	802	35
803	803	34
804	804	32
805	805	54
806	806	83
807	807	115
808	808	82
809	809	43
810	810	35
811	811	53
812	812	82
813	813	44
814	814	55
815	815	73
816	816	44
817	817	82
818	818	97
819	819	103
820	820	64
821	821	82
822	822	53
823	823	95
824	824	70
825	825	82
826	826	83
827	827	97
828	828	53
829	829	110
830	830	53
831	831	53
832	832	41
832	832	6
833	833	65
834	834	97
835	835	132
835	835	130
836	836	97
837	837	78
838	838	131
839	839	32
840	840	41
841	841	135
842	842	90
843	843	6
844	844	64
845	845	32
846	846	64
847	847	75
848	848	83
849	849	73
850	850	113
851	851	125
852	852	115
853	853	129
854	854	54
855	855	35
856	856	31
857	857	6
858	858	74
858	858	136
859	859	73
860	860	54
860	860	6
861	861	97
862	862	56
863	863	74
864	864	137
865	865	112
866	866	138
867	867	51
867	867	52
868	868	32
869	869	54
870	870	32
871	871	54
872	872	125
873	873	139
874	874	137
875	875	56
876	876	103
877	877	96
878	878	24
879	879	35
880	880	103
881	881	53
882	882	6
883	883	44
883	883	45
884	884	96
885	885	54
886	886	54
887	887	82
888	888	34
889	889	32
890	890	35
891	891	53
892	892	140
893	893	82
894	894	84
894	894	85
895	895	53
896	896	96
897	897	70
898	898	61
898	898	37
899	899	82
900	900	46
901	901	37
902	902	117
903	903	41
904	904	54
905	905	44
906	906	68
907	907	137
908	908	37
909	909	125
910	910	36
911	911	32
912	912	81
913	913	81
913	913	52
914	914	107
915	915	107
916	916	45
917	917	117
918	918	132
919	919	43
920	920	55
920	920	56
921	921	35
922	922	53
923	923	129
923	923	130
924	924	115
925	925	54
926	926	85
927	927	53
928	928	103
929	929	117
930	930	96
931	931	117
932	932	96
933	933	107
934	934	37
935	935	73
936	936	73
937	937	73
938	938	73
939	939	73
940	940	96
941	941	137
942	942	54
943	943	89
944	944	32
945	945	137
946	946	96
947	947	137
948	948	52
949	949	141
950	950	35
951	951	74
952	952	83
953	953	32
954	954	97
955	955	54
955	955	32
956	956	84
957	957	51
958	958	96
959	959	55
960	960	64
961	961	96
962	962	83
963	963	97
964	964	65
965	965	1
966	966	36
967	967	106
968	968	32
969	969	35
970	970	142
971	971	54
971	971	63
971	971	6
972	972	64
973	973	55
974	974	6
975	975	32
976	976	82
977	977	98
977	977	99
978	978	32
979	979	117
980	980	32
981	981	74
982	982	97
983	983	45
984	984	54
985	985	52
986	986	85
987	987	56
988	988	32
989	989	35
990	990	103
990	990	73
991	991	52
992	992	54
993	993	55
993	993	56
994	994	54
995	995	117
996	996	73
997	997	73
998	998	73
999	999	32
1000	1000	72
1001	1001	54
1002	1002	132
1003	1003	54
1003	1003	32
1004	1004	61
1005	1005	123
1006	1006	37
1007	1007	51
1008	1008	52
1009	1009	61
1010	1010	52
1011	1011	54
1012	1012	37
1013	1013	96
1014	1014	53
1015	1015	117
1016	1016	6
1017	1017	143
1018	1018	37
1019	1019	115
1020	1020	97
1021	1021	107
1022	1022	97
1023	1023	97
1024	1024	54
1025	1025	53
1026	1026	32
1026	1026	35
1027	1027	129
1028	1028	101
1028	1028	56
1029	1029	32
1029	1029	35
1030	1030	84
1031	1031	35
1032	1032	97
1033	1033	73
1034	1034	75
1035	1035	37
1036	1036	95
1037	1037	85
1038	1038	103
1039	1039	73
1040	1040	53
1041	1041	100
1042	1042	125
1043	1043	53
1044	1044	96
1045	1045	73
1046	1046	73
1047	1047	73
1048	1048	73
1049	1049	104
1050	1050	96
1051	1051	53
1052	1052	53
1053	1053	96
1054	1054	51
1055	1055	35
1056	1056	6
1057	1057	55
1058	1058	107
1059	1059	144
1060	1060	117
1061	1061	83
1062	1062	32
1063	1063	96
1064	1064	6
1065	1065	129
1066	1066	54
1066	1066	32
1067	1067	32
1068	1068	96
1069	1069	73
1070	1070	54
1071	1071	107
1072	1072	55
1073	1073	84
1074	1074	54
1075	1075	54
1076	1076	97
1077	1077	107
1078	1078	82
1079	1079	133
1080	1080	137
1081	1081	103
1082	1082	34
1083	1083	123
1084	1084	96
1085	1085	141
1086	1086	82
1087	1087	96
1088	1088	125
1089	1089	96
1090	1090	117
1091	1091	96
1092	1092	84
1093	1093	24
1094	1094	125
1095	1095	35
1096	1096	53
1097	1097	145
1098	1098	96
1099	1099	32
1100	1100	53
1101	1101	43
1102	1102	53
1103	1103	35
1104	1104	96
1105	1105	115
1106	1106	32
1107	1107	96
1108	1108	103
1109	1109	117
1110	1110	97
1111	1111	35
1112	1112	37
1113	1113	54
1114	1114	97
1115	1115	107
1116	1116	74
1116	1116	34
1116	1116	121
1117	1117	97
1118	1118	54
1119	1119	97
1120	1120	54
1121	1121	84
1122	1122	103
1123	1123	96
1124	1124	53
1125	1125	96
1126	1126	146
1127	1127	43
1128	1128	147
1129	1129	96
1130	1130	55
1131	1131	147
1132	1132	147
1133	1133	117
1134	1134	117
1135	1135	82
1136	1136	43
1137	1137	53
1138	1138	53
1139	1139	32
1140	1140	34
1141	1141	125
1142	1142	53
1143	1143	53
1144	1144	53
1145	1145	32
1146	1146	139
1147	1147	6
1148	1148	73
1149	1149	124
1150	1150	73
1151	1151	50
1151	1151	6
1152	1152	54
1153	1153	78
1154	1154	55
1154	1154	37
1155	1155	73
1156	1156	68
1157	1157	73
1158	1158	37
1159	1159	82
1160	1160	68
1160	1160	32
1161	1161	97
1162	1162	44
1163	1163	144
1164	1164	82
1165	1165	146
1166	1166	117
1167	1167	52
1168	1168	68
1169	1169	97
1170	1170	137
1171	1171	64
1172	1172	139
1173	1173	73
1174	1174	28
1175	1175	54
1176	1176	73
1177	1177	84
1177	1177	85
1178	1178	6
1179	1179	81
1180	1180	129
1181	1181	54
1182	1182	132
1183	1183	67
1184	1184	44
1185	1185	139
1186	1186	124
1187	1187	96
1188	1188	32
1189	1189	97
1190	1190	117
1191	1191	137
1192	1192	115
1193	1193	142
1193	1193	133
1194	1194	132
1195	1195	54
1196	1196	84
1196	1196	85
1197	1197	117
1198	1198	32
1199	1199	1
1200	1200	139
1201	1201	90
1202	1202	51
1202	1202	52
1203	1203	96
1204	1204	96
1205	1205	32
1206	1206	1
1207	1207	84
1207	1207	85
1208	1208	132
1209	1209	2
1210	1210	54
1211	1211	52
1212	1212	132
1213	1213	97
1214	1214	84
1214	1214	45
1215	1215	82
1216	1216	97
1217	1217	32
1218	1218	133
1219	1219	84
1220	1220	129
1221	1221	96
1222	1222	54
1222	1222	32
1223	1223	83
1224	1224	148
1225	1225	104
1226	1226	104
1227	1227	70
1228	1228	96
1229	1229	79
1230	1230	137
1231	1231	96
1232	1232	147
1233	1233	125
1234	1234	129
1234	1234	64
1235	1235	96
1236	1236	103
1237	1237	96
1238	1238	35
1239	1239	61
1240	1240	55
1241	1241	104
1242	1242	82
1243	1243	80
1244	1244	96
1245	1245	147
1246	1246	103
1247	1247	147
1248	1248	55
1249	1249	96
1250	1250	32
1251	1251	53
1252	1252	125
1253	1253	53
1254	1254	53
1255	1255	147
1256	1256	93
1257	1257	97
1258	1258	96
1259	1259	103
1259	1259	73
1260	1260	129
1261	1261	74
1261	1261	121
1262	1262	129
1263	1263	129
1264	1264	96
1265	1265	96
1266	1266	129
1267	1267	97
1268	1268	55
1269	1269	73
1270	1270	115
1271	1271	96
1272	1272	35
1273	1273	6
1274	1274	34
1274	1274	37
1275	1275	141
1276	1276	53
1277	1277	53
1278	1278	37
1279	1279	133
1280	1280	117
1281	1281	6
1282	1282	147
1283	1283	129
1283	1283	117
1284	1284	96
1285	1285	103
1286	1286	103
1287	1287	61
1288	1288	113
1289	1289	107
1290	1290	97
1291	1291	82
1292	1292	137
1293	1293	149
1294	1294	54
1295	1295	137
1296	1296	125
1297	1297	96
1298	1298	53
1299	1299	6
1300	1300	96
1301	1301	103
1302	1302	103
1303	1303	53
1304	1304	102
1305	1305	96
1306	1306	53
1307	1307	103
1308	1308	53
1309	1309	96
1310	1310	53
1311	1311	129
1311	1311	64
1312	1312	146
1313	1313	129
1314	1314	73
1315	1315	96
1316	1316	1
1317	1317	96
1318	1318	146
1319	1319	56
1320	1320	37
1321	1321	117
1322	1322	97
1323	1323	96
1324	1324	97
1325	1325	82
1326	1326	6
1327	1327	93
1328	1328	137
1329	1329	55
1330	1330	61
1331	1331	150
1332	1332	146
1333	1333	96
1334	1334	55
1335	1335	53
1336	1336	147
1337	1337	34
1338	1338	84
1339	1339	151
1340	1340	103
1341	1341	103
1342	1342	147
1343	1343	96
1344	1344	53
1345	1345	53
1346	1346	103
1347	1347	34
1348	1348	146
1349	1349	123
1350	1350	115
1351	1351	55
1352	1352	53
1353	1353	6
1354	1354	115
1355	1355	134
1356	1356	35
1357	1357	53
1358	1358	103
1359	1359	6
1360	1360	96
1361	1361	35
1362	1362	53
1363	1363	53
1364	1364	73
1365	1365	96
1366	1366	6
1367	1367	53
1368	1368	53
1369	1369	32
1370	1370	84
1371	1371	37
1372	1372	83
1373	1373	16
1374	1374	56
1375	1375	141
1376	1376	50
1377	1377	68
1378	1378	97
1379	1379	67
1379	1379	45
1380	1380	51
1381	1381	44
1382	1382	73
1383	1383	45
1384	1384	54
1385	1385	6
1386	1386	32
1386	1386	51
1387	1387	85
1388	1388	85
1389	1389	85
1390	1390	129
1391	1391	115
1392	1392	129
1393	1393	73
1394	1394	73
1395	1395	95
1396	1396	97
1397	1397	97
1398	1398	142
1399	1399	96
1400	1400	37
1401	1401	54
1402	1402	35
1403	1403	55
1404	1404	98
1404	1404	99
1405	1405	97
1406	1406	97
1407	1407	117
1408	1408	80
1409	1409	45
1410	1410	97
1411	1411	97
1412	1412	118
1413	1413	77
1414	1414	73
1415	1415	137
1416	1416	56
1417	1417	124
1417	1417	82
1418	1418	96
1419	1419	84
1420	1420	82
1421	1421	96
1422	1422	103
1422	1422	73
1423	1423	96
1424	1424	96
1425	1425	96
1426	1426	53
1427	1427	73
1428	1428	96
1429	1429	125
1430	1430	53
1431	1431	97
1432	1432	73
1433	1433	73
1434	1434	37
1435	1435	83
1436	1436	37
1437	1437	37
1438	1438	149
1439	1439	96
1440	1440	53
1441	1441	96
1442	1442	53
1443	1443	115
1444	1444	96
1445	1445	6
1446	1446	53
1447	1447	53
1448	1448	103
1449	1449	53
1450	1450	96
1451	1451	107
1452	1452	55
1453	1453	129
1454	1454	82
1455	1455	73
1456	1456	1
1457	1457	102
1457	1457	95
1458	1458	54
1459	1459	78
1460	1460	142
1461	1461	15
1461	1461	23
1462	1462	129
1463	1463	75
1463	1463	76
1464	1464	18
1465	1465	16
1466	1466	97
1467	1467	96
1468	1468	73
1469	1469	73
1470	1470	73
1471	1471	73
1472	1472	97
1473	1473	32
1474	1474	64
1475	1475	73
1476	1476	54
1477	1477	109
1478	1478	54
1479	1479	115
1480	1480	34
1481	1481	97
1482	1482	34
1482	1482	37
1483	1483	53
1484	1484	56
1485	1485	104
1486	1486	96
1487	1487	53
1488	1488	54
1489	1489	55
1490	1490	103
1490	1490	73
1491	1491	96
1492	1492	96
1493	1493	97
1494	1494	97
1495	1495	149
1496	1496	97
1497	1497	149
1498	1498	54
1498	1498	32
1499	1499	96
1500	1500	54
1500	1500	32
1501	1501	96
1502	1502	97
1503	1503	96
1504	1504	56
1505	1505	35
1506	1506	96
1507	1507	1
1508	1508	96
1509	1509	53
1510	1510	103
1511	1511	97
1512	1512	115
1513	1513	53
1514	1514	147
1515	1515	96
1516	1516	96
1517	1517	96
1518	1518	97
1519	1519	96
1520	1520	96
1521	1521	103
1521	1521	73
1522	1522	53
1523	1523	35
1524	1524	83
1525	1525	96
1526	1526	32
1527	1527	129
1528	1528	75
1529	1529	68
1530	1530	115
1531	1531	141
1532	1532	54
1533	1533	85
1534	1534	89
1535	1535	137
1536	1536	16
1537	1537	73
1538	1538	115
1539	1539	54
1540	1540	96
1541	1541	97
1542	1542	97
1543	1543	42
1543	1543	57
1544	1544	109
1545	1545	112
1545	1545	152
1546	1546	45
1547	1547	129
1548	1548	73
1549	1549	84
1550	1550	96
1551	1551	115
1552	1552	18
1552	1552	98
1552	1552	6
1553	1553	97
1554	1554	97
1555	1555	137
1556	1556	73
1557	1557	80
1558	1558	20
1559	1559	77
1560	1560	73
1561	1561	153
1562	1562	149
1563	1563	115
1564	1564	97
1565	1565	56
1566	1566	115
1567	1567	53
1568	1568	96
1569	1569	96
1570	1570	55
1571	1571	96
1572	1572	103
1573	1573	73
1574	1574	73
1575	1575	117
1576	1576	96
1577	1577	115
1578	1578	103
1579	1579	53
1580	1580	115
1581	1581	37
1582	1582	103
1583	1583	97
1584	1584	115
1585	1585	97
1586	1586	54
1587	1587	149
1588	1588	103
1589	1589	149
1590	1590	137
1591	1591	67
1592	1592	84
1592	1592	85
1593	1593	97
1594	1594	53
1595	1595	73
1596	1596	73
1597	1597	53
1598	1598	53
1599	1599	103
1600	1600	101
1601	1601	97
1602	1602	103
1603	1603	53
1604	1604	53
1605	1605	115
1606	1606	73
1607	1607	147
1608	1608	147
1609	1609	104
1610	1610	97
1611	1611	53
1612	1612	115
1613	1613	147
1614	1614	53
1615	1615	96
1616	1616	53
1617	1617	96
1618	1618	82
1619	1619	137
1620	1620	84
1621	1621	97
1622	1622	141
1623	1623	123
1624	1624	97
1625	1625	6
1626	1626	44
1627	1627	107
1628	1628	64
1629	1629	115
1630	1630	149
1631	1631	63
1632	1632	149
1633	1633	97
1634	1634	51
1635	1635	35
1636	1636	73
1637	1637	6
1638	1638	137
1639	1639	97
1640	1640	97
1641	1641	83
1642	1642	82
1643	1643	146
1644	1644	97
1645	1645	42
1646	1646	115
1647	1647	137
1648	1648	96
1649	1649	52
1650	1650	52
1651	1651	141
1652	1652	115
1653	1653	85
1654	1654	78
1655	1655	37
1656	1656	73
1657	1657	154
1658	1658	54
1659	1659	73
1660	1660	115
1661	1661	149
1662	1662	53
1663	1663	84
1664	1664	1
1665	1665	104
1666	1666	103
1667	1667	103
1668	1668	53
1669	1669	96
1670	1670	53
1671	1671	97
1672	1672	97
1673	1673	96
1674	1674	97
1675	1675	103
1675	1675	73
1676	1676	96
1677	1677	103
1678	1678	137
1679	1679	115
1680	1680	146
1681	1681	53
1682	1682	147
1683	1683	96
1684	1684	149
1685	1685	137
1686	1686	115
1687	1687	103
1688	1688	53
1689	1689	53
1690	1690	103
1691	1691	96
1692	1692	73
1693	1693	73
1694	1694	149
1695	1695	97
1696	1696	73
1697	1697	149
1698	1698	55
1699	1699	141
1700	1700	96
1701	1701	73
1702	1702	149
1703	1703	96
1704	1704	6
1705	1705	73
1706	1706	149
1707	1707	141
1708	1708	37
1709	1709	115
1710	1710	73
1711	1711	141
1712	1712	6
1713	1713	96
1714	1714	97
1715	1715	73
1716	1716	84
1716	1716	45
1717	1717	6
1718	1718	115
1719	1719	53
1720	1720	115
1721	1721	53
1722	1722	115
1723	1723	129
1724	1724	137
1725	1725	34
1726	1726	97
1727	1727	104
1728	1728	32
1729	1729	96
1730	1730	103
1730	1730	73
1731	1731	115
1732	1732	103
1732	1732	73
1733	1733	115
1734	1734	55
1735	1735	34
1736	1736	96
1737	1737	96
1738	1738	97
1739	1739	115
1740	1740	37
1741	1741	96
1742	1742	54
1743	1743	54
1744	1744	97
1745	1745	149
1746	1746	67
1747	1747	149
1748	1748	103
1749	1749	97
1750	1750	103
1751	1751	103
1752	1752	83
1753	1753	137
1754	1754	115
1755	1755	84
1755	1755	85
1756	1756	96
1757	1757	55
1758	1758	115
1759	1759	117
1760	1760	97
1761	1761	34
1762	1762	73
1763	1763	97
1764	1764	137
1765	1765	64
1766	1766	100
1767	1767	6
1768	1768	37
1769	1769	64
1770	1770	115
1771	1771	107
1772	1772	97
1773	1773	64
1774	1774	97
1775	1775	115
1776	1776	73
1777	1777	73
1778	1778	73
1779	1779	82
1780	1780	54
1781	1781	64
1782	1782	115
1783	1783	134
1784	1784	56
1785	1785	37
1786	1786	6
1787	1787	146
1788	1788	97
1789	1789	115
1790	1790	97
1791	1791	32
1792	1792	73
1793	1793	54
1794	1794	73
1795	1795	97
1796	1796	73
1797	1797	61
1798	1798	32
1799	1799	106
1800	1800	32
1801	1801	32
1802	1802	32
1803	1803	96
1804	1804	52
1805	1805	73
1806	1806	115
1807	1807	137
1808	1808	96
1809	1809	64
1810	1810	115
1811	1811	53
1812	1812	115
1813	1813	115
1814	1814	115
1815	1815	115
1816	1816	137
1817	1817	149
1818	1818	97
1819	1819	115
1820	1820	35
1821	1821	96
1822	1822	155
1823	1823	97
1824	1824	115
1825	1825	34
1826	1826	115
1827	1827	103
1828	1828	115
1829	1829	45
1830	1830	97
1831	1831	115
1832	1832	147
1833	1833	115
1834	1834	97
1835	1835	34
1836	1836	149
1837	1837	115
1838	1838	115
1839	1839	103
1840	1840	103
1841	1841	115
1842	1842	96
1843	1843	53
1844	1844	97
1845	1845	97
1846	1846	89
1847	1847	97
1848	1848	6
1849	1849	97
1850	1850	149
1851	1851	5
1852	1852	53
1853	1853	137
1854	1854	137
1855	1855	115
1856	1856	115
1857	1857	96
1858	1858	137
1859	1859	73
1860	1860	115
1861	1861	53
1862	1862	6
1863	1863	96
1864	1864	137
1865	1865	115
1866	1866	115
1867	1867	55
1868	1868	137
1869	1869	137
1870	1870	137
1871	1871	73
1872	1872	137
1873	1873	53
1874	1874	42
1875	1875	103
1876	1876	96
1877	1877	115
1878	1878	96
1879	1879	115
1880	1880	115
1881	1881	89
1882	1882	53
1883	1883	115
1884	1884	34
1885	1885	103
1886	1886	103
1887	1887	73
1888	1888	53
1889	1889	96
1890	1890	37
1891	1891	147
1892	1892	137
1893	1893	103
1894	1894	97
1895	1895	115
1896	1896	96
1897	1897	6
1898	1898	115
1899	1899	84
1900	1900	9
1901	1901	67
1901	1901	45
1902	1902	97
1903	1903	97
1904	1904	139
1905	1905	96
1906	1906	137
1907	1907	97
1908	1908	137
1909	1909	137
1910	1910	156
1911	1911	73
1912	1912	78
1913	1913	32
1914	1914	54
1915	1915	97
1916	1916	73
1917	1917	73
1918	1918	73
1919	1919	73
1920	1920	97
1921	1921	67
1921	1921	45
1922	1922	56
1923	1923	32
1924	1924	107
1925	1925	149
1926	1926	73
1927	1927	73
1928	1928	146
1929	1929	137
1930	1930	53
1931	1931	115
1932	1932	137
1933	1933	137
1934	1934	115
1935	1935	64
1936	1936	146
1937	1937	137
1938	1938	96
1938	1938	121
1939	1939	137
1940	1940	137
1941	1941	97
1942	1942	73
1943	1943	103
1944	1944	73
1945	1945	6
1946	1946	6
1947	1947	97
1948	1948	117
1949	1949	6
1950	1950	97
1951	1951	53
1952	1952	73
1953	1953	37
1954	1954	115
1955	1955	96
1956	1956	115
1957	1957	96
1958	1958	32
1959	1959	115
1960	1960	84
1961	1961	115
1962	1962	141
1963	1963	97
1964	1964	137
1965	1965	73
1966	1966	129
1967	1967	55
1968	1968	54
1969	1969	103
1970	1970	96
1971	1971	97
1972	1972	117
1973	1973	115
1974	1974	97
1975	1975	73
1976	1976	137
1977	1977	107
1978	1978	77
1979	1979	61
1980	1980	149
1981	1981	73
1982	1982	137
1983	1983	137
1984	1984	137
1985	1985	53
1986	1986	73
1987	1987	149
1988	1988	73
1989	1989	73
1990	1990	37
1991	1991	96
1992	1992	137
1993	1993	97
1994	1994	97
1995	1995	55
1996	1996	96
1997	1997	35
1998	1998	73
1999	1999	129
2000	2000	73
2001	2001	54
2002	2002	137
2003	2003	73
2004	2004	137
2005	2005	35
2006	2006	53
2007	2007	137
2008	2008	150
2009	2009	96
2010	2010	53
2011	2011	56
2012	2012	31
2013	2013	152
2014	2014	137
2015	2015	67
2016	2016	97
2017	2017	6
2018	2018	97
2019	2019	115
2020	2020	137
2021	2021	115
2022	2022	54
2023	2023	97
2024	2024	54
2024	2024	6
2025	2025	152
2026	2026	137
2027	2027	96
2028	2028	34
2029	2029	97
2030	2030	97
2031	2031	137
2032	2032	137
2033	2033	54
2034	2034	73
2035	2035	149
2036	2036	137
2037	2037	137
2038	2038	73
2039	2039	98
2039	2039	99
2040	2040	36
2041	2041	85
2042	2042	129
2042	2042	64
2043	2043	99
2044	2044	97
2045	2045	6
2046	2046	137
2047	2047	137
2048	2048	96
2049	2049	85
2050	2050	53
2051	2051	56
2052	2052	34
2053	2053	146
2054	2054	96
2055	2055	89
2056	2056	120
2057	2057	137
2058	2058	149
2059	2059	103
2060	2060	73
2061	2061	73
2062	2062	137
2063	2063	53
2064	2064	97
2065	2065	96
2066	2066	73
2067	2067	73
2068	2068	73
2069	2069	73
2070	2070	137
2071	2071	137
2072	2072	96
2073	2073	137
2074	2074	73
2075	2075	96
2076	2076	137
2077	2077	73
2078	2078	147
2079	2079	73
2080	2080	54
2081	2081	149
2082	2082	80
2083	2083	45
2084	2084	6
2085	2085	73
2086	2086	79
2087	2087	97
2088	2088	97
2089	2089	97
2090	2090	96
2091	2091	97
2092	2092	137
2093	2093	96
2094	2094	96
2095	2095	73
2096	2096	63
2097	2097	96
2098	2098	137
2099	2099	137
2100	2100	97
2101	2101	149
2102	2102	137
2103	2103	137
2104	2104	54
2105	2105	54
2106	2106	73
2107	2107	137
2108	2108	117
2109	2109	149
2110	2110	96
2111	2111	96
2111	2111	133
2112	2112	103
2113	2113	149
2114	2114	137
2115	2115	124
2116	2116	73
2117	2117	97
2118	2118	73
2119	2119	73
2120	2120	73
2121	2121	96
2122	2122	73
2123	2123	115
2124	2124	137
2125	2125	115
2126	2126	149
2127	2127	115
2128	2128	115
2129	2129	149
2130	2130	6
2131	2131	54
2132	2132	73
2133	2133	6
2134	2134	73
2135	2135	96
2136	2136	96
2137	2137	137
2138	2138	96
2139	2139	137
2140	2140	137
2141	2141	137
2142	2142	61
2142	2142	37
2143	2143	83
2144	2144	96
2145	2145	149
2146	2146	53
2147	2147	129
2148	2148	37
2149	2149	35
2150	2150	137
2151	2151	37
2152	2152	155
2153	2153	96
2154	2154	73
2155	2155	115
2156	2156	96
2157	2157	96
2158	2158	137
2159	2159	73
2160	2160	10
2161	2161	73
2162	2162	155
2163	2163	137
2164	2164	73
2165	2165	115
2166	2166	6
2167	2167	54
2168	2168	149
2169	2169	6
2170	2170	96
2171	2171	137
2172	2172	137
2173	2173	32
2174	2174	96
2175	2175	73
2176	2176	85
2177	2177	141
2178	2178	34
2179	2179	96
2180	2180	73
2181	2181	96
2182	2182	97
2183	2183	73
2184	2184	73
2185	2185	54
2186	2186	97
2187	2187	149
2188	2188	149
2189	2189	149
2190	2190	129
2191	2191	137
2192	2192	149
2193	2193	149
2194	2194	149
2195	2195	96
2196	2196	34
2197	2197	37
2198	2198	149
2199	2199	6
2200	2200	53
2201	2201	149
2202	2202	146
2203	2203	137
2204	2204	73
2205	2205	97
2206	2206	73
2207	2207	137
2208	2208	115
2209	2209	97
2210	2210	129
2211	2211	115
2212	2212	137
2213	2213	97
2214	2214	146
2215	2215	74
2216	2216	55
2217	2217	137
2218	2218	137
2219	2219	53
2220	2220	129
2221	2221	129
2222	2222	34
2223	2223	73
2224	2224	73
2225	2225	73
2226	2226	73
2227	2227	73
2228	2228	73
2229	2229	117
2230	2230	73
2231	2231	73
2232	2232	96
2233	2233	73
2234	2234	73
2235	2235	73
2236	2236	73
2237	2237	149
2238	2238	37
2239	2239	96
2240	2240	96
2241	2241	96
2242	2242	34
2243	2243	137
2244	2244	137
2245	2245	96
2246	2246	73
2247	2247	96
2248	2248	137
2249	2249	96
2250	2250	149
2251	2251	64
2252	2252	73
2253	2253	73
2254	2254	96
2255	2255	96
2256	2256	96
2257	2257	64
2258	2258	73
2259	2259	137
2260	2260	37
2261	2261	137
2262	2262	96
2263	2263	96
2264	2264	129
2265	2265	129
2266	2266	74
2267	2267	97
2268	2268	96
2269	2269	96
2270	2270	115
2271	2271	115
2272	2272	73
2273	2273	54
2274	2274	56
2275	2275	37
2276	2276	55
2277	2277	73
2278	2278	34
2279	2279	149
2280	2280	73
2281	2281	36
2282	2282	115
2283	2283	155
2284	2284	79
2285	2285	32
2286	2286	6
2287	2287	6
2288	2288	6
2289	2289	24
2290	2290	96
2291	2291	61
2292	2292	32
2293	2293	73
2294	2294	149
2295	2295	34
2296	2296	73
2297	2297	96
2298	2298	115
2299	2299	6
2300	2300	6
2301	2301	141
2302	2302	74
2302	2302	34
2302	2302	36
2303	2303	73
2304	2304	54
2305	2305	137
2306	2306	112
2307	2307	112
2308	2308	73
2309	2309	57
2310	2310	54
2311	2311	82
2312	2312	117
2313	2313	82
2314	2314	115
2315	2315	82
2316	2316	83
2316	2316	157
2317	2317	77
2318	2318	155
2319	2319	28
2320	2320	73
2321	2321	73
2322	2322	73
2323	2323	73
2324	2324	32
2325	2325	37
2326	2326	108
2327	2327	73
2328	2328	37
2329	2329	21
2330	2330	73
2331	2331	16
2332	2332	104
2333	2333	137
2334	2334	137
2335	2335	141
2336	2336	70
2337	2337	146
2338	2338	129
2339	2339	137
2340	2340	35
2341	2341	73
2342	2342	6
2343	2343	73
2344	2344	73
2345	2345	82
2346	2346	78
2347	2347	144
2348	2348	73
2349	2349	137
2350	2350	83
2351	2351	77
2352	2352	83
2353	2353	115
2354	2354	129
2355	2355	10
2356	2356	48
2357	2357	82
2358	2358	146
2359	2359	74
2360	2360	35
2361	2361	73
2362	2362	54
2363	2363	82
2364	2364	117
2365	2365	44
2366	2366	96
2367	2367	97
2368	2368	73
2369	2369	149
2370	2370	73
2371	2371	158
2372	2372	73
2373	2373	34
2374	2374	100
2375	2375	6
2376	2376	6
2377	2377	115
2378	2378	73
2379	2379	10
2380	2380	115
2381	2381	6
2382	2382	141
2383	2383	73
2384	2384	97
2385	2385	146
2386	2386	140
2387	2387	18
2388	2388	107
2389	2389	6
2390	2390	54
2391	2391	35
2392	2392	41
2393	2393	78
2394	2394	73
2395	2395	73
2396	2396	78
2397	2397	6
2398	2398	96
2399	2399	8
2400	2400	54
2401	2401	137
2402	2402	79
2403	2403	140
2404	2404	140
2405	2405	54
2406	2406	146
2407	2407	35
2408	2408	154
2408	2408	80
2409	2409	124
2410	2410	97
2411	2411	73
2412	2412	42
2413	2413	57
2414	2414	57
2415	2415	35
2416	2416	78
2417	2417	73
2418	2418	115
2419	2419	96
2420	2420	44
2421	2421	97
2422	2422	149
2423	2423	137
2424	2424	77
2425	2425	6
2426	2426	73
2427	2427	73
2428	2428	73
2429	2429	96
2430	2430	96
2431	2431	59
2432	2432	28
2433	2433	152
2434	2434	37
2435	2435	97
2436	2436	73
2437	2437	48
2438	2438	115
2439	2439	96
2440	2440	129
2441	2441	97
2442	2442	106
2443	2443	73
2444	2444	73
2445	2445	137
2446	2446	129
2447	2447	97
2448	2448	73
2449	2449	73
2450	2450	24
2451	2451	73
2452	2452	96
2453	2453	68
2454	2454	106
2455	2455	73
2456	2456	64
2457	2457	6
2458	2458	6
2459	2459	96
2460	2460	74
2461	2461	54
2462	2462	55
2463	2463	107
2464	2464	97
2465	2465	37
2466	2466	54
2467	2467	103
2468	2468	45
2469	2469	55
2470	2470	97
2471	2471	2
2472	2472	6
2473	2473	73
2474	2474	44
2475	2475	73
2476	2476	73
2477	2477	83
2478	2478	32
2479	2479	100
2480	2480	152
2481	2481	118
2482	2482	32
2483	2483	73
2484	2484	107
2485	2485	6
2486	2486	106
2487	2487	54
2488	2488	147
2489	2489	73
2490	2490	5
2491	2491	73
2492	2492	6
2493	2493	6
2494	2494	6
2495	2495	6
2496	2496	77
2497	2497	44
2498	2498	97
2499	2499	54
2500	2500	97
2501	2501	61
2502	2502	73
2503	2503	82
2504	2504	144
2505	2505	96
2506	2506	103
2507	2507	73
2508	2508	73
2509	2509	73
2510	2510	6
2511	2511	28
2512	2512	96
2513	2513	73
2514	2514	73
2515	2515	115
2516	2516	96
2517	2517	73
2518	2518	74
2519	2519	56
2520	2520	137
2521	2521	73
2522	2522	6
2523	2523	73
2524	2524	96
2525	2525	78
2526	2526	37
2527	2527	137
2528	2528	115
2529	2529	91
2530	2530	6
2531	2531	73
2532	2532	6
2533	2533	96
2534	2534	64
2535	2535	155
2536	2536	155
2537	2537	155
2538	2538	155
2539	2539	155
2540	2540	32
2541	2541	121
2542	2542	79
2543	2543	133
2544	2544	2
2544	2544	13
2544	2544	19
2544	2544	1
2544	2544	159
2544	2544	11
2545	2545	120
2546	2546	54
2546	2546	84
2546	2546	44
2546	2546	45
2547	2547	44
2548	2548	19
2549	2549	32
2549	2549	51
2550	2550	6
2551	2551	56
2552	2552	2
2552	2552	13
2552	2552	21
2552	2552	1
2552	2552	11
2552	2552	27
2553	2553	80
2554	2554	32
2555	2555	101
2556	2556	32
2557	2557	67
2557	2557	84
2557	2557	85
2558	2558	103
2559	2559	19
2560	2560	55
2561	2561	20
2562	2562	55
2563	2563	34
2564	2564	103
2565	2565	116
2565	2565	81
2565	2565	52
2566	2566	33
2566	2566	19
2567	2567	53
2568	2568	73
2569	2569	73
2570	2570	67
2571	2571	20
2572	2572	24
2573	2573	10
2574	2574	55
2575	2575	108
2575	2575	31
2575	2575	58
2575	2575	66
2575	2575	65
2575	2575	160
2575	2575	59
2576	2576	2
2576	2576	27
2577	2577	6
2578	2578	44
2579	2579	6
2580	2580	6
2581	2581	6
2582	2582	6
2583	2583	63
2583	2583	6
2584	2584	100
2585	2585	19
2585	2585	11
2586	2586	15
2587	2587	20
2587	2587	22
2587	2587	28
2588	2588	54
2589	2589	26
2590	2590	121
2591	2591	103
2592	2592	50
2592	2592	6
2593	2593	28
2594	2594	42
2595	2595	103
2596	2596	32
2596	2596	51
2597	2597	107
2598	2598	97
2599	2599	161
2600	2600	55
2601	2601	12
2601	2601	72
2601	2601	14
2601	2601	15
2601	2601	16
2601	2601	20
2601	2601	22
2601	2601	100
2601	2601	23
2601	2601	28
2601	2601	29
2602	2602	31
2603	2603	137
2604	2604	107
2605	2605	107
2606	2606	32
2607	2607	6
2608	2608	32
2609	2609	67
2610	2610	67
2611	2611	67
2612	2612	67
2613	2613	120
2614	2614	103
2615	2615	32
2616	2616	121
2617	2617	8
2618	2618	33
2618	2618	19
2619	2619	45
2620	2620	55
2621	2621	55
2622	2622	121
2623	2623	32
2624	2624	24
2625	2625	101
2626	2626	107
2627	2627	103
2628	2628	55
2629	2629	120
2630	2630	73
2631	2631	103
2632	2632	73
2633	2633	103
2634	2634	103
2635	2635	103
2636	2636	103
2637	2637	84
2638	2638	77
2639	2639	55
2640	2640	73
2641	2641	121
2642	2642	6
2643	2643	10
2644	2644	23
2645	2645	55
2646	2646	19
2647	2647	6
2648	2648	103
2648	2648	73
2649	2649	53
2650	2650	55
2651	2651	120
2652	2652	103
2652	2652	73
2653	2653	103
2653	2653	73
2654	2654	32
2655	2655	44
2656	2656	44
2657	2657	70
2658	2658	52
2659	2659	97
2660	2660	67
2661	2661	19
2662	2662	103
2663	2663	32
2663	2663	51
2664	2664	73
2665	2665	77
2666	2666	34
2667	2667	2
2667	2667	19
2668	2668	44
2669	2669	103
2670	2670	44
2671	2671	67
2672	2672	55
2673	2673	121
2674	2674	3
2674	2674	99
2675	2675	103
2676	2676	6
2677	2677	133
2678	2678	55
2679	2679	67
2680	2680	78
2681	2681	2
2681	2681	3
2682	2682	73
2683	2683	32
2683	2683	51
2684	2684	103
2685	2685	67
2686	2686	34
2687	2687	103
2688	2688	44
2689	2689	55
2690	2690	74
2690	2690	34
2690	2690	121
2691	2691	55
2692	2692	101
2693	2693	72
2694	2694	41
2695	2695	42
2696	2696	55
2697	2697	6
2698	2698	67
2699	2699	121
2700	2700	32
2701	2701	72
2702	2702	55
2703	2703	31
2704	2704	103
2705	2705	55
2706	2706	50
2707	2707	73
2708	2708	103
2709	2709	50
2709	2709	6
2709	2709	10
2710	2710	44
2711	2711	55
2712	2712	103
2713	2713	73
2714	2714	74
2714	2714	34
2715	2715	120
2716	2716	6
2717	2717	2
2717	2717	13
2717	2717	7
2717	2717	33
2717	2717	3
2717	2717	17
2717	2717	18
2717	2717	19
2717	2717	21
2717	2717	1
2717	2717	8
2717	2717	9
2717	2717	49
2717	2717	69
2717	2717	98
2717	2717	4
2717	2717	5
2717	2717	23
2717	2717	24
2717	2717	6
2717	2717	25
2717	2717	99
2717	2717	11
2717	2717	27
2717	2717	10
2718	2718	120
2719	2719	55
2720	2720	55
2721	2721	32
2721	2721	51
2722	2722	75
1	1	1
2	2	1
3	3	2
3	3	3
3	3	4
3	3	5
3	3	6
4	4	7
4	4	8
4	4	9
4	4	5
4	4	6
4	4	10
5	5	1
5	5	11
6	6	12
6	6	2
6	6	13
6	6	7
6	6	14
6	6	15
6	6	16
6	6	17
6	6	18
6	6	19
6	6	20
6	6	21
6	6	1
6	6	8
6	6	9
6	6	22
6	6	4
6	6	5
6	6	23
6	6	24
6	6	6
6	6	25
6	6	26
6	6	11
6	6	27
6	6	28
6	6	10
6	6	29
6	6	30
7	7	31
8	8	32
9	9	2
9	9	33
9	9	4
10	10	34
11	11	32
11	11	35
12	12	34
12	12	36
12	12	37
13	13	1
13	13	38
14	14	1
15	15	16
15	15	1
15	15	26
16	16	28
17	17	32
18	18	39
19	19	32
20	20	32
21	21	24
22	22	12
22	22	15
22	22	22
22	22	23
22	22	29
23	23	33
23	23	19
23	23	4
24	24	6
25	25	6
26	26	6
27	27	32
28	28	32
28	28	35
29	29	37
30	30	25
30	30	10
31	31	19
31	31	1
31	31	40
32	32	21
32	32	5
32	32	23
32	32	25
32	32	10
33	33	41
33	33	42
34	34	32
35	35	32
36	36	32
37	37	1
38	38	43
39	39	37
40	40	35
41	41	44
41	41	45
42	42	7
42	42	5
42	42	10
43	43	46
44	44	6
45	45	32
46	46	24
47	47	32
47	47	35
48	48	43
49	49	33
49	49	19
50	50	47
50	50	32
51	51	48
51	51	19
52	52	6
52	52	28
53	53	32
54	54	1
55	55	37
56	56	33
56	56	19
56	56	49
57	57	32
58	58	50
58	58	6
59	59	32
60	60	6
61	61	12
61	61	15
61	61	20
61	61	22
61	61	29
62	62	42
62	62	51
62	62	52
63	63	19
64	64	41
64	64	6
65	65	32
66	66	35
67	67	43
68	68	6
69	69	53
70	70	6
71	71	6
72	72	43
73	73	32
74	74	6
75	75	6
76	76	6
77	77	32
78	78	31
79	79	54
80	80	19
81	81	1
82	82	36
83	83	53
84	84	2
84	84	33
84	84	19
84	84	49
85	85	35
86	86	54
87	87	50
88	88	4
89	89	35
90	90	55
90	90	56
91	91	6
92	92	57
92	92	31
92	92	58
92	92	22
92	92	6
92	92	59
92	92	28
93	93	6
94	94	32
95	95	32
96	96	32
96	96	35
97	97	31
98	98	10
99	99	60
99	99	50
99	99	20
99	99	6
99	99	28
99	99	10
100	100	61
101	101	54
102	102	54
102	102	62
102	102	63
103	103	32
104	104	64
105	105	19
106	106	48
106	106	19
107	107	54
108	108	32
109	109	32
110	110	32
111	111	54
111	111	63
111	111	6
112	112	65
113	113	60
113	113	42
113	113	57
113	113	59
113	113	28
114	114	32
115	115	51
116	116	51
117	117	6
118	118	19
118	118	1
119	119	19
120	120	64
121	121	32
122	122	32
123	123	42
124	124	32
125	125	6
126	126	57
126	126	66
126	126	59
127	127	67
128	128	68
128	128	54
128	128	32
129	129	32
130	130	69
130	130	10
131	131	32
132	132	54
132	132	32
133	133	32
134	134	32
135	135	70
136	136	32
137	137	19
137	137	1
138	138	68
139	139	6
140	140	6
141	141	48
141	141	71
142	142	8
142	142	6
143	143	19
144	144	32
145	145	72
146	146	54
146	146	32
146	146	35
147	147	32
148	148	43
149	149	32
150	150	32
151	151	50
151	151	28
152	152	6
153	153	32
154	154	50
154	154	6
154	154	28
155	155	32
156	156	32
157	157	73
158	158	1
159	159	72
160	160	32
161	161	53
162	162	32
163	163	32
164	164	54
164	164	32
165	165	54
166	166	32
167	167	53
168	168	10
169	169	54
170	170	19
170	170	1
170	170	11
171	171	1
172	172	74
173	173	75
173	173	76
174	174	77
175	175	54
176	176	34
177	177	78
177	177	79
178	178	80
179	179	55
180	180	32
181	181	81
181	181	52
182	182	6
183	183	43
184	184	32
185	185	6
186	186	82
187	187	61
188	188	53
189	189	53
190	190	51
191	191	53
192	192	32
193	193	32
194	194	43
195	195	43
196	196	83
197	197	32
198	198	1
199	199	42
200	200	55
201	201	74
202	202	50
203	203	84
203	203	85
204	204	72
205	205	76
206	206	54
206	206	51
206	206	81
206	206	52
207	207	47
207	207	32
208	208	82
209	209	86
210	210	84
211	211	32
211	211	51
212	212	32
213	213	1
214	214	47
215	215	43
216	216	87
217	217	37
218	218	32
219	219	70
220	220	32
221	221	32
222	222	32
223	223	88
224	224	54
225	225	51
226	226	43
227	227	32
228	228	24
229	229	53
230	230	89
231	231	5
232	232	6
233	233	32
234	234	20
235	235	6
236	236	54
236	236	63
237	237	68
237	237	54
237	237	32
238	238	85
239	239	32
240	240	54
241	241	32
242	242	61
243	243	76
244	244	6
245	245	23
246	246	59
246	246	28
247	247	17
247	247	6
248	248	90
249	249	28
250	250	79
251	251	72
252	252	53
253	253	32
254	254	32
255	255	54
256	256	85
257	257	54
258	258	82
259	259	61
260	260	35
261	261	91
261	261	24
262	262	64
263	263	53
264	264	92
265	265	93
266	266	42
267	267	94
267	267	62
268	268	32
269	269	95
270	270	35
271	271	74
271	271	34
272	272	32
273	273	68
274	274	82
275	275	32
276	276	44
277	277	45
278	278	37
279	279	61
280	280	32
281	281	39
282	282	37
283	283	32
284	284	82
285	285	84
286	286	53
287	287	32
288	288	6
289	289	35
290	290	53
291	291	54
292	292	43
293	293	53
294	294	11
295	295	32
296	296	32
297	297	32
298	298	61
299	299	96
299	299	55
299	299	37
300	300	37
301	301	55
301	301	56
302	302	43
303	303	32
304	304	32
305	305	53
306	306	35
307	307	32
308	308	53
309	309	97
310	310	35
311	311	32
312	312	6
312	312	28
313	313	32
314	314	54
315	315	97
316	316	68
317	317	13
317	317	21
317	317	25
318	318	42
319	319	31
320	320	35
321	321	1
322	322	68
322	322	32
322	322	35
323	323	54
324	324	44
324	324	45
325	325	82
326	326	54
327	327	18
327	327	98
327	327	6
327	327	99
328	328	37
329	329	61
330	330	81
330	330	52
331	331	32
332	332	97
333	333	72
334	334	74
335	335	6
336	336	16
336	336	29
337	337	54
338	338	6
339	339	41
339	339	6
340	340	51
341	341	32
342	342	35
343	343	53
344	344	35
345	345	32
346	346	53
347	347	53
348	348	54
349	349	53
350	350	35
351	351	95
352	352	32
353	353	23
353	353	29
354	354	23
355	355	32
356	356	54
357	357	80
358	358	18
358	358	6
359	359	84
359	359	45
360	360	73
361	361	100
362	362	41
362	362	6
363	363	101
363	363	56
364	364	35
365	365	54
366	366	6
367	367	55
368	368	32
369	369	42
369	369	57
370	370	32
371	371	32
372	372	70
373	373	102
374	374	32
375	375	32
376	376	64
377	377	54
378	378	82
379	379	42
380	380	42
381	381	42
382	382	103
383	383	53
384	384	53
385	385	53
386	386	54
387	387	32
388	388	45
389	389	68
390	390	15
390	390	23
391	391	35
392	392	1
393	393	96
394	394	18
394	394	6
395	395	32
396	396	32
397	397	10
398	398	32
399	399	101
399	399	56
400	400	72
401	401	54
402	402	59
403	403	81
404	404	44
405	405	104
406	406	105
407	407	2
408	408	32
409	409	32
410	410	96
411	411	51
411	411	52
412	412	35
413	413	96
414	414	53
415	415	42
416	416	95
417	417	95
418	418	32
419	419	65
420	420	103
421	421	32
422	422	83
423	423	32
424	424	37
425	425	106
426	426	6
427	427	54
428	428	85
429	429	42
430	430	68
431	431	54
432	432	32
433	433	64
434	434	35
435	435	54
436	436	84
437	437	83
438	438	54
439	439	45
440	440	96
441	441	32
442	442	54
443	443	45
444	444	73
445	445	73
446	446	54
447	447	54
448	448	107
449	449	82
450	450	108
451	451	72
452	452	72
453	453	97
454	454	55
455	455	35
456	456	32
457	457	109
458	458	82
459	459	110
460	460	35
461	461	47
461	461	32
462	462	96
463	463	111
464	464	97
465	465	95
466	466	96
467	467	97
468	468	32
469	469	112
470	470	82
471	471	82
472	472	53
473	473	110
474	474	82
475	475	53
476	476	112
477	477	97
478	478	32
479	479	6
480	480	85
481	481	32
482	482	54
483	483	54
484	484	54
485	485	97
486	486	97
487	487	6
488	488	53
489	489	43
490	490	53
491	491	53
492	492	83
492	492	82
493	493	113
494	494	43
495	495	54
495	495	32
496	496	56
497	497	37
498	498	56
499	499	114
500	500	55
501	501	95
502	502	35
503	503	73
504	504	73
505	505	115
506	506	97
507	507	35
508	508	95
509	509	82
510	510	53
511	511	1
512	512	48
513	513	54
514	514	116
515	515	54
516	516	79
517	517	37
518	518	73
519	519	99
520	520	55
520	520	37
521	521	31
522	522	117
523	523	6
524	524	95
525	525	41
526	526	55
526	526	56
527	527	68
528	528	32
529	529	54
530	530	34
531	531	32
532	532	32
533	533	96
534	534	64
535	535	2
536	536	6
537	537	45
538	538	68
539	539	107
540	540	82
541	541	54
542	542	54
543	543	97
544	544	54
545	545	118
546	546	54
547	547	82
548	548	107
549	549	6
549	549	119
550	550	79
551	551	55
552	552	95
553	553	43
554	554	73
555	555	73
556	556	73
557	557	51
557	557	52
558	558	54
558	558	32
558	558	44
559	559	35
560	560	53
561	561	103
562	562	103
563	563	85
564	564	35
565	565	97
566	566	97
567	567	54
567	567	32
568	568	77
569	569	73
570	570	110
571	571	82
572	572	53
573	573	83
574	574	51
575	575	53
576	576	53
577	577	53
578	578	117
579	579	53
580	580	103
581	581	73
582	582	83
583	583	109
584	584	82
585	585	82
586	586	120
587	587	55
588	588	82
589	589	54
590	590	68
591	591	121
592	592	96
593	593	73
594	594	61
595	595	32
596	596	54
597	597	107
598	598	82
599	599	37
600	600	54
601	601	37
602	602	53
603	603	122
604	604	101
605	605	6
606	606	89
607	607	55
608	608	31
609	609	53
610	610	55
610	610	56
611	611	96
612	612	55
612	612	56
613	613	37
614	614	32
615	615	42
616	616	78
617	617	54
618	618	42
619	619	54
620	620	6
621	621	42
622	622	42
623	623	116
623	623	81
623	623	52
624	624	79
625	625	42
626	626	42
627	627	96
628	628	101
629	629	123
629	629	124
629	629	82
630	630	54
631	631	43
632	632	83
633	633	125
633	633	126
634	634	70
635	635	53
636	636	103
637	637	103
638	638	53
639	639	54
639	639	32
640	640	73
641	641	53
642	642	83
643	643	82
644	644	54
645	645	82
646	646	6
647	647	103
648	648	35
649	649	53
650	650	83
651	651	34
652	652	82
653	653	6
654	654	35
655	655	82
656	656	96
657	657	6
658	658	53
659	659	103
660	660	82
661	661	97
662	662	96
663	663	64
664	664	96
665	665	44
665	665	45
666	666	126
667	667	96
668	668	52
669	669	37
670	670	65
671	671	54
671	671	32
672	672	6
673	673	73
674	674	96
675	675	81
676	676	35
677	677	125
678	678	96
678	678	55
678	678	56
679	679	101
679	679	56
680	680	6
681	681	6
682	682	103
683	683	43
684	684	89
685	685	95
686	686	95
687	687	85
688	688	53
689	689	51
690	690	47
691	691	51
692	692	53
693	693	34
694	694	82
695	695	53
696	696	82
697	697	84
697	697	44
697	697	45
698	698	54
699	699	6
700	700	83
701	701	55
702	702	81
703	703	54
703	703	32
704	704	68
705	705	73
706	706	55
707	707	54
708	708	97
709	709	79
710	710	32
711	711	34
712	712	99
713	713	73
714	714	64
715	715	75
716	716	51
717	717	79
718	718	54
719	719	75
720	720	127
721	721	32
722	722	72
723	723	85
724	724	54
725	725	93
726	726	20
726	726	22
727	727	32
728	728	54
729	729	85
730	730	1
731	731	100
732	732	54
733	733	97
734	734	101
735	735	32
736	736	56
737	737	32
738	738	32
739	739	41
740	740	56
741	741	35
742	742	6
743	743	55
744	744	35
745	745	53
746	746	54
747	747	103
748	748	53
749	749	53
750	750	35
751	751	54
752	752	103
753	753	82
754	754	37
755	755	55
755	755	56
756	756	128
757	757	97
758	758	35
759	759	103
760	760	83
761	761	82
762	762	113
763	763	35
764	764	129
764	764	130
765	765	131
765	765	132
766	766	103
767	767	103
768	768	53
769	769	73
770	770	32
770	770	82
771	771	112
772	772	112
773	773	6
774	774	32
775	775	37
776	776	61
777	777	54
778	778	54
779	779	6
780	780	101
780	780	133
781	781	31
782	782	84
783	783	97
784	784	97
785	785	54
785	785	35
786	786	54
787	787	104
788	788	82
789	789	96
790	790	37
791	791	96
792	792	56
793	793	54
794	794	134
795	795	32
796	796	32
797	797	43
798	798	85
799	799	113
800	800	82
801	801	53
802	802	35
803	803	34
804	804	32
805	805	54
806	806	83
807	807	115
808	808	82
809	809	43
810	810	35
811	811	53
812	812	82
813	813	44
814	814	55
815	815	73
816	816	44
817	817	82
818	818	97
819	819	103
820	820	64
821	821	82
822	822	53
823	823	95
824	824	70
825	825	82
826	826	83
827	827	97
828	828	53
829	829	110
830	830	53
831	831	53
832	832	41
832	832	6
833	833	65
834	834	97
835	835	132
835	835	130
836	836	97
837	837	78
838	838	131
839	839	32
840	840	41
841	841	135
842	842	90
843	843	6
844	844	64
845	845	32
846	846	64
847	847	75
848	848	83
849	849	73
850	850	113
851	851	125
852	852	115
853	853	129
854	854	54
855	855	35
856	856	31
857	857	6
858	858	74
858	858	136
859	859	73
860	860	54
860	860	6
861	861	97
862	862	56
863	863	74
864	864	137
865	865	112
866	866	138
867	867	51
867	867	52
868	868	32
869	869	54
870	870	32
871	871	54
872	872	125
873	873	139
874	874	137
875	875	56
876	876	103
877	877	96
878	878	24
879	879	35
880	880	103
881	881	53
882	882	6
883	883	44
883	883	45
884	884	96
885	885	54
886	886	54
887	887	82
888	888	34
889	889	32
890	890	35
891	891	53
892	892	140
893	893	82
894	894	84
894	894	85
895	895	53
896	896	96
897	897	70
898	898	61
898	898	37
899	899	82
900	900	46
901	901	37
902	902	117
903	903	41
904	904	54
905	905	44
906	906	68
907	907	137
908	908	37
909	909	125
910	910	36
911	911	32
912	912	81
913	913	81
913	913	52
914	914	107
915	915	107
916	916	45
917	917	117
918	918	132
919	919	43
920	920	55
920	920	56
921	921	35
922	922	53
923	923	129
923	923	130
924	924	115
925	925	54
926	926	85
927	927	53
928	928	103
929	929	117
930	930	96
931	931	117
932	932	96
933	933	107
934	934	37
935	935	73
936	936	73
937	937	73
938	938	73
939	939	73
940	940	96
941	941	137
942	942	54
943	943	89
944	944	32
945	945	137
946	946	96
947	947	137
948	948	52
949	949	141
950	950	35
951	951	74
952	952	83
953	953	32
954	954	97
955	955	54
955	955	32
956	956	84
957	957	51
958	958	96
959	959	55
960	960	64
961	961	96
962	962	83
963	963	97
964	964	65
965	965	1
966	966	36
967	967	106
968	968	32
969	969	35
970	970	142
971	971	54
971	971	63
971	971	6
972	972	64
973	973	55
974	974	6
975	975	32
976	976	82
977	977	98
977	977	99
978	978	32
979	979	117
980	980	32
981	981	74
982	982	97
983	983	45
984	984	54
985	985	52
986	986	85
987	987	56
988	988	32
989	989	35
990	990	103
990	990	73
991	991	52
992	992	54
993	993	55
993	993	56
994	994	54
995	995	117
996	996	73
997	997	73
998	998	73
999	999	32
1000	1000	72
1001	1001	54
1002	1002	132
1003	1003	54
1003	1003	32
1004	1004	61
1005	1005	123
1006	1006	37
1007	1007	51
1008	1008	52
1009	1009	61
1010	1010	52
1011	1011	54
1012	1012	37
1013	1013	96
1014	1014	53
1015	1015	117
1016	1016	6
1017	1017	143
1018	1018	37
1019	1019	115
1020	1020	97
1021	1021	107
1022	1022	97
1023	1023	97
1024	1024	54
1025	1025	53
1026	1026	32
1026	1026	35
1027	1027	129
1028	1028	101
1028	1028	56
1029	1029	32
1029	1029	35
1030	1030	84
1031	1031	35
1032	1032	97
1033	1033	73
1034	1034	75
1035	1035	37
1036	1036	95
1037	1037	85
1038	1038	103
1039	1039	73
1040	1040	53
1041	1041	100
1042	1042	125
1043	1043	53
1044	1044	96
1045	1045	73
1046	1046	73
1047	1047	73
1048	1048	73
1049	1049	104
1050	1050	96
1051	1051	53
1052	1052	53
1053	1053	96
1054	1054	51
1055	1055	35
1056	1056	6
1057	1057	55
1058	1058	107
1059	1059	144
1060	1060	117
1061	1061	83
1062	1062	32
1063	1063	96
1064	1064	6
1065	1065	129
1066	1066	54
1066	1066	32
1067	1067	32
1068	1068	96
1069	1069	73
1070	1070	54
1071	1071	107
1072	1072	55
1073	1073	84
1074	1074	54
1075	1075	54
1076	1076	97
1077	1077	107
1078	1078	82
1079	1079	133
1080	1080	137
1081	1081	103
1082	1082	34
1083	1083	123
1084	1084	96
1085	1085	141
1086	1086	82
1087	1087	96
1088	1088	125
1089	1089	96
1090	1090	117
1091	1091	96
1092	1092	84
1093	1093	24
1094	1094	125
1095	1095	35
1096	1096	53
1097	1097	145
1098	1098	96
1099	1099	32
1100	1100	53
1101	1101	43
1102	1102	53
1103	1103	35
1104	1104	96
1105	1105	115
1106	1106	32
1107	1107	96
1108	1108	103
1109	1109	117
1110	1110	97
1111	1111	35
1112	1112	37
1113	1113	54
1114	1114	97
1115	1115	107
1116	1116	74
1116	1116	34
1116	1116	121
1117	1117	97
1118	1118	54
1119	1119	97
1120	1120	54
1121	1121	84
1122	1122	103
1123	1123	96
1124	1124	53
1125	1125	96
1126	1126	146
1127	1127	43
1128	1128	147
1129	1129	96
1130	1130	55
1131	1131	147
1132	1132	147
1133	1133	117
1134	1134	117
1135	1135	82
1136	1136	43
1137	1137	53
1138	1138	53
1139	1139	32
1140	1140	34
1141	1141	125
1142	1142	53
1143	1143	53
1144	1144	53
1145	1145	32
1146	1146	139
1147	1147	6
1148	1148	73
1149	1149	124
1150	1150	73
1151	1151	50
1151	1151	6
1152	1152	54
1153	1153	78
1154	1154	55
1154	1154	37
1155	1155	73
1156	1156	68
1157	1157	73
1158	1158	37
1159	1159	82
1160	1160	68
1160	1160	32
1161	1161	97
1162	1162	44
1163	1163	144
1164	1164	82
1165	1165	146
1166	1166	117
1167	1167	52
1168	1168	68
1169	1169	97
1170	1170	137
1171	1171	64
1172	1172	139
1173	1173	73
1174	1174	28
1175	1175	54
1176	1176	73
1177	1177	84
1177	1177	85
1178	1178	6
1179	1179	81
1180	1180	129
1181	1181	54
1182	1182	132
1183	1183	67
1184	1184	44
1185	1185	139
1186	1186	124
1187	1187	96
1188	1188	32
1189	1189	97
1190	1190	117
1191	1191	137
1192	1192	115
1193	1193	142
1193	1193	133
1194	1194	132
1195	1195	54
1196	1196	84
1196	1196	85
1197	1197	117
1198	1198	32
1199	1199	1
1200	1200	139
1201	1201	90
1202	1202	51
1202	1202	52
1203	1203	96
1204	1204	96
1205	1205	32
1206	1206	1
1207	1207	84
1207	1207	85
1208	1208	132
1209	1209	2
1210	1210	54
1211	1211	52
1212	1212	132
1213	1213	97
1214	1214	84
1214	1214	45
1215	1215	82
1216	1216	97
1217	1217	32
1218	1218	133
1219	1219	84
1220	1220	129
1221	1221	96
1222	1222	54
1222	1222	32
1223	1223	83
1224	1224	148
1225	1225	104
1226	1226	104
1227	1227	70
1228	1228	96
1229	1229	79
1230	1230	137
1231	1231	96
1232	1232	147
1233	1233	125
1234	1234	129
1234	1234	64
1235	1235	96
1236	1236	103
1237	1237	96
1238	1238	35
1239	1239	61
1240	1240	55
1241	1241	104
1242	1242	82
1243	1243	80
1244	1244	96
1245	1245	147
1246	1246	103
1247	1247	147
1248	1248	55
1249	1249	96
1250	1250	32
1251	1251	53
1252	1252	125
1253	1253	53
1254	1254	53
1255	1255	147
1256	1256	93
1257	1257	97
1258	1258	96
1259	1259	103
1259	1259	73
1260	1260	129
1261	1261	74
1261	1261	121
1262	1262	129
1263	1263	129
1264	1264	96
1265	1265	96
1266	1266	129
1267	1267	97
1268	1268	55
1269	1269	73
1270	1270	115
1271	1271	96
1272	1272	35
1273	1273	6
1274	1274	34
1274	1274	37
1275	1275	141
1276	1276	53
1277	1277	53
1278	1278	37
1279	1279	133
1280	1280	117
1281	1281	6
1282	1282	147
1283	1283	129
1283	1283	117
1284	1284	96
1285	1285	103
1286	1286	103
1287	1287	61
1288	1288	113
1289	1289	107
1290	1290	97
1291	1291	82
1292	1292	137
1293	1293	149
1294	1294	54
1295	1295	137
1296	1296	125
1297	1297	96
1298	1298	53
1299	1299	6
1300	1300	96
1301	1301	103
1302	1302	103
1303	1303	53
1304	1304	102
1305	1305	96
1306	1306	53
1307	1307	103
1308	1308	53
1309	1309	96
1310	1310	53
1311	1311	129
1311	1311	64
1312	1312	146
1313	1313	129
1314	1314	73
1315	1315	96
1316	1316	1
1317	1317	96
1318	1318	146
1319	1319	56
1320	1320	37
1321	1321	117
1322	1322	97
1323	1323	96
1324	1324	97
1325	1325	82
1326	1326	6
1327	1327	93
1328	1328	137
1329	1329	55
1330	1330	61
1331	1331	150
1332	1332	146
1333	1333	96
1334	1334	55
1335	1335	53
1336	1336	147
1337	1337	34
1338	1338	84
1339	1339	151
1340	1340	103
1341	1341	103
1342	1342	147
1343	1343	96
1344	1344	53
1345	1345	53
1346	1346	103
1347	1347	34
1348	1348	146
1349	1349	123
1350	1350	115
1351	1351	55
1352	1352	53
1353	1353	6
1354	1354	115
1355	1355	134
1356	1356	35
1357	1357	53
1358	1358	103
1359	1359	6
1360	1360	96
1361	1361	35
1362	1362	53
1363	1363	53
1364	1364	73
1365	1365	96
1366	1366	6
1367	1367	53
1368	1368	53
1369	1369	32
1370	1370	84
1371	1371	37
1372	1372	83
1373	1373	16
1374	1374	56
1375	1375	141
1376	1376	50
1377	1377	68
1378	1378	97
1379	1379	67
1379	1379	45
1380	1380	51
1381	1381	44
1382	1382	73
1383	1383	45
1384	1384	54
1385	1385	6
1386	1386	32
1386	1386	51
1387	1387	85
1388	1388	85
1389	1389	85
1390	1390	129
1391	1391	115
1392	1392	129
1393	1393	73
1394	1394	73
1395	1395	95
1396	1396	97
1397	1397	97
1398	1398	142
1399	1399	96
1400	1400	37
1401	1401	54
1402	1402	35
1403	1403	55
1404	1404	98
1404	1404	99
1405	1405	97
1406	1406	97
1407	1407	117
1408	1408	80
1409	1409	45
1410	1410	97
1411	1411	97
1412	1412	118
1413	1413	77
1414	1414	73
1415	1415	137
1416	1416	56
1417	1417	124
1417	1417	82
1418	1418	96
1419	1419	84
1420	1420	82
1421	1421	96
1422	1422	103
1422	1422	73
1423	1423	96
1424	1424	96
1425	1425	96
1426	1426	53
1427	1427	73
1428	1428	96
1429	1429	125
1430	1430	53
1431	1431	97
1432	1432	73
1433	1433	73
1434	1434	37
1435	1435	83
1436	1436	37
1437	1437	37
1438	1438	149
1439	1439	96
1440	1440	53
1441	1441	96
1442	1442	53
1443	1443	115
1444	1444	96
1445	1445	6
1446	1446	53
1447	1447	53
1448	1448	103
1449	1449	53
1450	1450	96
1451	1451	107
1452	1452	55
1453	1453	129
1454	1454	82
1455	1455	73
1456	1456	1
1457	1457	102
1457	1457	95
1458	1458	54
1459	1459	78
1460	1460	142
1461	1461	15
1461	1461	23
1462	1462	129
1463	1463	75
1463	1463	76
1464	1464	18
1465	1465	16
1466	1466	97
1467	1467	96
1468	1468	73
1469	1469	73
1470	1470	73
1471	1471	73
1472	1472	97
1473	1473	32
1474	1474	64
1475	1475	73
1476	1476	54
1477	1477	109
1478	1478	54
1479	1479	115
1480	1480	34
1481	1481	97
1482	1482	34
1482	1482	37
1483	1483	53
1484	1484	56
1485	1485	104
1486	1486	96
1487	1487	53
1488	1488	54
1489	1489	55
1490	1490	103
1490	1490	73
1491	1491	96
1492	1492	96
1493	1493	97
1494	1494	97
1495	1495	149
1496	1496	97
1497	1497	149
1498	1498	54
1498	1498	32
1499	1499	96
1500	1500	54
1500	1500	32
1501	1501	96
1502	1502	97
1503	1503	96
1504	1504	56
1505	1505	35
1506	1506	96
1507	1507	1
1508	1508	96
1509	1509	53
1510	1510	103
1511	1511	97
1512	1512	115
1513	1513	53
1514	1514	147
1515	1515	96
1516	1516	96
1517	1517	96
1518	1518	97
1519	1519	96
1520	1520	96
1521	1521	103
1521	1521	73
1522	1522	53
1523	1523	35
1524	1524	83
1525	1525	96
1526	1526	32
1527	1527	129
1528	1528	75
1529	1529	68
1530	1530	115
1531	1531	141
1532	1532	54
1533	1533	85
1534	1534	89
1535	1535	137
1536	1536	16
1537	1537	73
1538	1538	115
1539	1539	54
1540	1540	96
1541	1541	97
1542	1542	97
1543	1543	42
1543	1543	57
1544	1544	109
1545	1545	112
1545	1545	152
1546	1546	45
1547	1547	129
1548	1548	73
1549	1549	84
1550	1550	96
1551	1551	115
1552	1552	18
1552	1552	98
1552	1552	6
1553	1553	97
1554	1554	97
1555	1555	137
1556	1556	73
1557	1557	80
1558	1558	20
1559	1559	77
1560	1560	73
1561	1561	153
1562	1562	149
1563	1563	115
1564	1564	97
1565	1565	56
1566	1566	115
1567	1567	53
1568	1568	96
1569	1569	96
1570	1570	55
1571	1571	96
1572	1572	103
1573	1573	73
1574	1574	73
1575	1575	117
1576	1576	96
1577	1577	115
1578	1578	103
1579	1579	53
1580	1580	115
1581	1581	37
1582	1582	103
1583	1583	97
1584	1584	115
1585	1585	97
1586	1586	54
1587	1587	149
1588	1588	103
1589	1589	149
1590	1590	137
1591	1591	67
1592	1592	84
1592	1592	85
1593	1593	97
1594	1594	53
1595	1595	73
1596	1596	73
1597	1597	53
1598	1598	53
1599	1599	103
1600	1600	101
1601	1601	97
1602	1602	103
1603	1603	53
1604	1604	53
1605	1605	115
1606	1606	73
1607	1607	147
1608	1608	147
1609	1609	104
1610	1610	97
1611	1611	53
1612	1612	115
1613	1613	147
1614	1614	53
1615	1615	96
1616	1616	53
1617	1617	96
1618	1618	82
1619	1619	137
1620	1620	84
1621	1621	97
1622	1622	141
1623	1623	123
1624	1624	97
1625	1625	6
1626	1626	44
1627	1627	107
1628	1628	64
1629	1629	115
1630	1630	149
1631	1631	63
1632	1632	149
1633	1633	97
1634	1634	51
1635	1635	35
1636	1636	73
1637	1637	6
1638	1638	137
1639	1639	97
1640	1640	97
1641	1641	83
1642	1642	82
1643	1643	146
1644	1644	97
1645	1645	42
1646	1646	115
1647	1647	137
1648	1648	96
1649	1649	52
1650	1650	52
1651	1651	141
1652	1652	115
1653	1653	85
1654	1654	78
1655	1655	37
1656	1656	73
1657	1657	154
1658	1658	54
1659	1659	73
1660	1660	115
1661	1661	149
1662	1662	53
1663	1663	84
1664	1664	1
1665	1665	104
1666	1666	103
1667	1667	103
1668	1668	53
1669	1669	96
1670	1670	53
1671	1671	97
1672	1672	97
1673	1673	96
1674	1674	97
1675	1675	103
1675	1675	73
1676	1676	96
1677	1677	103
1678	1678	137
1679	1679	115
1680	1680	146
1681	1681	53
1682	1682	147
1683	1683	96
1684	1684	149
1685	1685	137
1686	1686	115
1687	1687	103
1688	1688	53
1689	1689	53
1690	1690	103
1691	1691	96
1692	1692	73
1693	1693	73
1694	1694	149
1695	1695	97
1696	1696	73
1697	1697	149
1698	1698	55
1699	1699	141
1700	1700	96
1701	1701	73
1702	1702	149
1703	1703	96
1704	1704	6
1705	1705	73
1706	1706	149
1707	1707	141
1708	1708	37
1709	1709	115
1710	1710	73
1711	1711	141
1712	1712	6
1713	1713	96
1714	1714	97
1715	1715	73
1716	1716	84
1716	1716	45
1717	1717	6
1718	1718	115
1719	1719	53
1720	1720	115
1721	1721	53
1722	1722	115
1723	1723	129
1724	1724	137
1725	1725	34
1726	1726	97
1727	1727	104
1728	1728	32
1729	1729	96
1730	1730	103
1730	1730	73
1731	1731	115
1732	1732	103
1732	1732	73
1733	1733	115
1734	1734	55
1735	1735	34
1736	1736	96
1737	1737	96
1738	1738	97
1739	1739	115
1740	1740	37
1741	1741	96
1742	1742	54
1743	1743	54
1744	1744	97
1745	1745	149
1746	1746	67
1747	1747	149
1748	1748	103
1749	1749	97
1750	1750	103
1751	1751	103
1752	1752	83
1753	1753	137
1754	1754	115
1755	1755	84
1755	1755	85
1756	1756	96
1757	1757	55
1758	1758	115
1759	1759	117
1760	1760	97
1761	1761	34
1762	1762	73
1763	1763	97
1764	1764	137
1765	1765	64
1766	1766	100
1767	1767	6
1768	1768	37
1769	1769	64
1770	1770	115
1771	1771	107
1772	1772	97
1773	1773	64
1774	1774	97
1775	1775	115
1776	1776	73
1777	1777	73
1778	1778	73
1779	1779	82
1780	1780	54
1781	1781	64
1782	1782	115
1783	1783	134
1784	1784	56
1785	1785	37
1786	1786	6
1787	1787	146
1788	1788	97
1789	1789	115
1790	1790	97
1791	1791	32
1792	1792	73
1793	1793	54
1794	1794	73
1795	1795	97
1796	1796	73
1797	1797	61
1798	1798	32
1799	1799	106
1800	1800	32
1801	1801	32
1802	1802	32
1803	1803	96
1804	1804	52
1805	1805	73
1806	1806	115
1807	1807	137
1808	1808	96
1809	1809	64
1810	1810	115
1811	1811	53
1812	1812	115
1813	1813	115
1814	1814	115
1815	1815	115
1816	1816	137
1817	1817	149
1818	1818	97
1819	1819	115
1820	1820	35
1821	1821	96
1822	1822	155
1823	1823	97
1824	1824	115
1825	1825	34
1826	1826	115
1827	1827	103
1828	1828	115
1829	1829	45
1830	1830	97
1831	1831	115
1832	1832	147
1833	1833	115
1834	1834	97
1835	1835	34
1836	1836	149
1837	1837	115
1838	1838	115
1839	1839	103
1840	1840	103
1841	1841	115
1842	1842	96
1843	1843	53
1844	1844	97
1845	1845	97
1846	1846	89
1847	1847	97
1848	1848	6
1849	1849	97
1850	1850	149
1851	1851	5
1852	1852	53
1853	1853	137
1854	1854	137
1855	1855	115
1856	1856	115
1857	1857	96
1858	1858	137
1859	1859	73
1860	1860	115
1861	1861	53
1862	1862	6
1863	1863	96
1864	1864	137
1865	1865	115
1866	1866	115
1867	1867	55
1868	1868	137
1869	1869	137
1870	1870	137
1871	1871	73
1872	1872	137
1873	1873	53
1874	1874	42
1875	1875	103
1876	1876	96
1877	1877	115
1878	1878	96
1879	1879	115
1880	1880	115
1881	1881	89
1882	1882	53
1883	1883	115
1884	1884	34
1885	1885	103
1886	1886	103
1887	1887	73
1888	1888	53
1889	1889	96
1890	1890	37
1891	1891	147
1892	1892	137
1893	1893	103
1894	1894	97
1895	1895	115
1896	1896	96
1897	1897	6
1898	1898	115
1899	1899	84
1900	1900	9
1901	1901	67
1901	1901	45
1902	1902	97
1903	1903	97
1904	1904	139
1905	1905	96
1906	1906	137
1907	1907	97
1908	1908	137
1909	1909	137
1910	1910	156
1911	1911	73
1912	1912	78
1913	1913	32
1914	1914	54
1915	1915	97
1916	1916	73
1917	1917	73
1918	1918	73
1919	1919	73
1920	1920	97
1921	1921	67
1921	1921	45
1922	1922	56
1923	1923	32
1924	1924	107
1925	1925	149
1926	1926	73
1927	1927	73
1928	1928	146
1929	1929	137
1930	1930	53
1931	1931	115
1932	1932	137
1933	1933	137
1934	1934	115
1935	1935	64
1936	1936	146
1937	1937	137
1938	1938	96
1938	1938	121
1939	1939	137
1940	1940	137
1941	1941	97
1942	1942	73
1943	1943	103
1944	1944	73
1945	1945	6
1946	1946	6
1947	1947	97
1948	1948	117
1949	1949	6
1950	1950	97
1951	1951	53
1952	1952	73
1953	1953	37
1954	1954	115
1955	1955	96
1956	1956	115
1957	1957	96
1958	1958	32
1959	1959	115
1960	1960	84
1961	1961	115
1962	1962	141
1963	1963	97
1964	1964	137
1965	1965	73
1966	1966	129
1967	1967	55
1968	1968	54
1969	1969	103
1970	1970	96
1971	1971	97
1972	1972	117
1973	1973	115
1974	1974	97
1975	1975	73
1976	1976	137
1977	1977	107
1978	1978	77
1979	1979	61
1980	1980	149
1981	1981	73
1982	1982	137
1983	1983	137
1984	1984	137
1985	1985	53
1986	1986	73
1987	1987	149
1988	1988	73
1989	1989	73
1990	1990	37
1991	1991	96
1992	1992	137
1993	1993	97
1994	1994	97
1995	1995	55
1996	1996	96
1997	1997	35
1998	1998	73
1999	1999	129
2000	2000	73
2001	2001	54
2002	2002	137
2003	2003	73
2004	2004	137
2005	2005	35
2006	2006	53
2007	2007	137
2008	2008	150
2009	2009	96
2010	2010	53
2011	2011	56
2012	2012	31
2013	2013	152
2014	2014	137
2015	2015	67
2016	2016	97
2017	2017	6
2018	2018	97
2019	2019	115
2020	2020	137
2021	2021	115
2022	2022	54
2023	2023	97
2024	2024	54
2024	2024	6
2025	2025	152
2026	2026	137
2027	2027	96
2028	2028	34
2029	2029	97
2030	2030	97
2031	2031	137
2032	2032	137
2033	2033	54
2034	2034	73
2035	2035	149
2036	2036	137
2037	2037	137
2038	2038	73
2039	2039	98
2039	2039	99
2040	2040	36
2041	2041	85
2042	2042	129
2042	2042	64
2043	2043	99
2044	2044	97
2045	2045	6
2046	2046	137
2047	2047	137
2048	2048	96
2049	2049	85
2050	2050	53
2051	2051	56
2052	2052	34
2053	2053	146
2054	2054	96
2055	2055	89
2056	2056	120
2057	2057	137
2058	2058	149
2059	2059	103
2060	2060	73
2061	2061	73
2062	2062	137
2063	2063	53
2064	2064	97
2065	2065	96
2066	2066	73
2067	2067	73
2068	2068	73
2069	2069	73
2070	2070	137
2071	2071	137
2072	2072	96
2073	2073	137
2074	2074	73
2075	2075	96
2076	2076	137
2077	2077	73
2078	2078	147
2079	2079	73
2080	2080	54
2081	2081	149
2082	2082	80
2083	2083	45
2084	2084	6
2085	2085	73
2086	2086	79
2087	2087	97
2088	2088	97
2089	2089	97
2090	2090	96
2091	2091	97
2092	2092	137
2093	2093	96
2094	2094	96
2095	2095	73
2096	2096	63
2097	2097	96
2098	2098	137
2099	2099	137
2100	2100	97
2101	2101	149
2102	2102	137
2103	2103	137
2104	2104	54
2105	2105	54
2106	2106	73
2107	2107	137
2108	2108	117
2109	2109	149
2110	2110	96
2111	2111	96
2111	2111	133
2112	2112	103
2113	2113	149
2114	2114	137
2115	2115	124
2116	2116	73
2117	2117	97
2118	2118	73
2119	2119	73
2120	2120	73
2121	2121	96
2122	2122	73
2123	2123	115
2124	2124	137
2125	2125	115
2126	2126	149
2127	2127	115
2128	2128	115
2129	2129	149
2130	2130	6
2131	2131	54
2132	2132	73
2133	2133	6
2134	2134	73
2135	2135	96
2136	2136	96
2137	2137	137
2138	2138	96
2139	2139	137
2140	2140	137
2141	2141	137
2142	2142	61
2142	2142	37
2143	2143	83
2144	2144	96
2145	2145	149
2146	2146	53
2147	2147	129
2148	2148	37
2149	2149	35
2150	2150	137
2151	2151	37
2152	2152	155
2153	2153	96
2154	2154	73
2155	2155	115
2156	2156	96
2157	2157	96
2158	2158	137
2159	2159	73
2160	2160	10
2161	2161	73
2162	2162	155
2163	2163	137
2164	2164	73
2165	2165	115
2166	2166	6
2167	2167	54
2168	2168	149
2169	2169	6
2170	2170	96
2171	2171	137
2172	2172	137
2173	2173	32
2174	2174	96
2175	2175	73
2176	2176	85
2177	2177	141
2178	2178	34
2179	2179	96
2180	2180	73
2181	2181	96
2182	2182	97
2183	2183	73
2184	2184	73
2185	2185	54
2186	2186	97
2187	2187	149
2188	2188	149
2189	2189	149
2190	2190	129
2191	2191	137
2192	2192	149
2193	2193	149
2194	2194	149
2195	2195	96
2196	2196	34
2197	2197	37
2198	2198	149
2199	2199	6
2200	2200	53
2201	2201	149
2202	2202	146
2203	2203	137
2204	2204	73
2205	2205	97
2206	2206	73
2207	2207	137
2208	2208	115
2209	2209	97
2210	2210	129
2211	2211	115
2212	2212	137
2213	2213	97
2214	2214	146
2215	2215	74
2216	2216	55
2217	2217	137
2218	2218	137
2219	2219	53
2220	2220	129
2221	2221	129
2222	2222	34
2223	2223	73
2224	2224	73
2225	2225	73
2226	2226	73
2227	2227	73
2228	2228	73
2229	2229	117
2230	2230	73
2231	2231	73
2232	2232	96
2233	2233	73
2234	2234	73
2235	2235	73
2236	2236	73
2237	2237	149
2238	2238	37
2239	2239	96
2240	2240	96
2241	2241	96
2242	2242	34
2243	2243	137
2244	2244	137
2245	2245	96
2246	2246	73
2247	2247	96
2248	2248	137
2249	2249	96
2250	2250	149
2251	2251	64
2252	2252	73
2253	2253	73
2254	2254	96
2255	2255	96
2256	2256	96
2257	2257	64
2258	2258	73
2259	2259	137
2260	2260	37
2261	2261	137
2262	2262	96
2263	2263	96
2264	2264	129
2265	2265	129
2266	2266	74
2267	2267	97
2268	2268	96
2269	2269	96
2270	2270	115
2271	2271	115
2272	2272	73
2273	2273	54
2274	2274	56
2275	2275	37
2276	2276	55
2277	2277	73
2278	2278	34
2279	2279	149
2280	2280	73
2281	2281	36
2282	2282	115
2283	2283	155
2284	2284	79
2285	2285	32
2286	2286	6
2287	2287	6
2288	2288	6
2289	2289	24
2290	2290	96
2291	2291	61
2292	2292	32
2293	2293	73
2294	2294	149
2295	2295	34
2296	2296	73
2297	2297	96
2298	2298	115
2299	2299	6
2300	2300	6
2301	2301	141
2302	2302	74
2302	2302	34
2302	2302	36
2303	2303	73
2304	2304	54
2305	2305	137
2306	2306	112
2307	2307	112
2308	2308	73
2309	2309	57
2310	2310	54
2311	2311	82
2312	2312	117
2313	2313	82
2314	2314	115
2315	2315	82
2316	2316	83
2316	2316	157
2317	2317	77
2318	2318	155
2319	2319	28
2320	2320	73
2321	2321	73
2322	2322	73
2323	2323	73
2324	2324	32
2325	2325	37
2326	2326	108
2327	2327	73
2328	2328	37
2329	2329	21
2330	2330	73
2331	2331	16
2332	2332	104
2333	2333	137
2334	2334	137
2335	2335	141
2336	2336	70
2337	2337	146
2338	2338	129
2339	2339	137
2340	2340	35
2341	2341	73
2342	2342	6
2343	2343	73
2344	2344	73
2345	2345	82
2346	2346	78
2347	2347	144
2348	2348	73
2349	2349	137
2350	2350	83
2351	2351	77
2352	2352	83
2353	2353	115
2354	2354	129
2355	2355	10
2356	2356	48
2357	2357	82
2358	2358	146
2359	2359	74
2360	2360	35
2361	2361	73
2362	2362	54
2363	2363	82
2364	2364	117
2365	2365	44
2366	2366	96
2367	2367	97
2368	2368	73
2369	2369	149
2370	2370	73
2371	2371	158
2372	2372	73
2373	2373	34
2374	2374	100
2375	2375	6
2376	2376	6
2377	2377	115
2378	2378	73
2379	2379	10
2380	2380	115
2381	2381	6
2382	2382	141
2383	2383	73
2384	2384	97
2385	2385	146
2386	2386	140
2387	2387	18
2388	2388	107
2389	2389	6
2390	2390	54
2391	2391	35
2392	2392	41
2393	2393	78
2394	2394	73
2395	2395	73
2396	2396	78
2397	2397	6
2398	2398	96
2399	2399	8
2400	2400	54
2401	2401	137
2402	2402	79
2403	2403	140
2404	2404	140
2405	2405	54
2406	2406	146
2407	2407	35
2408	2408	154
2408	2408	80
2409	2409	124
2410	2410	97
2411	2411	73
2412	2412	42
2413	2413	57
2414	2414	57
2415	2415	35
2416	2416	78
2417	2417	73
2418	2418	115
2419	2419	96
2420	2420	44
2421	2421	97
2422	2422	149
2423	2423	137
2424	2424	77
2425	2425	6
2426	2426	73
2427	2427	73
2428	2428	73
2429	2429	96
2430	2430	96
2431	2431	59
2432	2432	28
2433	2433	152
2434	2434	37
2435	2435	97
2436	2436	73
2437	2437	48
2438	2438	115
2439	2439	96
2440	2440	129
2441	2441	97
2442	2442	106
2443	2443	73
2444	2444	73
2445	2445	137
2446	2446	129
2447	2447	97
2448	2448	73
2449	2449	73
2450	2450	24
2451	2451	73
2452	2452	96
2453	2453	68
2454	2454	106
2455	2455	73
2456	2456	64
2457	2457	6
2458	2458	6
2459	2459	96
2460	2460	74
2461	2461	54
2462	2462	55
2463	2463	107
2464	2464	97
2465	2465	37
2466	2466	54
2467	2467	103
2468	2468	45
2469	2469	55
2470	2470	97
2471	2471	2
2472	2472	6
2473	2473	73
2474	2474	44
2475	2475	73
2476	2476	73
2477	2477	83
2478	2478	32
2479	2479	100
2480	2480	152
2481	2481	118
2482	2482	32
2483	2483	73
2484	2484	107
2485	2485	6
2486	2486	106
2487	2487	54
2488	2488	147
2489	2489	73
2490	2490	5
2491	2491	73
2492	2492	6
2493	2493	6
2494	2494	6
2495	2495	6
2496	2496	77
2497	2497	44
2498	2498	97
2499	2499	54
2500	2500	97
2501	2501	61
2502	2502	73
2503	2503	82
2504	2504	144
2505	2505	96
2506	2506	103
2507	2507	73
2508	2508	73
2509	2509	73
2510	2510	6
2511	2511	28
2512	2512	96
2513	2513	73
2514	2514	73
2515	2515	115
2516	2516	96
2517	2517	73
2518	2518	74
2519	2519	56
2520	2520	137
2521	2521	73
2522	2522	6
2523	2523	73
2524	2524	96
2525	2525	78
2526	2526	37
2527	2527	137
2528	2528	115
2529	2529	91
2530	2530	6
2531	2531	73
2532	2532	6
2533	2533	96
2534	2534	64
2535	2535	155
2536	2536	155
2537	2537	155
2538	2538	155
2539	2539	155
2540	2540	32
2541	2541	121
2542	2542	79
2543	2543	133
2544	2544	2
2544	2544	13
2544	2544	19
2544	2544	1
2544	2544	159
2544	2544	11
2545	2545	120
2546	2546	54
2546	2546	84
2546	2546	44
2546	2546	45
2547	2547	44
2548	2548	19
2549	2549	32
2549	2549	51
2550	2550	6
2551	2551	56
2552	2552	2
2552	2552	13
2552	2552	21
2552	2552	1
2552	2552	11
2552	2552	27
2553	2553	80
2554	2554	32
2555	2555	101
2556	2556	32
2557	2557	67
2557	2557	84
2557	2557	85
2558	2558	103
2559	2559	19
2560	2560	55
2561	2561	20
2562	2562	55
2563	2563	34
2564	2564	103
2565	2565	116
2565	2565	81
2565	2565	52
2566	2566	33
2566	2566	19
2567	2567	53
2568	2568	73
2569	2569	73
2570	2570	67
2571	2571	20
2572	2572	24
2573	2573	10
2574	2574	55
2575	2575	108
2575	2575	31
2575	2575	58
2575	2575	66
2575	2575	65
2575	2575	160
2575	2575	59
2576	2576	2
2576	2576	27
2577	2577	6
2578	2578	44
2579	2579	6
2580	2580	6
2581	2581	6
2582	2582	6
2583	2583	63
2583	2583	6
2584	2584	100
2585	2585	19
2585	2585	11
2586	2586	15
2587	2587	20
2587	2587	22
2587	2587	28
2588	2588	54
2589	2589	26
2590	2590	121
2591	2591	103
2592	2592	50
2592	2592	6
2593	2593	28
2594	2594	42
2595	2595	103
2596	2596	32
2596	2596	51
2597	2597	107
2598	2598	97
2599	2599	161
2600	2600	55
2601	2601	12
2601	2601	72
2601	2601	14
2601	2601	15
2601	2601	16
2601	2601	20
2601	2601	22
2601	2601	100
2601	2601	23
2601	2601	28
2601	2601	29
2602	2602	31
2603	2603	137
2604	2604	107
2605	2605	107
2606	2606	32
2607	2607	6
2608	2608	32
2609	2609	67
2610	2610	67
2611	2611	67
2612	2612	67
2613	2613	120
2614	2614	103
2615	2615	32
2616	2616	121
2617	2617	8
2618	2618	33
2618	2618	19
2619	2619	45
2620	2620	55
2621	2621	55
2622	2622	121
2623	2623	32
2624	2624	24
2625	2625	101
2626	2626	107
2627	2627	103
2628	2628	55
2629	2629	120
2630	2630	73
2631	2631	103
2632	2632	73
2633	2633	103
2634	2634	103
2635	2635	103
2636	2636	103
2637	2637	84
2638	2638	77
2639	2639	55
2640	2640	73
2641	2641	121
2642	2642	6
2643	2643	10
2644	2644	23
2645	2645	55
2646	2646	19
2647	2647	6
2648	2648	103
2648	2648	73
2649	2649	53
2650	2650	55
2651	2651	120
2652	2652	103
2652	2652	73
2653	2653	103
2653	2653	73
2654	2654	32
2655	2655	44
2656	2656	44
2657	2657	70
2658	2658	52
2659	2659	97
2660	2660	67
2661	2661	19
2662	2662	103
2663	2663	32
2663	2663	51
2664	2664	73
2665	2665	77
2666	2666	34
2667	2667	2
2667	2667	19
2668	2668	44
2669	2669	103
2670	2670	44
2671	2671	67
2672	2672	55
2673	2673	121
2674	2674	3
2674	2674	99
2675	2675	103
2676	2676	6
2677	2677	133
2678	2678	55
2679	2679	67
2680	2680	78
2681	2681	2
2681	2681	3
2682	2682	73
2683	2683	32
2683	2683	51
2684	2684	103
2685	2685	67
2686	2686	34
2687	2687	103
2688	2688	44
2689	2689	55
2690	2690	74
2690	2690	34
2690	2690	121
2691	2691	55
2692	2692	101
2693	2693	72
2694	2694	41
2695	2695	42
2696	2696	55
2697	2697	6
2698	2698	67
2699	2699	121
2700	2700	32
2701	2701	72
2702	2702	55
2703	2703	31
2704	2704	103
2705	2705	55
2706	2706	50
2707	2707	73
2708	2708	103
2709	2709	50
2709	2709	6
2709	2709	10
2710	2710	44
2711	2711	55
2712	2712	103
2713	2713	73
2714	2714	74
2714	2714	34
2715	2715	120
2716	2716	6
2717	2717	2
2717	2717	13
2717	2717	7
2717	2717	33
2717	2717	3
2717	2717	17
2717	2717	18
2717	2717	19
2717	2717	21
2717	2717	1
2717	2717	8
2717	2717	9
2717	2717	49
2717	2717	69
2717	2717	98
2717	2717	4
2717	2717	5
2717	2717	23
2717	2717	24
2717	2717	6
2717	2717	25
2717	2717	99
2717	2717	11
2717	2717	27
2717	2717	10
2718	2718	120
2719	2719	55
2720	2720	55
2721	2721	32
2721	2721	51
2722	2722	75
1	1	1
2	2	1
3	3	2
3	3	3
3	3	4
3	3	5
3	3	6
4	4	7
4	4	8
4	4	9
4	4	5
4	4	6
4	4	10
5	5	1
5	5	11
6	6	12
6	6	2
6	6	13
6	6	7
6	6	14
6	6	15
6	6	16
6	6	17
6	6	18
6	6	19
6	6	20
6	6	21
6	6	1
6	6	8
6	6	9
6	6	22
6	6	4
6	6	5
6	6	23
6	6	24
6	6	6
6	6	25
6	6	26
6	6	11
6	6	27
6	6	28
6	6	10
6	6	29
6	6	30
7	7	31
8	8	32
9	9	2
9	9	33
9	9	4
10	10	34
11	11	32
11	11	35
12	12	34
12	12	36
12	12	37
13	13	1
13	13	38
14	14	1
15	15	16
15	15	1
15	15	26
16	16	28
17	17	32
18	18	39
19	19	32
20	20	32
21	21	24
22	22	12
22	22	15
22	22	22
22	22	23
22	22	29
23	23	33
23	23	19
23	23	4
24	24	6
25	25	6
26	26	6
27	27	32
28	28	32
28	28	35
29	29	37
30	30	25
30	30	10
31	31	19
31	31	1
31	31	40
32	32	21
32	32	5
32	32	23
32	32	25
32	32	10
33	33	41
33	33	42
34	34	32
35	35	32
36	36	32
37	37	1
38	38	43
39	39	37
40	40	35
41	41	44
41	41	45
42	42	7
42	42	5
42	42	10
43	43	46
44	44	6
45	45	32
46	46	24
47	47	32
47	47	35
48	48	43
49	49	33
49	49	19
50	50	47
50	50	32
51	51	48
51	51	19
52	52	6
52	52	28
53	53	32
54	54	1
55	55	37
56	56	33
56	56	19
56	56	49
57	57	32
58	58	50
58	58	6
59	59	32
60	60	6
61	61	12
61	61	15
61	61	20
61	61	22
61	61	29
62	62	42
62	62	51
62	62	52
63	63	19
64	64	41
64	64	6
65	65	32
66	66	35
67	67	43
68	68	6
69	69	53
70	70	6
71	71	6
72	72	43
73	73	32
74	74	6
75	75	6
76	76	6
77	77	32
78	78	31
79	79	54
80	80	19
81	81	1
82	82	36
83	83	53
84	84	2
84	84	33
84	84	19
84	84	49
85	85	35
86	86	54
87	87	50
88	88	4
89	89	35
90	90	55
90	90	56
91	91	6
92	92	57
92	92	31
92	92	58
92	92	22
92	92	6
92	92	59
92	92	28
93	93	6
94	94	32
95	95	32
96	96	32
96	96	35
97	97	31
98	98	10
99	99	60
99	99	50
99	99	20
99	99	6
99	99	28
99	99	10
100	100	61
101	101	54
102	102	54
102	102	62
102	102	63
103	103	32
104	104	64
105	105	19
106	106	48
106	106	19
107	107	54
108	108	32
109	109	32
110	110	32
111	111	54
111	111	63
111	111	6
112	112	65
113	113	60
113	113	42
113	113	57
113	113	59
113	113	28
114	114	32
115	115	51
116	116	51
117	117	6
118	118	19
118	118	1
119	119	19
120	120	64
121	121	32
122	122	32
123	123	42
124	124	32
125	125	6
126	126	57
126	126	66
126	126	59
127	127	67
128	128	68
128	128	54
128	128	32
129	129	32
130	130	69
130	130	10
131	131	32
132	132	54
132	132	32
133	133	32
134	134	32
135	135	70
136	136	32
137	137	19
137	137	1
138	138	68
139	139	6
140	140	6
141	141	48
141	141	71
142	142	8
142	142	6
143	143	19
144	144	32
145	145	72
146	146	54
146	146	32
146	146	35
147	147	32
148	148	43
149	149	32
150	150	32
151	151	50
151	151	28
152	152	6
153	153	32
154	154	50
154	154	6
154	154	28
155	155	32
156	156	32
157	157	73
158	158	1
159	159	72
160	160	32
161	161	53
162	162	32
163	163	32
164	164	54
164	164	32
165	165	54
166	166	32
167	167	53
168	168	10
169	169	54
170	170	19
170	170	1
170	170	11
171	171	1
172	172	74
173	173	75
173	173	76
174	174	77
175	175	54
176	176	34
177	177	78
177	177	79
178	178	80
179	179	55
180	180	32
181	181	81
181	181	52
182	182	6
183	183	43
184	184	32
185	185	6
186	186	82
187	187	61
188	188	53
189	189	53
190	190	51
191	191	53
192	192	32
193	193	32
194	194	43
195	195	43
196	196	83
197	197	32
198	198	1
199	199	42
200	200	55
201	201	74
202	202	50
203	203	84
203	203	85
204	204	72
205	205	76
206	206	54
206	206	51
206	206	81
206	206	52
207	207	47
207	207	32
208	208	82
209	209	86
210	210	84
211	211	32
211	211	51
212	212	32
213	213	1
214	214	47
215	215	43
216	216	87
217	217	37
218	218	32
219	219	70
220	220	32
221	221	32
222	222	32
223	223	88
224	224	54
225	225	51
226	226	43
227	227	32
228	228	24
229	229	53
230	230	89
231	231	5
232	232	6
233	233	32
234	234	20
235	235	6
236	236	54
236	236	63
237	237	68
237	237	54
237	237	32
238	238	85
239	239	32
240	240	54
241	241	32
242	242	61
243	243	76
244	244	6
245	245	23
246	246	59
246	246	28
247	247	17
247	247	6
248	248	90
249	249	28
250	250	79
251	251	72
252	252	53
253	253	32
254	254	32
255	255	54
256	256	85
257	257	54
258	258	82
259	259	61
260	260	35
261	261	91
261	261	24
262	262	64
263	263	53
264	264	92
265	265	93
266	266	42
267	267	94
267	267	62
268	268	32
269	269	95
270	270	35
271	271	74
271	271	34
272	272	32
273	273	68
274	274	82
275	275	32
276	276	44
277	277	45
278	278	37
279	279	61
280	280	32
281	281	39
282	282	37
283	283	32
284	284	82
285	285	84
286	286	53
287	287	32
288	288	6
289	289	35
290	290	53
291	291	54
292	292	43
293	293	53
294	294	11
295	295	32
296	296	32
297	297	32
298	298	61
299	299	96
299	299	55
299	299	37
300	300	37
301	301	55
301	301	56
302	302	43
303	303	32
304	304	32
305	305	53
306	306	35
307	307	32
308	308	53
309	309	97
310	310	35
311	311	32
312	312	6
312	312	28
313	313	32
314	314	54
315	315	97
316	316	68
317	317	13
317	317	21
317	317	25
318	318	42
319	319	31
320	320	35
321	321	1
322	322	68
322	322	32
322	322	35
323	323	54
324	324	44
324	324	45
325	325	82
326	326	54
327	327	18
327	327	98
327	327	6
327	327	99
328	328	37
329	329	61
330	330	81
330	330	52
331	331	32
332	332	97
333	333	72
334	334	74
335	335	6
336	336	16
336	336	29
337	337	54
338	338	6
339	339	41
339	339	6
340	340	51
341	341	32
342	342	35
343	343	53
344	344	35
345	345	32
346	346	53
347	347	53
348	348	54
349	349	53
350	350	35
351	351	95
352	352	32
353	353	23
353	353	29
354	354	23
355	355	32
356	356	54
357	357	80
358	358	18
358	358	6
359	359	84
359	359	45
360	360	73
361	361	100
362	362	41
362	362	6
363	363	101
363	363	56
364	364	35
365	365	54
366	366	6
367	367	55
368	368	32
369	369	42
369	369	57
370	370	32
371	371	32
372	372	70
373	373	102
374	374	32
375	375	32
376	376	64
377	377	54
378	378	82
379	379	42
380	380	42
381	381	42
382	382	103
383	383	53
384	384	53
385	385	53
386	386	54
387	387	32
388	388	45
389	389	68
390	390	15
390	390	23
391	391	35
392	392	1
393	393	96
394	394	18
394	394	6
395	395	32
396	396	32
397	397	10
398	398	32
399	399	101
399	399	56
400	400	72
401	401	54
402	402	59
403	403	81
404	404	44
405	405	104
406	406	105
407	407	2
408	408	32
409	409	32
410	410	96
411	411	51
411	411	52
412	412	35
413	413	96
414	414	53
415	415	42
416	416	95
417	417	95
418	418	32
419	419	65
420	420	103
421	421	32
422	422	83
423	423	32
424	424	37
425	425	106
426	426	6
427	427	54
428	428	85
429	429	42
430	430	68
431	431	54
432	432	32
433	433	64
434	434	35
435	435	54
436	436	84
437	437	83
438	438	54
439	439	45
440	440	96
441	441	32
442	442	54
443	443	45
444	444	73
445	445	73
446	446	54
447	447	54
448	448	107
449	449	82
450	450	108
451	451	72
452	452	72
453	453	97
454	454	55
455	455	35
456	456	32
457	457	109
458	458	82
459	459	110
460	460	35
461	461	47
461	461	32
462	462	96
463	463	111
464	464	97
465	465	95
466	466	96
467	467	97
468	468	32
469	469	112
470	470	82
471	471	82
472	472	53
473	473	110
474	474	82
475	475	53
476	476	112
477	477	97
478	478	32
479	479	6
480	480	85
481	481	32
482	482	54
483	483	54
484	484	54
485	485	97
486	486	97
487	487	6
488	488	53
489	489	43
490	490	53
491	491	53
492	492	83
492	492	82
493	493	113
494	494	43
495	495	54
495	495	32
496	496	56
497	497	37
498	498	56
499	499	114
500	500	55
501	501	95
502	502	35
503	503	73
504	504	73
505	505	115
506	506	97
507	507	35
508	508	95
509	509	82
510	510	53
511	511	1
512	512	48
513	513	54
514	514	116
515	515	54
516	516	79
517	517	37
518	518	73
519	519	99
520	520	55
520	520	37
521	521	31
522	522	117
523	523	6
524	524	95
525	525	41
526	526	55
526	526	56
527	527	68
528	528	32
529	529	54
530	530	34
531	531	32
532	532	32
533	533	96
534	534	64
535	535	2
536	536	6
537	537	45
538	538	68
539	539	107
540	540	82
541	541	54
542	542	54
543	543	97
544	544	54
545	545	118
546	546	54
547	547	82
548	548	107
549	549	6
549	549	119
550	550	79
551	551	55
552	552	95
553	553	43
554	554	73
555	555	73
556	556	73
557	557	51
557	557	52
558	558	54
558	558	32
558	558	44
559	559	35
560	560	53
561	561	103
562	562	103
563	563	85
564	564	35
565	565	97
566	566	97
567	567	54
567	567	32
568	568	77
569	569	73
570	570	110
571	571	82
572	572	53
573	573	83
574	574	51
575	575	53
576	576	53
577	577	53
578	578	117
579	579	53
580	580	103
581	581	73
582	582	83
583	583	109
584	584	82
585	585	82
586	586	120
587	587	55
588	588	82
589	589	54
590	590	68
591	591	121
592	592	96
593	593	73
594	594	61
595	595	32
596	596	54
597	597	107
598	598	82
599	599	37
600	600	54
601	601	37
602	602	53
603	603	122
604	604	101
605	605	6
606	606	89
607	607	55
608	608	31
609	609	53
610	610	55
610	610	56
611	611	96
612	612	55
612	612	56
613	613	37
614	614	32
615	615	42
616	616	78
617	617	54
618	618	42
619	619	54
620	620	6
621	621	42
622	622	42
623	623	116
623	623	81
623	623	52
624	624	79
625	625	42
626	626	42
627	627	96
628	628	101
629	629	123
629	629	124
629	629	82
630	630	54
631	631	43
632	632	83
633	633	125
633	633	126
634	634	70
635	635	53
636	636	103
637	637	103
638	638	53
639	639	54
639	639	32
640	640	73
641	641	53
642	642	83
643	643	82
644	644	54
645	645	82
646	646	6
647	647	103
648	648	35
649	649	53
650	650	83
651	651	34
652	652	82
653	653	6
654	654	35
655	655	82
656	656	96
657	657	6
658	658	53
659	659	103
660	660	82
661	661	97
662	662	96
663	663	64
664	664	96
665	665	44
665	665	45
666	666	126
667	667	96
668	668	52
669	669	37
670	670	65
671	671	54
671	671	32
672	672	6
673	673	73
674	674	96
675	675	81
676	676	35
677	677	125
678	678	96
678	678	55
678	678	56
679	679	101
679	679	56
680	680	6
681	681	6
682	682	103
683	683	43
684	684	89
685	685	95
686	686	95
687	687	85
688	688	53
689	689	51
690	690	47
691	691	51
692	692	53
693	693	34
694	694	82
695	695	53
696	696	82
697	697	84
697	697	44
697	697	45
698	698	54
699	699	6
700	700	83
701	701	55
702	702	81
703	703	54
703	703	32
704	704	68
705	705	73
706	706	55
707	707	54
708	708	97
709	709	79
710	710	32
711	711	34
712	712	99
713	713	73
714	714	64
715	715	75
716	716	51
717	717	79
718	718	54
719	719	75
720	720	127
721	721	32
722	722	72
723	723	85
724	724	54
725	725	93
726	726	20
726	726	22
727	727	32
728	728	54
729	729	85
730	730	1
731	731	100
732	732	54
733	733	97
734	734	101
735	735	32
736	736	56
737	737	32
738	738	32
739	739	41
740	740	56
741	741	35
742	742	6
743	743	55
744	744	35
745	745	53
746	746	54
747	747	103
748	748	53
749	749	53
750	750	35
751	751	54
752	752	103
753	753	82
754	754	37
755	755	55
755	755	56
756	756	128
757	757	97
758	758	35
759	759	103
760	760	83
761	761	82
762	762	113
763	763	35
764	764	129
764	764	130
765	765	131
765	765	132
766	766	103
767	767	103
768	768	53
769	769	73
770	770	32
770	770	82
771	771	112
772	772	112
773	773	6
774	774	32
775	775	37
776	776	61
777	777	54
778	778	54
779	779	6
780	780	101
780	780	133
781	781	31
782	782	84
783	783	97
784	784	97
785	785	54
785	785	35
786	786	54
787	787	104
788	788	82
789	789	96
790	790	37
791	791	96
792	792	56
793	793	54
794	794	134
795	795	32
796	796	32
797	797	43
798	798	85
799	799	113
800	800	82
801	801	53
802	802	35
803	803	34
804	804	32
805	805	54
806	806	83
807	807	115
808	808	82
809	809	43
810	810	35
811	811	53
812	812	82
813	813	44
814	814	55
815	815	73
816	816	44
817	817	82
818	818	97
819	819	103
820	820	64
821	821	82
822	822	53
823	823	95
824	824	70
825	825	82
826	826	83
827	827	97
828	828	53
829	829	110
830	830	53
831	831	53
832	832	41
832	832	6
833	833	65
834	834	97
835	835	132
835	835	130
836	836	97
837	837	78
838	838	131
839	839	32
840	840	41
841	841	135
842	842	90
843	843	6
844	844	64
845	845	32
846	846	64
847	847	75
848	848	83
849	849	73
850	850	113
851	851	125
852	852	115
853	853	129
854	854	54
855	855	35
856	856	31
857	857	6
858	858	74
858	858	136
859	859	73
860	860	54
860	860	6
861	861	97
862	862	56
863	863	74
864	864	137
865	865	112
866	866	138
867	867	51
867	867	52
868	868	32
869	869	54
870	870	32
871	871	54
872	872	125
873	873	139
874	874	137
875	875	56
876	876	103
877	877	96
878	878	24
879	879	35
880	880	103
881	881	53
882	882	6
883	883	44
883	883	45
884	884	96
885	885	54
886	886	54
887	887	82
888	888	34
889	889	32
890	890	35
891	891	53
892	892	140
893	893	82
894	894	84
894	894	85
895	895	53
896	896	96
897	897	70
898	898	61
898	898	37
899	899	82
900	900	46
901	901	37
902	902	117
903	903	41
904	904	54
905	905	44
906	906	68
907	907	137
908	908	37
909	909	125
910	910	36
911	911	32
912	912	81
913	913	81
913	913	52
914	914	107
915	915	107
916	916	45
917	917	117
918	918	132
919	919	43
920	920	55
920	920	56
921	921	35
922	922	53
923	923	129
923	923	130
924	924	115
925	925	54
926	926	85
927	927	53
928	928	103
929	929	117
930	930	96
931	931	117
932	932	96
933	933	107
934	934	37
935	935	73
936	936	73
937	937	73
938	938	73
939	939	73
940	940	96
941	941	137
942	942	54
943	943	89
944	944	32
945	945	137
946	946	96
947	947	137
948	948	52
949	949	141
950	950	35
951	951	74
952	952	83
953	953	32
954	954	97
955	955	54
955	955	32
956	956	84
957	957	51
958	958	96
959	959	55
960	960	64
961	961	96
962	962	83
963	963	97
964	964	65
965	965	1
966	966	36
967	967	106
968	968	32
969	969	35
970	970	142
971	971	54
971	971	63
971	971	6
972	972	64
973	973	55
974	974	6
975	975	32
976	976	82
977	977	98
977	977	99
978	978	32
979	979	117
980	980	32
981	981	74
982	982	97
983	983	45
984	984	54
985	985	52
986	986	85
987	987	56
988	988	32
989	989	35
990	990	103
990	990	73
991	991	52
992	992	54
993	993	55
993	993	56
994	994	54
995	995	117
996	996	73
997	997	73
998	998	73
999	999	32
1000	1000	72
1001	1001	54
1002	1002	132
1003	1003	54
1003	1003	32
1004	1004	61
1005	1005	123
1006	1006	37
1007	1007	51
1008	1008	52
1009	1009	61
1010	1010	52
1011	1011	54
1012	1012	37
1013	1013	96
1014	1014	53
1015	1015	117
1016	1016	6
1017	1017	143
1018	1018	37
1019	1019	115
1020	1020	97
1021	1021	107
1022	1022	97
1023	1023	97
1024	1024	54
1025	1025	53
1026	1026	32
1026	1026	35
1027	1027	129
1028	1028	101
1028	1028	56
1029	1029	32
1029	1029	35
1030	1030	84
1031	1031	35
1032	1032	97
1033	1033	73
1034	1034	75
1035	1035	37
1036	1036	95
1037	1037	85
1038	1038	103
1039	1039	73
1040	1040	53
1041	1041	100
1042	1042	125
1043	1043	53
1044	1044	96
1045	1045	73
1046	1046	73
1047	1047	73
1048	1048	73
1049	1049	104
1050	1050	96
1051	1051	53
1052	1052	53
1053	1053	96
1054	1054	51
1055	1055	35
1056	1056	6
1057	1057	55
1058	1058	107
1059	1059	144
1060	1060	117
1061	1061	83
1062	1062	32
1063	1063	96
1064	1064	6
1065	1065	129
1066	1066	54
1066	1066	32
1067	1067	32
1068	1068	96
1069	1069	73
1070	1070	54
1071	1071	107
1072	1072	55
1073	1073	84
1074	1074	54
1075	1075	54
1076	1076	97
1077	1077	107
1078	1078	82
1079	1079	133
1080	1080	137
1081	1081	103
1082	1082	34
1083	1083	123
1084	1084	96
1085	1085	141
1086	1086	82
1087	1087	96
1088	1088	125
1089	1089	96
1090	1090	117
1091	1091	96
1092	1092	84
1093	1093	24
1094	1094	125
1095	1095	35
1096	1096	53
1097	1097	145
1098	1098	96
1099	1099	32
1100	1100	53
1101	1101	43
1102	1102	53
1103	1103	35
1104	1104	96
1105	1105	115
1106	1106	32
1107	1107	96
1108	1108	103
1109	1109	117
1110	1110	97
1111	1111	35
1112	1112	37
1113	1113	54
1114	1114	97
1115	1115	107
1116	1116	74
1116	1116	34
1116	1116	121
1117	1117	97
1118	1118	54
1119	1119	97
1120	1120	54
1121	1121	84
1122	1122	103
1123	1123	96
1124	1124	53
1125	1125	96
1126	1126	146
1127	1127	43
1128	1128	147
1129	1129	96
1130	1130	55
1131	1131	147
1132	1132	147
1133	1133	117
1134	1134	117
1135	1135	82
1136	1136	43
1137	1137	53
1138	1138	53
1139	1139	32
1140	1140	34
1141	1141	125
1142	1142	53
1143	1143	53
1144	1144	53
1145	1145	32
1146	1146	139
1147	1147	6
1148	1148	73
1149	1149	124
1150	1150	73
1151	1151	50
1151	1151	6
1152	1152	54
1153	1153	78
1154	1154	55
1154	1154	37
1155	1155	73
1156	1156	68
1157	1157	73
1158	1158	37
1159	1159	82
1160	1160	68
1160	1160	32
1161	1161	97
1162	1162	44
1163	1163	144
1164	1164	82
1165	1165	146
1166	1166	117
1167	1167	52
1168	1168	68
1169	1169	97
1170	1170	137
1171	1171	64
1172	1172	139
1173	1173	73
1174	1174	28
1175	1175	54
1176	1176	73
1177	1177	84
1177	1177	85
1178	1178	6
1179	1179	81
1180	1180	129
1181	1181	54
1182	1182	132
1183	1183	67
1184	1184	44
1185	1185	139
1186	1186	124
1187	1187	96
1188	1188	32
1189	1189	97
1190	1190	117
1191	1191	137
1192	1192	115
1193	1193	142
1193	1193	133
1194	1194	132
1195	1195	54
1196	1196	84
1196	1196	85
1197	1197	117
1198	1198	32
1199	1199	1
1200	1200	139
1201	1201	90
1202	1202	51
1202	1202	52
1203	1203	96
1204	1204	96
1205	1205	32
1206	1206	1
1207	1207	84
1207	1207	85
1208	1208	132
1209	1209	2
1210	1210	54
1211	1211	52
1212	1212	132
1213	1213	97
1214	1214	84
1214	1214	45
1215	1215	82
1216	1216	97
1217	1217	32
1218	1218	133
1219	1219	84
1220	1220	129
1221	1221	96
1222	1222	54
1222	1222	32
1223	1223	83
1224	1224	148
1225	1225	104
1226	1226	104
1227	1227	70
1228	1228	96
1229	1229	79
1230	1230	137
1231	1231	96
1232	1232	147
1233	1233	125
1234	1234	129
1234	1234	64
1235	1235	96
1236	1236	103
1237	1237	96
1238	1238	35
1239	1239	61
1240	1240	55
1241	1241	104
1242	1242	82
1243	1243	80
1244	1244	96
1245	1245	147
1246	1246	103
1247	1247	147
1248	1248	55
1249	1249	96
1250	1250	32
1251	1251	53
1252	1252	125
1253	1253	53
1254	1254	53
1255	1255	147
1256	1256	93
1257	1257	97
1258	1258	96
1259	1259	103
1259	1259	73
1260	1260	129
1261	1261	74
1261	1261	121
1262	1262	129
1263	1263	129
1264	1264	96
1265	1265	96
1266	1266	129
1267	1267	97
1268	1268	55
1269	1269	73
1270	1270	115
1271	1271	96
1272	1272	35
1273	1273	6
1274	1274	34
1274	1274	37
1275	1275	141
1276	1276	53
1277	1277	53
1278	1278	37
1279	1279	133
1280	1280	117
1281	1281	6
1282	1282	147
1283	1283	129
1283	1283	117
1284	1284	96
1285	1285	103
1286	1286	103
1287	1287	61
1288	1288	113
1289	1289	107
1290	1290	97
1291	1291	82
1292	1292	137
1293	1293	149
1294	1294	54
1295	1295	137
1296	1296	125
1297	1297	96
1298	1298	53
1299	1299	6
1300	1300	96
1301	1301	103
1302	1302	103
1303	1303	53
1304	1304	102
1305	1305	96
1306	1306	53
1307	1307	103
1308	1308	53
1309	1309	96
1310	1310	53
1311	1311	129
1311	1311	64
1312	1312	146
1313	1313	129
1314	1314	73
1315	1315	96
1316	1316	1
1317	1317	96
1318	1318	146
1319	1319	56
1320	1320	37
1321	1321	117
1322	1322	97
1323	1323	96
1324	1324	97
1325	1325	82
1326	1326	6
1327	1327	93
1328	1328	137
1329	1329	55
1330	1330	61
1331	1331	150
1332	1332	146
1333	1333	96
1334	1334	55
1335	1335	53
1336	1336	147
1337	1337	34
1338	1338	84
1339	1339	151
1340	1340	103
1341	1341	103
1342	1342	147
1343	1343	96
1344	1344	53
1345	1345	53
1346	1346	103
1347	1347	34
1348	1348	146
1349	1349	123
1350	1350	115
1351	1351	55
1352	1352	53
1353	1353	6
1354	1354	115
1355	1355	134
1356	1356	35
1357	1357	53
1358	1358	103
1359	1359	6
1360	1360	96
1361	1361	35
1362	1362	53
1363	1363	53
1364	1364	73
1365	1365	96
1366	1366	6
1367	1367	53
1368	1368	53
1369	1369	32
1370	1370	84
1371	1371	37
1372	1372	83
1373	1373	16
1374	1374	56
1375	1375	141
1376	1376	50
1377	1377	68
1378	1378	97
1379	1379	67
1379	1379	45
1380	1380	51
1381	1381	44
1382	1382	73
1383	1383	45
1384	1384	54
1385	1385	6
1386	1386	32
1386	1386	51
1387	1387	85
1388	1388	85
1389	1389	85
1390	1390	129
1391	1391	115
1392	1392	129
1393	1393	73
1394	1394	73
1395	1395	95
1396	1396	97
1397	1397	97
1398	1398	142
1399	1399	96
1400	1400	37
1401	1401	54
1402	1402	35
1403	1403	55
1404	1404	98
1404	1404	99
1405	1405	97
1406	1406	97
1407	1407	117
1408	1408	80
1409	1409	45
1410	1410	97
1411	1411	97
1412	1412	118
1413	1413	77
1414	1414	73
1415	1415	137
1416	1416	56
1417	1417	124
1417	1417	82
1418	1418	96
1419	1419	84
1420	1420	82
1421	1421	96
1422	1422	103
1422	1422	73
1423	1423	96
1424	1424	96
1425	1425	96
1426	1426	53
1427	1427	73
1428	1428	96
1429	1429	125
1430	1430	53
1431	1431	97
1432	1432	73
1433	1433	73
1434	1434	37
1435	1435	83
1436	1436	37
1437	1437	37
1438	1438	149
1439	1439	96
1440	1440	53
1441	1441	96
1442	1442	53
1443	1443	115
1444	1444	96
1445	1445	6
1446	1446	53
1447	1447	53
1448	1448	103
1449	1449	53
1450	1450	96
1451	1451	107
1452	1452	55
1453	1453	129
1454	1454	82
1455	1455	73
1456	1456	1
1457	1457	102
1457	1457	95
1458	1458	54
1459	1459	78
1460	1460	142
1461	1461	15
1461	1461	23
1462	1462	129
1463	1463	75
1463	1463	76
1464	1464	18
1465	1465	16
1466	1466	97
1467	1467	96
1468	1468	73
1469	1469	73
1470	1470	73
1471	1471	73
1472	1472	97
1473	1473	32
1474	1474	64
1475	1475	73
1476	1476	54
1477	1477	109
1478	1478	54
1479	1479	115
1480	1480	34
1481	1481	97
1482	1482	34
1482	1482	37
1483	1483	53
1484	1484	56
1485	1485	104
1486	1486	96
1487	1487	53
1488	1488	54
1489	1489	55
1490	1490	103
1490	1490	73
1491	1491	96
1492	1492	96
1493	1493	97
1494	1494	97
1495	1495	149
1496	1496	97
1497	1497	149
1498	1498	54
1498	1498	32
1499	1499	96
1500	1500	54
1500	1500	32
1501	1501	96
1502	1502	97
1503	1503	96
1504	1504	56
1505	1505	35
1506	1506	96
1507	1507	1
1508	1508	96
1509	1509	53
1510	1510	103
1511	1511	97
1512	1512	115
1513	1513	53
1514	1514	147
1515	1515	96
1516	1516	96
1517	1517	96
1518	1518	97
1519	1519	96
1520	1520	96
1521	1521	103
1521	1521	73
1522	1522	53
1523	1523	35
1524	1524	83
1525	1525	96
1526	1526	32
1527	1527	129
1528	1528	75
1529	1529	68
1530	1530	115
1531	1531	141
1532	1532	54
1533	1533	85
1534	1534	89
1535	1535	137
1536	1536	16
1537	1537	73
1538	1538	115
1539	1539	54
1540	1540	96
1541	1541	97
1542	1542	97
1543	1543	42
1543	1543	57
1544	1544	109
1545	1545	112
1545	1545	152
1546	1546	45
1547	1547	129
1548	1548	73
1549	1549	84
1550	1550	96
1551	1551	115
1552	1552	18
1552	1552	98
1552	1552	6
1553	1553	97
1554	1554	97
1555	1555	137
1556	1556	73
1557	1557	80
1558	1558	20
1559	1559	77
1560	1560	73
1561	1561	153
1562	1562	149
1563	1563	115
1564	1564	97
1565	1565	56
1566	1566	115
1567	1567	53
1568	1568	96
1569	1569	96
1570	1570	55
1571	1571	96
1572	1572	103
1573	1573	73
1574	1574	73
1575	1575	117
1576	1576	96
1577	1577	115
1578	1578	103
1579	1579	53
1580	1580	115
1581	1581	37
1582	1582	103
1583	1583	97
1584	1584	115
1585	1585	97
1586	1586	54
1587	1587	149
1588	1588	103
1589	1589	149
1590	1590	137
1591	1591	67
1592	1592	84
1592	1592	85
1593	1593	97
1594	1594	53
1595	1595	73
1596	1596	73
1597	1597	53
1598	1598	53
1599	1599	103
1600	1600	101
1601	1601	97
1602	1602	103
1603	1603	53
1604	1604	53
1605	1605	115
1606	1606	73
1607	1607	147
1608	1608	147
1609	1609	104
1610	1610	97
1611	1611	53
1612	1612	115
1613	1613	147
1614	1614	53
1615	1615	96
1616	1616	53
1617	1617	96
1618	1618	82
1619	1619	137
1620	1620	84
1621	1621	97
1622	1622	141
1623	1623	123
1624	1624	97
1625	1625	6
1626	1626	44
1627	1627	107
1628	1628	64
1629	1629	115
1630	1630	149
1631	1631	63
1632	1632	149
1633	1633	97
1634	1634	51
1635	1635	35
1636	1636	73
1637	1637	6
1638	1638	137
1639	1639	97
1640	1640	97
1641	1641	83
1642	1642	82
1643	1643	146
1644	1644	97
1645	1645	42
1646	1646	115
1647	1647	137
1648	1648	96
1649	1649	52
1650	1650	52
1651	1651	141
1652	1652	115
1653	1653	85
1654	1654	78
1655	1655	37
1656	1656	73
1657	1657	154
1658	1658	54
1659	1659	73
1660	1660	115
1661	1661	149
1662	1662	53
1663	1663	84
1664	1664	1
1665	1665	104
1666	1666	103
1667	1667	103
1668	1668	53
1669	1669	96
1670	1670	53
1671	1671	97
1672	1672	97
1673	1673	96
1674	1674	97
1675	1675	103
1675	1675	73
1676	1676	96
1677	1677	103
1678	1678	137
1679	1679	115
1680	1680	146
1681	1681	53
1682	1682	147
1683	1683	96
1684	1684	149
1685	1685	137
1686	1686	115
1687	1687	103
1688	1688	53
1689	1689	53
1690	1690	103
1691	1691	96
1692	1692	73
1693	1693	73
1694	1694	149
1695	1695	97
1696	1696	73
1697	1697	149
1698	1698	55
1699	1699	141
1700	1700	96
1701	1701	73
1702	1702	149
1703	1703	96
1704	1704	6
1705	1705	73
1706	1706	149
1707	1707	141
1708	1708	37
1709	1709	115
1710	1710	73
1711	1711	141
1712	1712	6
1713	1713	96
1714	1714	97
1715	1715	73
1716	1716	84
1716	1716	45
1717	1717	6
1718	1718	115
1719	1719	53
1720	1720	115
1721	1721	53
1722	1722	115
1723	1723	129
1724	1724	137
1725	1725	34
1726	1726	97
1727	1727	104
1728	1728	32
1729	1729	96
1730	1730	103
1730	1730	73
1731	1731	115
1732	1732	103
1732	1732	73
1733	1733	115
1734	1734	55
1735	1735	34
1736	1736	96
1737	1737	96
1738	1738	97
1739	1739	115
1740	1740	37
1741	1741	96
1742	1742	54
1743	1743	54
1744	1744	97
1745	1745	149
1746	1746	67
1747	1747	149
1748	1748	103
1749	1749	97
1750	1750	103
1751	1751	103
1752	1752	83
1753	1753	137
1754	1754	115
1755	1755	84
1755	1755	85
1756	1756	96
1757	1757	55
1758	1758	115
1759	1759	117
1760	1760	97
1761	1761	34
1762	1762	73
1763	1763	97
1764	1764	137
1765	1765	64
1766	1766	100
1767	1767	6
1768	1768	37
1769	1769	64
1770	1770	115
1771	1771	107
1772	1772	97
1773	1773	64
1774	1774	97
1775	1775	115
1776	1776	73
1777	1777	73
1778	1778	73
1779	1779	82
1780	1780	54
1781	1781	64
1782	1782	115
1783	1783	134
1784	1784	56
1785	1785	37
1786	1786	6
1787	1787	146
1788	1788	97
1789	1789	115
1790	1790	97
1791	1791	32
1792	1792	73
1793	1793	54
1794	1794	73
1795	1795	97
1796	1796	73
1797	1797	61
1798	1798	32
1799	1799	106
1800	1800	32
1801	1801	32
1802	1802	32
1803	1803	96
1804	1804	52
1805	1805	73
1806	1806	115
1807	1807	137
1808	1808	96
1809	1809	64
1810	1810	115
1811	1811	53
1812	1812	115
1813	1813	115
1814	1814	115
1815	1815	115
1816	1816	137
1817	1817	149
1818	1818	97
1819	1819	115
1820	1820	35
1821	1821	96
1822	1822	155
1823	1823	97
1824	1824	115
1825	1825	34
1826	1826	115
1827	1827	103
1828	1828	115
1829	1829	45
1830	1830	97
1831	1831	115
1832	1832	147
1833	1833	115
1834	1834	97
1835	1835	34
1836	1836	149
1837	1837	115
1838	1838	115
1839	1839	103
1840	1840	103
1841	1841	115
1842	1842	96
1843	1843	53
1844	1844	97
1845	1845	97
1846	1846	89
1847	1847	97
1848	1848	6
1849	1849	97
1850	1850	149
1851	1851	5
1852	1852	53
1853	1853	137
1854	1854	137
1855	1855	115
1856	1856	115
1857	1857	96
1858	1858	137
1859	1859	73
1860	1860	115
1861	1861	53
1862	1862	6
1863	1863	96
1864	1864	137
1865	1865	115
1866	1866	115
1867	1867	55
1868	1868	137
1869	1869	137
1870	1870	137
1871	1871	73
1872	1872	137
1873	1873	53
1874	1874	42
1875	1875	103
1876	1876	96
1877	1877	115
1878	1878	96
1879	1879	115
1880	1880	115
1881	1881	89
1882	1882	53
1883	1883	115
1884	1884	34
1885	1885	103
1886	1886	103
1887	1887	73
1888	1888	53
1889	1889	96
1890	1890	37
1891	1891	147
1892	1892	137
1893	1893	103
1894	1894	97
1895	1895	115
1896	1896	96
1897	1897	6
1898	1898	115
1899	1899	84
1900	1900	9
1901	1901	67
1901	1901	45
1902	1902	97
1903	1903	97
1904	1904	139
1905	1905	96
1906	1906	137
1907	1907	97
1908	1908	137
1909	1909	137
1910	1910	156
1911	1911	73
1912	1912	78
1913	1913	32
1914	1914	54
1915	1915	97
1916	1916	73
1917	1917	73
1918	1918	73
1919	1919	73
1920	1920	97
1921	1921	67
1921	1921	45
1922	1922	56
1923	1923	32
1924	1924	107
1925	1925	149
1926	1926	73
1927	1927	73
1928	1928	146
1929	1929	137
1930	1930	53
1931	1931	115
1932	1932	137
1933	1933	137
1934	1934	115
1935	1935	64
1936	1936	146
1937	1937	137
1938	1938	96
1938	1938	121
1939	1939	137
1940	1940	137
1941	1941	97
1942	1942	73
1943	1943	103
1944	1944	73
1945	1945	6
1946	1946	6
1947	1947	97
1948	1948	117
1949	1949	6
1950	1950	97
1951	1951	53
1952	1952	73
1953	1953	37
1954	1954	115
1955	1955	96
1956	1956	115
1957	1957	96
1958	1958	32
1959	1959	115
1960	1960	84
1961	1961	115
1962	1962	141
1963	1963	97
1964	1964	137
1965	1965	73
1966	1966	129
1967	1967	55
1968	1968	54
1969	1969	103
1970	1970	96
1971	1971	97
1972	1972	117
1973	1973	115
1974	1974	97
1975	1975	73
1976	1976	137
1977	1977	107
1978	1978	77
1979	1979	61
1980	1980	149
1981	1981	73
1982	1982	137
1983	1983	137
1984	1984	137
1985	1985	53
1986	1986	73
1987	1987	149
1988	1988	73
1989	1989	73
1990	1990	37
1991	1991	96
1992	1992	137
1993	1993	97
1994	1994	97
1995	1995	55
1996	1996	96
1997	1997	35
1998	1998	73
1999	1999	129
2000	2000	73
2001	2001	54
2002	2002	137
2003	2003	73
2004	2004	137
2005	2005	35
2006	2006	53
2007	2007	137
2008	2008	150
2009	2009	96
2010	2010	53
2011	2011	56
2012	2012	31
2013	2013	152
2014	2014	137
2015	2015	67
2016	2016	97
2017	2017	6
2018	2018	97
2019	2019	115
2020	2020	137
2021	2021	115
2022	2022	54
2023	2023	97
2024	2024	54
2024	2024	6
2025	2025	152
2026	2026	137
2027	2027	96
2028	2028	34
2029	2029	97
2030	2030	97
2031	2031	137
2032	2032	137
2033	2033	54
2034	2034	73
2035	2035	149
2036	2036	137
2037	2037	137
2038	2038	73
2039	2039	98
2039	2039	99
2040	2040	36
2041	2041	85
2042	2042	129
2042	2042	64
2043	2043	99
2044	2044	97
2045	2045	6
2046	2046	137
2047	2047	137
2048	2048	96
2049	2049	85
2050	2050	53
2051	2051	56
2052	2052	34
2053	2053	146
2054	2054	96
2055	2055	89
2056	2056	120
2057	2057	137
2058	2058	149
2059	2059	103
2060	2060	73
2061	2061	73
2062	2062	137
2063	2063	53
2064	2064	97
2065	2065	96
2066	2066	73
2067	2067	73
2068	2068	73
2069	2069	73
2070	2070	137
2071	2071	137
2072	2072	96
2073	2073	137
2074	2074	73
2075	2075	96
2076	2076	137
2077	2077	73
2078	2078	147
2079	2079	73
2080	2080	54
2081	2081	149
2082	2082	80
2083	2083	45
2084	2084	6
2085	2085	73
2086	2086	79
2087	2087	97
2088	2088	97
2089	2089	97
2090	2090	96
2091	2091	97
2092	2092	137
2093	2093	96
2094	2094	96
2095	2095	73
2096	2096	63
2097	2097	96
2098	2098	137
2099	2099	137
2100	2100	97
2101	2101	149
2102	2102	137
2103	2103	137
2104	2104	54
2105	2105	54
2106	2106	73
2107	2107	137
2108	2108	117
2109	2109	149
2110	2110	96
2111	2111	96
2111	2111	133
2112	2112	103
2113	2113	149
2114	2114	137
2115	2115	124
2116	2116	73
2117	2117	97
2118	2118	73
2119	2119	73
2120	2120	73
2121	2121	96
2122	2122	73
2123	2123	115
2124	2124	137
2125	2125	115
2126	2126	149
2127	2127	115
2128	2128	115
2129	2129	149
2130	2130	6
2131	2131	54
2132	2132	73
2133	2133	6
2134	2134	73
2135	2135	96
2136	2136	96
2137	2137	137
2138	2138	96
2139	2139	137
2140	2140	137
2141	2141	137
2142	2142	61
2142	2142	37
2143	2143	83
2144	2144	96
2145	2145	149
2146	2146	53
2147	2147	129
2148	2148	37
2149	2149	35
2150	2150	137
2151	2151	37
2152	2152	155
2153	2153	96
2154	2154	73
2155	2155	115
2156	2156	96
2157	2157	96
2158	2158	137
2159	2159	73
2160	2160	10
2161	2161	73
2162	2162	155
2163	2163	137
2164	2164	73
2165	2165	115
2166	2166	6
2167	2167	54
2168	2168	149
2169	2169	6
2170	2170	96
2171	2171	137
2172	2172	137
2173	2173	32
2174	2174	96
2175	2175	73
2176	2176	85
2177	2177	141
2178	2178	34
2179	2179	96
2180	2180	73
2181	2181	96
2182	2182	97
2183	2183	73
2184	2184	73
2185	2185	54
2186	2186	97
2187	2187	149
2188	2188	149
2189	2189	149
2190	2190	129
2191	2191	137
2192	2192	149
2193	2193	149
2194	2194	149
2195	2195	96
2196	2196	34
2197	2197	37
2198	2198	149
2199	2199	6
2200	2200	53
2201	2201	149
2202	2202	146
2203	2203	137
2204	2204	73
2205	2205	97
2206	2206	73
2207	2207	137
2208	2208	115
2209	2209	97
2210	2210	129
2211	2211	115
2212	2212	137
2213	2213	97
2214	2214	146
2215	2215	74
2216	2216	55
2217	2217	137
2218	2218	137
2219	2219	53
2220	2220	129
2221	2221	129
2222	2222	34
2223	2223	73
2224	2224	73
2225	2225	73
2226	2226	73
2227	2227	73
2228	2228	73
2229	2229	117
2230	2230	73
2231	2231	73
2232	2232	96
2233	2233	73
2234	2234	73
2235	2235	73
2236	2236	73
2237	2237	149
2238	2238	37
2239	2239	96
2240	2240	96
2241	2241	96
2242	2242	34
2243	2243	137
2244	2244	137
2245	2245	96
2246	2246	73
2247	2247	96
2248	2248	137
2249	2249	96
2250	2250	149
2251	2251	64
2252	2252	73
2253	2253	73
2254	2254	96
2255	2255	96
2256	2256	96
2257	2257	64
2258	2258	73
2259	2259	137
2260	2260	37
2261	2261	137
2262	2262	96
2263	2263	96
2264	2264	129
2265	2265	129
2266	2266	74
2267	2267	97
2268	2268	96
2269	2269	96
2270	2270	115
2271	2271	115
2272	2272	73
2273	2273	54
2274	2274	56
2275	2275	37
2276	2276	55
2277	2277	73
2278	2278	34
2279	2279	149
2280	2280	73
2281	2281	36
2282	2282	115
2283	2283	155
2284	2284	79
2285	2285	32
2286	2286	6
2287	2287	6
2288	2288	6
2289	2289	24
2290	2290	96
2291	2291	61
2292	2292	32
2293	2293	73
2294	2294	149
2295	2295	34
2296	2296	73
2297	2297	96
2298	2298	115
2299	2299	6
2300	2300	6
2301	2301	141
2302	2302	74
2302	2302	34
2302	2302	36
2303	2303	73
2304	2304	54
2305	2305	137
2306	2306	112
2307	2307	112
2308	2308	73
2309	2309	57
2310	2310	54
2311	2311	82
2312	2312	117
2313	2313	82
2314	2314	115
2315	2315	82
2316	2316	83
2316	2316	157
2317	2317	77
2318	2318	155
2319	2319	28
2320	2320	73
2321	2321	73
2322	2322	73
2323	2323	73
2324	2324	32
2325	2325	37
2326	2326	108
2327	2327	73
2328	2328	37
2329	2329	21
2330	2330	73
2331	2331	16
2332	2332	104
2333	2333	137
2334	2334	137
2335	2335	141
2336	2336	70
2337	2337	146
2338	2338	129
2339	2339	137
2340	2340	35
2341	2341	73
2342	2342	6
2343	2343	73
2344	2344	73
2345	2345	82
2346	2346	78
2347	2347	144
2348	2348	73
2349	2349	137
2350	2350	83
2351	2351	77
2352	2352	83
2353	2353	115
2354	2354	129
2355	2355	10
2356	2356	48
2357	2357	82
2358	2358	146
2359	2359	74
2360	2360	35
2361	2361	73
2362	2362	54
2363	2363	82
2364	2364	117
2365	2365	44
2366	2366	96
2367	2367	97
2368	2368	73
2369	2369	149
2370	2370	73
2371	2371	158
2372	2372	73
2373	2373	34
2374	2374	100
2375	2375	6
2376	2376	6
2377	2377	115
2378	2378	73
2379	2379	10
2380	2380	115
2381	2381	6
2382	2382	141
2383	2383	73
2384	2384	97
2385	2385	146
2386	2386	140
2387	2387	18
2388	2388	107
2389	2389	6
2390	2390	54
2391	2391	35
2392	2392	41
2393	2393	78
2394	2394	73
2395	2395	73
2396	2396	78
2397	2397	6
2398	2398	96
2399	2399	8
2400	2400	54
2401	2401	137
2402	2402	79
2403	2403	140
2404	2404	140
2405	2405	54
2406	2406	146
2407	2407	35
2408	2408	154
2408	2408	80
2409	2409	124
2410	2410	97
2411	2411	73
2412	2412	42
2413	2413	57
2414	2414	57
2415	2415	35
2416	2416	78
2417	2417	73
2418	2418	115
2419	2419	96
2420	2420	44
2421	2421	97
2422	2422	149
2423	2423	137
2424	2424	77
2425	2425	6
2426	2426	73
2427	2427	73
2428	2428	73
2429	2429	96
2430	2430	96
2431	2431	59
2432	2432	28
2433	2433	152
2434	2434	37
2435	2435	97
2436	2436	73
2437	2437	48
2438	2438	115
2439	2439	96
2440	2440	129
2441	2441	97
2442	2442	106
2443	2443	73
2444	2444	73
2445	2445	137
2446	2446	129
2447	2447	97
2448	2448	73
2449	2449	73
2450	2450	24
2451	2451	73
2452	2452	96
2453	2453	68
2454	2454	106
2455	2455	73
2456	2456	64
2457	2457	6
2458	2458	6
2459	2459	96
2460	2460	74
2461	2461	54
2462	2462	55
2463	2463	107
2464	2464	97
2465	2465	37
2466	2466	54
2467	2467	103
2468	2468	45
2469	2469	55
2470	2470	97
2471	2471	2
2472	2472	6
2473	2473	73
2474	2474	44
2475	2475	73
2476	2476	73
2477	2477	83
2478	2478	32
2479	2479	100
2480	2480	152
2481	2481	118
2482	2482	32
2483	2483	73
2484	2484	107
2485	2485	6
2486	2486	106
2487	2487	54
2488	2488	147
2489	2489	73
2490	2490	5
2491	2491	73
2492	2492	6
2493	2493	6
2494	2494	6
2495	2495	6
2496	2496	77
2497	2497	44
2498	2498	97
2499	2499	54
2500	2500	97
2501	2501	61
2502	2502	73
2503	2503	82
2504	2504	144
2505	2505	96
2506	2506	103
2507	2507	73
2508	2508	73
2509	2509	73
2510	2510	6
2511	2511	28
2512	2512	96
2513	2513	73
2514	2514	73
2515	2515	115
2516	2516	96
2517	2517	73
2518	2518	74
2519	2519	56
2520	2520	137
2521	2521	73
2522	2522	6
2523	2523	73
2524	2524	96
2525	2525	78
2526	2526	37
2527	2527	137
2528	2528	115
2529	2529	91
2530	2530	6
2531	2531	73
2532	2532	6
2533	2533	96
2534	2534	64
2535	2535	155
2536	2536	155
2537	2537	155
2538	2538	155
2539	2539	155
2540	2540	32
2541	2541	121
2542	2542	79
2543	2543	133
2544	2544	2
2544	2544	13
2544	2544	19
2544	2544	1
2544	2544	159
2544	2544	11
2545	2545	120
2546	2546	54
2546	2546	84
2546	2546	44
2546	2546	45
2547	2547	44
2548	2548	19
2549	2549	32
2549	2549	51
2550	2550	6
2551	2551	56
2552	2552	2
2552	2552	13
2552	2552	21
2552	2552	1
2552	2552	11
2552	2552	27
2553	2553	80
2554	2554	32
2555	2555	101
2556	2556	32
2557	2557	67
2557	2557	84
2557	2557	85
2558	2558	103
2559	2559	19
2560	2560	55
2561	2561	20
2562	2562	55
2563	2563	34
2564	2564	103
2565	2565	116
2565	2565	81
2565	2565	52
2566	2566	33
2566	2566	19
2567	2567	53
2568	2568	73
2569	2569	73
2570	2570	67
2571	2571	20
2572	2572	24
2573	2573	10
2574	2574	55
2575	2575	108
2575	2575	31
2575	2575	58
2575	2575	66
2575	2575	65
2575	2575	160
2575	2575	59
2576	2576	2
2576	2576	27
2577	2577	6
2578	2578	44
2579	2579	6
2580	2580	6
2581	2581	6
2582	2582	6
2583	2583	63
2583	2583	6
2584	2584	100
2585	2585	19
2585	2585	11
2586	2586	15
2587	2587	20
2587	2587	22
2587	2587	28
2588	2588	54
2589	2589	26
2590	2590	121
2591	2591	103
2592	2592	50
2592	2592	6
2593	2593	28
2594	2594	42
2595	2595	103
2596	2596	32
2596	2596	51
2597	2597	107
2598	2598	97
2599	2599	161
2600	2600	55
2601	2601	12
2601	2601	72
2601	2601	14
2601	2601	15
2601	2601	16
2601	2601	20
2601	2601	22
2601	2601	100
2601	2601	23
2601	2601	28
2601	2601	29
2602	2602	31
2603	2603	137
2604	2604	107
2605	2605	107
2606	2606	32
2607	2607	6
2608	2608	32
2609	2609	67
2610	2610	67
2611	2611	67
2612	2612	67
2613	2613	120
2614	2614	103
2615	2615	32
2616	2616	121
2617	2617	8
2618	2618	33
2618	2618	19
2619	2619	45
2620	2620	55
2621	2621	55
2622	2622	121
2623	2623	32
2624	2624	24
2625	2625	101
2626	2626	107
2627	2627	103
2628	2628	55
2629	2629	120
2630	2630	73
2631	2631	103
2632	2632	73
2633	2633	103
2634	2634	103
2635	2635	103
2636	2636	103
2637	2637	84
2638	2638	77
2639	2639	55
2640	2640	73
2641	2641	121
2642	2642	6
2643	2643	10
2644	2644	23
2645	2645	55
2646	2646	19
2647	2647	6
2648	2648	103
2648	2648	73
2649	2649	53
2650	2650	55
2651	2651	120
2652	2652	103
2652	2652	73
2653	2653	103
2653	2653	73
2654	2654	32
2655	2655	44
2656	2656	44
2657	2657	70
2658	2658	52
2659	2659	97
2660	2660	67
2661	2661	19
2662	2662	103
2663	2663	32
2663	2663	51
2664	2664	73
2665	2665	77
2666	2666	34
2667	2667	2
2667	2667	19
2668	2668	44
2669	2669	103
2670	2670	44
2671	2671	67
2672	2672	55
2673	2673	121
2674	2674	3
2674	2674	99
2675	2675	103
2676	2676	6
2677	2677	133
2678	2678	55
2679	2679	67
2680	2680	78
2681	2681	2
2681	2681	3
2682	2682	73
2683	2683	32
2683	2683	51
2684	2684	103
2685	2685	67
2686	2686	34
2687	2687	103
2688	2688	44
2689	2689	55
2690	2690	74
2690	2690	34
2690	2690	121
2691	2691	55
2692	2692	101
2693	2693	72
2694	2694	41
2695	2695	42
2696	2696	55
2697	2697	6
2698	2698	67
2699	2699	121
2700	2700	32
2701	2701	72
2702	2702	55
2703	2703	31
2704	2704	103
2705	2705	55
2706	2706	50
2707	2707	73
2708	2708	103
2709	2709	50
2709	2709	6
2709	2709	10
2710	2710	44
2711	2711	55
2712	2712	103
2713	2713	73
2714	2714	74
2714	2714	34
2715	2715	120
2716	2716	6
2717	2717	2
2717	2717	13
2717	2717	7
2717	2717	33
2717	2717	3
2717	2717	17
2717	2717	18
2717	2717	19
2717	2717	21
2717	2717	1
2717	2717	8
2717	2717	9
2717	2717	49
2717	2717	69
2717	2717	98
2717	2717	4
2717	2717	5
2717	2717	23
2717	2717	24
2717	2717	6
2717	2717	25
2717	2717	99
2717	2717	11
2717	2717	27
2717	2717	10
2718	2718	120
2719	2719	55
2720	2720	55
2721	2721	32
2721	2721	51
2722	2722	75
1	1	1
2	2	1
3	3	2
3	3	3
3	3	4
3	3	5
3	3	6
4	4	7
4	4	8
4	4	9
4	4	5
4	4	6
4	4	10
5	5	1
5	5	11
6	6	12
6	6	2
6	6	13
6	6	7
6	6	14
6	6	15
6	6	16
6	6	17
6	6	18
6	6	19
6	6	20
6	6	21
6	6	1
6	6	8
6	6	9
6	6	22
6	6	4
6	6	5
6	6	23
6	6	24
6	6	6
6	6	25
6	6	26
6	6	11
6	6	27
6	6	28
6	6	10
6	6	29
6	6	30
7	7	31
8	8	32
9	9	2
9	9	33
9	9	4
10	10	34
11	11	32
11	11	35
12	12	34
12	12	36
12	12	37
13	13	1
13	13	38
14	14	1
15	15	16
15	15	1
15	15	26
16	16	28
17	17	32
18	18	39
19	19	32
20	20	32
21	21	24
22	22	12
22	22	15
22	22	22
22	22	23
22	22	29
23	23	33
23	23	19
23	23	4
24	24	6
25	25	6
26	26	6
27	27	32
28	28	32
28	28	35
29	29	37
30	30	25
30	30	10
31	31	19
31	31	1
31	31	40
32	32	21
32	32	5
32	32	23
32	32	25
32	32	10
33	33	41
33	33	42
34	34	32
35	35	32
36	36	32
37	37	1
38	38	43
39	39	37
40	40	35
41	41	44
41	41	45
42	42	7
42	42	5
42	42	10
43	43	46
44	44	6
45	45	32
46	46	24
47	47	32
47	47	35
48	48	43
49	49	33
49	49	19
50	50	47
50	50	32
51	51	48
51	51	19
52	52	6
52	52	28
53	53	32
54	54	1
55	55	37
56	56	33
56	56	19
56	56	49
57	57	32
58	58	50
58	58	6
59	59	32
60	60	6
61	61	12
61	61	15
61	61	20
61	61	22
61	61	29
62	62	42
62	62	51
62	62	52
63	63	19
64	64	41
64	64	6
65	65	32
66	66	35
67	67	43
68	68	6
69	69	53
70	70	6
71	71	6
72	72	43
73	73	32
74	74	6
75	75	6
76	76	6
77	77	32
78	78	31
79	79	54
80	80	19
81	81	1
82	82	36
83	83	53
84	84	2
84	84	33
84	84	19
84	84	49
85	85	35
86	86	54
87	87	50
88	88	4
89	89	35
90	90	55
90	90	56
91	91	6
92	92	57
92	92	31
92	92	58
92	92	22
92	92	6
92	92	59
92	92	28
93	93	6
94	94	32
95	95	32
96	96	32
96	96	35
97	97	31
98	98	10
99	99	60
99	99	50
99	99	20
99	99	6
99	99	28
99	99	10
100	100	61
101	101	54
102	102	54
102	102	62
102	102	63
103	103	32
104	104	64
105	105	19
106	106	48
106	106	19
107	107	54
108	108	32
109	109	32
110	110	32
111	111	54
111	111	63
111	111	6
112	112	65
113	113	60
113	113	42
113	113	57
113	113	59
113	113	28
114	114	32
115	115	51
116	116	51
117	117	6
118	118	19
118	118	1
119	119	19
120	120	64
121	121	32
122	122	32
123	123	42
124	124	32
125	125	6
126	126	57
126	126	66
126	126	59
127	127	67
128	128	68
128	128	54
128	128	32
129	129	32
130	130	69
130	130	10
131	131	32
132	132	54
132	132	32
133	133	32
134	134	32
135	135	70
136	136	32
137	137	19
137	137	1
138	138	68
139	139	6
140	140	6
141	141	48
141	141	71
142	142	8
142	142	6
143	143	19
144	144	32
145	145	72
146	146	54
146	146	32
146	146	35
147	147	32
148	148	43
149	149	32
150	150	32
151	151	50
151	151	28
152	152	6
153	153	32
154	154	50
154	154	6
154	154	28
155	155	32
156	156	32
157	157	73
158	158	1
159	159	72
160	160	32
161	161	53
162	162	32
163	163	32
164	164	54
164	164	32
165	165	54
166	166	32
167	167	53
168	168	10
169	169	54
170	170	19
170	170	1
170	170	11
171	171	1
172	172	74
173	173	75
173	173	76
174	174	77
175	175	54
176	176	34
177	177	78
177	177	79
178	178	80
179	179	55
180	180	32
181	181	81
181	181	52
182	182	6
183	183	43
184	184	32
185	185	6
186	186	82
187	187	61
188	188	53
189	189	53
190	190	51
191	191	53
192	192	32
193	193	32
194	194	43
195	195	43
196	196	83
197	197	32
198	198	1
199	199	42
200	200	55
201	201	74
202	202	50
203	203	84
203	203	85
204	204	72
205	205	76
206	206	54
206	206	51
206	206	81
206	206	52
207	207	47
207	207	32
208	208	82
209	209	86
210	210	84
211	211	32
211	211	51
212	212	32
213	213	1
214	214	47
215	215	43
216	216	87
217	217	37
218	218	32
219	219	70
220	220	32
221	221	32
222	222	32
223	223	88
224	224	54
225	225	51
226	226	43
227	227	32
228	228	24
229	229	53
230	230	89
231	231	5
232	232	6
233	233	32
234	234	20
235	235	6
236	236	54
236	236	63
237	237	68
237	237	54
237	237	32
238	238	85
239	239	32
240	240	54
241	241	32
242	242	61
243	243	76
244	244	6
245	245	23
246	246	59
246	246	28
247	247	17
247	247	6
248	248	90
249	249	28
250	250	79
251	251	72
252	252	53
253	253	32
254	254	32
255	255	54
256	256	85
257	257	54
258	258	82
259	259	61
260	260	35
261	261	91
261	261	24
262	262	64
263	263	53
264	264	92
265	265	93
266	266	42
267	267	94
267	267	62
268	268	32
269	269	95
270	270	35
271	271	74
271	271	34
272	272	32
273	273	68
274	274	82
275	275	32
276	276	44
277	277	45
278	278	37
279	279	61
280	280	32
281	281	39
282	282	37
283	283	32
284	284	82
285	285	84
286	286	53
287	287	32
288	288	6
289	289	35
290	290	53
291	291	54
292	292	43
293	293	53
294	294	11
295	295	32
296	296	32
297	297	32
298	298	61
299	299	96
299	299	55
299	299	37
300	300	37
301	301	55
301	301	56
302	302	43
303	303	32
304	304	32
305	305	53
306	306	35
307	307	32
308	308	53
309	309	97
310	310	35
311	311	32
312	312	6
312	312	28
313	313	32
314	314	54
315	315	97
316	316	68
317	317	13
317	317	21
317	317	25
318	318	42
319	319	31
320	320	35
321	321	1
322	322	68
322	322	32
322	322	35
323	323	54
324	324	44
324	324	45
325	325	82
326	326	54
327	327	18
327	327	98
327	327	6
327	327	99
328	328	37
329	329	61
330	330	81
330	330	52
331	331	32
332	332	97
333	333	72
334	334	74
335	335	6
336	336	16
336	336	29
337	337	54
338	338	6
339	339	41
339	339	6
340	340	51
341	341	32
342	342	35
343	343	53
344	344	35
345	345	32
346	346	53
347	347	53
348	348	54
349	349	53
350	350	35
351	351	95
352	352	32
353	353	23
353	353	29
354	354	23
355	355	32
356	356	54
357	357	80
358	358	18
358	358	6
359	359	84
359	359	45
360	360	73
361	361	100
362	362	41
362	362	6
363	363	101
363	363	56
364	364	35
365	365	54
366	366	6
367	367	55
368	368	32
369	369	42
369	369	57
370	370	32
371	371	32
372	372	70
373	373	102
374	374	32
375	375	32
376	376	64
377	377	54
378	378	82
379	379	42
380	380	42
381	381	42
382	382	103
383	383	53
384	384	53
385	385	53
386	386	54
387	387	32
388	388	45
389	389	68
390	390	15
390	390	23
391	391	35
392	392	1
393	393	96
394	394	18
394	394	6
395	395	32
396	396	32
397	397	10
398	398	32
399	399	101
399	399	56
400	400	72
401	401	54
402	402	59
403	403	81
404	404	44
405	405	104
406	406	105
407	407	2
408	408	32
409	409	32
410	410	96
411	411	51
411	411	52
412	412	35
413	413	96
414	414	53
415	415	42
416	416	95
417	417	95
418	418	32
419	419	65
420	420	103
421	421	32
422	422	83
423	423	32
424	424	37
425	425	106
426	426	6
427	427	54
428	428	85
429	429	42
430	430	68
431	431	54
432	432	32
433	433	64
434	434	35
435	435	54
436	436	84
437	437	83
438	438	54
439	439	45
440	440	96
441	441	32
442	442	54
443	443	45
444	444	73
445	445	73
446	446	54
447	447	54
448	448	107
449	449	82
450	450	108
451	451	72
452	452	72
453	453	97
454	454	55
455	455	35
456	456	32
457	457	109
458	458	82
459	459	110
460	460	35
461	461	47
461	461	32
462	462	96
463	463	111
464	464	97
465	465	95
466	466	96
467	467	97
468	468	32
469	469	112
470	470	82
471	471	82
472	472	53
473	473	110
474	474	82
475	475	53
476	476	112
477	477	97
478	478	32
479	479	6
480	480	85
481	481	32
482	482	54
483	483	54
484	484	54
485	485	97
486	486	97
487	487	6
488	488	53
489	489	43
490	490	53
491	491	53
492	492	83
492	492	82
493	493	113
494	494	43
495	495	54
495	495	32
496	496	56
497	497	37
498	498	56
499	499	114
500	500	55
501	501	95
502	502	35
503	503	73
504	504	73
505	505	115
506	506	97
507	507	35
508	508	95
509	509	82
510	510	53
511	511	1
512	512	48
513	513	54
514	514	116
515	515	54
516	516	79
517	517	37
518	518	73
519	519	99
520	520	55
520	520	37
521	521	31
522	522	117
523	523	6
524	524	95
525	525	41
526	526	55
526	526	56
527	527	68
528	528	32
529	529	54
530	530	34
531	531	32
532	532	32
533	533	96
534	534	64
535	535	2
536	536	6
537	537	45
538	538	68
539	539	107
540	540	82
541	541	54
542	542	54
543	543	97
544	544	54
545	545	118
546	546	54
547	547	82
548	548	107
549	549	6
549	549	119
550	550	79
551	551	55
552	552	95
553	553	43
554	554	73
555	555	73
556	556	73
557	557	51
557	557	52
558	558	54
558	558	32
558	558	44
559	559	35
560	560	53
561	561	103
562	562	103
563	563	85
564	564	35
565	565	97
566	566	97
567	567	54
567	567	32
568	568	77
569	569	73
570	570	110
571	571	82
572	572	53
573	573	83
574	574	51
575	575	53
576	576	53
577	577	53
578	578	117
579	579	53
580	580	103
581	581	73
582	582	83
583	583	109
584	584	82
585	585	82
586	586	120
587	587	55
588	588	82
589	589	54
590	590	68
591	591	121
592	592	96
593	593	73
594	594	61
595	595	32
596	596	54
597	597	107
598	598	82
599	599	37
600	600	54
601	601	37
602	602	53
603	603	122
604	604	101
605	605	6
606	606	89
607	607	55
608	608	31
609	609	53
610	610	55
610	610	56
611	611	96
612	612	55
612	612	56
613	613	37
614	614	32
615	615	42
616	616	78
617	617	54
618	618	42
619	619	54
620	620	6
621	621	42
622	622	42
623	623	116
623	623	81
623	623	52
624	624	79
625	625	42
626	626	42
627	627	96
628	628	101
629	629	123
629	629	124
629	629	82
630	630	54
631	631	43
632	632	83
633	633	125
633	633	126
634	634	70
635	635	53
636	636	103
637	637	103
638	638	53
639	639	54
639	639	32
640	640	73
641	641	53
642	642	83
643	643	82
644	644	54
645	645	82
646	646	6
647	647	103
648	648	35
649	649	53
650	650	83
651	651	34
652	652	82
653	653	6
654	654	35
655	655	82
656	656	96
657	657	6
658	658	53
659	659	103
660	660	82
661	661	97
662	662	96
663	663	64
664	664	96
665	665	44
665	665	45
666	666	126
667	667	96
668	668	52
669	669	37
670	670	65
671	671	54
671	671	32
672	672	6
673	673	73
674	674	96
675	675	81
676	676	35
677	677	125
678	678	96
678	678	55
678	678	56
679	679	101
679	679	56
680	680	6
681	681	6
682	682	103
683	683	43
684	684	89
685	685	95
686	686	95
687	687	85
688	688	53
689	689	51
690	690	47
691	691	51
692	692	53
693	693	34
694	694	82
695	695	53
696	696	82
697	697	84
697	697	44
697	697	45
698	698	54
699	699	6
700	700	83
701	701	55
702	702	81
703	703	54
703	703	32
704	704	68
705	705	73
706	706	55
707	707	54
708	708	97
709	709	79
710	710	32
711	711	34
712	712	99
713	713	73
714	714	64
715	715	75
716	716	51
717	717	79
718	718	54
719	719	75
720	720	127
721	721	32
722	722	72
723	723	85
724	724	54
725	725	93
726	726	20
726	726	22
727	727	32
728	728	54
729	729	85
730	730	1
731	731	100
732	732	54
733	733	97
734	734	101
735	735	32
736	736	56
737	737	32
738	738	32
739	739	41
740	740	56
741	741	35
742	742	6
743	743	55
744	744	35
745	745	53
746	746	54
747	747	103
748	748	53
749	749	53
750	750	35
751	751	54
752	752	103
753	753	82
754	754	37
755	755	55
755	755	56
756	756	128
757	757	97
758	758	35
759	759	103
760	760	83
761	761	82
762	762	113
763	763	35
764	764	129
764	764	130
765	765	131
765	765	132
766	766	103
767	767	103
768	768	53
769	769	73
770	770	32
770	770	82
771	771	112
772	772	112
773	773	6
774	774	32
775	775	37
776	776	61
777	777	54
778	778	54
779	779	6
780	780	101
780	780	133
781	781	31
782	782	84
783	783	97
784	784	97
785	785	54
785	785	35
786	786	54
787	787	104
788	788	82
789	789	96
790	790	37
791	791	96
792	792	56
793	793	54
794	794	134
795	795	32
796	796	32
797	797	43
798	798	85
799	799	113
800	800	82
801	801	53
802	802	35
803	803	34
804	804	32
805	805	54
806	806	83
807	807	115
808	808	82
809	809	43
810	810	35
811	811	53
812	812	82
813	813	44
814	814	55
815	815	73
816	816	44
817	817	82
818	818	97
819	819	103
820	820	64
821	821	82
822	822	53
823	823	95
824	824	70
825	825	82
826	826	83
827	827	97
828	828	53
829	829	110
830	830	53
831	831	53
832	832	41
832	832	6
833	833	65
834	834	97
835	835	132
835	835	130
836	836	97
837	837	78
838	838	131
839	839	32
840	840	41
841	841	135
842	842	90
843	843	6
844	844	64
845	845	32
846	846	64
847	847	75
848	848	83
849	849	73
850	850	113
851	851	125
852	852	115
853	853	129
854	854	54
855	855	35
856	856	31
857	857	6
858	858	74
858	858	136
859	859	73
860	860	54
860	860	6
861	861	97
862	862	56
863	863	74
864	864	137
865	865	112
866	866	138
867	867	51
867	867	52
868	868	32
869	869	54
870	870	32
871	871	54
872	872	125
873	873	139
874	874	137
875	875	56
876	876	103
877	877	96
878	878	24
879	879	35
880	880	103
881	881	53
882	882	6
883	883	44
883	883	45
884	884	96
885	885	54
886	886	54
887	887	82
888	888	34
889	889	32
890	890	35
891	891	53
892	892	140
893	893	82
894	894	84
894	894	85
895	895	53
896	896	96
897	897	70
898	898	61
898	898	37
899	899	82
900	900	46
901	901	37
902	902	117
903	903	41
904	904	54
905	905	44
906	906	68
907	907	137
908	908	37
909	909	125
910	910	36
911	911	32
912	912	81
913	913	81
913	913	52
914	914	107
915	915	107
916	916	45
917	917	117
918	918	132
919	919	43
920	920	55
920	920	56
921	921	35
922	922	53
923	923	129
923	923	130
924	924	115
925	925	54
926	926	85
927	927	53
928	928	103
929	929	117
930	930	96
931	931	117
932	932	96
933	933	107
934	934	37
935	935	73
936	936	73
937	937	73
938	938	73
939	939	73
940	940	96
941	941	137
942	942	54
943	943	89
944	944	32
945	945	137
946	946	96
947	947	137
948	948	52
949	949	141
950	950	35
951	951	74
952	952	83
953	953	32
954	954	97
955	955	54
955	955	32
956	956	84
957	957	51
958	958	96
959	959	55
960	960	64
961	961	96
962	962	83
963	963	97
964	964	65
965	965	1
966	966	36
967	967	106
968	968	32
969	969	35
970	970	142
971	971	54
971	971	63
971	971	6
972	972	64
973	973	55
974	974	6
975	975	32
976	976	82
977	977	98
977	977	99
978	978	32
979	979	117
980	980	32
981	981	74
982	982	97
983	983	45
984	984	54
985	985	52
986	986	85
987	987	56
988	988	32
989	989	35
990	990	103
990	990	73
991	991	52
992	992	54
993	993	55
993	993	56
994	994	54
995	995	117
996	996	73
997	997	73
998	998	73
999	999	32
1000	1000	72
1001	1001	54
1002	1002	132
1003	1003	54
1003	1003	32
1004	1004	61
1005	1005	123
1006	1006	37
1007	1007	51
1008	1008	52
1009	1009	61
1010	1010	52
1011	1011	54
1012	1012	37
1013	1013	96
1014	1014	53
1015	1015	117
1016	1016	6
1017	1017	143
1018	1018	37
1019	1019	115
1020	1020	97
1021	1021	107
1022	1022	97
1023	1023	97
1024	1024	54
1025	1025	53
1026	1026	32
1026	1026	35
1027	1027	129
1028	1028	101
1028	1028	56
1029	1029	32
1029	1029	35
1030	1030	84
1031	1031	35
1032	1032	97
1033	1033	73
1034	1034	75
1035	1035	37
1036	1036	95
1037	1037	85
1038	1038	103
1039	1039	73
1040	1040	53
1041	1041	100
1042	1042	125
1043	1043	53
1044	1044	96
1045	1045	73
1046	1046	73
1047	1047	73
1048	1048	73
1049	1049	104
1050	1050	96
1051	1051	53
1052	1052	53
1053	1053	96
1054	1054	51
1055	1055	35
1056	1056	6
1057	1057	55
1058	1058	107
1059	1059	144
1060	1060	117
1061	1061	83
1062	1062	32
1063	1063	96
1064	1064	6
1065	1065	129
1066	1066	54
1066	1066	32
1067	1067	32
1068	1068	96
1069	1069	73
1070	1070	54
1071	1071	107
1072	1072	55
1073	1073	84
1074	1074	54
1075	1075	54
1076	1076	97
1077	1077	107
1078	1078	82
1079	1079	133
1080	1080	137
1081	1081	103
1082	1082	34
1083	1083	123
1084	1084	96
1085	1085	141
1086	1086	82
1087	1087	96
1088	1088	125
1089	1089	96
1090	1090	117
1091	1091	96
1092	1092	84
1093	1093	24
1094	1094	125
1095	1095	35
1096	1096	53
1097	1097	145
1098	1098	96
1099	1099	32
1100	1100	53
1101	1101	43
1102	1102	53
1103	1103	35
1104	1104	96
1105	1105	115
1106	1106	32
1107	1107	96
1108	1108	103
1109	1109	117
1110	1110	97
1111	1111	35
1112	1112	37
1113	1113	54
1114	1114	97
1115	1115	107
1116	1116	74
1116	1116	34
1116	1116	121
1117	1117	97
1118	1118	54
1119	1119	97
1120	1120	54
1121	1121	84
1122	1122	103
1123	1123	96
1124	1124	53
1125	1125	96
1126	1126	146
1127	1127	43
1128	1128	147
1129	1129	96
1130	1130	55
1131	1131	147
1132	1132	147
1133	1133	117
1134	1134	117
1135	1135	82
1136	1136	43
1137	1137	53
1138	1138	53
1139	1139	32
1140	1140	34
1141	1141	125
1142	1142	53
1143	1143	53
1144	1144	53
1145	1145	32
1146	1146	139
1147	1147	6
1148	1148	73
1149	1149	124
1150	1150	73
1151	1151	50
1151	1151	6
1152	1152	54
1153	1153	78
1154	1154	55
1154	1154	37
1155	1155	73
1156	1156	68
1157	1157	73
1158	1158	37
1159	1159	82
1160	1160	68
1160	1160	32
1161	1161	97
1162	1162	44
1163	1163	144
1164	1164	82
1165	1165	146
1166	1166	117
1167	1167	52
1168	1168	68
1169	1169	97
1170	1170	137
1171	1171	64
1172	1172	139
1173	1173	73
1174	1174	28
1175	1175	54
1176	1176	73
1177	1177	84
1177	1177	85
1178	1178	6
1179	1179	81
1180	1180	129
1181	1181	54
1182	1182	132
1183	1183	67
1184	1184	44
1185	1185	139
1186	1186	124
1187	1187	96
1188	1188	32
1189	1189	97
1190	1190	117
1191	1191	137
1192	1192	115
1193	1193	142
1193	1193	133
1194	1194	132
1195	1195	54
1196	1196	84
1196	1196	85
1197	1197	117
1198	1198	32
1199	1199	1
1200	1200	139
1201	1201	90
1202	1202	51
1202	1202	52
1203	1203	96
1204	1204	96
1205	1205	32
1206	1206	1
1207	1207	84
1207	1207	85
1208	1208	132
1209	1209	2
1210	1210	54
1211	1211	52
1212	1212	132
1213	1213	97
1214	1214	84
1214	1214	45
1215	1215	82
1216	1216	97
1217	1217	32
1218	1218	133
1219	1219	84
1220	1220	129
1221	1221	96
1222	1222	54
1222	1222	32
1223	1223	83
1224	1224	148
1225	1225	104
1226	1226	104
1227	1227	70
1228	1228	96
1229	1229	79
1230	1230	137
1231	1231	96
1232	1232	147
1233	1233	125
1234	1234	129
1234	1234	64
1235	1235	96
1236	1236	103
1237	1237	96
1238	1238	35
1239	1239	61
1240	1240	55
1241	1241	104
1242	1242	82
1243	1243	80
1244	1244	96
1245	1245	147
1246	1246	103
1247	1247	147
1248	1248	55
1249	1249	96
1250	1250	32
1251	1251	53
1252	1252	125
1253	1253	53
1254	1254	53
1255	1255	147
1256	1256	93
1257	1257	97
1258	1258	96
1259	1259	103
1259	1259	73
1260	1260	129
1261	1261	74
1261	1261	121
1262	1262	129
1263	1263	129
1264	1264	96
1265	1265	96
1266	1266	129
1267	1267	97
1268	1268	55
1269	1269	73
1270	1270	115
1271	1271	96
1272	1272	35
1273	1273	6
1274	1274	34
1274	1274	37
1275	1275	141
1276	1276	53
1277	1277	53
1278	1278	37
1279	1279	133
1280	1280	117
1281	1281	6
1282	1282	147
1283	1283	129
1283	1283	117
1284	1284	96
1285	1285	103
1286	1286	103
1287	1287	61
1288	1288	113
1289	1289	107
1290	1290	97
1291	1291	82
1292	1292	137
1293	1293	149
1294	1294	54
1295	1295	137
1296	1296	125
1297	1297	96
1298	1298	53
1299	1299	6
1300	1300	96
1301	1301	103
1302	1302	103
1303	1303	53
1304	1304	102
1305	1305	96
1306	1306	53
1307	1307	103
1308	1308	53
1309	1309	96
1310	1310	53
1311	1311	129
1311	1311	64
1312	1312	146
1313	1313	129
1314	1314	73
1315	1315	96
1316	1316	1
1317	1317	96
1318	1318	146
1319	1319	56
1320	1320	37
1321	1321	117
1322	1322	97
1323	1323	96
1324	1324	97
1325	1325	82
1326	1326	6
1327	1327	93
1328	1328	137
1329	1329	55
1330	1330	61
1331	1331	150
1332	1332	146
1333	1333	96
1334	1334	55
1335	1335	53
1336	1336	147
1337	1337	34
1338	1338	84
1339	1339	151
1340	1340	103
1341	1341	103
1342	1342	147
1343	1343	96
1344	1344	53
1345	1345	53
1346	1346	103
1347	1347	34
1348	1348	146
1349	1349	123
1350	1350	115
1351	1351	55
1352	1352	53
1353	1353	6
1354	1354	115
1355	1355	134
1356	1356	35
1357	1357	53
1358	1358	103
1359	1359	6
1360	1360	96
1361	1361	35
1362	1362	53
1363	1363	53
1364	1364	73
1365	1365	96
1366	1366	6
1367	1367	53
1368	1368	53
1369	1369	32
1370	1370	84
1371	1371	37
1372	1372	83
1373	1373	16
1374	1374	56
1375	1375	141
1376	1376	50
1377	1377	68
1378	1378	97
1379	1379	67
1379	1379	45
1380	1380	51
1381	1381	44
1382	1382	73
1383	1383	45
1384	1384	54
1385	1385	6
1386	1386	32
1386	1386	51
1387	1387	85
1388	1388	85
1389	1389	85
1390	1390	129
1391	1391	115
1392	1392	129
1393	1393	73
1394	1394	73
1395	1395	95
1396	1396	97
1397	1397	97
1398	1398	142
1399	1399	96
1400	1400	37
1401	1401	54
1402	1402	35
1403	1403	55
1404	1404	98
1404	1404	99
1405	1405	97
1406	1406	97
1407	1407	117
1408	1408	80
1409	1409	45
1410	1410	97
1411	1411	97
1412	1412	118
1413	1413	77
1414	1414	73
1415	1415	137
1416	1416	56
1417	1417	124
1417	1417	82
1418	1418	96
1419	1419	84
1420	1420	82
1421	1421	96
1422	1422	103
1422	1422	73
1423	1423	96
1424	1424	96
1425	1425	96
1426	1426	53
1427	1427	73
1428	1428	96
1429	1429	125
1430	1430	53
1431	1431	97
1432	1432	73
1433	1433	73
1434	1434	37
1435	1435	83
1436	1436	37
1437	1437	37
1438	1438	149
1439	1439	96
1440	1440	53
1441	1441	96
1442	1442	53
1443	1443	115
1444	1444	96
1445	1445	6
1446	1446	53
1447	1447	53
1448	1448	103
1449	1449	53
1450	1450	96
1451	1451	107
1452	1452	55
1453	1453	129
1454	1454	82
1455	1455	73
1456	1456	1
1457	1457	102
1457	1457	95
1458	1458	54
1459	1459	78
1460	1460	142
1461	1461	15
1461	1461	23
1462	1462	129
1463	1463	75
1463	1463	76
1464	1464	18
1465	1465	16
1466	1466	97
1467	1467	96
1468	1468	73
1469	1469	73
1470	1470	73
1471	1471	73
1472	1472	97
1473	1473	32
1474	1474	64
1475	1475	73
1476	1476	54
1477	1477	109
1478	1478	54
1479	1479	115
1480	1480	34
1481	1481	97
1482	1482	34
1482	1482	37
1483	1483	53
1484	1484	56
1485	1485	104
1486	1486	96
1487	1487	53
1488	1488	54
1489	1489	55
1490	1490	103
1490	1490	73
1491	1491	96
1492	1492	96
1493	1493	97
1494	1494	97
1495	1495	149
1496	1496	97
1497	1497	149
1498	1498	54
1498	1498	32
1499	1499	96
1500	1500	54
1500	1500	32
1501	1501	96
1502	1502	97
1503	1503	96
1504	1504	56
1505	1505	35
1506	1506	96
1507	1507	1
1508	1508	96
1509	1509	53
1510	1510	103
1511	1511	97
1512	1512	115
1513	1513	53
1514	1514	147
1515	1515	96
1516	1516	96
1517	1517	96
1518	1518	97
1519	1519	96
1520	1520	96
1521	1521	103
1521	1521	73
1522	1522	53
1523	1523	35
1524	1524	83
1525	1525	96
1526	1526	32
1527	1527	129
1528	1528	75
1529	1529	68
1530	1530	115
1531	1531	141
1532	1532	54
1533	1533	85
1534	1534	89
1535	1535	137
1536	1536	16
1537	1537	73
1538	1538	115
1539	1539	54
1540	1540	96
1541	1541	97
1542	1542	97
1543	1543	42
1543	1543	57
1544	1544	109
1545	1545	112
1545	1545	152
1546	1546	45
1547	1547	129
1548	1548	73
1549	1549	84
1550	1550	96
1551	1551	115
1552	1552	18
1552	1552	98
1552	1552	6
1553	1553	97
1554	1554	97
1555	1555	137
1556	1556	73
1557	1557	80
1558	1558	20
1559	1559	77
1560	1560	73
1561	1561	153
1562	1562	149
1563	1563	115
1564	1564	97
1565	1565	56
1566	1566	115
1567	1567	53
1568	1568	96
1569	1569	96
1570	1570	55
1571	1571	96
1572	1572	103
1573	1573	73
1574	1574	73
1575	1575	117
1576	1576	96
1577	1577	115
1578	1578	103
1579	1579	53
1580	1580	115
1581	1581	37
1582	1582	103
1583	1583	97
1584	1584	115
1585	1585	97
1586	1586	54
1587	1587	149
1588	1588	103
1589	1589	149
1590	1590	137
1591	1591	67
1592	1592	84
1592	1592	85
1593	1593	97
1594	1594	53
1595	1595	73
1596	1596	73
1597	1597	53
1598	1598	53
1599	1599	103
1600	1600	101
1601	1601	97
1602	1602	103
1603	1603	53
1604	1604	53
1605	1605	115
1606	1606	73
1607	1607	147
1608	1608	147
1609	1609	104
1610	1610	97
1611	1611	53
1612	1612	115
1613	1613	147
1614	1614	53
1615	1615	96
1616	1616	53
1617	1617	96
1618	1618	82
1619	1619	137
1620	1620	84
1621	1621	97
1622	1622	141
1623	1623	123
1624	1624	97
1625	1625	6
1626	1626	44
1627	1627	107
1628	1628	64
1629	1629	115
1630	1630	149
1631	1631	63
1632	1632	149
1633	1633	97
1634	1634	51
1635	1635	35
1636	1636	73
1637	1637	6
1638	1638	137
1639	1639	97
1640	1640	97
1641	1641	83
1642	1642	82
1643	1643	146
1644	1644	97
1645	1645	42
1646	1646	115
1647	1647	137
1648	1648	96
1649	1649	52
1650	1650	52
1651	1651	141
1652	1652	115
1653	1653	85
1654	1654	78
1655	1655	37
1656	1656	73
1657	1657	154
1658	1658	54
1659	1659	73
1660	1660	115
1661	1661	149
1662	1662	53
1663	1663	84
1664	1664	1
1665	1665	104
1666	1666	103
1667	1667	103
1668	1668	53
1669	1669	96
1670	1670	53
1671	1671	97
1672	1672	97
1673	1673	96
1674	1674	97
1675	1675	103
1675	1675	73
1676	1676	96
1677	1677	103
1678	1678	137
1679	1679	115
1680	1680	146
1681	1681	53
1682	1682	147
1683	1683	96
1684	1684	149
1685	1685	137
1686	1686	115
1687	1687	103
1688	1688	53
1689	1689	53
1690	1690	103
1691	1691	96
1692	1692	73
1693	1693	73
1694	1694	149
1695	1695	97
1696	1696	73
1697	1697	149
1698	1698	55
1699	1699	141
1700	1700	96
1701	1701	73
1702	1702	149
1703	1703	96
1704	1704	6
1705	1705	73
1706	1706	149
1707	1707	141
1708	1708	37
1709	1709	115
1710	1710	73
1711	1711	141
1712	1712	6
1713	1713	96
1714	1714	97
1715	1715	73
1716	1716	84
1716	1716	45
1717	1717	6
1718	1718	115
1719	1719	53
1720	1720	115
1721	1721	53
1722	1722	115
1723	1723	129
1724	1724	137
1725	1725	34
1726	1726	97
1727	1727	104
1728	1728	32
1729	1729	96
1730	1730	103
1730	1730	73
1731	1731	115
1732	1732	103
1732	1732	73
1733	1733	115
1734	1734	55
1735	1735	34
1736	1736	96
1737	1737	96
1738	1738	97
1739	1739	115
1740	1740	37
1741	1741	96
1742	1742	54
1743	1743	54
1744	1744	97
1745	1745	149
1746	1746	67
1747	1747	149
1748	1748	103
1749	1749	97
1750	1750	103
1751	1751	103
1752	1752	83
1753	1753	137
1754	1754	115
1755	1755	84
1755	1755	85
1756	1756	96
1757	1757	55
1758	1758	115
1759	1759	117
1760	1760	97
1761	1761	34
1762	1762	73
1763	1763	97
1764	1764	137
1765	1765	64
1766	1766	100
1767	1767	6
1768	1768	37
1769	1769	64
1770	1770	115
1771	1771	107
1772	1772	97
1773	1773	64
1774	1774	97
1775	1775	115
1776	1776	73
1777	1777	73
1778	1778	73
1779	1779	82
1780	1780	54
1781	1781	64
1782	1782	115
1783	1783	134
1784	1784	56
1785	1785	37
1786	1786	6
1787	1787	146
1788	1788	97
1789	1789	115
1790	1790	97
1791	1791	32
1792	1792	73
1793	1793	54
1794	1794	73
1795	1795	97
1796	1796	73
1797	1797	61
1798	1798	32
1799	1799	106
1800	1800	32
1801	1801	32
1802	1802	32
1803	1803	96
1804	1804	52
1805	1805	73
1806	1806	115
1807	1807	137
1808	1808	96
1809	1809	64
1810	1810	115
1811	1811	53
1812	1812	115
1813	1813	115
1814	1814	115
1815	1815	115
1816	1816	137
1817	1817	149
1818	1818	97
1819	1819	115
1820	1820	35
1821	1821	96
1822	1822	155
1823	1823	97
1824	1824	115
1825	1825	34
1826	1826	115
1827	1827	103
1828	1828	115
1829	1829	45
1830	1830	97
1831	1831	115
1832	1832	147
1833	1833	115
1834	1834	97
1835	1835	34
1836	1836	149
1837	1837	115
1838	1838	115
1839	1839	103
1840	1840	103
1841	1841	115
1842	1842	96
1843	1843	53
1844	1844	97
1845	1845	97
1846	1846	89
1847	1847	97
1848	1848	6
1849	1849	97
1850	1850	149
1851	1851	5
1852	1852	53
1853	1853	137
1854	1854	137
1855	1855	115
1856	1856	115
1857	1857	96
1858	1858	137
1859	1859	73
1860	1860	115
1861	1861	53
1862	1862	6
1863	1863	96
1864	1864	137
1865	1865	115
1866	1866	115
1867	1867	55
1868	1868	137
1869	1869	137
1870	1870	137
1871	1871	73
1872	1872	137
1873	1873	53
1874	1874	42
1875	1875	103
1876	1876	96
1877	1877	115
1878	1878	96
1879	1879	115
1880	1880	115
1881	1881	89
1882	1882	53
1883	1883	115
1884	1884	34
1885	1885	103
1886	1886	103
1887	1887	73
1888	1888	53
1889	1889	96
1890	1890	37
1891	1891	147
1892	1892	137
1893	1893	103
1894	1894	97
1895	1895	115
1896	1896	96
1897	1897	6
1898	1898	115
1899	1899	84
1900	1900	9
1901	1901	67
1901	1901	45
1902	1902	97
1903	1903	97
1904	1904	139
1905	1905	96
1906	1906	137
1907	1907	97
1908	1908	137
1909	1909	137
1910	1910	156
1911	1911	73
1912	1912	78
1913	1913	32
1914	1914	54
1915	1915	97
1916	1916	73
1917	1917	73
1918	1918	73
1919	1919	73
1920	1920	97
1921	1921	67
1921	1921	45
1922	1922	56
1923	1923	32
1924	1924	107
1925	1925	149
1926	1926	73
1927	1927	73
1928	1928	146
1929	1929	137
1930	1930	53
1931	1931	115
1932	1932	137
1933	1933	137
1934	1934	115
1935	1935	64
1936	1936	146
1937	1937	137
1938	1938	96
1938	1938	121
1939	1939	137
1940	1940	137
1941	1941	97
1942	1942	73
1943	1943	103
1944	1944	73
1945	1945	6
1946	1946	6
1947	1947	97
1948	1948	117
1949	1949	6
1950	1950	97
1951	1951	53
1952	1952	73
1953	1953	37
1954	1954	115
1955	1955	96
1956	1956	115
1957	1957	96
1958	1958	32
1959	1959	115
1960	1960	84
1961	1961	115
1962	1962	141
1963	1963	97
1964	1964	137
1965	1965	73
1966	1966	129
1967	1967	55
1968	1968	54
1969	1969	103
1970	1970	96
1971	1971	97
1972	1972	117
1973	1973	115
1974	1974	97
1975	1975	73
1976	1976	137
1977	1977	107
1978	1978	77
1979	1979	61
1980	1980	149
1981	1981	73
1982	1982	137
1983	1983	137
1984	1984	137
1985	1985	53
1986	1986	73
1987	1987	149
1988	1988	73
1989	1989	73
1990	1990	37
1991	1991	96
1992	1992	137
1993	1993	97
1994	1994	97
1995	1995	55
1996	1996	96
1997	1997	35
1998	1998	73
1999	1999	129
2000	2000	73
2001	2001	54
2002	2002	137
2003	2003	73
2004	2004	137
2005	2005	35
2006	2006	53
2007	2007	137
2008	2008	150
2009	2009	96
2010	2010	53
2011	2011	56
2012	2012	31
2013	2013	152
2014	2014	137
2015	2015	67
2016	2016	97
2017	2017	6
2018	2018	97
2019	2019	115
2020	2020	137
2021	2021	115
2022	2022	54
2023	2023	97
2024	2024	54
2024	2024	6
2025	2025	152
2026	2026	137
2027	2027	96
2028	2028	34
2029	2029	97
2030	2030	97
2031	2031	137
2032	2032	137
2033	2033	54
2034	2034	73
2035	2035	149
2036	2036	137
2037	2037	137
2038	2038	73
2039	2039	98
2039	2039	99
2040	2040	36
2041	2041	85
2042	2042	129
2042	2042	64
2043	2043	99
2044	2044	97
2045	2045	6
2046	2046	137
2047	2047	137
2048	2048	96
2049	2049	85
2050	2050	53
2051	2051	56
2052	2052	34
2053	2053	146
2054	2054	96
2055	2055	89
2056	2056	120
2057	2057	137
2058	2058	149
2059	2059	103
2060	2060	73
2061	2061	73
2062	2062	137
2063	2063	53
2064	2064	97
2065	2065	96
2066	2066	73
2067	2067	73
2068	2068	73
2069	2069	73
2070	2070	137
2071	2071	137
2072	2072	96
2073	2073	137
2074	2074	73
2075	2075	96
2076	2076	137
2077	2077	73
2078	2078	147
2079	2079	73
2080	2080	54
2081	2081	149
2082	2082	80
2083	2083	45
2084	2084	6
2085	2085	73
2086	2086	79
2087	2087	97
2088	2088	97
2089	2089	97
2090	2090	96
2091	2091	97
2092	2092	137
2093	2093	96
2094	2094	96
2095	2095	73
2096	2096	63
2097	2097	96
2098	2098	137
2099	2099	137
2100	2100	97
2101	2101	149
2102	2102	137
2103	2103	137
2104	2104	54
2105	2105	54
2106	2106	73
2107	2107	137
2108	2108	117
2109	2109	149
2110	2110	96
2111	2111	96
2111	2111	133
2112	2112	103
2113	2113	149
2114	2114	137
2115	2115	124
2116	2116	73
2117	2117	97
2118	2118	73
2119	2119	73
2120	2120	73
2121	2121	96
2122	2122	73
2123	2123	115
2124	2124	137
2125	2125	115
2126	2126	149
2127	2127	115
2128	2128	115
2129	2129	149
2130	2130	6
2131	2131	54
2132	2132	73
2133	2133	6
2134	2134	73
2135	2135	96
2136	2136	96
2137	2137	137
2138	2138	96
2139	2139	137
2140	2140	137
2141	2141	137
2142	2142	61
2142	2142	37
2143	2143	83
2144	2144	96
2145	2145	149
2146	2146	53
2147	2147	129
2148	2148	37
2149	2149	35
2150	2150	137
2151	2151	37
2152	2152	155
2153	2153	96
2154	2154	73
2155	2155	115
2156	2156	96
2157	2157	96
2158	2158	137
2159	2159	73
2160	2160	10
2161	2161	73
2162	2162	155
2163	2163	137
2164	2164	73
2165	2165	115
2166	2166	6
2167	2167	54
2168	2168	149
2169	2169	6
2170	2170	96
2171	2171	137
2172	2172	137
2173	2173	32
2174	2174	96
2175	2175	73
2176	2176	85
2177	2177	141
2178	2178	34
2179	2179	96
2180	2180	73
2181	2181	96
2182	2182	97
2183	2183	73
2184	2184	73
2185	2185	54
2186	2186	97
2187	2187	149
2188	2188	149
2189	2189	149
2190	2190	129
2191	2191	137
2192	2192	149
2193	2193	149
2194	2194	149
2195	2195	96
2196	2196	34
2197	2197	37
2198	2198	149
2199	2199	6
2200	2200	53
2201	2201	149
2202	2202	146
2203	2203	137
2204	2204	73
2205	2205	97
2206	2206	73
2207	2207	137
2208	2208	115
2209	2209	97
2210	2210	129
2211	2211	115
2212	2212	137
2213	2213	97
2214	2214	146
2215	2215	74
2216	2216	55
2217	2217	137
2218	2218	137
2219	2219	53
2220	2220	129
2221	2221	129
2222	2222	34
2223	2223	73
2224	2224	73
2225	2225	73
2226	2226	73
2227	2227	73
2228	2228	73
2229	2229	117
2230	2230	73
2231	2231	73
2232	2232	96
2233	2233	73
2234	2234	73
2235	2235	73
2236	2236	73
2237	2237	149
2238	2238	37
2239	2239	96
2240	2240	96
2241	2241	96
2242	2242	34
2243	2243	137
2244	2244	137
2245	2245	96
2246	2246	73
2247	2247	96
2248	2248	137
2249	2249	96
2250	2250	149
2251	2251	64
2252	2252	73
2253	2253	73
2254	2254	96
2255	2255	96
2256	2256	96
2257	2257	64
2258	2258	73
2259	2259	137
2260	2260	37
2261	2261	137
2262	2262	96
2263	2263	96
2264	2264	129
2265	2265	129
2266	2266	74
2267	2267	97
2268	2268	96
2269	2269	96
2270	2270	115
2271	2271	115
2272	2272	73
2273	2273	54
2274	2274	56
2275	2275	37
2276	2276	55
2277	2277	73
2278	2278	34
2279	2279	149
2280	2280	73
2281	2281	36
2282	2282	115
2283	2283	155
2284	2284	79
2285	2285	32
2286	2286	6
2287	2287	6
2288	2288	6
2289	2289	24
2290	2290	96
2291	2291	61
2292	2292	32
2293	2293	73
2294	2294	149
2295	2295	34
2296	2296	73
2297	2297	96
2298	2298	115
2299	2299	6
2300	2300	6
2301	2301	141
2302	2302	74
2302	2302	34
2302	2302	36
2303	2303	73
2304	2304	54
2305	2305	137
2306	2306	112
2307	2307	112
2308	2308	73
2309	2309	57
2310	2310	54
2311	2311	82
2312	2312	117
2313	2313	82
2314	2314	115
2315	2315	82
2316	2316	83
2316	2316	157
2317	2317	77
2318	2318	155
2319	2319	28
2320	2320	73
2321	2321	73
2322	2322	73
2323	2323	73
2324	2324	32
2325	2325	37
2326	2326	108
2327	2327	73
2328	2328	37
2329	2329	21
2330	2330	73
2331	2331	16
2332	2332	104
2333	2333	137
2334	2334	137
2335	2335	141
2336	2336	70
2337	2337	146
2338	2338	129
2339	2339	137
2340	2340	35
2341	2341	73
2342	2342	6
2343	2343	73
2344	2344	73
2345	2345	82
2346	2346	78
2347	2347	144
2348	2348	73
2349	2349	137
2350	2350	83
2351	2351	77
2352	2352	83
2353	2353	115
2354	2354	129
2355	2355	10
2356	2356	48
2357	2357	82
2358	2358	146
2359	2359	74
2360	2360	35
2361	2361	73
2362	2362	54
2363	2363	82
2364	2364	117
2365	2365	44
2366	2366	96
2367	2367	97
2368	2368	73
2369	2369	149
2370	2370	73
2371	2371	158
2372	2372	73
2373	2373	34
2374	2374	100
2375	2375	6
2376	2376	6
2377	2377	115
2378	2378	73
2379	2379	10
2380	2380	115
2381	2381	6
2382	2382	141
2383	2383	73
2384	2384	97
2385	2385	146
2386	2386	140
2387	2387	18
2388	2388	107
2389	2389	6
2390	2390	54
2391	2391	35
2392	2392	41
2393	2393	78
2394	2394	73
2395	2395	73
2396	2396	78
2397	2397	6
2398	2398	96
2399	2399	8
2400	2400	54
2401	2401	137
2402	2402	79
2403	2403	140
2404	2404	140
2405	2405	54
2406	2406	146
2407	2407	35
2408	2408	154
2408	2408	80
2409	2409	124
2410	2410	97
2411	2411	73
2412	2412	42
2413	2413	57
2414	2414	57
2415	2415	35
2416	2416	78
2417	2417	73
2418	2418	115
2419	2419	96
2420	2420	44
2421	2421	97
2422	2422	149
2423	2423	137
2424	2424	77
2425	2425	6
2426	2426	73
2427	2427	73
2428	2428	73
2429	2429	96
2430	2430	96
2431	2431	59
2432	2432	28
2433	2433	152
2434	2434	37
2435	2435	97
2436	2436	73
2437	2437	48
2438	2438	115
2439	2439	96
2440	2440	129
2441	2441	97
2442	2442	106
2443	2443	73
2444	2444	73
2445	2445	137
2446	2446	129
2447	2447	97
2448	2448	73
2449	2449	73
2450	2450	24
2451	2451	73
2452	2452	96
2453	2453	68
2454	2454	106
2455	2455	73
2456	2456	64
2457	2457	6
2458	2458	6
2459	2459	96
2460	2460	74
2461	2461	54
2462	2462	55
2463	2463	107
2464	2464	97
2465	2465	37
2466	2466	54
2467	2467	103
2468	2468	45
2469	2469	55
2470	2470	97
2471	2471	2
2472	2472	6
2473	2473	73
2474	2474	44
2475	2475	73
2476	2476	73
2477	2477	83
2478	2478	32
2479	2479	100
2480	2480	152
2481	2481	118
2482	2482	32
2483	2483	73
2484	2484	107
2485	2485	6
2486	2486	106
2487	2487	54
2488	2488	147
2489	2489	73
2490	2490	5
2491	2491	73
2492	2492	6
2493	2493	6
2494	2494	6
2495	2495	6
2496	2496	77
2497	2497	44
2498	2498	97
2499	2499	54
2500	2500	97
2501	2501	61
2502	2502	73
2503	2503	82
2504	2504	144
2505	2505	96
2506	2506	103
2507	2507	73
2508	2508	73
2509	2509	73
2510	2510	6
2511	2511	28
2512	2512	96
2513	2513	73
2514	2514	73
2515	2515	115
2516	2516	96
2517	2517	73
2518	2518	74
2519	2519	56
2520	2520	137
2521	2521	73
2522	2522	6
2523	2523	73
2524	2524	96
2525	2525	78
2526	2526	37
2527	2527	137
2528	2528	115
2529	2529	91
2530	2530	6
2531	2531	73
2532	2532	6
2533	2533	96
2534	2534	64
2535	2535	155
2536	2536	155
2537	2537	155
2538	2538	155
2539	2539	155
2540	2540	32
2541	2541	121
2542	2542	79
2543	2543	133
2544	2544	2
2544	2544	13
2544	2544	19
2544	2544	1
2544	2544	159
2544	2544	11
2545	2545	120
2546	2546	54
2546	2546	84
2546	2546	44
2546	2546	45
2547	2547	44
2548	2548	19
2549	2549	32
2549	2549	51
2550	2550	6
2551	2551	56
2552	2552	2
2552	2552	13
2552	2552	21
2552	2552	1
2552	2552	11
2552	2552	27
2553	2553	80
2554	2554	32
2555	2555	101
2556	2556	32
2557	2557	67
2557	2557	84
2557	2557	85
2558	2558	103
2559	2559	19
2560	2560	55
2561	2561	20
2562	2562	55
2563	2563	34
2564	2564	103
2565	2565	116
2565	2565	81
2565	2565	52
2566	2566	33
2566	2566	19
2567	2567	53
2568	2568	73
2569	2569	73
2570	2570	67
2571	2571	20
2572	2572	24
2573	2573	10
2574	2574	55
2575	2575	108
2575	2575	31
2575	2575	58
2575	2575	66
2575	2575	65
2575	2575	160
2575	2575	59
2576	2576	2
2576	2576	27
2577	2577	6
2578	2578	44
2579	2579	6
2580	2580	6
2581	2581	6
2582	2582	6
2583	2583	63
2583	2583	6
2584	2584	100
2585	2585	19
2585	2585	11
2586	2586	15
2587	2587	20
2587	2587	22
2587	2587	28
2588	2588	54
2589	2589	26
2590	2590	121
2591	2591	103
2592	2592	50
2592	2592	6
2593	2593	28
2594	2594	42
2595	2595	103
2596	2596	32
2596	2596	51
2597	2597	107
2598	2598	97
2599	2599	161
2600	2600	55
2601	2601	12
2601	2601	72
2601	2601	14
2601	2601	15
2601	2601	16
2601	2601	20
2601	2601	22
2601	2601	100
2601	2601	23
2601	2601	28
2601	2601	29
2602	2602	31
2603	2603	137
2604	2604	107
2605	2605	107
2606	2606	32
2607	2607	6
2608	2608	32
2609	2609	67
2610	2610	67
2611	2611	67
2612	2612	67
2613	2613	120
2614	2614	103
2615	2615	32
2616	2616	121
2617	2617	8
2618	2618	33
2618	2618	19
2619	2619	45
2620	2620	55
2621	2621	55
2622	2622	121
2623	2623	32
2624	2624	24
2625	2625	101
2626	2626	107
2627	2627	103
2628	2628	55
2629	2629	120
2630	2630	73
2631	2631	103
2632	2632	73
2633	2633	103
2634	2634	103
2635	2635	103
2636	2636	103
2637	2637	84
2638	2638	77
2639	2639	55
2640	2640	73
2641	2641	121
2642	2642	6
2643	2643	10
2644	2644	23
2645	2645	55
2646	2646	19
2647	2647	6
2648	2648	103
2648	2648	73
2649	2649	53
2650	2650	55
2651	2651	120
2652	2652	103
2652	2652	73
2653	2653	103
2653	2653	73
2654	2654	32
2655	2655	44
2656	2656	44
2657	2657	70
2658	2658	52
2659	2659	97
2660	2660	67
2661	2661	19
2662	2662	103
2663	2663	32
2663	2663	51
2664	2664	73
2665	2665	77
2666	2666	34
2667	2667	2
2667	2667	19
2668	2668	44
2669	2669	103
2670	2670	44
2671	2671	67
2672	2672	55
2673	2673	121
2674	2674	3
2674	2674	99
2675	2675	103
2676	2676	6
2677	2677	133
2678	2678	55
2679	2679	67
2680	2680	78
2681	2681	2
2681	2681	3
2682	2682	73
2683	2683	32
2683	2683	51
2684	2684	103
2685	2685	67
2686	2686	34
2687	2687	103
2688	2688	44
2689	2689	55
2690	2690	74
2690	2690	34
2690	2690	121
2691	2691	55
2692	2692	101
2693	2693	72
2694	2694	41
2695	2695	42
2696	2696	55
2697	2697	6
2698	2698	67
2699	2699	121
2700	2700	32
2701	2701	72
2702	2702	55
2703	2703	31
2704	2704	103
2705	2705	55
2706	2706	50
2707	2707	73
2708	2708	103
2709	2709	50
2709	2709	6
2709	2709	10
2710	2710	44
2711	2711	55
2712	2712	103
2713	2713	73
2714	2714	74
2714	2714	34
2715	2715	120
2716	2716	6
2717	2717	2
2717	2717	13
2717	2717	7
2717	2717	33
2717	2717	3
2717	2717	17
2717	2717	18
2717	2717	19
2717	2717	21
2717	2717	1
2717	2717	8
2717	2717	9
2717	2717	49
2717	2717	69
2717	2717	98
2717	2717	4
2717	2717	5
2717	2717	23
2717	2717	24
2717	2717	6
2717	2717	25
2717	2717	99
2717	2717	11
2717	2717	27
2717	2717	10
2718	2718	120
2719	2719	55
2720	2720	55
2721	2721	32
2721	2721	51
2722	2722	75
1	1	1
2	2	1
3	3	2
3	3	3
3	3	4
3	3	5
3	3	6
4	4	7
4	4	8
4	4	9
4	4	5
4	4	6
4	4	10
5	5	1
5	5	11
6	6	12
6	6	2
6	6	13
6	6	7
6	6	14
6	6	15
6	6	16
6	6	17
6	6	18
6	6	19
6	6	20
6	6	21
6	6	1
6	6	8
6	6	9
6	6	22
6	6	4
6	6	5
6	6	23
6	6	24
6	6	6
6	6	25
6	6	26
6	6	11
6	6	27
6	6	28
6	6	10
6	6	29
6	6	30
7	7	31
8	8	32
9	9	2
9	9	33
9	9	4
10	10	34
11	11	32
11	11	35
12	12	34
12	12	36
12	12	37
13	13	1
13	13	38
14	14	1
15	15	16
15	15	1
15	15	26
16	16	28
17	17	32
18	18	39
19	19	32
20	20	32
21	21	24
22	22	12
22	22	15
22	22	22
22	22	23
22	22	29
23	23	33
23	23	19
23	23	4
24	24	6
25	25	6
26	26	6
27	27	32
28	28	32
28	28	35
29	29	37
30	30	25
30	30	10
31	31	19
31	31	1
31	31	40
32	32	21
32	32	5
32	32	23
32	32	25
32	32	10
33	33	41
33	33	42
34	34	32
35	35	32
36	36	32
37	37	1
38	38	43
39	39	37
40	40	35
41	41	44
41	41	45
42	42	7
42	42	5
42	42	10
43	43	46
44	44	6
45	45	32
46	46	24
47	47	32
47	47	35
48	48	43
49	49	33
49	49	19
50	50	47
50	50	32
51	51	48
51	51	19
52	52	6
52	52	28
53	53	32
54	54	1
55	55	37
56	56	33
56	56	19
56	56	49
57	57	32
58	58	50
58	58	6
59	59	32
60	60	6
61	61	12
61	61	15
61	61	20
61	61	22
61	61	29
62	62	42
62	62	51
62	62	52
63	63	19
64	64	41
64	64	6
65	65	32
66	66	35
67	67	43
68	68	6
69	69	53
70	70	6
71	71	6
72	72	43
73	73	32
74	74	6
75	75	6
76	76	6
77	77	32
78	78	31
79	79	54
80	80	19
81	81	1
82	82	36
83	83	53
84	84	2
84	84	33
84	84	19
84	84	49
85	85	35
86	86	54
87	87	50
88	88	4
89	89	35
90	90	55
90	90	56
91	91	6
92	92	57
92	92	31
92	92	58
92	92	22
92	92	6
92	92	59
92	92	28
93	93	6
94	94	32
95	95	32
96	96	32
96	96	35
97	97	31
98	98	10
99	99	60
99	99	50
99	99	20
99	99	6
99	99	28
99	99	10
100	100	61
101	101	54
102	102	54
102	102	62
102	102	63
103	103	32
104	104	64
105	105	19
106	106	48
106	106	19
107	107	54
108	108	32
109	109	32
110	110	32
111	111	54
111	111	63
111	111	6
112	112	65
113	113	60
113	113	42
113	113	57
113	113	59
113	113	28
114	114	32
115	115	51
116	116	51
117	117	6
118	118	19
118	118	1
119	119	19
120	120	64
121	121	32
122	122	32
123	123	42
124	124	32
125	125	6
126	126	57
126	126	66
126	126	59
127	127	67
128	128	68
128	128	54
128	128	32
129	129	32
130	130	69
130	130	10
131	131	32
132	132	54
132	132	32
133	133	32
134	134	32
135	135	70
136	136	32
137	137	19
137	137	1
138	138	68
139	139	6
140	140	6
141	141	48
141	141	71
142	142	8
142	142	6
143	143	19
144	144	32
145	145	72
146	146	54
146	146	32
146	146	35
147	147	32
148	148	43
149	149	32
150	150	32
151	151	50
151	151	28
152	152	6
153	153	32
154	154	50
154	154	6
154	154	28
155	155	32
156	156	32
157	157	73
158	158	1
159	159	72
160	160	32
161	161	53
162	162	32
163	163	32
164	164	54
164	164	32
165	165	54
166	166	32
167	167	53
168	168	10
169	169	54
170	170	19
170	170	1
170	170	11
171	171	1
172	172	74
173	173	75
173	173	76
174	174	77
175	175	54
176	176	34
177	177	78
177	177	79
178	178	80
179	179	55
180	180	32
181	181	81
181	181	52
182	182	6
183	183	43
184	184	32
185	185	6
186	186	82
187	187	61
188	188	53
189	189	53
190	190	51
191	191	53
192	192	32
193	193	32
194	194	43
195	195	43
196	196	83
197	197	32
198	198	1
199	199	42
200	200	55
201	201	74
202	202	50
203	203	84
203	203	85
204	204	72
205	205	76
206	206	54
206	206	51
206	206	81
206	206	52
207	207	47
207	207	32
208	208	82
209	209	86
210	210	84
211	211	32
211	211	51
212	212	32
213	213	1
214	214	47
215	215	43
216	216	87
217	217	37
218	218	32
219	219	70
220	220	32
221	221	32
222	222	32
223	223	88
224	224	54
225	225	51
226	226	43
227	227	32
228	228	24
229	229	53
230	230	89
231	231	5
232	232	6
233	233	32
234	234	20
235	235	6
236	236	54
236	236	63
237	237	68
237	237	54
237	237	32
238	238	85
239	239	32
240	240	54
241	241	32
242	242	61
243	243	76
244	244	6
245	245	23
246	246	59
246	246	28
247	247	17
247	247	6
248	248	90
249	249	28
250	250	79
251	251	72
252	252	53
253	253	32
254	254	32
255	255	54
256	256	85
257	257	54
258	258	82
259	259	61
260	260	35
261	261	91
261	261	24
262	262	64
263	263	53
264	264	92
265	265	93
266	266	42
267	267	94
267	267	62
268	268	32
269	269	95
270	270	35
271	271	74
271	271	34
272	272	32
273	273	68
274	274	82
275	275	32
276	276	44
277	277	45
278	278	37
279	279	61
280	280	32
281	281	39
282	282	37
283	283	32
284	284	82
285	285	84
286	286	53
287	287	32
288	288	6
289	289	35
290	290	53
291	291	54
292	292	43
293	293	53
294	294	11
295	295	32
296	296	32
297	297	32
298	298	61
299	299	96
299	299	55
299	299	37
300	300	37
301	301	55
301	301	56
302	302	43
303	303	32
304	304	32
305	305	53
306	306	35
307	307	32
308	308	53
309	309	97
310	310	35
311	311	32
312	312	6
312	312	28
313	313	32
314	314	54
315	315	97
316	316	68
317	317	13
317	317	21
317	317	25
318	318	42
319	319	31
320	320	35
321	321	1
322	322	68
322	322	32
322	322	35
323	323	54
324	324	44
324	324	45
325	325	82
326	326	54
327	327	18
327	327	98
327	327	6
327	327	99
328	328	37
329	329	61
330	330	81
330	330	52
331	331	32
332	332	97
333	333	72
334	334	74
335	335	6
336	336	16
336	336	29
337	337	54
338	338	6
339	339	41
339	339	6
340	340	51
341	341	32
342	342	35
343	343	53
344	344	35
345	345	32
346	346	53
347	347	53
348	348	54
349	349	53
350	350	35
351	351	95
352	352	32
353	353	23
353	353	29
354	354	23
355	355	32
356	356	54
357	357	80
358	358	18
358	358	6
359	359	84
359	359	45
360	360	73
361	361	100
362	362	41
362	362	6
363	363	101
363	363	56
364	364	35
365	365	54
366	366	6
367	367	55
368	368	32
369	369	42
369	369	57
370	370	32
371	371	32
372	372	70
373	373	102
374	374	32
375	375	32
376	376	64
377	377	54
378	378	82
379	379	42
380	380	42
381	381	42
382	382	103
383	383	53
384	384	53
385	385	53
386	386	54
387	387	32
388	388	45
389	389	68
390	390	15
390	390	23
391	391	35
392	392	1
393	393	96
394	394	18
394	394	6
395	395	32
396	396	32
397	397	10
398	398	32
399	399	101
399	399	56
400	400	72
401	401	54
402	402	59
403	403	81
404	404	44
405	405	104
406	406	105
407	407	2
408	408	32
409	409	32
410	410	96
411	411	51
411	411	52
412	412	35
413	413	96
414	414	53
415	415	42
416	416	95
417	417	95
418	418	32
419	419	65
420	420	103
421	421	32
422	422	83
423	423	32
424	424	37
425	425	106
426	426	6
427	427	54
428	428	85
429	429	42
430	430	68
431	431	54
432	432	32
433	433	64
434	434	35
435	435	54
436	436	84
437	437	83
438	438	54
439	439	45
440	440	96
441	441	32
442	442	54
443	443	45
444	444	73
445	445	73
446	446	54
447	447	54
448	448	107
449	449	82
450	450	108
451	451	72
452	452	72
453	453	97
454	454	55
455	455	35
456	456	32
457	457	109
458	458	82
459	459	110
460	460	35
461	461	47
461	461	32
462	462	96
463	463	111
464	464	97
465	465	95
466	466	96
467	467	97
468	468	32
469	469	112
470	470	82
471	471	82
472	472	53
473	473	110
474	474	82
475	475	53
476	476	112
477	477	97
478	478	32
479	479	6
480	480	85
481	481	32
482	482	54
483	483	54
484	484	54
485	485	97
486	486	97
487	487	6
488	488	53
489	489	43
490	490	53
491	491	53
492	492	83
492	492	82
493	493	113
494	494	43
495	495	54
495	495	32
496	496	56
497	497	37
498	498	56
499	499	114
500	500	55
501	501	95
502	502	35
503	503	73
504	504	73
505	505	115
506	506	97
507	507	35
508	508	95
509	509	82
510	510	53
511	511	1
512	512	48
513	513	54
514	514	116
515	515	54
516	516	79
517	517	37
518	518	73
519	519	99
520	520	55
520	520	37
521	521	31
522	522	117
523	523	6
524	524	95
525	525	41
526	526	55
526	526	56
527	527	68
528	528	32
529	529	54
530	530	34
531	531	32
532	532	32
533	533	96
534	534	64
535	535	2
536	536	6
537	537	45
538	538	68
539	539	107
540	540	82
541	541	54
542	542	54
543	543	97
544	544	54
545	545	118
546	546	54
547	547	82
548	548	107
549	549	6
549	549	119
550	550	79
551	551	55
552	552	95
553	553	43
554	554	73
555	555	73
556	556	73
557	557	51
557	557	52
558	558	54
558	558	32
558	558	44
559	559	35
560	560	53
561	561	103
562	562	103
563	563	85
564	564	35
565	565	97
566	566	97
567	567	54
567	567	32
568	568	77
569	569	73
570	570	110
571	571	82
572	572	53
573	573	83
574	574	51
575	575	53
576	576	53
577	577	53
578	578	117
579	579	53
580	580	103
581	581	73
582	582	83
583	583	109
584	584	82
585	585	82
586	586	120
587	587	55
588	588	82
589	589	54
590	590	68
591	591	121
592	592	96
593	593	73
594	594	61
595	595	32
596	596	54
597	597	107
598	598	82
599	599	37
600	600	54
601	601	37
602	602	53
603	603	122
604	604	101
605	605	6
606	606	89
607	607	55
608	608	31
609	609	53
610	610	55
610	610	56
611	611	96
612	612	55
612	612	56
613	613	37
614	614	32
615	615	42
616	616	78
617	617	54
618	618	42
619	619	54
620	620	6
621	621	42
622	622	42
623	623	116
623	623	81
623	623	52
624	624	79
625	625	42
626	626	42
627	627	96
628	628	101
629	629	123
629	629	124
629	629	82
630	630	54
631	631	43
632	632	83
633	633	125
633	633	126
634	634	70
635	635	53
636	636	103
637	637	103
638	638	53
639	639	54
639	639	32
640	640	73
641	641	53
642	642	83
643	643	82
644	644	54
645	645	82
646	646	6
647	647	103
648	648	35
649	649	53
650	650	83
651	651	34
652	652	82
653	653	6
654	654	35
655	655	82
656	656	96
657	657	6
658	658	53
659	659	103
660	660	82
661	661	97
662	662	96
663	663	64
664	664	96
665	665	44
665	665	45
666	666	126
667	667	96
668	668	52
669	669	37
670	670	65
671	671	54
671	671	32
672	672	6
673	673	73
674	674	96
675	675	81
676	676	35
677	677	125
678	678	96
678	678	55
678	678	56
679	679	101
679	679	56
680	680	6
681	681	6
682	682	103
683	683	43
684	684	89
685	685	95
686	686	95
687	687	85
688	688	53
689	689	51
690	690	47
691	691	51
692	692	53
693	693	34
694	694	82
695	695	53
696	696	82
697	697	84
697	697	44
697	697	45
698	698	54
699	699	6
700	700	83
701	701	55
702	702	81
703	703	54
703	703	32
704	704	68
705	705	73
706	706	55
707	707	54
708	708	97
709	709	79
710	710	32
711	711	34
712	712	99
713	713	73
714	714	64
715	715	75
716	716	51
717	717	79
718	718	54
719	719	75
720	720	127
721	721	32
722	722	72
723	723	85
724	724	54
725	725	93
726	726	20
726	726	22
727	727	32
728	728	54
729	729	85
730	730	1
731	731	100
732	732	54
733	733	97
734	734	101
735	735	32
736	736	56
737	737	32
738	738	32
739	739	41
740	740	56
741	741	35
742	742	6
743	743	55
744	744	35
745	745	53
746	746	54
747	747	103
748	748	53
749	749	53
750	750	35
751	751	54
752	752	103
753	753	82
754	754	37
755	755	55
755	755	56
756	756	128
757	757	97
758	758	35
759	759	103
760	760	83
761	761	82
762	762	113
763	763	35
764	764	129
764	764	130
765	765	131
765	765	132
766	766	103
767	767	103
768	768	53
769	769	73
770	770	32
770	770	82
771	771	112
772	772	112
773	773	6
774	774	32
775	775	37
776	776	61
777	777	54
778	778	54
779	779	6
780	780	101
780	780	133
781	781	31
782	782	84
783	783	97
784	784	97
785	785	54
785	785	35
786	786	54
787	787	104
788	788	82
789	789	96
790	790	37
791	791	96
792	792	56
793	793	54
794	794	134
795	795	32
796	796	32
797	797	43
798	798	85
799	799	113
800	800	82
801	801	53
802	802	35
803	803	34
804	804	32
805	805	54
806	806	83
807	807	115
808	808	82
809	809	43
810	810	35
811	811	53
812	812	82
813	813	44
814	814	55
815	815	73
816	816	44
817	817	82
818	818	97
819	819	103
820	820	64
821	821	82
822	822	53
823	823	95
824	824	70
825	825	82
826	826	83
827	827	97
828	828	53
829	829	110
830	830	53
831	831	53
832	832	41
832	832	6
833	833	65
834	834	97
835	835	132
835	835	130
836	836	97
837	837	78
838	838	131
839	839	32
840	840	41
841	841	135
842	842	90
843	843	6
844	844	64
845	845	32
846	846	64
847	847	75
848	848	83
849	849	73
850	850	113
851	851	125
852	852	115
853	853	129
854	854	54
855	855	35
856	856	31
857	857	6
858	858	74
858	858	136
859	859	73
860	860	54
860	860	6
861	861	97
862	862	56
863	863	74
864	864	137
865	865	112
866	866	138
867	867	51
867	867	52
868	868	32
869	869	54
870	870	32
871	871	54
872	872	125
873	873	139
874	874	137
875	875	56
876	876	103
877	877	96
878	878	24
879	879	35
880	880	103
881	881	53
882	882	6
883	883	44
883	883	45
884	884	96
885	885	54
886	886	54
887	887	82
888	888	34
889	889	32
890	890	35
891	891	53
892	892	140
893	893	82
894	894	84
894	894	85
895	895	53
896	896	96
897	897	70
898	898	61
898	898	37
899	899	82
900	900	46
901	901	37
902	902	117
903	903	41
904	904	54
905	905	44
906	906	68
907	907	137
908	908	37
909	909	125
910	910	36
911	911	32
912	912	81
913	913	81
913	913	52
914	914	107
915	915	107
916	916	45
917	917	117
918	918	132
919	919	43
920	920	55
920	920	56
921	921	35
922	922	53
923	923	129
923	923	130
924	924	115
925	925	54
926	926	85
927	927	53
928	928	103
929	929	117
930	930	96
931	931	117
932	932	96
933	933	107
934	934	37
935	935	73
936	936	73
937	937	73
938	938	73
939	939	73
940	940	96
941	941	137
942	942	54
943	943	89
944	944	32
945	945	137
946	946	96
947	947	137
948	948	52
949	949	141
950	950	35
951	951	74
952	952	83
953	953	32
954	954	97
955	955	54
955	955	32
956	956	84
957	957	51
958	958	96
959	959	55
960	960	64
961	961	96
962	962	83
963	963	97
964	964	65
965	965	1
966	966	36
967	967	106
968	968	32
969	969	35
970	970	142
971	971	54
971	971	63
971	971	6
972	972	64
973	973	55
974	974	6
975	975	32
976	976	82
977	977	98
977	977	99
978	978	32
979	979	117
980	980	32
981	981	74
982	982	97
983	983	45
984	984	54
985	985	52
986	986	85
987	987	56
988	988	32
989	989	35
990	990	103
990	990	73
991	991	52
992	992	54
993	993	55
993	993	56
994	994	54
995	995	117
996	996	73
997	997	73
998	998	73
999	999	32
1000	1000	72
1001	1001	54
1002	1002	132
1003	1003	54
1003	1003	32
1004	1004	61
1005	1005	123
1006	1006	37
1007	1007	51
1008	1008	52
1009	1009	61
1010	1010	52
1011	1011	54
1012	1012	37
1013	1013	96
1014	1014	53
1015	1015	117
1016	1016	6
1017	1017	143
1018	1018	37
1019	1019	115
1020	1020	97
1021	1021	107
1022	1022	97
1023	1023	97
1024	1024	54
1025	1025	53
1026	1026	32
1026	1026	35
1027	1027	129
1028	1028	101
1028	1028	56
1029	1029	32
1029	1029	35
1030	1030	84
1031	1031	35
1032	1032	97
1033	1033	73
1034	1034	75
1035	1035	37
1036	1036	95
1037	1037	85
1038	1038	103
1039	1039	73
1040	1040	53
1041	1041	100
1042	1042	125
1043	1043	53
1044	1044	96
1045	1045	73
1046	1046	73
1047	1047	73
1048	1048	73
1049	1049	104
1050	1050	96
1051	1051	53
1052	1052	53
1053	1053	96
1054	1054	51
1055	1055	35
1056	1056	6
1057	1057	55
1058	1058	107
1059	1059	144
1060	1060	117
1061	1061	83
1062	1062	32
1063	1063	96
1064	1064	6
1065	1065	129
1066	1066	54
1066	1066	32
1067	1067	32
1068	1068	96
1069	1069	73
1070	1070	54
1071	1071	107
1072	1072	55
1073	1073	84
1074	1074	54
1075	1075	54
1076	1076	97
1077	1077	107
1078	1078	82
1079	1079	133
1080	1080	137
1081	1081	103
1082	1082	34
1083	1083	123
1084	1084	96
1085	1085	141
1086	1086	82
1087	1087	96
1088	1088	125
1089	1089	96
1090	1090	117
1091	1091	96
1092	1092	84
1093	1093	24
1094	1094	125
1095	1095	35
1096	1096	53
1097	1097	145
1098	1098	96
1099	1099	32
1100	1100	53
1101	1101	43
1102	1102	53
1103	1103	35
1104	1104	96
1105	1105	115
1106	1106	32
1107	1107	96
1108	1108	103
1109	1109	117
1110	1110	97
1111	1111	35
1112	1112	37
1113	1113	54
1114	1114	97
1115	1115	107
1116	1116	74
1116	1116	34
1116	1116	121
1117	1117	97
1118	1118	54
1119	1119	97
1120	1120	54
1121	1121	84
1122	1122	103
1123	1123	96
1124	1124	53
1125	1125	96
1126	1126	146
1127	1127	43
1128	1128	147
1129	1129	96
1130	1130	55
1131	1131	147
1132	1132	147
1133	1133	117
1134	1134	117
1135	1135	82
1136	1136	43
1137	1137	53
1138	1138	53
1139	1139	32
1140	1140	34
1141	1141	125
1142	1142	53
1143	1143	53
1144	1144	53
1145	1145	32
1146	1146	139
1147	1147	6
1148	1148	73
1149	1149	124
1150	1150	73
1151	1151	50
1151	1151	6
1152	1152	54
1153	1153	78
1154	1154	55
1154	1154	37
1155	1155	73
1156	1156	68
1157	1157	73
1158	1158	37
1159	1159	82
1160	1160	68
1160	1160	32
1161	1161	97
1162	1162	44
1163	1163	144
1164	1164	82
1165	1165	146
1166	1166	117
1167	1167	52
1168	1168	68
1169	1169	97
1170	1170	137
1171	1171	64
1172	1172	139
1173	1173	73
1174	1174	28
1175	1175	54
1176	1176	73
1177	1177	84
1177	1177	85
1178	1178	6
1179	1179	81
1180	1180	129
1181	1181	54
1182	1182	132
1183	1183	67
1184	1184	44
1185	1185	139
1186	1186	124
1187	1187	96
1188	1188	32
1189	1189	97
1190	1190	117
1191	1191	137
1192	1192	115
1193	1193	142
1193	1193	133
1194	1194	132
1195	1195	54
1196	1196	84
1196	1196	85
1197	1197	117
1198	1198	32
1199	1199	1
1200	1200	139
1201	1201	90
1202	1202	51
1202	1202	52
1203	1203	96
1204	1204	96
1205	1205	32
1206	1206	1
1207	1207	84
1207	1207	85
1208	1208	132
1209	1209	2
1210	1210	54
1211	1211	52
1212	1212	132
1213	1213	97
1214	1214	84
1214	1214	45
1215	1215	82
1216	1216	97
1217	1217	32
1218	1218	133
1219	1219	84
1220	1220	129
1221	1221	96
1222	1222	54
1222	1222	32
1223	1223	83
1224	1224	148
1225	1225	104
1226	1226	104
1227	1227	70
1228	1228	96
1229	1229	79
1230	1230	137
1231	1231	96
1232	1232	147
1233	1233	125
1234	1234	129
1234	1234	64
1235	1235	96
1236	1236	103
1237	1237	96
1238	1238	35
1239	1239	61
1240	1240	55
1241	1241	104
1242	1242	82
1243	1243	80
1244	1244	96
1245	1245	147
1246	1246	103
1247	1247	147
1248	1248	55
1249	1249	96
1250	1250	32
1251	1251	53
1252	1252	125
1253	1253	53
1254	1254	53
1255	1255	147
1256	1256	93
1257	1257	97
1258	1258	96
1259	1259	103
1259	1259	73
1260	1260	129
1261	1261	74
1261	1261	121
1262	1262	129
1263	1263	129
1264	1264	96
1265	1265	96
1266	1266	129
1267	1267	97
1268	1268	55
1269	1269	73
1270	1270	115
1271	1271	96
1272	1272	35
1273	1273	6
1274	1274	34
1274	1274	37
1275	1275	141
1276	1276	53
1277	1277	53
1278	1278	37
1279	1279	133
1280	1280	117
1281	1281	6
1282	1282	147
1283	1283	129
1283	1283	117
1284	1284	96
1285	1285	103
1286	1286	103
1287	1287	61
1288	1288	113
1289	1289	107
1290	1290	97
1291	1291	82
1292	1292	137
1293	1293	149
1294	1294	54
1295	1295	137
1296	1296	125
1297	1297	96
1298	1298	53
1299	1299	6
1300	1300	96
1301	1301	103
1302	1302	103
1303	1303	53
1304	1304	102
1305	1305	96
1306	1306	53
1307	1307	103
1308	1308	53
1309	1309	96
1310	1310	53
1311	1311	129
1311	1311	64
1312	1312	146
1313	1313	129
1314	1314	73
1315	1315	96
1316	1316	1
1317	1317	96
1318	1318	146
1319	1319	56
1320	1320	37
1321	1321	117
1322	1322	97
1323	1323	96
1324	1324	97
1325	1325	82
1326	1326	6
1327	1327	93
1328	1328	137
1329	1329	55
1330	1330	61
1331	1331	150
1332	1332	146
1333	1333	96
1334	1334	55
1335	1335	53
1336	1336	147
1337	1337	34
1338	1338	84
1339	1339	151
1340	1340	103
1341	1341	103
1342	1342	147
1343	1343	96
1344	1344	53
1345	1345	53
1346	1346	103
1347	1347	34
1348	1348	146
1349	1349	123
1350	1350	115
1351	1351	55
1352	1352	53
1353	1353	6
1354	1354	115
1355	1355	134
1356	1356	35
1357	1357	53
1358	1358	103
1359	1359	6
1360	1360	96
1361	1361	35
1362	1362	53
1363	1363	53
1364	1364	73
1365	1365	96
1366	1366	6
1367	1367	53
1368	1368	53
1369	1369	32
1370	1370	84
1371	1371	37
1372	1372	83
1373	1373	16
1374	1374	56
1375	1375	141
1376	1376	50
1377	1377	68
1378	1378	97
1379	1379	67
1379	1379	45
1380	1380	51
1381	1381	44
1382	1382	73
1383	1383	45
1384	1384	54
1385	1385	6
1386	1386	32
1386	1386	51
1387	1387	85
1388	1388	85
1389	1389	85
1390	1390	129
1391	1391	115
1392	1392	129
1393	1393	73
1394	1394	73
1395	1395	95
1396	1396	97
1397	1397	97
1398	1398	142
1399	1399	96
1400	1400	37
1401	1401	54
1402	1402	35
1403	1403	55
1404	1404	98
1404	1404	99
1405	1405	97
1406	1406	97
1407	1407	117
1408	1408	80
1409	1409	45
1410	1410	97
1411	1411	97
1412	1412	118
1413	1413	77
1414	1414	73
1415	1415	137
1416	1416	56
1417	1417	124
1417	1417	82
1418	1418	96
1419	1419	84
1420	1420	82
1421	1421	96
1422	1422	103
1422	1422	73
1423	1423	96
1424	1424	96
1425	1425	96
1426	1426	53
1427	1427	73
1428	1428	96
1429	1429	125
1430	1430	53
1431	1431	97
1432	1432	73
1433	1433	73
1434	1434	37
1435	1435	83
1436	1436	37
1437	1437	37
1438	1438	149
1439	1439	96
1440	1440	53
1441	1441	96
1442	1442	53
1443	1443	115
1444	1444	96
1445	1445	6
1446	1446	53
1447	1447	53
1448	1448	103
1449	1449	53
1450	1450	96
1451	1451	107
1452	1452	55
1453	1453	129
1454	1454	82
1455	1455	73
1456	1456	1
1457	1457	102
1457	1457	95
1458	1458	54
1459	1459	78
1460	1460	142
1461	1461	15
1461	1461	23
1462	1462	129
1463	1463	75
1463	1463	76
1464	1464	18
1465	1465	16
1466	1466	97
1467	1467	96
1468	1468	73
1469	1469	73
1470	1470	73
1471	1471	73
1472	1472	97
1473	1473	32
1474	1474	64
1475	1475	73
1476	1476	54
1477	1477	109
1478	1478	54
1479	1479	115
1480	1480	34
1481	1481	97
1482	1482	34
1482	1482	37
1483	1483	53
1484	1484	56
1485	1485	104
1486	1486	96
1487	1487	53
1488	1488	54
1489	1489	55
1490	1490	103
1490	1490	73
1491	1491	96
1492	1492	96
1493	1493	97
1494	1494	97
1495	1495	149
1496	1496	97
1497	1497	149
1498	1498	54
1498	1498	32
1499	1499	96
1500	1500	54
1500	1500	32
1501	1501	96
1502	1502	97
1503	1503	96
1504	1504	56
1505	1505	35
1506	1506	96
1507	1507	1
1508	1508	96
1509	1509	53
1510	1510	103
1511	1511	97
1512	1512	115
1513	1513	53
1514	1514	147
1515	1515	96
1516	1516	96
1517	1517	96
1518	1518	97
1519	1519	96
1520	1520	96
1521	1521	103
1521	1521	73
1522	1522	53
1523	1523	35
1524	1524	83
1525	1525	96
1526	1526	32
1527	1527	129
1528	1528	75
1529	1529	68
1530	1530	115
1531	1531	141
1532	1532	54
1533	1533	85
1534	1534	89
1535	1535	137
1536	1536	16
1537	1537	73
1538	1538	115
1539	1539	54
1540	1540	96
1541	1541	97
1542	1542	97
1543	1543	42
1543	1543	57
1544	1544	109
1545	1545	112
1545	1545	152
1546	1546	45
1547	1547	129
1548	1548	73
1549	1549	84
1550	1550	96
1551	1551	115
1552	1552	18
1552	1552	98
1552	1552	6
1553	1553	97
1554	1554	97
1555	1555	137
1556	1556	73
1557	1557	80
1558	1558	20
1559	1559	77
1560	1560	73
1561	1561	153
1562	1562	149
1563	1563	115
1564	1564	97
1565	1565	56
1566	1566	115
1567	1567	53
1568	1568	96
1569	1569	96
1570	1570	55
1571	1571	96
1572	1572	103
1573	1573	73
1574	1574	73
1575	1575	117
1576	1576	96
1577	1577	115
1578	1578	103
1579	1579	53
1580	1580	115
1581	1581	37
1582	1582	103
1583	1583	97
1584	1584	115
1585	1585	97
1586	1586	54
1587	1587	149
1588	1588	103
1589	1589	149
1590	1590	137
1591	1591	67
1592	1592	84
1592	1592	85
1593	1593	97
1594	1594	53
1595	1595	73
1596	1596	73
1597	1597	53
1598	1598	53
1599	1599	103
1600	1600	101
1601	1601	97
1602	1602	103
1603	1603	53
1604	1604	53
1605	1605	115
1606	1606	73
1607	1607	147
1608	1608	147
1609	1609	104
1610	1610	97
1611	1611	53
1612	1612	115
1613	1613	147
1614	1614	53
1615	1615	96
1616	1616	53
1617	1617	96
1618	1618	82
1619	1619	137
1620	1620	84
1621	1621	97
1622	1622	141
1623	1623	123
1624	1624	97
1625	1625	6
1626	1626	44
1627	1627	107
1628	1628	64
1629	1629	115
1630	1630	149
1631	1631	63
1632	1632	149
1633	1633	97
1634	1634	51
1635	1635	35
1636	1636	73
1637	1637	6
1638	1638	137
1639	1639	97
1640	1640	97
1641	1641	83
1642	1642	82
1643	1643	146
1644	1644	97
1645	1645	42
1646	1646	115
1647	1647	137
1648	1648	96
1649	1649	52
1650	1650	52
1651	1651	141
1652	1652	115
1653	1653	85
1654	1654	78
1655	1655	37
1656	1656	73
1657	1657	154
1658	1658	54
1659	1659	73
1660	1660	115
1661	1661	149
1662	1662	53
1663	1663	84
1664	1664	1
1665	1665	104
1666	1666	103
1667	1667	103
1668	1668	53
1669	1669	96
1670	1670	53
1671	1671	97
1672	1672	97
1673	1673	96
1674	1674	97
1675	1675	103
1675	1675	73
1676	1676	96
1677	1677	103
1678	1678	137
1679	1679	115
1680	1680	146
1681	1681	53
1682	1682	147
1683	1683	96
1684	1684	149
1685	1685	137
1686	1686	115
1687	1687	103
1688	1688	53
1689	1689	53
1690	1690	103
1691	1691	96
1692	1692	73
1693	1693	73
1694	1694	149
1695	1695	97
1696	1696	73
1697	1697	149
1698	1698	55
1699	1699	141
1700	1700	96
1701	1701	73
1702	1702	149
1703	1703	96
1704	1704	6
1705	1705	73
1706	1706	149
1707	1707	141
1708	1708	37
1709	1709	115
1710	1710	73
1711	1711	141
1712	1712	6
1713	1713	96
1714	1714	97
1715	1715	73
1716	1716	84
1716	1716	45
1717	1717	6
1718	1718	115
1719	1719	53
1720	1720	115
1721	1721	53
1722	1722	115
1723	1723	129
1724	1724	137
1725	1725	34
1726	1726	97
1727	1727	104
1728	1728	32
1729	1729	96
1730	1730	103
1730	1730	73
1731	1731	115
1732	1732	103
1732	1732	73
1733	1733	115
1734	1734	55
1735	1735	34
1736	1736	96
1737	1737	96
1738	1738	97
1739	1739	115
1740	1740	37
1741	1741	96
1742	1742	54
1743	1743	54
1744	1744	97
1745	1745	149
1746	1746	67
1747	1747	149
1748	1748	103
1749	1749	97
1750	1750	103
1751	1751	103
1752	1752	83
1753	1753	137
1754	1754	115
1755	1755	84
1755	1755	85
1756	1756	96
1757	1757	55
1758	1758	115
1759	1759	117
1760	1760	97
1761	1761	34
1762	1762	73
1763	1763	97
1764	1764	137
1765	1765	64
1766	1766	100
1767	1767	6
1768	1768	37
1769	1769	64
1770	1770	115
1771	1771	107
1772	1772	97
1773	1773	64
1774	1774	97
1775	1775	115
1776	1776	73
1777	1777	73
1778	1778	73
1779	1779	82
1780	1780	54
1781	1781	64
1782	1782	115
1783	1783	134
1784	1784	56
1785	1785	37
1786	1786	6
1787	1787	146
1788	1788	97
1789	1789	115
1790	1790	97
1791	1791	32
1792	1792	73
1793	1793	54
1794	1794	73
1795	1795	97
1796	1796	73
1797	1797	61
1798	1798	32
1799	1799	106
1800	1800	32
1801	1801	32
1802	1802	32
1803	1803	96
1804	1804	52
1805	1805	73
1806	1806	115
1807	1807	137
1808	1808	96
1809	1809	64
1810	1810	115
1811	1811	53
1812	1812	115
1813	1813	115
1814	1814	115
1815	1815	115
1816	1816	137
1817	1817	149
1818	1818	97
1819	1819	115
1820	1820	35
1821	1821	96
1822	1822	155
1823	1823	97
1824	1824	115
1825	1825	34
1826	1826	115
1827	1827	103
1828	1828	115
1829	1829	45
1830	1830	97
1831	1831	115
1832	1832	147
1833	1833	115
1834	1834	97
1835	1835	34
1836	1836	149
1837	1837	115
1838	1838	115
1839	1839	103
1840	1840	103
1841	1841	115
1842	1842	96
1843	1843	53
1844	1844	97
1845	1845	97
1846	1846	89
1847	1847	97
1848	1848	6
1849	1849	97
1850	1850	149
1851	1851	5
1852	1852	53
1853	1853	137
1854	1854	137
1855	1855	115
1856	1856	115
1857	1857	96
1858	1858	137
1859	1859	73
1860	1860	115
1861	1861	53
1862	1862	6
1863	1863	96
1864	1864	137
1865	1865	115
1866	1866	115
1867	1867	55
1868	1868	137
1869	1869	137
1870	1870	137
1871	1871	73
1872	1872	137
1873	1873	53
1874	1874	42
1875	1875	103
1876	1876	96
1877	1877	115
1878	1878	96
1879	1879	115
1880	1880	115
1881	1881	89
1882	1882	53
1883	1883	115
1884	1884	34
1885	1885	103
1886	1886	103
1887	1887	73
1888	1888	53
1889	1889	96
1890	1890	37
1891	1891	147
1892	1892	137
1893	1893	103
1894	1894	97
1895	1895	115
1896	1896	96
1897	1897	6
1898	1898	115
1899	1899	84
1900	1900	9
1901	1901	67
1901	1901	45
1902	1902	97
1903	1903	97
1904	1904	139
1905	1905	96
1906	1906	137
1907	1907	97
1908	1908	137
1909	1909	137
1910	1910	156
1911	1911	73
1912	1912	78
1913	1913	32
1914	1914	54
1915	1915	97
1916	1916	73
1917	1917	73
1918	1918	73
1919	1919	73
1920	1920	97
1921	1921	67
1921	1921	45
1922	1922	56
1923	1923	32
1924	1924	107
1925	1925	149
1926	1926	73
1927	1927	73
1928	1928	146
1929	1929	137
1930	1930	53
1931	1931	115
1932	1932	137
1933	1933	137
1934	1934	115
1935	1935	64
1936	1936	146
1937	1937	137
1938	1938	96
1938	1938	121
1939	1939	137
1940	1940	137
1941	1941	97
1942	1942	73
1943	1943	103
1944	1944	73
1945	1945	6
1946	1946	6
1947	1947	97
1948	1948	117
1949	1949	6
1950	1950	97
1951	1951	53
1952	1952	73
1953	1953	37
1954	1954	115
1955	1955	96
1956	1956	115
1957	1957	96
1958	1958	32
1959	1959	115
1960	1960	84
1961	1961	115
1962	1962	141
1963	1963	97
1964	1964	137
1965	1965	73
1966	1966	129
1967	1967	55
1968	1968	54
1969	1969	103
1970	1970	96
1971	1971	97
1972	1972	117
1973	1973	115
1974	1974	97
1975	1975	73
1976	1976	137
1977	1977	107
1978	1978	77
1979	1979	61
1980	1980	149
1981	1981	73
1982	1982	137
1983	1983	137
1984	1984	137
1985	1985	53
1986	1986	73
1987	1987	149
1988	1988	73
1989	1989	73
1990	1990	37
1991	1991	96
1992	1992	137
1993	1993	97
1994	1994	97
1995	1995	55
1996	1996	96
1997	1997	35
1998	1998	73
1999	1999	129
2000	2000	73
2001	2001	54
2002	2002	137
2003	2003	73
2004	2004	137
2005	2005	35
2006	2006	53
2007	2007	137
2008	2008	150
2009	2009	96
2010	2010	53
2011	2011	56
2012	2012	31
2013	2013	152
2014	2014	137
2015	2015	67
2016	2016	97
2017	2017	6
2018	2018	97
2019	2019	115
2020	2020	137
2021	2021	115
2022	2022	54
2023	2023	97
2024	2024	54
2024	2024	6
2025	2025	152
2026	2026	137
2027	2027	96
2028	2028	34
2029	2029	97
2030	2030	97
2031	2031	137
2032	2032	137
2033	2033	54
2034	2034	73
2035	2035	149
2036	2036	137
2037	2037	137
2038	2038	73
2039	2039	98
2039	2039	99
2040	2040	36
2041	2041	85
2042	2042	129
2042	2042	64
2043	2043	99
2044	2044	97
2045	2045	6
2046	2046	137
2047	2047	137
2048	2048	96
2049	2049	85
2050	2050	53
2051	2051	56
2052	2052	34
2053	2053	146
2054	2054	96
2055	2055	89
2056	2056	120
2057	2057	137
2058	2058	149
2059	2059	103
2060	2060	73
2061	2061	73
2062	2062	137
2063	2063	53
2064	2064	97
2065	2065	96
2066	2066	73
2067	2067	73
2068	2068	73
2069	2069	73
2070	2070	137
2071	2071	137
2072	2072	96
2073	2073	137
2074	2074	73
2075	2075	96
2076	2076	137
2077	2077	73
2078	2078	147
2079	2079	73
2080	2080	54
2081	2081	149
2082	2082	80
2083	2083	45
2084	2084	6
2085	2085	73
2086	2086	79
2087	2087	97
2088	2088	97
2089	2089	97
2090	2090	96
2091	2091	97
2092	2092	137
2093	2093	96
2094	2094	96
2095	2095	73
2096	2096	63
2097	2097	96
2098	2098	137
2099	2099	137
2100	2100	97
2101	2101	149
2102	2102	137
2103	2103	137
2104	2104	54
2105	2105	54
2106	2106	73
2107	2107	137
2108	2108	117
2109	2109	149
2110	2110	96
2111	2111	96
2111	2111	133
2112	2112	103
2113	2113	149
2114	2114	137
2115	2115	124
2116	2116	73
2117	2117	97
2118	2118	73
2119	2119	73
2120	2120	73
2121	2121	96
2122	2122	73
2123	2123	115
2124	2124	137
2125	2125	115
2126	2126	149
2127	2127	115
2128	2128	115
2129	2129	149
2130	2130	6
2131	2131	54
2132	2132	73
2133	2133	6
2134	2134	73
2135	2135	96
2136	2136	96
2137	2137	137
2138	2138	96
2139	2139	137
2140	2140	137
2141	2141	137
2142	2142	61
2142	2142	37
2143	2143	83
2144	2144	96
2145	2145	149
2146	2146	53
2147	2147	129
2148	2148	37
2149	2149	35
2150	2150	137
2151	2151	37
2152	2152	155
2153	2153	96
2154	2154	73
2155	2155	115
2156	2156	96
2157	2157	96
2158	2158	137
2159	2159	73
2160	2160	10
2161	2161	73
2162	2162	155
2163	2163	137
2164	2164	73
2165	2165	115
2166	2166	6
2167	2167	54
2168	2168	149
2169	2169	6
2170	2170	96
2171	2171	137
2172	2172	137
2173	2173	32
2174	2174	96
2175	2175	73
2176	2176	85
2177	2177	141
2178	2178	34
2179	2179	96
2180	2180	73
2181	2181	96
2182	2182	97
2183	2183	73
2184	2184	73
2185	2185	54
2186	2186	97
2187	2187	149
2188	2188	149
2189	2189	149
2190	2190	129
2191	2191	137
2192	2192	149
2193	2193	149
2194	2194	149
2195	2195	96
2196	2196	34
2197	2197	37
2198	2198	149
2199	2199	6
2200	2200	53
2201	2201	149
2202	2202	146
2203	2203	137
2204	2204	73
2205	2205	97
2206	2206	73
2207	2207	137
2208	2208	115
2209	2209	97
2210	2210	129
2211	2211	115
2212	2212	137
2213	2213	97
2214	2214	146
2215	2215	74
2216	2216	55
2217	2217	137
2218	2218	137
2219	2219	53
2220	2220	129
2221	2221	129
2222	2222	34
2223	2223	73
2224	2224	73
2225	2225	73
2226	2226	73
2227	2227	73
2228	2228	73
2229	2229	117
2230	2230	73
2231	2231	73
2232	2232	96
2233	2233	73
2234	2234	73
2235	2235	73
2236	2236	73
2237	2237	149
2238	2238	37
2239	2239	96
2240	2240	96
2241	2241	96
2242	2242	34
2243	2243	137
2244	2244	137
2245	2245	96
2246	2246	73
2247	2247	96
2248	2248	137
2249	2249	96
2250	2250	149
2251	2251	64
2252	2252	73
2253	2253	73
2254	2254	96
2255	2255	96
2256	2256	96
2257	2257	64
2258	2258	73
2259	2259	137
2260	2260	37
2261	2261	137
2262	2262	96
2263	2263	96
2264	2264	129
2265	2265	129
2266	2266	74
2267	2267	97
2268	2268	96
2269	2269	96
2270	2270	115
2271	2271	115
2272	2272	73
2273	2273	54
2274	2274	56
2275	2275	37
2276	2276	55
2277	2277	73
2278	2278	34
2279	2279	149
2280	2280	73
2281	2281	36
2282	2282	115
2283	2283	155
2284	2284	79
2285	2285	32
2286	2286	6
2287	2287	6
2288	2288	6
2289	2289	24
2290	2290	96
2291	2291	61
2292	2292	32
2293	2293	73
2294	2294	149
2295	2295	34
2296	2296	73
2297	2297	96
2298	2298	115
2299	2299	6
2300	2300	6
2301	2301	141
2302	2302	74
2302	2302	34
2302	2302	36
2303	2303	73
2304	2304	54
2305	2305	137
2306	2306	112
2307	2307	112
2308	2308	73
2309	2309	57
2310	2310	54
2311	2311	82
2312	2312	117
2313	2313	82
2314	2314	115
2315	2315	82
2316	2316	83
2316	2316	157
2317	2317	77
2318	2318	155
2319	2319	28
2320	2320	73
2321	2321	73
2322	2322	73
2323	2323	73
2324	2324	32
2325	2325	37
2326	2326	108
2327	2327	73
2328	2328	37
2329	2329	21
2330	2330	73
2331	2331	16
2332	2332	104
2333	2333	137
2334	2334	137
2335	2335	141
2336	2336	70
2337	2337	146
2338	2338	129
2339	2339	137
2340	2340	35
2341	2341	73
2342	2342	6
2343	2343	73
2344	2344	73
2345	2345	82
2346	2346	78
2347	2347	144
2348	2348	73
2349	2349	137
2350	2350	83
2351	2351	77
2352	2352	83
2353	2353	115
2354	2354	129
2355	2355	10
2356	2356	48
2357	2357	82
2358	2358	146
2359	2359	74
2360	2360	35
2361	2361	73
2362	2362	54
2363	2363	82
2364	2364	117
2365	2365	44
2366	2366	96
2367	2367	97
2368	2368	73
2369	2369	149
2370	2370	73
2371	2371	158
2372	2372	73
2373	2373	34
2374	2374	100
2375	2375	6
2376	2376	6
2377	2377	115
2378	2378	73
2379	2379	10
2380	2380	115
2381	2381	6
2382	2382	141
2383	2383	73
2384	2384	97
2385	2385	146
2386	2386	140
2387	2387	18
2388	2388	107
2389	2389	6
2390	2390	54
2391	2391	35
2392	2392	41
2393	2393	78
2394	2394	73
2395	2395	73
2396	2396	78
2397	2397	6
2398	2398	96
2399	2399	8
2400	2400	54
2401	2401	137
2402	2402	79
2403	2403	140
2404	2404	140
2405	2405	54
2406	2406	146
2407	2407	35
2408	2408	154
2408	2408	80
2409	2409	124
2410	2410	97
2411	2411	73
2412	2412	42
2413	2413	57
2414	2414	57
2415	2415	35
2416	2416	78
2417	2417	73
2418	2418	115
2419	2419	96
2420	2420	44
2421	2421	97
2422	2422	149
2423	2423	137
2424	2424	77
2425	2425	6
2426	2426	73
2427	2427	73
2428	2428	73
2429	2429	96
2430	2430	96
2431	2431	59
2432	2432	28
2433	2433	152
2434	2434	37
2435	2435	97
2436	2436	73
2437	2437	48
2438	2438	115
2439	2439	96
2440	2440	129
2441	2441	97
2442	2442	106
2443	2443	73
2444	2444	73
2445	2445	137
2446	2446	129
2447	2447	97
2448	2448	73
2449	2449	73
2450	2450	24
2451	2451	73
2452	2452	96
2453	2453	68
2454	2454	106
2455	2455	73
2456	2456	64
2457	2457	6
2458	2458	6
2459	2459	96
2460	2460	74
2461	2461	54
2462	2462	55
2463	2463	107
2464	2464	97
2465	2465	37
2466	2466	54
2467	2467	103
2468	2468	45
2469	2469	55
2470	2470	97
2471	2471	2
2472	2472	6
2473	2473	73
2474	2474	44
2475	2475	73
2476	2476	73
2477	2477	83
2478	2478	32
2479	2479	100
2480	2480	152
2481	2481	118
2482	2482	32
2483	2483	73
2484	2484	107
2485	2485	6
2486	2486	106
2487	2487	54
2488	2488	147
2489	2489	73
2490	2490	5
2491	2491	73
2492	2492	6
2493	2493	6
2494	2494	6
2495	2495	6
2496	2496	77
2497	2497	44
2498	2498	97
2499	2499	54
2500	2500	97
2501	2501	61
2502	2502	73
2503	2503	82
2504	2504	144
2505	2505	96
2506	2506	103
2507	2507	73
2508	2508	73
2509	2509	73
2510	2510	6
2511	2511	28
2512	2512	96
2513	2513	73
2514	2514	73
2515	2515	115
2516	2516	96
2517	2517	73
2518	2518	74
2519	2519	56
2520	2520	137
2521	2521	73
2522	2522	6
2523	2523	73
2524	2524	96
2525	2525	78
2526	2526	37
2527	2527	137
2528	2528	115
2529	2529	91
2530	2530	6
2531	2531	73
2532	2532	6
2533	2533	96
2534	2534	64
2535	2535	155
2536	2536	155
2537	2537	155
2538	2538	155
2539	2539	155
2540	2540	32
2541	2541	121
2542	2542	79
2543	2543	133
2544	2544	2
2544	2544	13
2544	2544	19
2544	2544	1
2544	2544	159
2544	2544	11
2545	2545	120
2546	2546	54
2546	2546	84
2546	2546	44
2546	2546	45
2547	2547	44
2548	2548	19
2549	2549	32
2549	2549	51
2550	2550	6
2551	2551	56
2552	2552	2
2552	2552	13
2552	2552	21
2552	2552	1
2552	2552	11
2552	2552	27
2553	2553	80
2554	2554	32
2555	2555	101
2556	2556	32
2557	2557	67
2557	2557	84
2557	2557	85
2558	2558	103
2559	2559	19
2560	2560	55
2561	2561	20
2562	2562	55
2563	2563	34
2564	2564	103
2565	2565	116
2565	2565	81
2565	2565	52
2566	2566	33
2566	2566	19
2567	2567	53
2568	2568	73
2569	2569	73
2570	2570	67
2571	2571	20
2572	2572	24
2573	2573	10
2574	2574	55
2575	2575	108
2575	2575	31
2575	2575	58
2575	2575	66
2575	2575	65
2575	2575	160
2575	2575	59
2576	2576	2
2576	2576	27
2577	2577	6
2578	2578	44
2579	2579	6
2580	2580	6
2581	2581	6
2582	2582	6
2583	2583	63
2583	2583	6
2584	2584	100
2585	2585	19
2585	2585	11
2586	2586	15
2587	2587	20
2587	2587	22
2587	2587	28
2588	2588	54
2589	2589	26
2590	2590	121
2591	2591	103
2592	2592	50
2592	2592	6
2593	2593	28
2594	2594	42
2595	2595	103
2596	2596	32
2596	2596	51
2597	2597	107
2598	2598	97
2599	2599	161
2600	2600	55
2601	2601	12
2601	2601	72
2601	2601	14
2601	2601	15
2601	2601	16
2601	2601	20
2601	2601	22
2601	2601	100
2601	2601	23
2601	2601	28
2601	2601	29
2602	2602	31
2603	2603	137
2604	2604	107
2605	2605	107
2606	2606	32
2607	2607	6
2608	2608	32
2609	2609	67
2610	2610	67
2611	2611	67
2612	2612	67
2613	2613	120
2614	2614	103
2615	2615	32
2616	2616	121
2617	2617	8
2618	2618	33
2618	2618	19
2619	2619	45
2620	2620	55
2621	2621	55
2622	2622	121
2623	2623	32
2624	2624	24
2625	2625	101
2626	2626	107
2627	2627	103
2628	2628	55
2629	2629	120
2630	2630	73
2631	2631	103
2632	2632	73
2633	2633	103
2634	2634	103
2635	2635	103
2636	2636	103
2637	2637	84
2638	2638	77
2639	2639	55
2640	2640	73
2641	2641	121
2642	2642	6
2643	2643	10
2644	2644	23
2645	2645	55
2646	2646	19
2647	2647	6
2648	2648	103
2648	2648	73
2649	2649	53
2650	2650	55
2651	2651	120
2652	2652	103
2652	2652	73
2653	2653	103
2653	2653	73
2654	2654	32
2655	2655	44
2656	2656	44
2657	2657	70
2658	2658	52
2659	2659	97
2660	2660	67
2661	2661	19
2662	2662	103
2663	2663	32
2663	2663	51
2664	2664	73
2665	2665	77
2666	2666	34
2667	2667	2
2667	2667	19
2668	2668	44
2669	2669	103
2670	2670	44
2671	2671	67
2672	2672	55
2673	2673	121
2674	2674	3
2674	2674	99
2675	2675	103
2676	2676	6
2677	2677	133
2678	2678	55
2679	2679	67
2680	2680	78
2681	2681	2
2681	2681	3
2682	2682	73
2683	2683	32
2683	2683	51
2684	2684	103
2685	2685	67
2686	2686	34
2687	2687	103
2688	2688	44
2689	2689	55
2690	2690	74
2690	2690	34
2690	2690	121
2691	2691	55
2692	2692	101
2693	2693	72
2694	2694	41
2695	2695	42
2696	2696	55
2697	2697	6
2698	2698	67
2699	2699	121
2700	2700	32
2701	2701	72
2702	2702	55
2703	2703	31
2704	2704	103
2705	2705	55
2706	2706	50
2707	2707	73
2708	2708	103
2709	2709	50
2709	2709	6
2709	2709	10
2710	2710	44
2711	2711	55
2712	2712	103
2713	2713	73
2714	2714	74
2714	2714	34
2715	2715	120
2716	2716	6
2717	2717	2
2717	2717	13
2717	2717	7
2717	2717	33
2717	2717	3
2717	2717	17
2717	2717	18
2717	2717	19
2717	2717	21
2717	2717	1
2717	2717	8
2717	2717	9
2717	2717	49
2717	2717	69
2717	2717	98
2717	2717	4
2717	2717	5
2717	2717	23
2717	2717	24
2717	2717	6
2717	2717	25
2717	2717	99
2717	2717	11
2717	2717	27
2717	2717	10
2718	2718	120
2719	2719	55
2720	2720	55
2721	2721	32
2721	2721	51
2722	2722	75
\.


--
-- Data for Name: vulnerabilities; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.vulnerabilities (id, vulnerability) FROM stdin;
1	Vulnerable
2	Definitely endangered
3	Severely endangered
4	Critically endangered
5	Extinct
1	Vulnerable
2	Definitely endangered
3	Severely endangered
4	Critically endangered
5	Extinct
1	Vulnerable
2	Definitely endangered
3	Severely endangered
4	Critically endangered
5	Extinct
1	Vulnerable
2	Definitely endangered
3	Severely endangered
4	Critically endangered
5	Extinct
1	Vulnerable
2	Definitely endangered
3	Severely endangered
4	Critically endangered
5	Extinct
\.


--
-- PostgreSQL database dump complete
--

