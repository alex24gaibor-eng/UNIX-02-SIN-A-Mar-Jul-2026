    1  git fech upstream
    2  git fetch upstream
    3  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    4  git checkout -b eval_p2_1V1 upstream/eval_p2_1_V1
    5  git checkout -b eval_p2_1_g2 upstream/eval_p2_1_g2
    6  history
    7  git push -u origin eval_p2_1_g2
    8  history
    #Problema 1
        9  cd /kepler
   10  ls
   11  mvls
   12  ls
   13  cd evaluation
   14  ls
   15  cd kepler
   16  mv docs registros
   17  mkdir plantillas
   18  git add .
   19  git commit -m "Fix problema 1: estructura de directorios corregida"
   20  ls
   21  history
   #Problema2
      22  mv kepler/sensores.log kepler/registros/
   23  mv sensores.log registros/
   24  mv ajustes.old ajustes.con
   25  git add .
   26  git commit -m "Fix problema 2: archivos movidos y renombrados"
   27  history
   #Problema 3
      30  chmod 640 registros/sensores.log
   31  git add registros/sensores.log
   32  git commit -m "Fix problema 3: permisos numéricos 640 en sensores.log"
   33  history
   #Problmea 4
     34  chmod u+x runner.sh
   35  chmod o-w ajustes.conf
   36  git add .
   37  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   38  history
   #Problema 5
    39  chmod u+s runner.sh
   40  ls -l runner.sh
   41  chmod u+s runner.sh
   42  ls -l runner.sh
   43  git add .
   44  git commit -m "Fix problema 5: SUID activado en runner.sh"
   45  history
   # Problema 6
      46  sudo chmod +t /tmp/kepler_zone
   47  ls -ld /tmp/kepler_zone
   48  git commit -m "Fix problema 6: sticky bit en /tmp/kepler_zone"
   49  history
   #Problema 7
      50  gpg --full-generate-key
   51  gpg --list-keys
   52  gpg --encrypt --recipient vega@kepler.lab kepler/registros/sensores.log
   53  gpg --list-keys
   54  gpg --encrypt --recipient vega@kepler.lab kepler/registros/sensores.log
   55  gpg --encrypt --recipient vega@kepler.lab registros/sensores.log
   56  git add .
   57  git commit