# Chall_Reseau_Facile

Pour build l'image docker <br>
>  docker build -t name_of_image . <br>
Exemple <br>
>  docker build -t reseau . <br><br>

Pour lancer l'image <br>
>  docker run -d -p <port_local>:<port_container> name_of_image <br>
Exemple <br>
>  docker run -d -p 8080:80 reseau <br>
