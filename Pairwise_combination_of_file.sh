f=(*)#Make a list of file. You can precise pattern name
for ((i = 0; i < ${#f[@]}; i++)); do 
      for ((j = i + 1; j < ${#f[@]}; j++)); do 
          echo "${f[i]} - ${f[j]}"; #Change the dash if you want to use another symbol or just space
      done;
  done 
