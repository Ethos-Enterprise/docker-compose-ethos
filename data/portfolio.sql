CREATE TABLE IF NOT EXISTS Portfolio (
    id uuid PRIMARY KEY,
    url_imagem_perfil TEXT,
    url_background_perfil TEXT,
    descricao_empresa VARCHAR(300),
    sobre_empresa VARCHAR(1000),
    link_website_empresa VARCHAR(300),
    data_empresa_certificada TIMESTAMP,
    fk_prestadora_servico UUID
    );

insert into Portfolio (id, url_imagem_perfil, url_background_perfil, descricao_empresa, sobre_empresa, link_website_empresa, data_empresa_certificada, fk_prestadora_servico) values ('f47b3b3b-1b3b-4b3b-8b3b-3b3b3b3b3b3b', 'https://www.google.com.br', 'https://www.google.com.br', 'Empresa de TI', 'Empresa de TI', 'https://www.google.com.br', '2021-10-10 00:00:00', '22724577-0edf-49ef-a56d-2b35c648b224');