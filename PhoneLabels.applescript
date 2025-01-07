-- Script Name: Contacts Phone Region Labels
-- Author: Joseph Abboud
-- Version: 1.0
-- Modified: January 7, 2025
-- Description: Replaces the default labels (e.g. "home" / "Mobile") in the Contacts app to the
-- 				name of the country/region the phone number is from.
-- Additional Comments:
-- 		*	Due to the frequency of changes in area codes in the US especially, the "+1" country 
--			code is implemented such that the script checks the area codes for all countries and 
--			regions apart from the United States first, then, if no matches are found, it
--			defaults to the United States. 
--		*	Since Russia and Kazakhstan both share "+7", the script is implemented such that it
--			checks "+76" and "+77" first for Kazakhstan, and then defaults to Russia for all other
--			phone numbers starting in "+7".
--		*	The script is accurate to the date mentioned in the "Modified" field, and thus likely
--			will not cover changes to area code or country code classifications after this date.
--		*	A "missing value" warning may be displayed when running the code. Contact labels
--			should still be updated despite this message.

tell application "Contacts"
	repeat with aPerson in people
		-- Check and update phone labels
		try
			if (phones of aPerson is not missing value) then
				repeat with aPhone in phones of aPerson
					if (value of aPhone is not missing value) then
						set currentLabel to label of aPhone
						if (currentLabel is not "work" and currentLabel is not "school") then
							set phoneValue to value of aPhone
							
							-- Normalize phone number (remove spaces, dashes, parentheses)
							set normalizedPhone to do shell script "echo " & quoted form of phoneValue & " | tr -d ' ()-'"
							
							
							-- ==== South America ====
							
							-- Argentina
							if (normalizedPhone starts with "+54") then
								set label of aPhone to "Argentina"
								
								-- Bolivia
							else if (normalizedPhone starts with "+591") then
								set label of aPhone to "Bolivia"
								
								-- Brazil
							else if (normalizedPhone starts with "+55") then
								set label of aPhone to "Brazil"
								
								-- Chile
							else if (normalizedPhone starts with "+56") then
								set label of aPhone to "Chile"
								
								-- Colombia
							else if (normalizedPhone starts with "+57") then
								set label of aPhone to "Colombia"
								
								-- Ecuador
							else if (normalizedPhone starts with "+593") then
								set label of aPhone to "Ecuador"
								
								-- Falkland Islands
							else if (normalizedPhone starts with "+500") then
								set label of aPhone to "Falkland Islands"
								
								-- Paraguay
							else if (normalizedPhone starts with "+595") then
								set label of aPhone to "Paraguay"
								
								-- Peru
							else if (normalizedPhone starts with "+51") then
								set label of aPhone to "Peru"
								
								-- Uruguay
							else if (normalizedPhone starts with "+598") then
								set label of aPhone to "Uruguay"
								
								-- Venezuela
							else if (normalizedPhone starts with "+58") then
								set label of aPhone to "Venezuela"
								
								-- Suriname
							else if (normalizedPhone starts with "+597") then
								set label of aPhone to "Suriname"
								
								-- Guyana
							else if (normalizedPhone starts with "+592") then
								set label of aPhone to "Guyana"
								
								-- French Guiana
							else if (normalizedPhone starts with "+594") then
								set label of aPhone to "French Guiana"
								
								
								-- ==== Africa ====
								
								-- Algeria
							else if (normalizedPhone starts with "+213") then
								set label of aPhone to "Algeria"
								
								-- Angola
							else if (normalizedPhone starts with "+244") then
								set label of aPhone to "Angola"
								
								-- Benin
							else if (normalizedPhone starts with "+229") then
								set label of aPhone to "Benin"
								
								-- Botswana
							else if (normalizedPhone starts with "+267") then
								set label of aPhone to "Botswana"
								
								-- Burkina Faso
							else if (normalizedPhone starts with "+226") then
								set label of aPhone to "Burkina Faso"
								
								-- Burundi
							else if (normalizedPhone starts with "+257") then
								set label of aPhone to "Burundi"
								
								-- Cameroon
							else if (normalizedPhone starts with "+237") then
								set label of aPhone to "Cameroon"
								
								-- Cape Verde
							else if (normalizedPhone starts with "+238") then
								set label of aPhone to "Cape Verde"
								
								-- Central African Republic
							else if (normalizedPhone starts with "+236") then
								set label of aPhone to "Central African Republic"
								
								-- Chad
							else if (normalizedPhone starts with "+235") then
								set label of aPhone to "Chad"
								
								-- Comoros
							else if (normalizedPhone starts with "+269") then
								set label of aPhone to "Comoros"
								
								-- Congo (Dem. Rep.)
							else if (normalizedPhone starts with "+243") then
								set label of aPhone to "Congo (Dem. Rep.)"
								
								-- Congo (Republic)
							else if (normalizedPhone starts with "+242") then
								set label of aPhone to "Congo (Republic)"
								
								-- Ivory Coast
							else if (normalizedPhone starts with "+225") then
								set label of aPhone to "Ivory Coast"
								
								-- Djibouti
							else if (normalizedPhone starts with "+253") then
								set label of aPhone to "Djibouti"
								
								-- Egypt
							else if (normalizedPhone starts with "+20") then
								set label of aPhone to "Egypt"
								
								-- Equatorial Guinea
							else if (normalizedPhone starts with "+240") then
								set label of aPhone to "Equatorial Guinea"
								
								-- Eritrea
							else if (normalizedPhone starts with "+291") then
								set label of aPhone to "Eritrea"
								
								-- Ethiopia
							else if (normalizedPhone starts with "+251") then
								set label of aPhone to "Ethiopia"
								
								-- Gabon
							else if (normalizedPhone starts with "+241") then
								set label of aPhone to "Gabon"
								
								-- Gambia
							else if (normalizedPhone starts with "+220") then
								set label of aPhone to "Gambia"
								
								-- Ghana
							else if (normalizedPhone starts with "+233") then
								set label of aPhone to "Ghana"
								
								-- Guinea
							else if (normalizedPhone starts with "+224") then
								set label of aPhone to "Guinea"
								
								-- Guinea-Bissau
							else if (normalizedPhone starts with "+245") then
								set label of aPhone to "Guinea-Bissau"
								
								-- Kenya
							else if (normalizedPhone starts with "+254") then
								set label of aPhone to "Kenya"
								
								-- Lesotho
							else if (normalizedPhone starts with "+266") then
								set label of aPhone to "Lesotho"
								
								-- Liberia
							else if (normalizedPhone starts with "+231") then
								set label of aPhone to "Liberia"
								
								-- Libya
							else if (normalizedPhone starts with "+218") then
								set label of aPhone to "Libya"
								
								-- Madagascar
							else if (normalizedPhone starts with "+261") then
								set label of aPhone to "Madagascar"
								
								-- Malawi
							else if (normalizedPhone starts with "+265") then
								set label of aPhone to "Malawi"
								
								-- Mali
							else if (normalizedPhone starts with "+223") then
								set label of aPhone to "Mali"
								
								-- Mauritania
							else if (normalizedPhone starts with "+222") then
								set label of aPhone to "Mauritania"
								
								-- Mauritius
							else if (normalizedPhone starts with "+230") then
								set label of aPhone to "Mauritius"
								
								-- Morocco
							else if (normalizedPhone starts with "+212") then
								set label of aPhone to "Morocco"
								
								-- Mozambique
							else if (normalizedPhone starts with "+258") then
								set label of aPhone to "Mozambique"
								
								-- Namibia
							else if (normalizedPhone starts with "+264") then
								set label of aPhone to "Namibia"
								
								-- Niger
							else if (normalizedPhone starts with "+227") then
								set label of aPhone to "Niger"
								
								-- Nigeria
							else if (normalizedPhone starts with "+234") then
								set label of aPhone to "Nigeria"
								
								-- Rwanda
							else if (normalizedPhone starts with "+250") then
								set label of aPhone to "Rwanda"
								
								-- Saint Helena"
							else if (normalizedPhone starts with "+290") then
								set label of aPhone to "Saint Helena"
								
								-- Seychelles
							else if (normalizedPhone starts with "+248") then
								set label of aPhone to "Seychelles"
								
								-- Sierra Leone"
							else if (normalizedPhone starts with "+232") then
								set label of aPhone to "Sierra Leone"

								-- Somalia
							else if (normalizedPhone starts with "+252") then
								set label of aPhone to "Somalia"
								
								-- South Africa
							else if (normalizedPhone starts with "+27") then
								set label of aPhone to "South Africa"
								
								-- South Sudan
							else if (normalizedPhone starts with "+211") then
								set label of aPhone to "South Sudan"
								
								-- Sudan
							else if (normalizedPhone starts with "+249") then
								set label of aPhone to "Sudan"
								
								-- Eswatini
							else if (normalizedPhone starts with "+268") then
								set label of aPhone to "Eswatini"
								
								-- Tanzania
							else if (normalizedPhone starts with "+255") then
								set label of aPhone to "Tanzania"
								
								-- Togo
							else if (normalizedPhone starts with "+228") then
								set label of aPhone to "Togo"
								
								-- Tunisia
							else if (normalizedPhone starts with "+216") then
								set label of aPhone to "Tunisia"
								
								-- Uganda
							else if (normalizedPhone starts with "+256") then
								set label of aPhone to "Uganda"
								
								-- Zambia
							else if (normalizedPhone starts with "+260") then
								set label of aPhone to "Zambia"
								
								-- Zimbabwe
							else if (normalizedPhone starts with "+263") then
								set label of aPhone to "Zimbabwe"
								
								-- São Tomé and Príncipe
							else if (normalizedPhone starts with "+239") then
								set label of aPhone to "São Tomé and Príncipe"
								
								-- Mayotte/Réunion
							else if (normalizedPhone starts with "+262") then
								set label of aPhone to "Mayotte/Réunion"


								-- ==== Asia ====
								
								-- Afghanistan
							else if (normalizedPhone starts with "+93") then
								set label of aPhone to "Afghanistan"
								
								-- Armenia
							else if (normalizedPhone starts with "+374") then
								set label of aPhone to "Armenia"
								
								-- Azerbaijan
							else if (normalizedPhone starts with "+994") then
								set label of aPhone to "Azerbaijan"
								
								-- Bahrain
							else if (normalizedPhone starts with "+973") then
								set label of aPhone to "Bahrain"
								
								-- Bangladesh
							else if (normalizedPhone starts with "+880") then
								set label of aPhone to "Bangladesh"
								
								-- Bhutan
							else if (normalizedPhone starts with "+975") then
								set label of aPhone to "Bhutan"
								
								-- Brunei
							else if (normalizedPhone starts with "+673") then
								set label of aPhone to "Brunei"
								
								-- Cambodia
							else if (normalizedPhone starts with "+855") then
								set label of aPhone to "Cambodia"
								
								-- China
							else if (normalizedPhone starts with "+86") then
								set label of aPhone to "China"
								
								-- Cyprus
							else if (normalizedPhone starts with "+357") then
								set label of aPhone to "Cyprus"
								
								-- Georgia
							else if (normalizedPhone starts with "+995") then
								set label of aPhone to "Georgia"

								-- Hong Kong
							else if (normalizedPhone starts with "+852") then
								set label of aPhone to "Hong Kong"
								
								-- India
							else if (normalizedPhone starts with "+91") then
								set label of aPhone to "India"
								
								-- Indonesia
							else if (normalizedPhone starts with "+62") then
								set label of aPhone to "Indonesia"
								
								-- Iran
							else if (normalizedPhone starts with "+98") then
								set label of aPhone to "Iran"
								
								-- Iraq
							else if (normalizedPhone starts with "+964") then
								set label of aPhone to "Iraq"
								
								-- Israel
							else if (normalizedPhone starts with "+972") then
								set label of aPhone to "Israel"
								
								-- Japan
							else if (normalizedPhone starts with "+81") then
								set label of aPhone to "Japan"
								
								-- Jordan
							else if (normalizedPhone starts with "+962") then
								set label of aPhone to "Jordan"
								
								-- Kazakhstan (uses +76 or +77)
							else if (normalizedPhone starts with "+76" or ¬
								normalizedPhone starts with "+77") then
								set label of aPhone to "Kazakhstan"
								
								-- Kuwait
							else if (normalizedPhone starts with "+965") then
								set label of aPhone to "Kuwait"
								
								-- Kyrgyzstan
							else if (normalizedPhone starts with "+996") then
								set label of aPhone to "Kyrgyzstan"
								
								-- Laos
							else if (normalizedPhone starts with "+856") then
								set label of aPhone to "Laos"
								
								-- Lebanon
							else if (normalizedPhone starts with "+961") then
								set label of aPhone to "Lebanon"
								
								-- Macau
							else if (normalizedPhone starts with "+853") then
								set label of aPhone to "Macau"
								
								-- Malaysia
							else if (normalizedPhone starts with "+60") then
								set label of aPhone to "Malaysia"
								
								-- Maldives
							else if (normalizedPhone starts with "+960") then
								set label of aPhone to "Maldives"
								
								-- Mongolia
							else if (normalizedPhone starts with "+976") then
								set label of aPhone to "Mongolia"
								
								-- Myanmar
							else if (normalizedPhone starts with "+95") then
								set label of aPhone to "Myanmar"
								
								-- Nepal
							else if (normalizedPhone starts with "+977") then
								set label of aPhone to "Nepal"
								
								-- Oman
							else if (normalizedPhone starts with "+968") then
								set label of aPhone to "Oman"
								
								-- Pakistan
							else if (normalizedPhone starts with "+92") then
								set label of aPhone to "Pakistan"
								
								-- Philippines
							else if (normalizedPhone starts with "+63") then
								set label of aPhone to "Philippines"
								
								-- Qatar
							else if (normalizedPhone starts with "+974") then
								set label of aPhone to "Qatar"

								-- Saudi Arabia
							else if (normalizedPhone starts with "+966") then
								set label of aPhone to "Saudi Arabia"

								-- Singapore
							else if (normalizedPhone starts with "+65") then
								set label of aPhone to "Singapore"
								
								-- South Korea
							else if (normalizedPhone starts with "+82") then
								set label of aPhone to "South Korea"
								
								-- Sri Lanka
							else if (normalizedPhone starts with "+94") then
								set label of aPhone to "Sri Lanka"
								
								-- Syria
							else if (normalizedPhone starts with "+963") then
								set label of aPhone to "Syria"
								
								-- Taiwan
							else if (normalizedPhone starts with "+886") then
								set label of aPhone to "Taiwan"
								
								-- Tajikistan
							else if (normalizedPhone starts with "+992") then
								set label of aPhone to "Tajikistan"
								
								-- Thailand
							else if (normalizedPhone starts with "+66") then
								set label of aPhone to "Thailand"
								
								-- Timor-Leste
							else if (normalizedPhone starts with "+670") then
								set label of aPhone to "Timor-Leste"
								
								-- Turkey
							else if (normalizedPhone starts with "+90") then
								set label of aPhone to "Turkey"
								
								-- Turkmenistan
							else if (normalizedPhone starts with "+993") then
								set label of aPhone to "Turkmenistan"
								
								-- UAE
							else if (normalizedPhone starts with "+971") then
								set label of aPhone to "UAE"
								
								-- Uzbekistan
							else if (normalizedPhone starts with "+998") then
								set label of aPhone to "Uzbekistan"
								
								-- Vietnam
							else if (normalizedPhone starts with "+84") then
								set label of aPhone to "Vietnam"
								
								-- Yemen
							else if (normalizedPhone starts with "+967") then
								set label of aPhone to "Yemen"
								
								-- North Korea
							else if (normalizedPhone starts with "+850") then
								set label of aPhone to "North Korea"
								
								-- Palestine
							else if (normalizedPhone starts with "+970") then
								set label of aPhone to "Palestine"


								-- ==== Europe ====
								
								-- Albania
							else if (normalizedPhone starts with "+355") then
								set label of aPhone to "Albania"

								-- Andorra
							else if (normalizedPhone starts with "+376") then
								set label of aPhone to "Andorra"
								
								-- Austria
							else if (normalizedPhone starts with "+43") then
								set label of aPhone to "Austria"
								
								-- Belarus
							else if (normalizedPhone starts with "+375") then
								set label of aPhone to "Belarus"
								
								-- Belgium
							else if (normalizedPhone starts with "+32") then
								set label of aPhone to "Belgium"
								
								-- Bosnia and Herzegovina
							else if (normalizedPhone starts with "+387") then
								set label of aPhone to "Bosnia and Herzegovina"
								
								-- Bulgaria
							else if (normalizedPhone starts with "+359") then
								set label of aPhone to "Bulgaria"
								
								-- Croatia
							else if (normalizedPhone starts with "+385") then
								set label of aPhone to "Croatia"
								
								-- Czechia
							else if (normalizedPhone starts with "+420") then
								set label of aPhone to "Czechia"
								
								-- Denmark
							else if (normalizedPhone starts with "+45") then
								set label of aPhone to "Denmark"
								
								-- Estonia
							else if (normalizedPhone starts with "+372") then
								set label of aPhone to "Estonia"
								
								-- Finland
							else if (normalizedPhone starts with "+358") then
								set label of aPhone to "Finland"
								
								-- France
							else if (normalizedPhone starts with "+33") then
								set label of aPhone to "France"
								
								-- Germany
							else if (normalizedPhone starts with "+49") then
								set label of aPhone to "Germany"
								
								-- Greece
							else if (normalizedPhone starts with "+30") then
								set label of aPhone to "Greece"
								
								-- Hungary
							else if (normalizedPhone starts with "+36") then
								set label of aPhone to "Hungary"
								
								-- Iceland
							else if (normalizedPhone starts with "+354") then
								set label of aPhone to "Iceland"
								
								-- Ireland
							else if (normalizedPhone starts with "+353") then
								set label of aPhone to "Ireland"
								
								-- Italy
							else if (normalizedPhone starts with "+39") then
								set label of aPhone to "Italy"
								
								-- Latvia
							else if (normalizedPhone starts with "+371") then
								set label of aPhone to "Latvia"

								-- Liechtenstein
							else if (normalizedPhone starts with "+423") then
								set label of aPhone to "Liechtenstein"
								
								-- Lithuania
							else if (normalizedPhone starts with "+370") then
								set label of aPhone to "Lithuania"
								
								-- Luxembourg
							else if (normalizedPhone starts with "+352") then
								set label of aPhone to "Luxembourg"
								
								-- Malta
							else if (normalizedPhone starts with "+356") then
								set label of aPhone to "Malta"
								
								-- Moldova
							else if (normalizedPhone starts with "+373") then
								set label of aPhone to "Moldova"
								
								-- Monaco
							else if (normalizedPhone starts with "+377") then
								set label of aPhone to "Monaco"
								
								-- Montenegro
							else if (normalizedPhone starts with "+382") then
								set label of aPhone to "Montenegro"
								
								-- Netherlands
							else if (normalizedPhone starts with "+31") then
								set label of aPhone to "Netherlands"
								
								-- Norway
							else if (normalizedPhone starts with "+47") then
								set label of aPhone to "Norway"
								
								-- Poland
							else if (normalizedPhone starts with "+48") then
								set label of aPhone to "Poland"
								
								-- Portugal
							else if (normalizedPhone starts with "+351") then
								set label of aPhone to "Portugal"
								
								-- Romania
							else if (normalizedPhone starts with "+40") then
								set label of aPhone to "Romania"
								
								-- Russia
							else if (normalizedPhone starts with "+7") then
								set label of aPhone to "Russia"
								
								-- San Marino
							else if (normalizedPhone starts with "+378") then
								set label of aPhone to "San Marino"
								
								-- Serbia
							else if (normalizedPhone starts with "+381") then
								set label of aPhone to "Serbia"
								
								-- Slovakia
							else if (normalizedPhone starts with "+421") then
								set label of aPhone to "Slovakia"
								
								-- Slovenia
							else if (normalizedPhone starts with "+386") then
								set label of aPhone to "Slovenia"
								
								-- Spain
							else if (normalizedPhone starts with "+34") then
								set label of aPhone to "Spain"
								
								-- Sweden
							else if (normalizedPhone starts with "+46") then
								set label of aPhone to "Sweden"
								
								-- Switzerland
							else if (normalizedPhone starts with "+41") then
								set label of aPhone to "Switzerland"
								
								-- Ukraine
							else if (normalizedPhone starts with "+380") then
								set label of aPhone to "Ukraine"
								
								-- United Kingdom
							else if (normalizedPhone starts with "+44") then
								set label of aPhone to "United Kingdom"
								
								-- Vatican City
							else if (normalizedPhone starts with "+379") then
								set label of aPhone to "Vatican City"
								
								-- Faroe Islands
							else if (normalizedPhone starts with "+298") then
								set label of aPhone to "Faroe Islands"
								
								-- Greenland
							else if (normalizedPhone starts with "+299") then
								set label of aPhone to "Greenland"
								
								-- Kosovo
							else if (normalizedPhone starts with "+383") then
								set label of aPhone to "Kosovo"
								
								
								-- ==== North America ====
								
								-- Puerto Rico
							else if (normalizedPhone starts with "+1787" or ¬
								normalizedPhone starts with "+1939") then
								set label of aPhone to "Puerto Rico"
								
								-- Guam
							else if (normalizedPhone starts with "+1671") then
								set label of aPhone to "Guam"
								
								-- American Samoa
							else if (normalizedPhone starts with "+1684") then
								set label of aPhone to "American Samoa"
								
								-- U.S. Virgin Islands
							else if (normalizedPhone starts with "+1340") then
								set label of aPhone to "U.S. Virgin Islands"
								
								-- Northern Mariana Islands
							else if (normalizedPhone starts with "+1670") then
								set label of aPhone to "Northern Mariana Islands"
								
								-- Antigua and Barbuda
							else if (normalizedPhone starts with "+1268") then
								set label of aPhone to "Antigua and Barbuda"
								
								-- Anguilla
							else if (normalizedPhone starts with "+1264") then
								set label of aPhone to "Anguilla"

								-- Aruba
							else if (normalizedPhone starts with "+297") then
								set label of aPhone to "Aruba"
								
								-- Bahamas
							else if (normalizedPhone starts with "+1242") then
								set label of aPhone to "Bahamas"
								
								-- Barbados
							else if (normalizedPhone starts with "+1246") then
								set label of aPhone to "Barbados"
								
								-- Bermuda
							else if (normalizedPhone starts with "+1441") then
								set label of aPhone to "Bermuda"
								
								-- British Virgin Islands
							else if (normalizedPhone starts with "+1284") then
								set label of aPhone to "British Virgin Islands"

								-- Canada
							else if (normalizedPhone starts with "+1204" or ¬
								normalizedPhone starts with "+1226" or ¬
								normalizedPhone starts with "+1236" or ¬
								normalizedPhone starts with "+1249" or ¬
								normalizedPhone starts with "+1250" or ¬
								normalizedPhone starts with "+1289" or ¬
								normalizedPhone starts with "+1306" or ¬
								normalizedPhone starts with "+1343" or ¬
								normalizedPhone starts with "+1365" or ¬
								normalizedPhone starts with "+1387" or ¬
								normalizedPhone starts with "+1403" or ¬
								normalizedPhone starts with "+1416" or ¬
								normalizedPhone starts with "+1418" or ¬
								normalizedPhone starts with "+1431" or ¬
								normalizedPhone starts with "+1437" or ¬
								normalizedPhone starts with "+1438" or ¬
								normalizedPhone starts with "+1450" or ¬
								normalizedPhone starts with "+1506" or ¬
								normalizedPhone starts with "+1514" or ¬
								normalizedPhone starts with "+1519" or ¬
								normalizedPhone starts with "+1548" or ¬
								normalizedPhone starts with "+1579" or ¬
								normalizedPhone starts with "+1581" or ¬
								normalizedPhone starts with "+1587" or ¬
								normalizedPhone starts with "+1604" or ¬
								normalizedPhone starts with "+1613" or ¬
								normalizedPhone starts with "+1639" or ¬
								normalizedPhone starts with "+1647" or ¬
								normalizedPhone starts with "+1672" or ¬
								normalizedPhone starts with "+1705" or ¬
								normalizedPhone starts with "+1709" or ¬
								normalizedPhone starts with "+1742" or ¬
								normalizedPhone starts with "+1778" or ¬
								normalizedPhone starts with "+1782" or ¬
								normalizedPhone starts with "+1807" or ¬
								normalizedPhone starts with "+1819" or ¬
								normalizedPhone starts with "+1825" or ¬
								normalizedPhone starts with "+1867" or ¬
								normalizedPhone starts with "+1873" or ¬
								normalizedPhone starts with "+1902" or ¬
								normalizedPhone starts with "+1905") then
								set label of aPhone to "Canada"
								
								-- Cayman Islands
							else if (normalizedPhone starts with "+1345") then
								set label of aPhone to "Cayman Islands"
								
								-- Curaçao / Bonaire / Saba / Sint Eustatius
							else if (normalizedPhone starts with "+599") then
								set label of aPhone to "Curaçao/Bonaire/Saba/Sint Eustatius"
								
								-- Dominica
							else if (normalizedPhone starts with "+1767") then
								set label of aPhone to "Dominica"
								
								-- Dominican Republic
							else if (normalizedPhone starts with "+1809" or ¬
								normalizedPhone starts with "+1829" or ¬
								normalizedPhone starts with "+1849") then
								set label of aPhone to "Dominican Republic"
								
								-- Guadeloupe / Saint Barthélemy / Saint Martin (French)
							else if (normalizedPhone starts with "+590") then
								set label of aPhone to "Guadeloupe/St. Barthélemy/St. Martin"
								
								-- Grenada
							else if (normalizedPhone starts with "+1473") then
								set label of aPhone to "Grenada"
								
								-- Haiti
							else if (normalizedPhone starts with "+509") then
								set label of aPhone to "Haiti"
								
								-- Jamaica
							else if (normalizedPhone starts with "+1876") then
								set label of aPhone to "Jamaica"
								
								-- Martinique
							else if (normalizedPhone starts with "+596") then
								set label of aPhone to "Martinique"
								
								-- Mexico
							else if (normalizedPhone starts with "+52") then
								set label of aPhone to "Mexico"
								
								-- Montserrat
							else if (normalizedPhone starts with "+1664") then
								set label of aPhone to "Montserrat"
								
								-- Saint Kitts and Nevis
							else if (normalizedPhone starts with "+1869") then
								set label of aPhone to "St. Kitts and Nevis"
								
								-- Saint Lucia
							else if (normalizedPhone starts with "+1758") then
								set label of aPhone to "St. Lucia"

								-- Saint Pierre and Miquelon
							else if (normalizedPhone starts with "+508") then
								set label of aPhone to "Saint Pierre and Miquelon"
								
								-- Saint Vincent and the Grenadines
							else if (normalizedPhone starts with "+1784") then
								set label of aPhone to "St. Vincent and the Grenadines"

								-- Sint Maarten (Dutch)
							else if (normalizedPhone starts with "+1721") then
								set label of aPhone to "Sint Maarten"
								
								-- Trinidad and Tobago
							else if (normalizedPhone starts with "+1868") then
								set label of aPhone to "Trinidad and Tobago"
								
								-- Turks and Caicos Islands
							else if (normalizedPhone starts with "+1649") then
								set label of aPhone to "Turks and Caicos "

								-- United States 
								-- (Will use the remaining +1 area codes not already eliminated 
								-- by previous statements) -- See Header for more details
							else if (normalizedPhone starts with "+1") then
								set label of aPhone to "United States"
								
								
								-- ==== Central America ====
								
								-- Belize
							else if (normalizedPhone starts with "+501") then
								set label of aPhone to "Belize"
								
								-- Guatemala
							else if (normalizedPhone starts with "+502") then
								set label of aPhone to "Guatemala"
								
								-- El Salvador
							else if (normalizedPhone starts with "+503") then
								set label of aPhone to "El Salvador"
								
								-- Honduras
							else if (normalizedPhone starts with "+504") then
								set label of aPhone to "Honduras"
								
								-- Nicaragua
							else if (normalizedPhone starts with "+505") then
								set label of aPhone to "Nicaragua"
								
								-- Costa Rica
							else if (normalizedPhone starts with "+506") then
								set label of aPhone to "Costa Rica"
								
								-- Panama
							else if (normalizedPhone starts with "+507") then
								set label of aPhone to "Panama"
								
								
								-- ==== Oceania ====
								
								-- Australia
							else if (normalizedPhone starts with "+61") then
								set label of aPhone to "Australia"
								
								-- New Zealand
							else if (normalizedPhone starts with "+64") then
								set label of aPhone to "New Zealand"
								
								-- Papua New Guinea
							else if (normalizedPhone starts with "+675") then
								set label of aPhone to "Papua New Guinea"
								
								-- Tonga
							else if (normalizedPhone starts with "+676") then
								set label of aPhone to "Tonga"
								
								-- Solomon Islands
							else if (normalizedPhone starts with "+677") then
								set label of aPhone to "Solomon Islands"
								
								-- Vanuatu
							else if (normalizedPhone starts with "+678") then
								set label of aPhone to "Vanuatu"
								
								-- Fiji
							else if (normalizedPhone starts with "+679") then
								set label of aPhone to "Fiji"
								
								-- Palau
							else if (normalizedPhone starts with "+680") then
								set label of aPhone to "Palau"
								
								-- Cook Islands
							else if (normalizedPhone starts with "+682") then
								set label of aPhone to "Cook Islands"
								
								-- Niue
							else if (normalizedPhone starts with "+683") then
								set label of aPhone to "Niue"
								
								-- Tokelau
							else if (normalizedPhone starts with "+690") then
								set label of aPhone to "Tokelau"
								
								-- Federated States of Micronesia
							else if (normalizedPhone starts with "+691") then
								set label of aPhone to "Micronesia"
								
								-- Marshall Islands
							else if (normalizedPhone starts with "+692") then
								set label of aPhone to "Marshall Islands"
								
								-- Nauru
							else if (normalizedPhone starts with "+674") then
								set label of aPhone to "Nauru"
								
								-- Kiribati
							else if (normalizedPhone starts with "+686") then
								set label of aPhone to "Kiribati"
								
								-- Tuvalu
							else if (normalizedPhone starts with "+688") then
								set label of aPhone to "Tuvalu"
								
								-- Samoa
							else if (normalizedPhone starts with "+685") then
								set label of aPhone to "Samoa"
								
								-- French Polynesia (Tahiti)
							else if (normalizedPhone starts with "+689") then
								set label of aPhone to "French Polynesia"
							end if
						end if
					end if
				end repeat
			end if
		end try
	end repeat
	save
end tell