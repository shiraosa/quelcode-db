BEGIN;
UPDATE chatrooms
SET is_sendable_file = 0,updated_by = 1,updated_at = CURRENT_TIMESTAMP
WHERE id NOT IN(
    SELECT chatroom_id 
    FROM join_histories
    WHERE user_id = 1
)
AND chatrooms.is_deleted = 0;
COMMIT;
