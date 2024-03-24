create TABLE IF NOT EXISTS PRESTADORA_SERVICO (
  id uuid PRIMARY KEY,
  status_aprovacao varchar(30),
  fk_empresa UUID unique
);

insert into PRESTADORA_SERVICO  values (
'22724577-0edf-49ef-a56d-2b35c648b224', 'APROVADO', '6ba7b813-9dad-11d1-80b4-00c04fd430c4'
);