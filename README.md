# Proyecto_Final_Equipo7

<p align="center"><img class="centerImage" src="https://github.com/dalejandri/Proyecto_final_equipo7/blob/main/Resources/0.PNG" /></p>

### Selected topic
A Machine Learning Model that would predict probability of ending in the ICU if COVID-19 in contracted and there are existing pre-conditions among the patients.
Such preconditions are PNEUMONIA, DIABETES, COPD, ASTHMA, IMMUSUPR, HYPERTENSION, CARDIOVASCULAR, OBESITY, CHRONIC_KIDNEY and SMOKING.

### Reason why they selected their topic
With about two years from the discovery of the novel COVID-19 variants, there is now enough information available nationwide to try help to correlate how adjacent illnesses could influence on the severity of the COVID-19 infection.

### Description of their source of data

Data is obtained from the Mexican Open Data General Directorate of Epidemiology. The data is historical, daily updated in a coma separated text file with 11,596,639 lines of information.

(base) PS C:\Users\Daniel Alejandri\Desktop> wc -l 211114COVID19MEXICO.csv
11596639 211114COVID19MEXICO.csv

Official Source of information at:
https://www.gob.mx/salud/documentos/datos-abiertos-152127

COVID-19 Database:
https://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip

Data Dictionary:
https://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/diccionario_datos_covid19.zip

<p align="center"><img class="centerImage" src="https://github.com/dalejandri/Proyecto_final_equipo7/blob/main/Resources/info.jpg" /></p>

### Data in the Cloud
The data source file is stored in an Amazon Simple Storage Service (Amazon S3). AWS S3 is an object storage service offering industry-leading scalability, data availability, security, and performance. Customers of all sizes and industries can store and protect any amount of data for virtually any use case, such as data lakes, cloud-native applications, and mobile apps. With cost-effective storage classes and easy-to-use management features, you can optimize costs, organize data, and configure fine-tuned access controls to meet specific business, organizational, and compliance requirements

### Communication Protocol:
AWS Transfer Family simplifies migration of SFTP, FTPS, and FTP based workflows to AWS. However this option to automate the file transfer was not chosen for this projet because there are costs associated. However its important that remember that this option is available when the project and the budget are justified.


<p align="center"><img class="centerImage" src="https://github.com/dalejandri/Proyecto_final_equipo7/blob/main/Resources/3.PNG" /></p>

### Database
To make efficient use the large dataset a PostgreSQL database instance was created using Amazon Relational Database Service (Amazon RDS). AWS RDS makes it easy to set up, operate, and scale a relational database in the cloud. It provides cost-efficient and resizable capacity while automating time-consuming administration tasks such as hardware provisioning, database setup, patching and backups. 

### Communication Protocol:
The default TCP port for PostgreSQL is 5432.

<p align="center"><img class="centerImage" src="https://github.com/dalejandri/Proyecto_final_equipo7/blob/main/Resources/1.PNG" /></p>

### Database Administration:
To handle the database, pgAdmin was chosen. pgAdmin is the most popular and feature rich Open Source administration and development platform for PostgreSQL, the most advanced Open Source database in the world.

<p align="center"><img class="centerImage" src="https://github.com/dalejandri/Proyecto_final_equipo7/blob/main/Resources/2.PNG" /></p>

### Database schema sample:
<p align="center"><img class="centerImage" src="https://github.com/dalejandri/Proyecto_final_equipo7/blob/main/Resources/5.PNG" /></p>

### Google Colab was used to process the data and created the required data frames to be appended to the corresponding tables in the RDS database.

<p align="center"><img class="centerImage" src="https://github.com/dalejandri/Proyecto_final_equipo7/blob/main/Resources/4.PNG" /></p>

### Patient ID registry dataframe
<p align="center"><img class="centerImage" src="https://github.com/dalejandri/Proyecto_final_equipo7/blob/main/Resources/7.PNG" /></p>

### Ilnesses dataframe
<p align="center"><img class="centerImage" src="https://github.com/dalejandri/Proyecto_final_equipo7/blob/main/Resources/6.PNG" /></p>


### Questions they hope to answer with the data
At the end of the project we should have an idea of the probablity of patient suffering existing preconditions of ending in the ICU in case of contagion of COVID19.

### Machine Learning Model
<p align="center"><img class="centerImage" src="https://github.com/dalejandri/Proyecto_final_equipo7/blob/main/Resources/8.PNG" /></p>

## Machine Learning Model

For the Machine learning exercise we prioritized have as few false negatives as possible, because a false positive can be retested but a false negative can go unnoticed.

We used a logistical regression using the data for the current medical conditions of the patients and whether or not they ended up in the ICU.
For the preliminary attempt we used to sampling for the data and we got a 92% accuracy rate, we soon realized that the accuracy rate wouldn’t be suited for our project since our project since the way we got this high of a score was by predicting that no one would end up in the ICU and since only 8% of our data was part admitted then we had to search for sampling options.

The 3 main sampling options we tried were Oversampling, Under sampling and SMOTE.
For all methods very similar results, the false negatives went down by a factor of 7, but the SMOTE method is slightly better results.

## Project Presentation

https://docs.google.com/presentation/d/e/2PACX-1vTmds-wZTa-VReB6QeybccjZhDetzq-zg65Dbf2pjhUMicyWWBeRyQH02A0OVhA6HiOHeoxVIY1NtQM/pub?start=false&loop=false&delayms=3000
