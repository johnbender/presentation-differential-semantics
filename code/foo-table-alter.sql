-- idempotent
create table if not exists foo (
  bar int,
  baz varchar(10)
);

alter table foo add column bak varchar(10);
alter table foo drop column bak;
alter table foo add column baks varchar(20);
