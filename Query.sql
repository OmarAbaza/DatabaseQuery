SELECT user.user_id, username, training_id, training_date, count( user_training_id ) AS count
  FROM user LEFT JOIN training_details ON user.user_id = training_details.user_id
  GROUP BY user.user_id, training_id, training_date HAVING count( user_training_id ) > 1
  ORDER BY training_date DESC;