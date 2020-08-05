declare
  type proposal_data is varray(9) of varchar2(4000);
  type table_of_users is table of proposal_data index by pls_integer;
  l_data table_of_users;
  l_user_id users.user_id%type;
begin
  l_data(l_data.count + 1) := proposal_data('cdensell0','yhdk40R','Claudelle','Densell','cdensell0@angelfire.com','ut nunc vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia',q'|Sed ante. Vivamus tortor. Duis mattis egestas metus.

Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.|',q'|Fusce consequat. Nulla nisl. Nunc nisl.

Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.

In hac habitasse platea dictumst. Morbi vestibulum, velit id pretium iaculis, diam erat fermentum justo, nec condimentum neque sapien placerat ante. Nulla justo.

Aliquam quis turpis eget elit sodales scelerisque. Mauris sit amet eros. Suspendisse accumsan tortor quis turpis.|',q'|Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.|');
  l_data(l_data.count + 1) := proposal_data('gtroak1','G7rIQQ','Genia','Troak','gtroak1@prnewswire.com','viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est',q'|Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.|',q'|Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.|',q'|Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.|');
  l_data(l_data.count + 1) := proposal_data('rwaywell2','JMNA7x','Ruprecht','Waywell','rwaywell2@statcounter.com','posuere cubilia curae duis faucibus accumsan odio curabitur convallis',q'|Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.|',q'|Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.|',q'|Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.|');
  l_data(l_data.count + 1) := proposal_data('cbarkworth3','TqaPL4Ye8','Constance','Barkworth','cbarkworth3@linkedin.com','justo pellentesque viverra pede ac diam cras pellentesque volutpat',q'|Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.

Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.|',q'|Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.

Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.|',q'|Phasellus in felis. Donec semper sapien a libero. Nam dui.|');
  l_data(l_data.count + 1) := proposal_data('kgreeding4','6P0gJ8QYG','Kit','Greeding','kgreeding4@disqus.com','congue elementum in hac habitasse platea dictumst morbi vestibulum velit id',q'|Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.|',q'|Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.|',q'|Nullam sit amet turpis elementum ligula vehicula consequat. Morbi a ipsum. Integer a nibh.|');
  l_data(l_data.count + 1) := proposal_data('jswigg5','V9DtvG','Josephina','Swigg','jswigg5@omniture.com','hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget',q'|Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.|',q'|Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.

Praesent blandit. Nam nulla. Integer pede justo, lacinia eget, tincidunt eget, tempus vel, pede.

Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.|',q'|Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.|');
  l_data(l_data.count + 1) := proposal_data('mbaldock6','3syXydpfha','Maximilian','Baldock','mbaldock6@thetimes.co.uk','eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus',q'|Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.|',q'|Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.|',q'|Maecenas tristique, est et tempus semper, est quam pharetra magna, ac consequat metus sapien ut nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris viverra diam vitae quam. Suspendisse potenti.|');
  l_data(l_data.count + 1) := proposal_data('sskyram7','KnyGmGk8zv','Sinclare','Skyram','sskyram7@live.com','lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque',q'|In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.

Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.|',q'|Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.

Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.|',q'|Proin interdum mauris non ligula pellentesque ultrices. Phasellus id sapien in sapien iaculis congue. Vivamus metus arcu, adipiscing molestie, hendrerit at, vulputate vitae, nisl.|');
  l_data(l_data.count + 1) := proposal_data('ldufoure8','43HHUcf','Lorrie','Dufoure','ldufoure8@github.com','justo sit amet sapien dignissim vestibulum vestibulum ante ipsum primis in',q'|Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.

Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.|',q'|Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.|',q'|Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.|');
  l_data(l_data.count + 1) := proposal_data('ebedinn9','tYCCg8mb7l','Elihu','Bedinn','ebedinn9@ft.com','convallis tortor risus dapibus augue vel accumsan tellus nisi eu orci',q'|Curabitur gravida nisi at nibh. In hac habitasse platea dictumst. Aliquam augue quam, sollicitudin vitae, consectetuer eget, rutrum at, lorem.|',q'|Phasellus in felis. Donec semper sapien a libero. Nam dui.|',q'|Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.|');
  l_data(l_data.count + 1) := proposal_data('ehillburna','Qv8mSQt07','Eloisa','Hillburn','ehillburna@washingtonpost.com','purus eu magna vulputate luctus cum sociis natoque penatibus',q'|In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.|',q'|Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.

Phasellus in felis. Donec semper sapien a libero. Nam dui.

Proin leo odio, porttitor id, consequat in, consequat ut, nulla. Sed accumsan felis. Ut at dolor quis odio consequat varius.

Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.|',q'|Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.|');
  l_data(l_data.count + 1) := proposal_data('eroebottomb','9WA7J7vm0s36','Euell','Roebottom','eroebottomb@jigsy.com','nunc rhoncus dui vel sem sed sagittis nam congue risus semper',q'|Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.|',q'|Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.|',q'|Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.|');
  l_data(l_data.count + 1) := proposal_data('boldakerc','v4TjJf','Bil','Oldaker','boldakerc@tinyurl.com','faucibus accumsan odio curabitur convallis duis consequat dui nec nisi',q'|Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.

Donec diam neque, vestibulum eget, vulputate ut, ultrices vel, augue. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec pharetra, magna vestibulum aliquet ultrices, erat tortor sollicitudin mi, sit amet lobortis sapien sapien non mi. Integer ac neque.|',q'|Quisque id justo sit amet sapien dignissim vestibulum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nulla dapibus dolor vel est. Donec odio justo, sollicitudin ut, suscipit a, feugiat et, eros.

Vestibulum ac est lacinia nisi venenatis tristique. Fusce congue, diam id ornare imperdiet, sapien urna pretium nisl, ut volutpat sapien arcu sed augue. Aliquam erat volutpat.

In congue. Etiam justo. Etiam pretium iaculis justo.

In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.|',q'|Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.|');
  l_data(l_data.count + 1) := proposal_data('smacound','MAmcMLfLIs','Sullivan','Macoun','smacound@360.cn','dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis',q'|In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.|',q'|Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.

Maecenas ut massa quis augue luctus tincidunt. Nulla mollis molestie lorem. Quisque ut erat.|',q'|Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.|');
  l_data(l_data.count + 1) := proposal_data('godulchontae','yGVt0tKUrvy','Glyn','O''Dulchonta','godulchontae@google.ru','nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in',q'|Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.|',q'|Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.|',q'|Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.|');
  l_data(l_data.count + 1) := proposal_data('fhennerf','xUkfsvt','Fonz','Henner','fhennerf@wikispaces.com','cras pellentesque volutpat dui maecenas tristique est et tempus semper',q'|Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.|',q'|Duis bibendum. Morbi non quam nec dui luctus rutrum. Nulla tellus.|',q'|Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.|');
  l_data(l_data.count + 1) := proposal_data('kcastangiag','CTZJ8k0xCV','Kissee','Castangia','kcastangiag@ihg.com','sed tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet',q'|Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.

Curabitur at ipsum ac tellus semper interdum. Mauris ullamcorper purus sit amet nulla. Quisque arcu libero, rutrum ac, lobortis vel, dapibus at, diam.|',q'|Aenean lectus. Pellentesque eget nunc. Donec quis orci eget orci vehicula condimentum.

Curabitur in libero ut massa volutpat convallis. Morbi odio odio, elementum eu, interdum eu, tincidunt in, leo. Maecenas pulvinar lobortis est.

Phasellus sit amet erat. Nulla tempus. Vivamus in felis eu sapien cursus vestibulum.

Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.

Duis aliquam convallis nunc. Proin at turpis a pede posuere nonummy. Integer non velit.|',q'|Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.|');
  l_data(l_data.count + 1) := proposal_data('rcrockleyh','jQw4O9beb4K','Rochelle','Crockley','rcrockleyh@rambler.ru','at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus',q'|In sagittis dui vel nisl. Duis ac nibh. Fusce lacus purus, aliquet at, feugiat non, pretium quis, lectus.

Suspendisse potenti. In eleifend quam a odio. In hac habitasse platea dictumst.|',q'|Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Etiam vel augue. Vestibulum rutrum rutrum neque. Aenean auctor gravida sem.

Praesent id massa id nisl venenatis lacinia. Aenean sit amet justo. Morbi ut odio.

Cras mi pede, malesuada in, imperdiet et, commodo vulputate, justo. In blandit ultrices enim. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.|',q'|In hac habitasse platea dictumst. Etiam faucibus cursus urna. Ut tellus.|');
  l_data(l_data.count + 1) := proposal_data('ktoderii','fgdSvOtVf','Katharina','Toderi','ktoderii@ca.gov','quis tortor id nulla ultrices aliquet maecenas leo odio condimentum id',q'|In quis justo. Maecenas rhoncus aliquam lacus. Morbi quis tortor id nulla ultrices aliquet.

Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.|',q'|Integer ac leo. Pellentesque ultrices mattis odio. Donec vitae nisi.

Nam ultrices, libero non mattis pulvinar, nulla pede ullamcorper augue, a suscipit nulla elit ac nulla. Sed vel enim sit amet nunc viverra dapibus. Nulla suscipit ligula in lacus.|',q'|Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.|');
  l_data(l_data.count + 1) := proposal_data('rdreelanj','t48szRdzF','Rosa','Dreelan','rdreelanj@woothemes.com','et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus',q'|Nullam porttitor lacus at turpis. Donec posuere metus vitae ipsum. Aliquam non mauris.

Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.|',q'|Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Proin risus. Praesent lectus.

Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.

Duis consequat dui nec nisi volutpat eleifend. Donec ut dolor. Morbi vel lectus in quam fringilla rhoncus.|',q'|Morbi non lectus. Aliquam sit amet diam in magna bibendum imperdiet. Nullam orci pede, venenatis non, sodales sed, tincidunt eu, felis.|');

  for i in 1..l_data.count loop
    begin
      select user_id
      into l_user_id
      from users
      where username = l_data(i)(1);
    exception
      when no_data_found then
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
    end;

    insert into proposals (
      speaker_id
      , title
      , abstract
      , additional_details
      , speaker_bio
    ) values (
      l_user_id
      , l_data(i)(6)
      , l_data(i)(7)
      , l_data(i)(8)
      , l_data(i)(9)
    );
  end loop;
end;
/