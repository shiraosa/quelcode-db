SELECT COUNT(chats.chatroom_id) AS 投稿数,chatrooms.room_name
FROM `chats`
JOIN `chatrooms`
ON chats.chatroom_id = chatrooms.id
JOIN `users`
ON chats.created_by = users.id
WHERE chats.is_deleted = 0
AND users.is_deleted = 0
GROUP BY chats.chatroom_id
ORDER BY COUNT(chats.chatroom_id) DESC;
