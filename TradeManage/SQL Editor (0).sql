drop database trade;
create database trade default charset  utf8;
use trade;

create table client (c_id int  primary key  auto_increment,
	name varchar(60),
	s_name varchar(60),
	address varchar(60),
	encoding varchar(60),
	tel varchar(60),
	fax varchar(60),
	p_name varchar(60),
	p_tel varchar(60),
	email varchar(60),
	bank varchar(60),
	bank_num varchar(60));

create table product (p_id int primary key auto_increment,
	p_name varchar(60),
	p_s_name varchar(60),
	p_address varchar(60),
	p_num varchar(60),
	p_norms varchar(60),
	p_package varchar(60),
	p_unit varchar(60),
	p_pass_num varchar(60),
	p_single_money int,
	sup_id int,
	remark varchar(60));


create table storage(s_id int primary key auto_increment,
	p_id int,
	s_num int,
	s_adminer varchar(60));


create table orderline(o_id int primary key auto_increment,
	o_num_id varchar(60),
	p_id int,
	o_num int,
	o_all_money int,
	o_pay_money int,
	o_adminer_id varchar(60),
	o_date varchar(60),
	o_style int,
	o_pay_style int
	);

create table adminer(adminer_id int primary key auto_increment,
	a_idcard varchar(60),
	a_pwd varchar(60),
	a_name varchar(60),
	a_style int);
	
create table supplier(sup_id int primary key auto_increment,
	sup_name varchar(60),
	sup_s_name varchar(60),
	sup_address varchar(60),
	sup_encoding varchar(60),
	sup_tel varchar(60),
	sup_fax varchar(60),
	sup_people varchar(60),
	sup_p_tel varchar(60),
	sup_email varchar(60),
	sup_bank varchar(60));
	
	
INSERT INTO adminer (`a_idcard`,`a_pwd` ,`a_name` ,`a_style` )VALUES ('123','202CB962AC59075B964B07152D234B70', '123', 1);
insert into supplier(`sup_name`,`sup_s_name`,`sup_address`,`sup_encoding`,`sup_tel`,`sup_fax`,
`sup_people`,`sup_p_tel`,`sup_email`,`sup_bank`)values('中国哇哈哈','哇哈哈','浙江','315400','139000000000','0574-62774308',
'zhou','13000000000','4048@qq.com','中国银行');
)