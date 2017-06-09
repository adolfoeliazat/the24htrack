#!/bin/bash


bar ()
{
BAR='Coded by Cignoraptor'    
                         
for i in {0..59}; do
    echo -ne "\r${BAR:0:$i}" 
    sleep 0.07
done
}

echo " "
echo -e "\e[01;32m___________\e[00;31mTHE24HTRACK\e[01;32m___________\e[00m"
echo " "
echo -e " \e[00;33m|\e[00m|\e[01;33m| \e[00;34mTRACKING NEWS OF \e[00;31mINTEREST\e[00m IN THE LAST 24 HOURS\e[00m"
echo " "
echo -e "\e[01;32m____\e[00;31mCodename\e[01;32m____\e[00;33m___\e[00;34mAngry Swan\e[01;32m____\e[00m"

echo " "
bar
echo " "
echo " "
PS3="Choose an option:"

select opt in "CRIMES IN THE LAST 24H" "INTERNATIONAL TERRORISM NEWS LAST 24H" "LAST 24H SOCIAL MEDIA SEARCH" "VIDEO CRIME TAG IN THE LAST 24H" "PACKETSTORM NEWS (INFORMATION SECURITY)" "FILE SENTIMENT ANALYSIS"
do
    case "$opt" in
         'CRIMES IN THE LAST 24H')
         echo " "
echo -e " \e[00;31m>\e[00m INSERT TARGET"
read target


links2 -dump https://www.google.it/search?q="$target"+inurl:crime"&"tbs=qdr:d > c.txt

links2 -dump https://www.startpage.com/do/dsearch?query=host%3Abbc.com.com+"$tar"+"crime" > i.txt


echo " "
sleep 1

links2 -dump https://www.google.it/search?q="$target"+inurl:cronaca"&"tbs=qdr:d > cr.txt



echo -e "\e[00;31mINTERNATIONAL CRIME NEWS\e[00m"
echo " "
cat c.txt | grep --color -e http
rm c.txt
echo  " "
cat i.txt | grep --color -e http
rm i.txt
echo " "
echo -e "\e[00;31mITALIAN CRIME NEWS\e[00m"
echo " "
cat cr.txt | grep --color -e http 
         #sudo python tempocro24.py $target
         ;;
         'LAST 24H SOCIAL MEDIA SEARCH')
echo " "
echo -e "Search in \e[00;34mFACEBOOK \e[00m| and \e[01;34mTWITTER\e[00m"
echo " "
bar
echo " "
echo -e " \e[01;34m>\e[00m INSERT TARGET: "
read sotar

links2 -dump https://www.google.it/search?q=site:facebook.com+"$sotar""&"tbs=qdr:d > sf.txt
sleep 1
links2 -dump https://www.google.it/search?q=site:twitter.com+"$sotar""&"tbs=qdr:d > st.txt

echo -e "\e[00;34mFACEBOOK\e[00m"
cat sf.txt | grep ---color e http
echo " "
echo -e "\e[01;34mTWITTER\e[00m"
cat st.txt | grep --color -e http
echo " "
rm sf.txt
rm st.txt

         ;;
         'VIDEO CRIME TAG IN THE LAST 24H')
echo " "
echo -e "\e[01;34mAUTO geosearchtool.com video search\e[00m"
echo " "
echo -e " \e[01;33m>\e[00m \e[00;34mINSERT LOCATION OF INTEREST\e[00m: "
read loc
echo " "
firefox http://www.geosearchtool.com/?q=crime"&"la=undefined"&"lo=undefined"&"lr=10km"&"tw=24hours"&"cl="&"sl=$loc"&"eo="false&"loo="false&"cco="false&"zl=11"&"pbt=undefined
echo " "

         ;;
         'INTERNATIONAL TERRORISM NEWS LAST 24H')
echo " "
echo -e "\e[00;33mSearch with google dorks for news of interest\e[00m"
echo " "
echo -e " \e[00;31m>\e[00m INSERT TARGET: "
read targ

links2 -dump links2 -dump https://www.google.it/search?q="$target"+AND+terrorism+inurl:crime"&"tbs=qdr:d > ter.txt
sleep 1
links2 -dump links2 -dump https://www.google.it/search?q="$target"+AND+terrorism+inurl:news"&"tbs=qdr:d > ter2.txt

echo -e "\e[00;31mINTERNATIONAL TERRORISM NEWS\e[00m"
echo " "
cat c.txt | grep --color -e http
rm ter.txt 
echo " "
cat ter2.txt | grep --color -e http
rm ter2.txt
echo " " 
         ;;
         'FILE SENTIMENT ANALYSIS')
