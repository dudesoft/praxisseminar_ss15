BEGIN;
SET SQL_SAFE_UPDATES = 0;

 ALTER TABLE `songs` 
  ADD COLUMN `date_conversion` DATE;

 UPDATE `songs` 
  SET `date_conversion` = STR_TO_DATE(`date`, '%d.%c.%Y');

 ALTER TABLE `songs` 
  DROP COLUMN `date`;

 ALTER TABLE `songs` 
  CHANGE COLUMN `date_conversion` `date` DATE;
COMMIT;