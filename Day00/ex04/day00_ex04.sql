select concat(name, ' (age:', age, ',gender:''', gender, ''',address:''', address, ''')') AS person_information
from person order by person_information;

-- - The result is below (raw ordering should be the same like below)

--         Andrey (age:21,gender:'male',address:'Moscow')
--         Anna (age:16,gender:'female',address:'Moscow')
--         Denis (age:13,gender:'male',address:'Kazan')
--         Dmitriy (age:18,gender:'male',address:'Samara')
--         Elvira (age:45,gender:'female',address:'Kazan')
--         Irina (age:21,gender:'female',address:'Saint-Petersburg')
--         Kate (age:33,gender:'female',address:'Kazan')
--         Nataly (age:30,gender:'female',address:'Novosibirsk')
--         Peter (age:24,gender:'male',address:'Saint-Petersburg')