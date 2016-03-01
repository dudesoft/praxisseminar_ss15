//Update stations foreign keys

UPDATE `stations` SET `location_id` = 1 WHERE location = 'Bellobrad/ Belobrod';
UPDATE `stations` SET `location_id` = 2 WHERE location = 'Bidžovo';
UPDATE `stations` SET `location_id` = 3 WHERE location = 'Brodosavce/ Brodosanë';
UPDATE `stations` SET `location_id` = 4 WHERE location = 'Frangovo';
UPDATE `stations` SET `location_id` = 5 WHERE location = 'Gjonaj/ Đona';
UPDATE `stations` SET `location_id` = 6 WHERE location = 'Gllogovc/ Glogovac';
UPDATE `stations` SET `location_id` = 7 WHERE location = 'Glumovo';
UPDATE `stations` SET `location_id` = 8 WHERE location = 'Krani';
UPDATE `stations` SET `location_id` = 9 WHERE location = 'Nakolec';
UPDATE `stations` SET `location_id` = 10 WHERE location = 'Ohrid';
UPDATE `stations` SET `location_id` = 11 WHERE location = 'Peć';
UPDATE `stations` SET `location_id` = 12 WHERE location = 'Prishtinë/ Priština';
UPDATE `stations` SET `location_id` = 13 WHERE location = 'Radolishta';
UPDATE `stations` SET `location_id` = 14 WHERE location = 'Rugovo';
UPDATE `stations` SET `location_id` = 15 WHERE location = 'Skopje';
UPDATE `stations` SET `location_id` = 16 WHERE location = 'Veleshta';
UPDATE `stations` SET `location_id` = 17 WHERE location = 'Vranishtë/ Vranište';
UPDATE `stations` SET `location_id` = 18 WHERE location = 'Zym/ Zjum';
UPDATE `stations` SET `location_id` = 19 WHERE location = 'Arvati';


//Set foreign key songs
UPDATE `songs` SET `station_id` = 1 WHERE location = 'Prishtinë/ Priština' AND DATE = '09.08.1959';
UPDATE `songs` SET `station_id` = 2 WHERE location = 'Gjonaj/ Đonaj' AND DATE = '12.08.1959';
UPDATE `songs` SET `station_id` = 3 WHERE location = 'Gjonaj/ Đonaj' AND DATE = '13.08.1959';
UPDATE `songs` SET `station_id` = 4 WHERE location = 'UNBEKANNT' AND DATE = 'UNBEKANNT';
UPDATE `songs` SET `station_id` = 5 WHERE location = 'Gjonaj/ Đonaj' AND DATE = '14.08.1959';
UPDATE `songs` SET `station_id` = 6 WHERE location = 'Vranishtë/ Vranište' AND DATE = '15.08.1959';
UPDATE `songs` SET `station_id` = 7 WHERE location = 'Vranishtë/ Vranište' AND DATE = '16.08.1959';
UPDATE `songs` SET `station_id` = 8 WHERE location = 'Vranishtë/ Vranište' AND DATE = '17.08.1959';
UPDATE `songs` SET `station_id` = 9 WHERE location = 'Bellobrad/ Belobrod' AND DATE = '17.08.1959';
UPDATE `songs` SET `station_id` = 10 WHERE location = 'Zym/ Zjum' AND DATE = '18.08.1959';
UPDATE `songs` SET `station_id` = 11 WHERE location = 'Rugovo' AND DATE = '23.08.1959';
UPDATE `songs` SET `station_id` = 12 WHERE location = 'Rugovo' AND DATE = '24.08.1959';
UPDATE `songs` SET `station_id` = 13 WHERE location = 'Rugovo' AND DATE = '26.08.1959';
UPDATE `songs` SET `station_id` = 14 WHERE location = 'Nakolec' AND DATE = '05.09.1959';
UPDATE `songs` SET `station_id` = 15 WHERE location = 'Nakolec' AND DATE = '06.09.1959';
UPDATE `songs` SET `station_id` = 16 WHERE location = 'Krani' AND DATE = '06.09.1959';
UPDATE `songs` SET `station_id` = 17 WHERE location = 'Arvati' AND DATE = '07.09.1959';
UPDATE `songs` SET `station_id` = 18 WHERE location = 'Krani' AND DATE = '08.09.1959';
UPDATE `songs` SET `station_id` = 19 WHERE location = 'Ohrid' AND DATE = '13.09.1959';
UPDATE `songs` SET `station_id` = 20 WHERE location = 'Radolishta' AND DATE = '14.09.1959';
UPDATE `songs` SET `station_id` = 21 WHERE location = 'Frangovo' AND DATE = '14.09.1959';
UPDATE `songs` SET `station_id` = 22 WHERE location = 'Radolishta' AND DATE = '15.09.1959';
UPDATE `songs` SET `station_id` = 23 WHERE location = 'Frangovo' AND DATE = '15.09.1959';
UPDATE `songs` SET `station_id` = 24 WHERE location = 'Veleshta' AND DATE = '17.09.1959';
UPDATE `songs` SET `station_id` = 25 WHERE location = 'Bidžovo ' AND DATE = '17.09.1959';
UPDATE `songs` SET `station_id` = 26 WHERE location = 'Skopje' AND DATE = '24.09.1959';
UPDATE `songs` SET `station_id` = 27 WHERE location = 'Glumovo' AND DATE = '27.09.1959';
UPDATE `songs` SET `station_id` = 28 WHERE location = 'Brodosavce/ Brodosanë' AND DATE = '17.08.1959';
UPDATE `songs` SET `station_id` = 29 WHERE location = 'Brodosavce/ Brodosanë' AND DATE = '18.08.1959';
UPDATE `songs` SET `station_id` = 30 WHERE location = 'Bellobrad/ Belobrod' AND DATE = '18.08.1959';
UPDATE `songs` SET `station_id` = 31 WHERE location = 'Peć' AND DATE = '25.08.1959';
UPDATE `songs` SET `station_id` = 32 WHERE location = 'Gllogovc/ Glogovac' AND DATE = '28.08.1959';
UPDATE `songs` SET `station_id` = 33 WHERE location = 'Gllogovc/ Glogovac' AND DATE = '29.08.1959';
UPDATE `songs` SET `station_id` = 34 WHERE location = 'Gllogovc/ Glogovac' AND DATE = '30.08.1959';