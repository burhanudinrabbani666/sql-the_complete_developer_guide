-- SELECT EXTRACT(
--     dow
--     FROM last_checkin
--   ),
--   last_checkin
-- FROM memberships;
SELECT last_checkin::TIMESTAMP::DATE,
  last_checkin::TIMESTAMP::TIME,
  last_checkin as original
FROM memberships