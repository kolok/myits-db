\c myitsdb;

insert into compagnies_users_roles
  ( id,
    user_id,
    compagny_id,
    role )
  values
  ( 1,
    1, /* Phil Barney */
    1, /* myits compagny */
    'admin' ),
  ( 2,
    2, /* Cookie Dingler */
    1, /* myits compagny */
    'employee' ),
  ( 3,
    3, /* Jean-Luc Lahaye */
    1, /* myits compagny */
    'employee' ),
  ( 4,
    4, /* François Feldman */
    1, /* myits compagny */
    'employee' ),
  ( 5,
    5, /* Patrick Henandez */
    1, /* myits compagny */
    'employee' ),
  ( 6,
    2, /* Cookie Dingler */
    2, /* foo compagny */
    'admin' ),
  ( 7,
    3, /* Jean-Luc Lahaye */
    2, /* foo compagny */
    'admin' ),
  ( 8,
    4, /* François Feldman */
    2, /* foo compagny */
    'employee' );

/*
 Following users aren't linked to a compagny:
    'Sabrina',
    'Julie Pietri',
    'Jean-Pierre Mader',
    'Lio',
    'Caroline Loeb',
    'Elsa Lunghini',
    'Gérard Blanc',
 */
