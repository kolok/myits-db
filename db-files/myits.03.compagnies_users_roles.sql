\c myitsdb;

insert into companies_users_roles
  ( id,
    user_id,
    company_id,
    role )
  values
  ( 1,
    1, /* Phil Barney */
    1, /* myits company */
    'admin' ),
  ( 2,
    2, /* Cookie Dingler */
    1, /* myits company */
    'employee' ),
  ( 3,
    3, /* Jean-Luc Lahaye */
    1, /* myits company */
    'employee' ),
  ( 4,
    4, /* François Feldman */
    1, /* myits company */
    'employee' ),
  ( 5,
    5, /* Patrick Henandez */
    1, /* myits company */
    'employee' ),
  ( 6,
    2, /* Cookie Dingler */
    2, /* foo company */
    'admin' ),
  ( 7,
    3, /* Jean-Luc Lahaye */
    2, /* foo company */
    'admin' ),
  ( 8,
    4, /* François Feldman */
    2, /* foo company */
    'employee' );

/*
 Following users aren't linked to a company:
    'Sabrina',
    'Julie Pietri',
    'Jean-Pierre Mader',
    'Lio',
    'Caroline Loeb',
    'Elsa Lunghini',
    'Gérard Blanc',
 */
