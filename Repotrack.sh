#!/bin/bash
echo "Please Enter A Package"
echo -e "[#]>|\c"
read Package

#Level A
for dep in $Package 
do
  Package=$(repoquery $dep -R)
  echo $Package
  #Level B
  for dep in $Package 
  do
    Package=$(repoquery $dep -R)
    echo $Package
    #Level C
    for dep in $Package 
    do
      Package=$(repoquery $dep -R)
      echo $Package
      #Level D
      for dep in $Package 
      do
	Package=$(repoquery $dep -R)
	echo $Package
	#Level E
	for dep in $Package 
	do
	  Package=$(repoquery $dep -R)
	  echo $Package
	  #Level F
	  for dep in $Package 
	  do
	    Package=$(repoquery $dep -R)
	    echo $Package
	    #Level G
	    for dep in $Package 
	    do
	      Package=$(repoquery $dep -R)
	      echo $Package
	      #Level H
	      for dep in $Package 
	      do
		Package=$(repoquery $dep -R)
		echo $Package
		#Level I
		for dep in $Package 
		do
		  Package=$(repoquery $dep -R)
		  echo $Package
		  #Level J
		  for dep in $Package 
		  do
		    Package=$(repoquery $dep -R)
		    echo $Package
		    #Level K
		    for dep in $Package 
		    do
		      Package=$(repoquery $dep -R)
		      echo $Package
		      #Level L
		      for dep in $Package 
		      do
			Package=$(repoquery $dep -R)
			echo $Package
			#Level M
			for dep in $Package 
			do
			  Package=$(repoquery $dep -R)
			  echo $Package
			done
		      done
		    done
		  done
		done
	      done
	    done
	  done
	done
      done
    done
  done
done


 