echo " "
bar
echo " "
echo -e "\e[00;31mATTENTION! \e[00mthis module is still in the development phase."
echo " "
echo -e " \e[01;32m>\e[00m INSERT THE TXT OF INTEREST"
read filer

echo -e "- - - - \e[01;32m\e[00m"
echo " "
echo -e "\e[00;31mKILLING\e[00m"
     cat $filer | grep --color -e killed -e "kill"
echo " "
echo -e "\e[01;37m====================================\e[00m"
echo " "
echo -e "\e[00;31mSHOOTING\e[00m"
     cat $filer | grep --color -e shoot -e shooter
echo " "
echo -e "\e[01;37m====================================\e[00m"
echo " "
echo -e "\e[00;31mHATE\e[00m"
     cat $filer | grep --color -e hate -e hated -e hater
echo " "
echo -e "\e[01;37m====================================\e[00m"
echo " "
echo -e "\e[00;31mWEAPONS\e[00m"
     cat $filer | grep --color -e knife -e gun -e weapon
echo " "
echo -e "\e[01;37m====================================\e[00m"
echo " "
echo -e "\e[00;31mBLOOD\e[00m"
     cat $filer | grep --color -e blood
echo " "
echo -e "\e[01;37m====================================\e[00m"
echo " "
echo -e "\e[00;31mVIOLENCE\e[00m"
     cat $filer | grep --color -e violence
echo " "
echo -e "\e[01;37m====================================\e[00m"

sed 's/\<e\>//g' $filer > tes2 
sed 's/\<la\>//g' tes2 > tes3  
sed 's/\<in\>//g' tes3 > tes4  
sed 's/\<a\>//g' tes4 > tes5 
sed 's/\<or\>//g' tes5 > tes6  
sed 's/\<on\>//g' tes6 > tes7
sed 's/\<one\>//g' tes7 > tes8  
sed 's/\<this\>//g' tes8 > tes9
sed 's/\<why\>//g' tes9 > tes10  
sed 's/\<per\>//g' tes10 > tes11
sed 's/\<ha\>//g' tes11 > tes12 
sed 's/\<il\>//g' tes12 > tes13
sed 's/\<because\>//g' tes13 > tes14  
sed 's/\<to\>//g' tes14 > tes15
sed 's/\<have\>//g' tes15 > tes16  
sed 's/\<we\>//g' tes16 > tes17
sed 's/\<Ha\>//g' tes17 > tes18
sed 's/\<very\>//g' tes18 > tes19  
sed 's/\<us\>//g' tes19 > tes20
sed 's/\<they\>//g' tes20 > tes21
sed 's/\<of\>//g' tes21 > tes22  
sed 's/\<likes\>//g' tes22 > tes23  
sed 's/\<replies\>//g' tes23 > tes24
sed 's/\<http\>//g' tes24 > tes25
sed 's/\<ly\>//g' tes25 > tes26 
sed 's/\<must\>//g' tes26 > tes27
sed 's/\<0\>//g' tes27 > tes28 
sed 's/\<retweet\>//g' tes28 > tes29
sed 's/\<alle\>//g' tes29 > tes30
sed 's/\<but\>//g' tes30 > tes31
sed 's/\<piace\>//g' tes31 > tes32
sed 's/\<mi\>//g' tes32 > tes33
sed 's/\<and\>//g' tes33 > tes34
sed 's/\<immagine\>//g' tes34 > tes35 
sed 's/\<contenere\>//g' tes35 > tes36
sed 's/\<all\>//g' tes36 > tes37
sed 's/\<how\>//g' tes37 > tes38 
sed 's/\<org\>//g' tes38 > tes39
sed 's/\<www\>//g' tes39 > tes40
sed 's/\<In\>//g' tes40 > tes41 
sed 's/\<many\>//g' tes41 > tes42
sed 's/\<from\>//g' tes42 > tes43
sed 's/\<htm\>//g' tes43 > tes44
sed 's/\<i\>//g' tes44 > tes45
sed 's/\<for\>//g' tes45 > tes46
sed 's/\<who\>//g' tes46 > tes47
sed 's/\<that\>//g' tes47 > tes48
sed 's/\<the\>//g' tes48 > tes49
sed 's/\<you\>//g' tes49 > tes50
sed 's/\<all\>//g' tes50 > tes51
sed 's/\<quando\>//g' tes51 > tes52
sed 's/\<https\>//g' tes52 > tes53 
sed 's/\<twitter\>//g' tes53 > tes54
sed 's/\<search\>//g' tes54 > tes55
sed 's/\<button\>//g' tes55 > tes56
sed 's/\<startpage\>//g' tes56 > tes57
sed 's/\<do\>//g' tes57 > tes58
sed 's/\<proxy\>//g' tes58 > tes59
sed 's/\<language\>//g' tes59 > tes60
sed 's/\<lang\>//g' tes60 > tes61
sed 's/\<BUTTON\>//g' tes61 > tes62
sed 's/\<web\>//g' tes62 > tes63
sed 's/\<q\>//g' tes63 > tes64
sed 's/\<where\>//g' tes64 > tes65
sed 's/\<to\>//g' tes65 > tes66
sed 's/\<english\>//g' tes66 > tes67
sed 's/\<with\>//g' tes67 > tes68
sed 's/\<Tweet\>//g' tes68 > tes69
sed 's/\<Retweet\>//g' tes69 > tes70
sed 's/\<is\>//g' tes70 > tes71
sed 's/\<hashtag\>//g' tes71 > tes72
sed 's/\<are\>//g' tes72 > tes73
sed 's/\<alternate\>//g' tes73 > tes74
sed 's/\<html\>//g' tes74 > tes75
sed 's/\<it\>//g' tes75 > tes76
sed 's/\<It\>//g' tes76 > tes77
sed 's/\<IT\>//g' tes77 > tes78
sed 's/\<del\>//g' tes78 > tes79
sed 's/\<DEL\>//g' tes79 > tes80
sed 's/\<LANGUAGE\>//g' tes80 > tes81
sed 's/\<PROXY\>//g' tes81 > tes82
sed 's/\<what\>//g' tes82 > tes83
sed 's/\<which\>//g' tes83 > tes84
sed 's/\<DO\>//g' tes84 > tes85
sed 's/\<highlight\>//g' tes85 > tes86




