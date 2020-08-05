declare
  type user_data is varray(5) of varchar2(500);
  type table_of_users is table of user_data index by pls_integer;
  l_data table_of_users;
  l_user_id users.user_id%type;
begin
  l_data(l_data.count + 1) := user_data('csarge0','yYz25PI','Cris','Sarge','csarge0@xinhuanet.com');
  l_data(l_data.count + 1) := user_data('itofpik1','fovwkIVhO','Irma','Tofpik','itofpik1@columbia.edu');
  l_data(l_data.count + 1) := user_data('dminear2','RnfA7t86','Deb','Minear','dminear2@shop-pro.jp');
  l_data(l_data.count + 1) := user_data('rmcnulty3','pEhkqk9','Romola','McNulty','rmcnulty3@ycombinator.com');
  l_data(l_data.count + 1) := user_data('bvongrollmann4','OuiJDoJoy4Xg','Beale','von Grollmann','bvongrollmann4@howstuffworks.com');

  for i in 1..l_data.count loop
    user_admin.create_user(
      p_username => l_data(i)(1)
      , p_password => l_data(i)(2)
      , p_password_repeat => l_data(i)(2)
      , p_first_name => l_data(i)(3)
      , p_last_name => l_data(i)(4)
      , p_email_address => l_data(i)(5)
      , p_agree_to_terms => 'Y'
      , p_active => 'Y'
      , p_user_id => l_user_id
    );

    user_admin.make_admin(
      p_user_id => l_user_id
    );
  end loop;
end;
/