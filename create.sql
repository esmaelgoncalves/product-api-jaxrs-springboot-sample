create table image (id bigint generated by default as identity, path varchar(255), product_id bigint, primary key (id))
create table product (id bigint generated by default as identity, description varchar(255), name varchar(255), parent_id bigint, primary key (id))
alter table image add constraint FKgpextbyee3uk9u6o2381m7ft1 foreign key (product_id) references product
alter table product add constraint FKgmb19wbjvpu06559t7w33wqoc foreign key (parent_id) references product
