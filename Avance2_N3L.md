#### Avance 2					

### _Querido diario..._

* Ya tengo los datos con los que voy a trabajar:  Ocho archivos de transcriptomas en formato .fastq, 4 en forward y 4 en reverse, de dos genotipos en dos condiciones diferentes, aportados por el Laboratorio de Bioquímica molecular, UBIPRO, FES Iztacala.


| Actividades por realizar | % hecho | Problemas?
|--------------|-----------|-----------|
|Obtuve la última imagen de Trinity en Docker|  Hecho | Hasta ahora ninguno :)
|Comprobar si se instaló correctamente|  50% | Lo instalé primero en  

Comandos utilizados:
 `sudo docker pull trinityrnaseq/trinityrnaseq`
` docker run --rm -v`pwd`:`pwd` trinityrnaseq/trinityrnaseq Trinity \ --seqType fq --single `pwd`/reads.fq.gz \ --max_memory 1G --CPU 4 --output `pwd`/trinity_out_dir `



#### Artículos consultados

* Grabherr MG, Haas BJ, Yassour M, Levin JZ, Thompson DA, Amit I, Adiconis X, Fan L, Raychowdhury R, Zeng Q, Chen Z, Mauceli E, Hacohen N, Gnirke A, Rhind N, di Palma F, Birren BW, Nusbaum C, Lindblad-Toh K, Friedman N, Regev A. 2011. Full-length transcriptome assembly from RNA-seq data without a reference genome. Nat Biotechnol. 15:29 (7):644-52.

* Haas BJ, Papanicolaou A, Yassour M, Grabherr M, Blood PD, Bowden J, Couger MB, Eccles D, Li B, Lieber M, Macmanes MD, Ott M, Orvis J, Pochet N, Strozzi F, Weeks N, Westerman R, William T, Dewey CN, Henschel R, Leduc RD, Friedman N, Regev A. 2013. De novo transcript sequence reconstruction from RNA-seq using the Trinity platform for reference generation and analysis. Nat Protoc. 8(8):1494-512. 

* Henschel, R., Lieber, M., Wu, L., Nista, P.M., Haas, B.J., LeDuc, R. 2012. Trinity RNA-Seq assembler performance optimization. XSEDE 2012 Proceedings of the 1st Conference of the Extreme Science and Engineering Discovery Environment: Bridging from the eXtreme to the campus and beyond. ISBN: 978-1-4503-1602-6 doi: 10.1145/2335755.2335842.

* Thunders, M., Cavanagh, J., Li, Y. 2017. De novo transcriptome assembly, functional annotation and differential gene expression analysis of juvenile and adult E. fetida, a model oligochaete used in ecotoxicological studies. Biological research. 50(1): 7.

