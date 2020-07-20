BEGIN;
UPDATE users
SET is_deleted = 1,updated_at = CURRENT_TIMESTAMP
WHERE work_phone_number IS NULL
AND personal_phone_number IS NULL;
COMMIT;
