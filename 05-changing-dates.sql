SELECT AGE(membership_end, membership_start)::TEXT,
  membership_end,
  membership_start
FROM memberships;