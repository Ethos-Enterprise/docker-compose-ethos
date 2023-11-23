CREATE TABLE IF NOT EXISTS Portfolio (
    id uuid PRIMARY KEY,
    url_imagem_perfil TEXT,
    url_backgroud_perfil TEXT,
    descricao_empresa VARCHAR(300),
    sobre_empresa VARCHAR(1000),
    link_website_empresa VARCHAR(300),
    data_empresa_certificado TIMESTAMP,
    fk_prestadora_servico UUID
    );
