CREATE TABLE Interacao (
  id UUID NOT NULL,
  status VARCHAR(45),
  data DATE,
  fk_servico UUID,
  fk_empresa UUID,
  PRIMARY KEY (id)
);

INSERT INTO Interacao (id, status, data, fk_servico, fk_empresa) VALUES
  ('123e4567-e89b-12d3-a456-426614174000', 'pendente', '2024-03-01', '223e4567-e89b-12d3-a456-426614175001', '6ba7b810-9dad-11d1-80b4-00c04fd430c8'),
  ('223e4567-e89b-12d3-a456-426614174001', 'negociação iniciada', '2024-02-28', '323e4567-e89b-12d3-a456-426614175002', '6ba7b810-9dad-11d1-80b4-00c04fd430c9'),
  ('323e4567-e89b-12d3-a456-426614174002', 'negociação não realizada', '2024-03-02', '423e4567-e89b-12d3-a456-426614175003', '6ba7b810-9dad-11d1-80b4-00c04fd430c7'),
  ('423e4567-e89b-12d3-a456-426614174003', 'negociação finalizada', '2024-02-29', '523e4567-e89b-12d3-a456-426614175004', '6ba7b810-9dad-11d1-80b4-00c04fd430c0'),
  ('523e4567-e89b-12d3-a456-426614174004', 'pendente', '2024-02-27', '623e4567-e89b-12d3-a456-42661417460', '6ba7b810-9dad-11d1-80b4-00c04fd430c5');