INSERT INTO cliente (CPF, NOME, NUMERO, SENHA) VALUES ('123.123.123-43', 'Junin da Silva', '11921321321', 'junin123');
INSERT INTO cliente (CPF, NOME, NUMERO, SENHA) VALUES ('432.322.432-21', 'Ricardo Milos', '1209123132', 'ricardaodamassa123');
INSERT INTO cliente (CPF, NOME, NUMERO, SENHA) VALUES ('343.433.644-12', 'Ana Vasconcelos', '173245132', '092aninha');

INSERT INTO proprietario (CNPJ, NOME)  VALUES ('58.120.403/0009-81', 'Fabinho do Fut');
INSERT INTO proprietario (CNPJ, NOME)  VALUES ('45.232.431/0003-12', 'Robertinha do Voleibol');

INSERT INTO quadra (cep, id_quadra, numero, preco, caracteristicas, esporte, cnpj)
VALUES ('09234-004', 1, '1196637894', 120.44, 'aberta,com churrasqueira', 'futebol', '58.120.403/0009-81');
INSERT INTO quadra (cep, id_quadra, numero, preco, caracteristicas, esporte, cnpj)
VALUES ('09132-032', 2, '1192635612', 135.42, 'fechado,sem churrasqueira', 'voleibol', '45.232.431/0003-12');

INSERT INTO pagamento (id_pagamento, metodo_pag, data, cpf)
VALUES (1, 'crédito', '19/04/2023','123.123.123-43');
INSERT INTO pagamento (id_pagamento, metodo_pag, data, cpf)
VALUES (2, 'crédito', '30/04/2023','123.123.123-43');
INSERT INTO pagamento (id_pagamento, metodo_pag, data, cpf)
VALUES (3, 'crédito', '11/05/2023','432.322.432-21');
INSERT INTO pagamento (id_pagamento, metodo_pag, data, cpf)
VALUES (4, 'crédito', '14/05/2023','432.322.432-21');
INSERT INTO pagamento (id_pagamento, metodo_pag, data, cpf)
VALUES (5, 'boleto', '16/05/2023','343.433.644-12');

INSERT INTO agendamento (id_agendamento, data, preco, horario, cpf, id_quadra, id_pagamento, cnpj)
VALUES (1, '2023-04-19', 120.44, '22:00', '123.123.123-43', 1, 1, '58.120.403/0009-81');
INSERT INTO agendamento (id_agendamento, data, preco, horario, cpf, id_quadra, id_pagamento, cnpj)
VALUES (2, '2023-04-30', 120.44, '21:00', '123.123.123-43', 1, 2, '58.120.403/0009-81');
INSERT INTO agendamento (id_agendamento, data, preco, horario, cpf, id_quadra, id_pagamento, cnpj)
VALUES (3, '2023-05-11', 120.44, '17:00', '432.322.432-21', 1, 3, '58.120.403/0009-81');
INSERT INTO agendamento (id_agendamento, data, preco, horario, cpf, id_quadra, id_pagamento, cnpj)
VALUES (4, '2023-05-14', 135.42, '18:00', '432.322.432-21', 2, 4, '45.232.431/0003-12');
INSERT INTO agendamento (id_agendamento, data, preco, horario, cpf, id_quadra, id_pagamento, cnpj)
VALUES (5, '2023-05-16', 135.42, '19:00', '343.433.644-12', 2, 5, '45.232.431/0003-12');
