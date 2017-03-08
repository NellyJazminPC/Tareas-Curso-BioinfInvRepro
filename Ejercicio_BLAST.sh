#! /bin/bash/
############
#Creamos la variable ruta con el valor de la ruta absoluta donde queremos los resultados
ruta=/home/nj_pc/Escritorio/Bioinfo/BioinfInvRepro2017-II/Ejercicio_BLAST
#Entramos al directorio ruta
cd $ruta
#Para descargar la herramienta BLAST hacemos un pull para biocontainers
###Para usuarios de LINUX se debe usar sudo antes del comando docker, para usuarios Mac no es necesario
sudo docker pull biocontainers/blast
#Sin entrar en biocontainers, corremos BLAST y usamos el comando blastp -help para asegurarnos que funcione
sudo docker run biocontainers/blast blastp -help
#Descargamos la secuencia priónica humana
wget http://www.uniprot.org/uniprot/P04156.fasta  
#Descargamos la base de datos del pez cebra
curl -O ftp://ftp.ncbi.nih.gov/refseq/D_rerio/mRNA_Prot/zebrafish.1.protein.faa.gz
#Descomprimimos la base de datos
gunzip zebrafish.1.protein.faa.gz
#Creamos un volumen para poder usar los datos dentro del contenedor y también para poder disponer de los resultados del BLAST fuera del contenedor, después preparamos la base de datos del pez cebra con makeblastdb
sudo docker run -v $ruta:/data/ biocontainers/blast makeblastdb -in zebrafish.1.protein.faa -dbtype prot
#Para los alimeamientos finales
sudo docker run -v $ruta:/data/ biocontainers/blast blastp -query P04156.fasta -db zebrafish.1.protein.faa -out results.txt
#Los resultados de este análisis se guardarán en el archivo results.txt
