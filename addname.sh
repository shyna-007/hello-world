echo "num of arguments: $#"
count=$#
#check if  count==2
if [ $count != 2 ]
then
 echo "Please check number of arguments"
 exit 0
fi
#Check a file exists or not
FILE=$1
#expression evaluation in sqaure bracket.if its liux command it is not needed
if [ ! -f $FILE ]
then
 echo "File not exists"
 exit 0
else
 echo "File exists"
 #check if username is in the given file
 user=$2
 echo $user
 if grep -xq "$user" "$FILE" #if -q "$user"--->Disable output to statndared op #if we use -xq it avoid substring match
 then 
  echo $user already exist in file
 else
  #write new user to given file
  echo $user >> $FILE #>> used for append
 fi
fi


