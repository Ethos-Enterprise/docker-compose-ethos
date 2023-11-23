CREATE TABLE SERVICO (
    id UUID PRIMARY KEY,
    nome VARCHAR(255),
    descricao TEXT,
    valor DOUBLE PRECISION,
    area_atuacao_esg VARCHAR(255),
    fk_prestadora_servico UUID
);