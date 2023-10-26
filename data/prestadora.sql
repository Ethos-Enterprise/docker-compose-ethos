create TABLE IF NOT EXISTS PRESTADORA_SERVICO (
  id uuid PRIMARY KEY,
  status_aprovacao varchar(30),
  fk_empresa UUID unique
);
