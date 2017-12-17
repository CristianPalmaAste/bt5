create or replace function f_copiar_nove_a_dove() returns trigger as
$body$
declare
  Viddove                   numeric;
  Vnumero                   numeric;
  Vid                       numeric;
  Vcorrelativo              numeric;
  Vidprod                   numeric;
  Vidserv                   numeric;
  Vcantidad                 numeric;
  Vpreciounitario           numeric;
  Vporcentajedescuento      numeric;
  Vmontodescuento           numeric;
  Vimpuestos                numeric;
  Vsubtotal                 numeric;
  Vidusuacrearegistro       numeric;
  Viddedv                   numeric;
  Vidtidv                   numeric;
  Vidpais                   numeric;
  C_denv cursor for
    select id
          ,correlativo
          ,idprod
          ,idserv
          ,cantidad
          ,preciounitario
          ,porcentajedescuento
          ,montodescuento
          ,impuestos
          ,subtotal
          ,idusuacrearegistro
    from   detalles_notas_vtas
    where  idnove = new.id
    ;
begin
  if old.idesnv = 2 and new.idesnv = 3 then
    select idpais
    into   Vidpais
    from   empresas
    where  id = new.idempr
    ;
    select min(id)
    into   Vidtidv
    from   tipos_doctos_ventas
    where  idpais = Vidpais
    ;
    select nextval('nove_seq')
    into   Viddove
    ;
    select max(numero)
    into   Vnumero
    from   notas_ventas
    where  idempr = new.idempr
    ;
    if Vnumero is null then
      Vnumero := 1;
    end if;
    insert into documentos_ventas (id                       -- numeric(20,0)   not null
                                  ,idempr                   -- numeric(20,0)   not null
                                  ,idnove                   -- numeric(20,0)       null
                                  ,idtidv                   -- numeric(20,0)   not null
                                  ,numero                   -- numeric(20,0)   not null
                                  ,idclie                   -- numeric(20,0)   not null
                                  ,descripciondoctoventa    -- varchar(1000)   not null
                                  ,idgere                   -- numeric(20,0)       null
                                  ,idproy                   -- numeric(20,0)       null
                                  ,idline                   -- numeric(20,0)       null
                                  ,idceco                   -- numeric(20,0)       null
                                  ,idtare                   -- numeric(20,0)       null
                                  ,subtotal                 -- numeric(20,0)   not null
                                  ,porcentajedescuento      -- numeric(20,2)   not null
                                  ,montodescuento           -- numeric(20,2)   not null
                                  ,valorimpuestos           -- numeric(20,0)   not null
                                  ,total                    -- numeric(20,0)   not null
                                  ,idesve                   -- numeric(20,0)   not null
                                  ,idusuacrearegistro       -- numeric(20,0)   not null
                                  ,fechacrearegistro        -- timestamp       not null
                                  ,idusuamodifregistro      -- numeric(20,0)       null
                                  ,fechamodifregistro       -- timestamp           null
                                  ,idusuaborraregistro      -- numeric(20,0)       null
                                  ,fechaborraregistro       -- timestamp           null
                                  )
    values (Viddove                       -- id                       numeric(20,0)   not null
           ,new.idempr                    -- idempr                   numeric(20,0)   not null
           ,new.id                        -- idnove                   numeric(20,0)       null
           ,Vidtidv                       -- idtidv                   numeric(20,0)   not null
           ,Vnumero                       -- numero                   numeric(20,0)   not null
           ,new.idclie                    -- idclie                   numeric(20,0)   not null
           ,new.descripcionnotaventa      -- descripciondoctoventa    varchar(1000)   not null
           ,new.idgere                    -- idgere                   numeric(20,0)       null
           ,new.idproy                    -- idproy                   numeric(20,0)       null
           ,new.idline                    -- idline                   numeric(20,0)       null
           ,new.idceco                    -- idceco                   numeric(20,0)       null
           ,new.idtare                    -- idtare                   numeric(20,0)       null
           ,new.subtotal                  -- subtotal                 numeric(20,0)   not null
           ,new.porcentajedescuento       -- porcentajedescuento      numeric(20,2)   not null
           ,new.montodescuento            -- montodescuento           numeric(20,2)   not null
           ,new.valorimpuestos            -- valorimpuestos           numeric(20,0)   not null
           ,new.total                     -- total                    numeric(20,0)   not null
           ,1                             -- idesve                   numeric(20,0)   not null
           ,new.idusuacrearegistro        -- idusuacrearegistro       numeric(20,0)   not null
           ,current_timestamp             -- fechacrearegistro        timestamp       not null
           ,null                          -- idusuamodifregistro      numeric(20,0)       null
           ,null                          -- fechamodifregistro       timestamp           null
           ,null                          -- idusuaborraregistro      numeric(20,0)       null
           ,null                          -- fechaborraregistro       timestamp           null
           )
    ;
    open C_denv;
    loop
      fetch C_denv into Vid
                       ,Vcorrelativo
                       ,Vidprod
                       ,Vidserv
                       ,Vcantidad
                       ,Vpreciounitario
                       ,Vporcentajedescuento
                       ,Vmontodescuento
                       ,Vimpuestos
                       ,Vsubtotal
                       ,Vidusuacrearegistro
                       ;
      exit when not found;
      select nextval('dedv_seq')
      into   Viddedv
      ;
      insert into detalles_doctos_vtas (id                       -- numeric(20,0)   not null
                                       ,iddove                   -- numeric(20,0)   not null
                                       ,correlativo              -- numeric(20,0)   not null
                                       ,idprod                   -- numeric(20,0)       null
                                       ,idserv                   -- numeric(20,0)       null
                                       ,cantidad                 -- numeric(20,2)   not null
                                       ,preciounitario           -- numeric(20,0)   not null
                                       ,porcentajedescuento      -- numeric(20,2)   not null
                                       ,montodescuento           -- numeric(20,2)   not null
                                       ,impuestos                -- numeric(20,2)   not null
                                       ,subtotal                 -- numeric(20,2)   not null
                                       ,idusuacrearegistro       -- numeric(20,0)   not null
                                       ,fechacrearegistro        -- timestamp       not null
                                       ,idusuamodifregistro      -- numeric(20,0)       null
                                       ,fechamodifregistro       -- timestamp           null
                                       ,idusuaborraregistro      -- numeric(20,0)       null
                                       ,fechaborraregistro       -- timestamp           null
                                       )
      values (Viddedv                              -- id                       numeric(20,0)   not null
             ,Viddove                              -- iddove                   numeric(20,0)   not null
             ,Vcorrelativo                         -- correlativo              numeric(20,0)   not null
             ,Vidprod                              -- idprod                   numeric(20,0)       null
             ,Vidserv                              -- idserv                   numeric(20,0)       null
             ,Vcantidad                            -- cantidad                 numeric(20,2)   not null
             ,Vpreciounitario                      -- preciounitario           numeric(20,0)   not null
             ,Vporcentajedescuento                 -- porcentajedescuento      numeric(20,2)   not null
             ,Vmontodescuento                      -- montodescuento           numeric(20,2)   not null
             ,Vimpuestos                           -- impuestos                numeric(20,2)   not null
             ,Vsubtotal                            -- subtotal                 numeric(20,2)   not null
             ,Vidusuacrearegistro                  -- idusuacrearegistro       numeric(20,0)   not null
             ,current_timestamp                    -- fechacrearegistro        timestamp       not null
             ,null                                 -- idusuamodifregistro      numeric(20,0)       null
             ,null                                 -- fechamodifregistro       timestamp           null
             ,null                                 -- idusuaborraregistro      numeric(20,0)       null
             ,null                                 -- fechaborraregistro       timestamp           null
             )
      ;
    end loop;
    close C_denv;
  end if;
  return new;
end;
$body$ LANGUAGE plpgsql;

\q

