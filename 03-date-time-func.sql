SELECT EXTRACT(
    DAY
    FROM last_checkin
  ),
  last_checkin
FROM memberships;