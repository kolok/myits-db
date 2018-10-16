\c myitsdb;

insert into products
  ( id,
    name,
    company_id,
    description,
    picture,
    created_at,
    update_at,
    status,
    deleted_at )
  values
  ( 1,
    'Codes',
    1,
    'Piece of code to share',
    '/data/products/pictures/code877267867919.jpg',
    now(),
    now(),
    'active',
    null ),
  ( 2,
    'Tutorial',
    1,
    'Tutorials to follow',
    '/data/products/pictures/tuto543154653154.jpg',
    now(),
    now(),
    'active',
    null ),
  ( 3,
    'Knowledge',
    1,
    'knowledge to everyone',
    '/data/products/pictures/know945145684941.jpg',
    now(),
    now(),
    'active',
    null ),
  ( 4,
    'Foo product',
    2,
    'Some foo !!!',
    '/data/products/pictures/foop001543612160.jpg',
    now(),
    now(),
    'active',
    null ),
  ( 5,
    'Foo product again',
    2,
    'Some foo again !!!',
    '/data/products/pictures/foop443940164421.jpg',
    now(),
    now(),
    'active',
    null ),
  ( 6,
    'Bar team',
    3,
    'Bar and more ...',
    '/data/products/pictures/bart308943437825.jpg',
    now(),
    now(),
    'active',
    null ),
  ( 7,
    'Mrs Michmuche recipe - Good cookies',
    6,
    'hummmm ! that is the best I ever eat',
    '/data/products/pictures/mrsm469433913092.jpg',
    now(),
    now(),
    'active',
    null ),
  ( 8,
    'Mrs Michmuche recipe - Pasta sale e pepe',
    6,
    'Good traditional pasta',
    '/data/products/pictures/mrsm587454639867.jpg',
    now(),
    now(),
    'active',
    null );

