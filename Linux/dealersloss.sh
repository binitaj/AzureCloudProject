#!/bin/bash
echo "Date	Time	DealerName"
#This will give our dealers working during the time losses occurred
#losses occurred on 10th at 2:00 PM, 5:00 AM, 8:00 AM and PM and 11:00 PM
grep -i "05:00:00 AM" 0310_* | awk -F" " '{print "0310",$1,$2,$5,$6}'
grep -i "08:00:00 AM" 0310_Dealer_schedule |awk -F" " '{print "0310",$1,$2,$5,$6}'
grep -i "02:00:00 PM" 0310_Dealer_schedule |awk -F" " '{print "0310",$1,$2,$5,$6}'
grep -i "08:00:00 PM" 0310_Dealer_schedule |awk -F" " '{print "0310",$1,$2,$5,$6}'
grep -i "11:00:00 PM" 0310_Dealer_schedule |awk -F" " '{print "0310,"$1,$2,$5,$6}'

#losses occurred on 12th at 2:00 PM, 5:00 AM, 8:00 AM and PM and 11:00 PM
grep -i "05:00:00 AM" 0312_Dealer_schedule |awk -F" " '{print "0312",$1,$2,$5,$6}'
grep -i "08:00:00 AM" 0312_Dealer_schedule |awk -F" " '{print "0312",$1,$2,$5,$6}'
grep -i "02:00:00 PM" 0312_Dealer_schedule |awk -F" " '{print "0312",$1,$2,$5,$6}'
grep -i "08:00:00 PM" 0312_Dealer_schedule |awk -F" " '{print "0312",$1,$2,$5,$6}'
grep -i "11:00:00 PM" 0312_Dealer_schedule |awk -F" " '{print "0312",$1,$2,$5,$6}'

#lossed on 15th at 2:00, 5:00, 8:00
grep -i "05:00:00 AM" 0315_Dealer_schedule |awk -F" " '{print "0315",$1,$2,$5,$6}'
grep -i "08:00:00 AM" 0315_Dealer_schedule |awk -F" " '{print "0315",$1,$2,$5,$6}'
grep -i "02:00:00 PM" 0315_Dealer_schedule |awk -F" " '{print "0315",$1,$2,$5,$6}'
