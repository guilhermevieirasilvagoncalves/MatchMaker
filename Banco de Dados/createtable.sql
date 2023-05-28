CREATE TABLE Proprietario (

  CNPJ VARCHAR(255),
  Nome VARCHAR(255),
  PRIMARY KEY(CNPJ)

);

CREATE TABLE Quadra (

  CEP VARCHAR(255),
  id_quadra INTEGER,
  Numero VARCHAR(255),
  Preco FLOAT,
  Caracteristicas VARCHAR(255),
  Esporte VARCHAR(255),
  CNPJ VARCHAR(255),

  FOREIGN KEY(CNPJ) REFERENCES Proprietario(CNPJ),
  PRIMARY KEY(id_quadra)

);


CREATE TABLE Cliente(
	CPF VARCHAR(255),
  Nome VARCHAR(255),
	Numero VARCHAR(255),
  Senha VARCHAR(255),

  PRIMARY KEY (CPF)
);

CREATE TABLE Pagamento(
	id_pagamento INTEGER,
  Metodo_pag VARCHAR(255),
  Data VARCHAR(255),
  CPF VARCHAR(255),

  PRIMARY KEY (id_pagamento),
  FOREIGN KEY (CPF) REFERENCES Cliente(CPF)
);

CREATE TABLE Agendamento (

  id_agendamento INTEGER,
  Data VARCHAR(255),
  Preco FLOAT,
  Horario VARCHAR(255),
  CPF VARCHAR(255),
  tipo VARCHAR(255),
  id_quadra INTEGER,
  id_pagamento INTEGER,
  CNPJ VARCHAR(255),

  PRIMARY KEY(id_agendamento),
  FOREIGN KEY(id_quadra) REFERENCES Quadra(id_quadra),
  FOREIGN KEY(CPF) REFERENCES Cliente(CPF),
  FOREIGN KEY(id_pagamento) REFERENCES Pagamento(id_pagamento),
  FOREIGN KEY(CNPJ) REFERENCES Proprietario(CNPJ)

 );

 CREATE TABLE Assinatura(
  Tipo_Assinatura VARCHAR(255),
  Preco INTEGER,
  Beneficios VARCHAR(255),
  id_pagamento INTEGER,
  CPF VARCHAR(255),

  PRIMARY KEY (Tipo_Assinatura),
  FOREIGN KEY (id_pagamento) REFERENCES Pagamento(id_pagamento),
  FOREIGN KEY (CPF) REFERENCES Cliente(CPF)
);


 CREATE TABLE Assinatura_Beneficios(
	Beneficios VARCHAR(255),
	Tipo_Assinatura VARCHAR(255),

    FOREIGN KEY (Tipo_Assinatura) REFERENCES Assinatura(Tipo_Assinatura)
);


 CREATE TABLE Marca(
  CNPJ VARCHAR(255),
  Nome VARCHAR(255),

  PRIMARY KEY(CNPJ)
);

CREATE TABLE ECommerce(
  id_venda INTEGER,
  preco INTEGER,
  Produto VARCHAR(255),
  Nome VARCHAR(255),
  Distribuidora VARCHAR(255),
  CNPJ VARCHAR(255),
  CPF VARCHAR(255),

  PRIMARY KEY (id_venda),
  FOREIGN KEY (CNPJ) REFERENCES Marca(CNPJ),
  FOREIGN KEY (CPF) REFERENCES Cliente(CPF)
);

CREATE TABLE Evento(
  id_agendamento INTEGER,
  Tipo VARCHAR(255),

  PRIMARY KEY(id_agendamento),
  FOREIGN KEY (id_agendamento) REFERENCES Agendamento(id_agendamento)
);

CREATE TABLE Mensal(
  id_agendamento INTEGER,
  Data VARCHAR(255),

  PRIMARY KEY(id_agendamento),
  FOREIGN KEY (id_agendamento) REFERENCES Agendamento(id_agendamento)
);



CREATE TABLE Aluguel(
  id_agendamento INTEGER,
  Disponibilidade VARCHAR(255),

  PRIMARY KEY(id_agendamento),
  FOREIGN KEY (id_agendamento) REFERENCES Agendamento(id_agendamento)
);


CREATE TABLE Endereço_Cliente(
    CEP VARCHAR(255),
    Numero INTEGER,
    CPF VARCHAR(255),

    FOREIGN KEY (CPF) REFERENCES Cliente(CPF)
);

CREATE TABLE Endereço_Quadra(
    CEP VARCHAR(255),
    Numero INTEGER,
    id_quadra INTEGER,

    FOREIGN KEY (id_quadra) REFERENCES Quadra(id_quadra)
);
