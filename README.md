## Database Project for Impal

The scope of this project is to use all the SQL knowledge gained throught the Software Testing course and apply them in practice.
This project represents a simple Impal application with functionalities for adding users, posts, comments, likes, and followers.
It was developed using MySQL Workbench and includes CRUD operations for data management.
Methods for Create (CREATE), Read (READ), Update (UPDATE), and Delete (DELETE) have been applied to the main entities such as Users, Posts, Comments, Likes, and Followers.

Tools used: MySQL Workbench.You can find the code here.

You can find below the database schema that was generated through Impal and which contains all the tables and the relationships between them.
The tables are connected in the following way:

**Database Structure**

![image](https://github.com/user-attachments/assets/601ddc01-f809-4c0b-a417-a01b0c72bfaa)


**Table Relationships:**

You can see below the database schema that was generated trough Impal which contains all the tables and the relationship between them.

a.* Table **Produse** is connected with Table **Clienti** trough a relationship **1:m** which was implemented trough
**Produse_produse_id** as a primary key and
**Clienti_fk_Clienti_produse** as a forgein key

b. Table **Clienti** is connected with Table **ComandaClienti** trough a relationship **1:m ** which was implemented trough
**Clienti_client_id**  as a primary key and
**ComandaClienti_ComandaClienti_Clienti** as a forgein key 

c. Table **ComandaClienti** is connected with Table **ComandaDetailata** trough a relationship **1:m ** which was implemented trough
**CoandaClienti_Comanda_id**  as a primary key and
**ComandaDetailata_fk_ComandaDetailata_ComandaClienti_clienti** as a forgein key

**Tables**

```
1.Produse
• Produse_id (int primary key auto_increment)
• Client_id int,
• NumeArticol (varchar(30))
• Pret float
• Agent (varchar(30))

2.Clienti
• Client_id int not null auto_increment
• NumeClient varchar(30) not null
• Adresa varchar(30) not null
• Telefon varchar(10)
• Produse_id int not null
• primary key (client_id)
• constraint fk_Clienti_Produse foreign key (produse_id) references Produse(produse_id)

 3. ComandaClienti
• Comanda_id int not null auto_increment
• DataComanda date
• PretTotal Float
• Client_id int not null
• Produse_id int not null
• Primary key(comanda_id)
• Constraint fk_ComandaClienti_Clienti foreign key (client_id) 
• References Clienti(client_id)

4. ComandaDetailata 
• CD_id int not null auto_increment
• NumarFactura varchar(10)
• Produse_id int not null
• Client_id int not null
• Comanda_id int not null
• Primary key(CD_id)
• Constraint fk_ComandaDetailata_ComandaClienti foreign key(comanda_id) 
• References ComandaClienti(comanda_id)

```

**Primary Key:** A primary key is a column or set of columns that can serve as a unique identifier for each row in a table. It ensures that each row in the table is uniquely identified. In the 'Impal' database, each table has an 'ID' column defined as the primary key at the time of table creation. This 'ID' is accompanied by the AUTO_INCREMENT attribute, which automatically generates a unique integer each time a new row is inserted into the table.

**Foreign Key:** A foreign key is a potential identifier that helps establish a connection with other tables. It always contains values that already exist as primary keys in the parent table. In the 'Impal' database, foreign keys are utilized to establish relationships between tables, linking data based on the primary key of another table.

## Database Queries

**DDL (Data Definition Language)**
The following instructions were written in the scope of CREATING the structure of the database (CREATE INSTRUCTIONS)

![image](https://github.com/user-attachments/assets/35e8af18-c8fd-4b14-856c-6475258339c1)

![image](https://github.com/user-attachments/assets/49d29b52-3558-4829-8378-579ba6d95444)





