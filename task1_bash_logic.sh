#!/bin/bash

#printf -v date '%(%Y-%m-%d)T\n' -1 

to_be_printed="Днес е "
year=$(date +"%Y")
day_num=$(date +"%M")
day_letter=$(date +"%a")
month=$(date +"%B")


if [[ $day_letter = "Mon" ]]
	then day_letter="понеделник, "

elif [[ $day_letter = "Tue" ]]
	then day_letter="вторник, "

elif [[ $day_letter = "Wed" ]]
	then day_letter="сряда, "

elif [[ $day_letter = "Thu" ]]
	then to_be_printed+="четвъртък, "

elif [[ $day_letter =  "Fri" ]]
	then to_be_printed+="петък, "

elif [[ $day_letter = "Sat" ]]
	then to_be_printed+="събота, "

elif [[ $day_letter = "Sun" ]]
	then to_be_printd+="неделя, "
	fi

months_array=([0]='January' [1]='February' [2]='March' [3]='April' [4]='May' [5]='June' [6]='July' [7]='August' [8]='September' [9]='October' [10]='November' [11]='December')

to_be_printed+="$day_num "


if [ $month == ${months_array[0]} ]; then
       	 to_be_printed+="януари"

elif [ $month == ${months_array[1]} ]; then
         to_be_printed+="февруари"

elif [ $month == ${months_array[2]} ]; then
       	 to_be_printed+="март"

elif [ $month == ${months_array[3]} ]; then
         to_be_printed+="април"

elif [ $month == ${months_array[4]} ]; then 
	 to_be_printed+="май"

elif [ $month == ${months_array[5]} ]; then 
	 to_be_printed+="юни"

elif [ $month == ${months_array[6]} ]; then 
	to_be_printed+="юли"

elif [ $month == ${months_array[7]} ]; then 
	 to_be_printed+="август"

elif [ $month == ${months_array[8]} ]; then
       	 to_be_printed+="септември"

elif [ $month == ${months_array[9]} ]; then 
	 to_be_printed+="октомври"

elif [ $month == ${months_array[10]} ]; then 
	 to_be_printed+="ноември"

elif [ $month == ${months_array[11]} ]; then 
	 to_be_printed+="декември"
	
	fi

to_be_printed+=" $year г."
#qa: Днес е четвъртък, 08 декември 2020 г.
echo "$to_be_printed"

