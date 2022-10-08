-- а) Найдите все прямые рейсы из Москвы в Тверь.
select c.trainnr, c.departure, c.arrival
from trainsplan.connection c,
     trainsplan.station sFrom,
     trainsplan.station sTo
where c.fromstation = sFrom.name
  and c.tostation = sTo.name
  and sFrom.cityname = 'Moscow'
  and sFrom.region = 'Moscow'
  and sTo.cityname = 'Tver'
  and sTo.region = 'Tver';

-- б) Найдите все многосегментные маршруты, имеющие точно однодневный трансфер из Москвы в Санкт-Петербург
-- (первое отправление и прибытие в конечную точку должны быть в одну и ту же дату).
-- Вы можете применить функцию DAY () к атрибутам Departure и Arrival, чтобы определить дату.
select distinct t.trainnr, c.departure::date as date
from trainsplan.train t,
     trainsplan.station sFrom,
     trainsplan.station sTo,
     trainsplan.connection c
where t.startstationname = sFrom.name
  and t.endstationname = sTo.name
  and t.trainnr = c.trainnr
  and sFrom.cityname = 'Moscow'
  and sFrom.region = 'Moscow'
  and sTo.cityname = 'Saint Petersburg'
  and sTo.region = 'Saint Petersburg'
  and t.trainnr not in (select c.trainnr
                        from trainsplan.connection c,
                             trainsplan.station sFrom,
                             trainsplan.station sTo
                        where c.fromstation = sFrom.name
                          and c.tostation = sTo.name
                          and sFrom.cityname = 'Moscow'
                          and sFrom.region = 'Moscow'
                          and sTo.cityname = 'Saint Petersburg'
                          and sTo.region = 'Saint Petersburg')
  and c.departure::date = c.arrival::date;