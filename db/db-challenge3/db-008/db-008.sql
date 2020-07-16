SELECT CAST(join_histories.joined_at AS DATE),users.name,chatrooms.room_name
FROM `join_histories`
JOIN `users`
ON join_histories.user_id = users.id
JOIN `chatrooms`
ON join_histories.chatroom_id = chatrooms.id
WHERE users.is_deleted = 0
AND chatrooms.is_deleted = 0
ORDER BY join_histories.joined_at ASC;
