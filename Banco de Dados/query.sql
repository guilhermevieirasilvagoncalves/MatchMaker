SELECT AVG(ag.preco) média, q.esporte, ag.tipo from agendamento as ag
INNER JOIN quadra q on q.id_quadra = ag.id_quadra
WHERE EXTRACT(YEAR from ag.data) = 2023
GROUP BY EXTRACT(YEAR from ag.data), q.esporte, ag.tipo
