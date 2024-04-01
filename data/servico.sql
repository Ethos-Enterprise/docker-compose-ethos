CREATE TABLE SERVICO (
    id UUID PRIMARY KEY,
    nome VARCHAR(255),
    descricao TEXT,
    valor DOUBLE PRECISION,
    area_atuacao_esg VARCHAR(255),
    fk_prestadora_servico UUID
);

INSERT INTO SERVICO VALUES ('e345dd4a-ffad-4bfa-82cd-aa5c96e3571b', 'Solução Sustentável Proativa', 'Oferecemos uma solução ambiental proativa que vai além do básico. Nosso serviço busca constantemente novas formas de reduzir a pegada de carbono e promover a sustentabilidade. Utilizamos materiais recicláveis e implementamos práticas inovadoras. O futuro verde começa aqui!', 100.00, 'ENVIRONMENTAL', '22724577-0edf-49ef-a56d-2b35c648b224');

INSERT INTO SERVICO VALUES ('3dd97eba-d7c4-4a2e-aa2c-c353cb34b06e', 'Impacto Social Positivo', 'Nossa oferta de serviço visa criar um impacto social positivo duradouro. Através de parcerias com organizações sem fins lucrativos e iniciativas locais, destinamos recursos para causas sociais importantes. Junte-se a nós na construção de comunidades mais fortes!', 200.00, 'SOCIAL', '22724577-0edf-49ef-a56d-2b35c648b224');
