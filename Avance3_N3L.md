## Avance 3					

#### _Querido diario..._


| Actividades por realizar | % hecho | Problemas?
|--------------|-----------|-----------|
|Obtuve la última imagen de Trinity en Docker|  Hecho | Ninguno
|Comprobar si se instaló correctamente|  Hecho | Todo bien 
|Montar un volumen que contenga los datos de los transcriptomas| Hecho | Todo tranquilo 
|Acceder a las herramientas de Trinity| Hecho | Use algunos comandos para probarlo
|Limpieza de datos| Hecho | Con Fastqc y Fastx_tools
|Ensamblaje| 50% | En proceso
|[README](https://github.com/n311pc/Proyecto_Final_Nelly/blob/master/README.txt) | 80% | En Proceso

Considerando los siguientes análisis
- Cuantificación del transcripto con Trinity
- Análisis de expresión diferencial

#### _Encrucijada_
Los 8 archivos con los que pensaba hacer el trabajo al ser muy pesados, solo he probado hacer el ensamblaje con dos de ellos, una opcion que he contemplado es recortarlos mucho más en el trimmed, otra opción es usar solo 4 archivos ya limpios de transcriptomas del cloroplasto.
Los scripts que he hecho estan pensandos para los 8 transcriptomas, en for loops, pero .... temo por mi computadora :S He puesto cuidado en solo asignar CPU2 (2 nucleos) y GB4 (4 de ram), con eso la computadora solo se tardara pero no se dañara ...o si? :S 


#### Artículos consultados

* Grabherr MG, Haas BJ, Yassour M, Levin JZ, Thompson DA, Amit I, Adiconis X, Fan L, Raychowdhury R, Zeng Q, Chen Z, Mauceli E, Hacohen N, Gnirke A, Rhind N, di Palma F, Birren BW, Nusbaum C, Lindblad-Toh K, Friedman N, Regev A. 2011. Full-length transcriptome assembly from RNA-seq data without a reference genome. Nat Biotechnol. 15:29 (7):644-52.

* Haas BJ, Papanicolaou A, Yassour M, Grabherr M, Blood PD, Bowden J, Couger MB, Eccles D, Li B, Lieber M, Macmanes MD, Ott M, Orvis J, Pochet N, Strozzi F, Weeks N, Westerman R, William T, Dewey CN, Henschel R, Leduc RD, Friedman N, Regev A. 2013. De novo transcript sequence reconstruction from RNA-seq using the Trinity platform for reference generation and analysis. Nat Protoc. 8(8):1494-512. 

* Henschel, R., Lieber, M., Wu, L., Nista, P.M., Haas, B.J., LeDuc, R. 2012. Trinity RNA-Seq assembler performance optimization. XSEDE 2012 Proceedings of the 1st Conference of the Extreme Science and Engineering Discovery Environment: Bridging from the eXtreme to the campus and beyond. ISBN: 978-1-4503-1602-6 doi: 10.1145/2335755.2335842.

* Thunders, M., Cavanagh, J., Li, Y. 2017. De novo transcriptome assembly, functional annotation and differential gene expression analysis of juvenile and adult E. fetida, a model oligochaete used in ecotoxicological studies. Biological research. 50(1): 7.