rm tes2
rm tes3
rm tes4
rm tes5
rm tes6
rm tes7
rm tes8
rm tes9
rm tes10
rm tes11
rm tes12
rm tes13
rm tes14
rm tes15
rm tes16
rm tes17
rm tes18
rm tes19
rm tes20
rm tes21
rm tes22
rm tes23
rm tes24
rm tes25
rm tes26
rm tes27
rm tes28
rm tes29
rm tes30
rm tes31
rm tes32
rm tes33
rm tes34
rm tes35
rm tes36
rm tes37
rm tes38
rm tes39
rm tes40
rm tes41
rm tes42
rm tes43
rm tes44
rm tes45
rm tes46
rm tes47
rm tes48
rm tes49
rm tes50
rm tes51
rm tes52
rm tes53
rm tes54
rm tes55
rm tes56
rm tes57
rm tes58
rm tes59
rm tes60
rm tes61
rm tes62
rm tes63
rm tes64
rm tes65
rm tes66
rm tes67
rm tes68
rm tes69
rm tes70
rm tes71
rm tes72
rm tes73
rm tes74
rm tes75
rm tes76
rm tes77
rm tes78
rm tes79
rm tes80
rm tes81
rm tes82
rm tes83
rm tes84
rm tes85



#echo "INSERISCI NUOVO NOME FILE..ELIMINA E,LA,IN,A,O,NEL ECC..."
#read nuov
sed 's/di//g' tes86 > risu
rm tes86
#echo "INSERISCI PAROLE DA CERCARE "
#read uno
#read due

echo " "
echo -e "\e[01;37m====================================\e[00m"

echo -e "\e[01;33mTOP 20 MORE USED WORDS\e[00m"
    cat risu | tr -cs "[:alnum:]" "\n"| tr "[:lower:]" "[:upper:]" | awk '{h[$1]++}END{for (i in h){print h[i]" "i}}'|sort -nr | cat -n | head -n 20
echo " "
echo -e "\e[01;34mSENTIMENT ANALYSIS\e[00m"
echo -e "\e[01;33mNumber of warning or peaceful phrases and emoticon"
echo " "

echo -e "\e[00;33m>>>>>>>>>>>>>>>>>\e[00;31mNEGATIVE\e[00m AND \e[00;36mPOSITIVE\e[00;33m<<<<<<<<<<<<<<<<<<<<<<\e[00m"

cat $filer | grep -e ":(" -e hate -e shit -e "kill" -e bad -e suck -e bitch -e violenc -e  suicide -e abuse -e caution -e death -e dead -e weapon -e dangerous -e warning -e war -e punch -e terror -e fear -e sad > bad.txt
cat $filer | grep -e ":)" -e love -e good -e majestic -e fantastic -e happy -e fortune -e courage -e hope -e well -e tranquillity -e ok -e peace -e secure > happy.txt
echo " "
echo -e "\e[00;31m============\e[00m"
cat bad.txt | wc -l && echo -e " \e[01;31m:(\e[00m"
echo " "
echo -e "\e[01;36m============\e[00m"
cat happy.txt | wc -l && echo -e " \e[01;36m:)\e[00m"
echo " "
rm bad.txt
rm happy.txt
rm risu


         break;
 esac
done
