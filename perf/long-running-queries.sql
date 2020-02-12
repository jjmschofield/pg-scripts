SELECT pid, age(clock_timestamp(), query_start), query
FROM pg_stat_activity
WHERE state != 'idle'
  AND query != '<IDLE>'
  AND query NOT ILIKE '%pg_stat_activity%'
ORDER BY age DESC;