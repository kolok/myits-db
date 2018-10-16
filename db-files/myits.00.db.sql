drop   database myitsdb;
create database myitsdb;

\c myitsdb;
create type status AS ENUM ('active', 'inactive', 'deleted_at');
create type roles AS ENUM ('admin', 'employee');

create table users (
    id serial primary key,
    email varchar(255) not null,
    name varchar(255) default null,
    birthdate date default null,
    profile_picture varchar(255) default null,
    last_connected_at timestamp default null,
    created_at timestamp not null,
    update_at timestamp not null,
    status status default 'active',
    deleted_at timestamp default null
);

create table companies (
    id serial primary key,
    name varchar(255) default null,
    created_at timestamp not null,
    update_at timestamp not null,
    status status default 'active',
    deleted_at timestamp default null
);

create table companies_users_roles (
    id serial primary key,
    user_id integer REFERENCES users(id),
    company_id integer REFERENCES companies(id),
    role roles default 'admin'
);

create table products (
    id serial primary key,
    name varchar(255) default null,
    company_id integer REFERENCES companies(id),
    description text default null,
    picture varchar(255) default null,
    created_at timestamp not null,
    update_at timestamp not null,
    status status default 'active',
    deleted_at timestamp default null
);

create table subscriptions (
    id serial primary key,
    product_id integer REFERENCES products(id),
    user_id integer REFERENCES users(id),
    created_at timestamp not null,
    update_at timestamp not null
);

create table tokens (
    id serial primary key,
    value varchar(255) default null,
    user_id integer REFERENCES users(id),
    created_at timestamp not null,
    update_at timestamp not null
);

