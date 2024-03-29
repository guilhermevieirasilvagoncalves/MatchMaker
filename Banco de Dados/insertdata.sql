INSERT INTO cliente (CPF, NOME, NUMERO, SENHA) VALUES ('123.123.123-43', 'Junin da Silva', '11921321321', 'junin123');
INSERT INTO cliente (CPF, NOME, NUMERO, SENHA) VALUES ('432.322.432-21', 'Ricardo Milos', '1209123132', 'ricardaodamassa123');
INSERT INTO cliente (CPF, NOME, NUMERO, SENHA) VALUES ('343.433.644-12', 'Ana Vasconcelos', '173245132', '092aninha');

INSERT INTO proprietario (CNPJ, NOME)  VALUES ('58.120.403/0009-81', 'Fabinho do Fut');
INSERT INTO proprietario (CNPJ, NOME)  VALUES ('45.232.431/0003-12', 'Robertinha do Voleibol');
INSERT INTO proprietario (cnpj, nome) VALUES ('32.123.453/0007-25', 'Robertin Futebas');
INSERT INTO proprietario (cnpj, nome) VALUES ('54.643.234/0001-22', 'Marcelo Bigbol');

INSERT INTO quadra (cep, id_quadra, numero, preco, caracteristicas, esporte, cnpj)
VALUES ('09234-004', 1, '1196637894', 120.44, 'aberta,com churrasqueira', 'futebol', '58.120.403/0009-81');
INSERT INTO quadra (cep, id_quadra, numero, preco, caracteristicas, esporte, cnpj)
VALUES ('09132-032', 2, '1192635612', 135.42, 'fechado,sem churrasqueira', 'voleibol', '45.232.431/0003-12');
INSERT INTO quadra (cep, id_quadra, numero, preco, caracteristicas, esporte, cnpj)
VALUES ('09175-213', 3, '11988356543', 112.54, 'fechado,com churrasqueira', 'futebol', '32.123.453/0007-25');
INSERT INTO quadra (cep, id_quadra, numero, preco, caracteristicas, esporte, cnpj)
VALUES ('09764-654', 4, '11999880022', 134.65, 'aberto,chão de areia', 'voleibol', '54.643.234/0001-22');

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
INSERT INTO pagamento (id_pagamento, metodo_pag, data, cpf)
VALUES (6, 'crédito', '30/07/2023','123.123.123-43');
INSERT INTO pagamento (id_pagamento, metodo_pag, data, cpf)
VALUES (7, 'boleto', '19/08/2023','343.433.644-12');

INSERT INTO agendamento (id_agendamento, data, preco, horario, cpf, id_quadra, id_pagamento, cnpj, tipo)
VALUES (1, '2023-04-19', 120.44, '22:00', '123.123.123-43', 1, 1, '58.120.403/0009-81', 'mensal');
INSERT INTO agendamento (id_agendamento, data, preco, horario, cpf, id_quadra, id_pagamento, cnpj, tipo)
VALUES (2, '2023-04-30', 120.44, '21:00', '123.123.123-43', 1, 2, '58.120.403/0009-81', 'aluguel');
INSERT INTO agendamento (id_agendamento, data, preco, horario, cpf, id_quadra, id_pagamento, cnpj, tipo)
VALUES (3, '2023-05-11', 120.44, '17:00', '432.322.432-21', 1, 3, '58.120.403/0009-81', 'aluguel');
INSERT INTO agendamento (id_agendamento, data, preco, horario, cpf, id_quadra, id_pagamento, cnpj, tipo)
VALUES (4, '2023-05-14', 135.42, '18:00', '432.322.432-21', 2, 4, '45.232.431/0003-12', 'aluguel');
INSERT INTO agendamento (id_agendamento, data, preco, horario, cpf, id_quadra, id_pagamento, cnpj, tipo)
VALUES (5, '2023-05-16', 135.42, '19:00', '343.433.644-12', 2, 5, '45.232.431/0003-12','evento');
INSERT INTO agendamento (id_agendamento, data, preco, horario, cpf, id_quadra, id_pagamento, cnpj, tipo)
VALUES (6, '2023-07-30', 112.54, '22:00', '123.123.123-43', 3, 6, '32.123.453/0007-25', 'aluguel');
INSERT INTO agendamento (id_agendamento, data, preco, horario, cpf, id_quadra, id_pagamento, cnpj, tipo)
VALUES (7, '2023-08-19', 134.65, '19:00', '343.433.644-12', 4, 7, '54.643.234/0001-22', 'aluguel');

INSERT INTO mensal (id_agendamento, data) VALUES (1, '2023-04-19');
INSERT INTO aluguel (id_agendamento, disponibilidade) VALUES (2, 'sim');
INSERT INTO aluguel (id_agendamento, disponibilidade) VALUES (3, 'sim');
INSERT INTO aluguel (id_agendamento, disponibilidade) VALUES (4, 'sim');
INSERT INTO evento (id_agendamento, tipo) VALUES (5, 'Voleibol Beneficente');
INSERT INTO aluguel (id_agendamento, disponibilidade) VALUES (6, 'não');
INSERT INTO aluguel (id_agendamento, disponibilidade) VALUES (7, 'não');

