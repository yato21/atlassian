create
    user jira_db_user with
    password 'jira_db_password'
    login
    nosuperuser
    inherit
    nocreatedb
    nocreaterole
    noreplication;

create
    database jira_db
    with
    owner = jira_db_user
    encoding = 'UTF8'
    tablespace = pg_default
    template = template0
    connection limit = -1;

grant all
    on database jira_db to jira_db_user;
grant temporary, connect
    on database jira_db to public;

create
    user confluence_db_user with
    password 'confluence_db_password'
    login
    nosuperuser
    inherit
    nocreatedb
    nocreaterole
    noreplication;

create
    database confluence_db
    with
    owner = confluence_db_user
    encoding = 'UTF8'
    tablespace = pg_default
    template = template0
    connection limit = -1;

grant all
    on database confluence_db to confluence_db_user;
grant temporary, connect
    on database confluence_db to public;

create
    user bitbucket_db_user with
    password 'bitbucket_db_password'
    login
    nosuperuser
    inherit
    nocreatedb
    nocreaterole
    noreplication;

create
    database bitbucket_db
    with
    owner = bitbucket_db_user
    encoding = 'UTF8'
    tablespace = pg_default
    template = template0
    connection limit = -1;

grant all
    on database bitbucket_db to bitbucket_db_user;
grant temporary, connect
    on database bitbucket_db to public;

create
    user bamboo_db_user with
    password 'bamboo_db_password'
    login
    nosuperuser
    inherit
    nocreatedb
    nocreaterole
    noreplication;

create
    database bamboo_db
    with
    owner = bamboo_db_user
    encoding = 'UTF8'
    tablespace = pg_default
    template = template0
    connection limit = -1;

grant all
    on database bamboo_db to bamboo_db_user;
grant temporary, connect
    on database bamboo_db to public;