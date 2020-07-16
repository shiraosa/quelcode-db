SELECT users.name,chatrooms.room_name,latest_chats.created_at AS latest_created_at
FROM `chats`
JOIN (
    SELECT MAX(chats.created_at) AS created_at,chats.chatroom_id
    FROM `chats`
    WHERE chats.is_deleted = 0
    GROUP BY chats.chatroom_id
)AS latest_chats
ON chats.created_at = latest_chats.created_at
JOIN `users`
ON chats.created_by = users.id
JOIN `chatrooms`
ON latest_chats.chatroom_id = chatrooms.id
ORDER BY latest_chats.chatroom_id ASC;
