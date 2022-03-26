# Usage (Create file in Folder): bash ./file.sh -s var/www/html/index.html
# Usage (Delete folder): bash ./file.sh -r | -d var

files=($(echo $2 | tr "/" "\n"))
filesLength=${#files[@]}

# 
# Create folders and files based on path
# eg. var/www/html/index.html -> 
#	var # folder
#    	www # folder
#        	html # folder
#            	index.html # file
#
function ReadFile() {
    counter=0
    progress=""

    for i in "${files[@]}"
    do
        counter=$((counter+1))
        progress=$progress$i

        if [ $counter -eq $(($filesLength)) ]
        then
            echo $3 $progress
            `echo $3 > $progress`
        else
            progress=$progress"/"
            # check if file exists
            if [ -d $i ] 
            then
                echo Folder already exists: $i
            else
                `mkdir $progress`
            fi
        fi
    done
}

function DeleteFolder() {
    rm -r $1
}

while getopts ":s:d:r:" opt; do
  case $opt in
    s)
      ReadFile
      ;;
    d | r)
      DeleteFolder $2
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done