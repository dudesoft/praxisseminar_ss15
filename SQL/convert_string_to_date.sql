BEGIN;
SET SQL_SAFE_UPDATES = 0;

 ALTER TABLE `stations` 
  ADD COLUMN `date_conversion` DATE;

 UPDATE `stations` 
  SET `date_conversion` = STR_TO_DATE(`date`, '%d.%c.%Y');

 ALTER TABLE `stations` 
  DROP COLUMN `date`;

 ALTER TABLE `stations` 
  CHANGE COLUMN `date_conversion` `date` DATE;
COMMIT;