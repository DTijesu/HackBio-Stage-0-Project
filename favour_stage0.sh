  
HackBio Internship Stage O Projects.
PROJECT 1
  499  #This a project for my Stage 0 of the HackBio Bioinformatics internship.
  500  #Project 1 is all about BAsh Basics.
  501  #The first task is to print my name.
  502  echo Favour
  503  #Next, I'll create a folder with my name.
  504  mkdir Favour
  505  #Since this file already exists, I'll remove it and any similar one to enable me start afresh.
  506  rm -rf Favour
  507  rm -rf biocomputing
  508  ls
  509  #I will now proceed to create the folder afresh.
  510  mkdir Favour
  511  ls
  512  #Next,I'm creating a new directory called 'biocomputing' and also changing into it as my directory all in one line of command.
  513  mkdir biocomputing && cd biocomputing
  514  #I'll check the content of my new directory.
  515  ls
  516  #It empty. Now, I'll be downloading three files all in one command.
  517  wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna && wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk && wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk
  518  #I'll proceed to check the content of my folder
  519  ls
  520  #Now,I'll be moving the .fna file into the Favour folder.
  521  mv wildtype.fna ../Favour/
  522  #Let's check the content of 'Favour'
  523  ls ../Favour/
  524  #Great. Now, I'm going remove the duplicate .gbk file in the 'biocomputing' folder
  525  rm wildtype.gbk.1
  526  #I'll now check the content of the biocomputing folder.
  527  ls
  528  #I will proceed to check if the .fna file contains mutant or wildtype genes.
  529  #Mutant = 'tatatata'
  530  #Wildtype = 'tata'
  531  #I'll first check for the presence of 'tatatata' and 'tata' in the .fna file.
  532  grep 'tatatata' ../Favour/wildtype.fna && grep 'tata' ../Favour/wildtype.fna
  533  #Next, I will go ahead to cge
  534  #Next, I'll check for mutant or wildtype in the .fna file
  535  if grep -q 'tatatata' ../Favour/wildtype.fna; then echo "Mutant"; elif grep -q "tata" ../Favour/wildtype.fna;ur/wildtype.fna; then echo "Mutant"; elif grep -q 'tata' ../Favour/wildtype.fna;ur/wildtype.fna; then echo "Mutant"; elif grep -q 'tata' ../Favour/wildtype.fna; then echo "Wildtype"; else echo "Pattern not found";fi
  536  #It turns out to be mutant. I will now print my result into a new file.
  537  grep 'tatatata' ../Favour/wildtype.fna > mutant_lines.txt
  538  #Checking the content of my new file.
  539  cat mutant_lines.txt
  540  #I will be counting the lines in the .gbk excluding the head.
  541  wc -l wildtype.gbk
  542  #Next, I'll be printing the sequence length of the .gbk, using LOCUS in the first line.
  543  awk '/^LOCUS/ {print $3}
  544  awk '/^LOCUS/ {print $3}'
  545  #I made an error of sending an incomplete code. I'll rectify it now.
  546  awk '/^LOCUS/ {print $3}' wildtype.gbk
  547  #Now that that is done, I'll print the source organism next.
  548  grep '^SOURCE' wildtype.gbk | head -l
  549  #Oops.Error. I'll run the codes again.
  550  grep '^SOURCE' wildtype.gbk | head -1
  551  #With the source organism found, I'll print the gene names in the .gbk file.
  552  grep 'gene=' wildtype.gbk | sort -u
  553  #Now, I'll clear and print all my commands.
  554  clear
  555  history
  556  #The lasf task on this project is to list the files of the two folders I've created.
  557  ls && ls ...Favour
  558  ls && ls ../Favour
  559  #With that I'm done with project 1. On to project 2.
  
PROJECT 2
  560  #Project 2 is all about installations of bioinformatics software.
  561  #The very first task is to activate conda base environment.
  562  #I will proceed to remove the current directory.
  563  cd ../biocomputing
  564  conda activate base
  565  #I'll proceed to confirm if conda base is activated.
  566  conda info --envs
  567  #Now, I'll create a conda environment called funtools
  568  conda create -n funtools
  569  #Next, I'll install figlet
  570  sudo apt-get install figlet
  571  #With figlet installed, I'll use it to run my name.
  572  figlet Favour
  573  #The way figlet wrote my name brings back the nostalgic feeling of nursery school where we traced alphabets and numbers.
  574  #Moving on, I'll install bwa
  575  sudo apt-get install bwa
  576  #Next, I'm installing blast
  577  sudo apt-get install ncbi-blast+
  578  #I move on to install samtools
  579  sudo apt-get install samtools
  580  #Installing bedtools next.
  581  sudo apt-get install bedtools
  582  #Coming up next, spades.py installation.
  583  sudo apt-get install spades
  584  #I'll be installing the bcftools bext.
  585  sudo apt-get install bcftools
  586  #fastp will be installed next.
  587  sudo apt-get install fastp
  588  #Finally, I'll be installing multiqc.
  589  pip install multiqc
  590  #With this, I've come to the end of the codes for project 2.
  591  history
  592  history > favour_stage0.sh
https://www.linkedin.com/posts/comfort-favour-balogun-01196019a_teamabrlovelace-hackbio-biocoding-activity-7367614677448552449-4HIv?utm_source=share&utm_medium=member_android&rcm=ACoAAC7Fcg0BQdjCiMyMuglfPhfBLZy_UsU-4dE
