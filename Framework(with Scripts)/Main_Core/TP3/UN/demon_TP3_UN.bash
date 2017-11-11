#!/bin/bash

round=113
date1=$(date +"%m-%d-%Y")
time1=$(date +"%H:%M")
destination=planetlab2.cs.otago.ac.nz
host=planetlab-3.cmcl.cs.cmu.edu

# File Names
dump_ping="./data/dump_ping_"$host"_to_$destination.txt"
clean_ping="./data/clean_ping_"$host"_to_$destination.csv"
tracert="./data/dump_tracert_"$host"_to_$destination.txt"

echo "Date (MM/DD/YYYY),Time (24Hr),Round Number,Hops_to_destination,Host,Destination,Sent Packets,Received Packets,Packet Loss,Min,Max,Average,Standard Deviation" >> $clean_ping


while true; do
	v_date=$(date +"%m-%d-%Y")
	v_time=$(date +"%H:%M")
	
	echo "========= { Round : $round, Date: $v_date (MM/DD/YYYY), Time: $v_time (24Hr), Host: $host, Destination: $destination } ============" >> $dump_ping
	echo "========= { Round : $round, Date: $v_date (MM/DD/YYYY), Time: $v_time (24Hr), Host: $host, Destination: $destination } ============" >> $tracert
	echo "" >> $dump_ping
	echo "" >> $tracert
	ping -c 20 $destination | tee -a $dump_ping temp_ping.txt > dump_null.txt
	printf "$v_date,$v_time,$round," >> $clean_ping
	traceroute $destination 2>> $tracert |tee -a $tracert |tail -1 | awk '{printf $1}'>> $clean_ping
	printf ",$host," >> $clean_ping
	./pingparser.py -f '%h,%s,%r,%p,%m,%M,%a,%j' -i temp_ping.txt >> $clean_ping
	echo "" >> $clean_ping
	rm temp_ping.txt	
	(( round++ ))
	rm dump_null.txt
	echo " " >> $dump_ping
	echo " " >> $tracert
	sleep 3600
done
