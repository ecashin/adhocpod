set -xe
bkp index.xml
now=`date`
now=`date -j -f "%a %b %d %T %Z %Y" "$now" "+%s"`
adj="$now"
for i; do
	test -r "$i"
	b=`basename "$i"`
	hb=`echo "$b" | sed 's!&!&amp;!g'`
	ub="$b"
	ub=`echo "$ub" | sed 's! !%20!g'`
	ub=`echo "$ub" | sed 's!&!%26!g'`
	ub=`echo "$ub" | sed 's!/!%2f!g'`
	date=`date -r "$adj" | sed 's! !, !'`
	len=`ls -l "$i" | awk '{print $5}'`
	ed index.xml <<EOF
/<\/channel>/
i
<item>
<title>$hb</title>
<enclosure
url="http://127.0.0.1/~ecashin/ad-hoc/$ub" length="$len" type="audio/mpeg"/>
<pubDate>$date</pubDate>
</item>
.
w
q
EOF
	adj=`expr $adj - 1`
done
