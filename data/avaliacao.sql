CREATE TABLE IF NOT EXISTS Avaliacao (
    id UUID PRIMARY KEY,
    comentario VARCHAR(250),
    nota INT,
    data TIMESTAMP,
    fk_empresa UUID,
    fk_servico UUID
    );