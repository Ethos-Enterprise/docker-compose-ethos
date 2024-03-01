CREATE TABLE IF NOT EXISTS Interacao (
  id UUID NOT NULL,
  status VARCHAR(45),
  data DATE,
  fk_servico UUID NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO Interacao (id, status, data, fk_servico) VALUES
  ('123e4567-e89b-12d3-a456-426614174000', 'pendente', '2024-03-01', '223e4567-e89b-12d3-a456-426614174001'),
  ('223e4567-e89b-12d3-a456-426614174001', 'negociação iniciada', '2024-02-28', '323e4567-e89b-12d3-a456-426614174002'),
  ('323e4567-e89b-12d3-a456-426614174002', 'negociação não realizada', '2024-03-02', '423e4567-e89b-12d3-a456-426614174003'),
  ('423e4567-e89b-12d3-a456-426614174003', 'negociação finalizada', '2024-02-29', '523e4567-e89b-12d3-a456-426614174004'),
  ('523e4567-e89b-12d3-a456-426614174004', 'pendente', '2024-02-27', '623e4567-e89b-12d3-a456-426614174005');