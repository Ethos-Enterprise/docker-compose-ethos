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
