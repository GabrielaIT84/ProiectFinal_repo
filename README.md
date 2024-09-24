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

a. Table **Produse** is connected with Table **Clienti** trough a relationship **1:m** which was implemented trough
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

![image](https://github.com/user-attachments/assets/8c034313-a948-4d5a-b490-70f2f1ca78b1)

![image](https://github.com/user-attachments/assets/0d861575-2db8-4705-bca3-4cd48adbb103)


In the example above, I created the "Produse" table, which includes the following columns:

```
• Produse_id (int primary key auto_increment) which is unique, is of type INT (integer), representing whole numbers.
• Client_id  is of type INT (integer), representing whole numbers.
• NumeArticol has the data type VARCHAR(30), a string of up to 30 characters.
The UNIQUE constraint enforces that values in a column or a combination of columns must be unique across the entire dataset of the table.
• Pret float
• Agent  is of type VARCHAR(30), a string of up to 30 characters.

```
**DML (Data Manipulation Language)**
In order to be able to use the database I populated the tables with various data necessary in order to perform queries and manipulate the data. In the testing process, this necessary data is identified in the Test Design phase and created in the Test Implementation phase.

Below you can find all the insert instructions that were created in the scope of this project:


![image](https://github.com/user-attachments/assets/27d3e65c-ba97-48bc-833d-4877167f2a5f)


![image](https://github.com/user-attachments/assets/bd487a81-f71d-4fe0-9f65-ef917f1d75e1)


After the insert, in order to prepare the data to be better suited for the testing process, I updated some data in the following way:


![image](https://github.com/user-attachments/assets/58d98c8b-1285-404c-a8d9-6ee4240e2437)


After the testing process, I deleted the data that was no longer relevant in order to preserve the database clean:


![image](https://github.com/user-attachments/assets/7e7b01ad-89c5-4824-bc13-2d1135cc4baf)

**DQL (Data Query Language)**

In order to simulate various scenarios that might happen in real life I created the following queries that would cover multiple potential real-life situations:
 
![image](https://github.com/user-attachments/assets/153a3f41-7dac-416c-a6cb-7a9e0f6823d8)


![image](https://github.com/user-attachments/assets/eb70674c-5e5b-4f39-99a9-a976e9763d00)


![image](https://github.com/user-attachments/assets/775dd1f3-a5e4-499e-bdcc-cfedae2aeaee)


## Conclusions:
This database project for a "IMPAL" application has been a comprehensive and practical application of SQL knowledge gained throughout the Software Testing course. The following key points summarize the work and lessons learned:

**SQL Application:** The project provided hands-on experience in applying SQL concepts, including data definition, manipulation, and querying. Creating tables, establishing relationships, and performing CRUD operations enhanced the understanding of SQL in a real-world context.

**Database Design and Relationships:** Designing the database schema and establishing relationships between tables were crucial aspects of the project. The clear representation of one-to-many and many-to-one relationships laid a strong foundation for effective data management.

**Tools Proficiency:** Working with MySQL Workbench showcased proficiency in using database management tools. The ability to translate conceptual designs into executable SQL code was developed and honed during the project.

**Realistic Data Scenarios:** The inclusion of realistic data scenarios during testing demonstrated the importance of testing in a manner that reflects actual usage patterns. This contributed to the identification of potential issues and ensured the robustness of the database.

**Querying Strategies:** The project involved creating diverse querying scenarios, covering a range of use cases. This helped in developing effective querying strategies and understanding how to retrieve specific information from a complex database structure.

**Testing Considerations:** While testing was briefly mentioned, further emphasis on testing methodologies and strategies could enhance the project's overall quality. Testing is a critical aspect of software development, and a more detailed approach could be beneficial.

_In conclusion,_ this database project has been a valuable opportunity to apply theoretical knowledge to a practical scenario, reinforcing SQL concepts and skills. It serves as a foundation for further exploration and improvement in database design and management. The experience gained from this project contributes to a broader understanding of software development and database administration.










