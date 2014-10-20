SELECT voters.first_name, voters.last_name
FROM votes INNER JOIN voters ON voters.id = votes.voter_id
INNER JOIN congress_members ON congress_members.id = votes.politician_id
GROUP BY voters.id, congress_members.id HAVING c > 1;

Type.select("id, count(id) as quantity").group(:name).having("quantity > 1")