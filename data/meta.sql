CREATE TABLE META (
    id UUID PRIMARY KEY,
    pilar_esg VARCHAR(100),
    descricao VARCHAR(100),
    data_inicio DATE,
    data_fim DATE,
    fk_empresa UUID
);

INSERT INTO META (id, pilar_esg, descricao, data_inicio, data_fim, fk_empresa)
VALUES
    ('f7a6f0c7-7f14-4e4d-bd69-563a6656a17e', 'Ambiental', 'Descrição da meta Ambiental', '2024-03-01', '2024-06-30', '6ba7b810-9dad-11d1-80b4-00c04fd430c8'),
    ('4e70fe29-0738-4a7d-b6ef-4accc0ad172e', 'Social', 'Descrição da meta Social', '2024-04-01', '2024-09-30', '6ba7b810-9dad-11d1-80b4-11c04fd430c7');
