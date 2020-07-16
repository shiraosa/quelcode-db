SELECT id,room_name,overview,
CASE is_sendable_file WHEN '0' THEN '禁止' WHEN '1' THEN '許可' END AS ファイル送信,
is_direct_chat,is_deleted,created_at,created_by,updated_at,updated_by
FROM chatrooms
WHERE is_direct_chat = 1
AND is_deleted = 0
ORDER BY id ASC;
