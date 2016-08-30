CREATE TABLE PUBLIC.PENDENCIAS_SITUACOES
( 
  ID INTEGER NOT NULL,
  I_PENDENCIAS INTEGER NOT NULL,
  DATA_CADASTRO DATE NOT NULL,
  SITUACAO CHARACTER VARYING(2) NOT NULL,
  CONSTRAINT PK_PENDENCIAS_SITUACOES PRIMARY KEY (ID),
  CONSTRAINT FK_PENDENCIAS FOREIGN KEY(I_PENDENCIAS) REFERENCES PENDENCIAS(ID) ON DELETE CASCADE
) WITH (OIDS = FALSE);
ALTER TABLE PUBLIC.PENDENCIAS_SITUACOES OWNER TO POSTGRES;

CREATE SEQUENCE PUBLIC.SEQ_PENDENCIAS_SITUACOES
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE PUBLIC.SEQ_PENDENCIAS_SITUACOES OWNER TO POSTGRES;