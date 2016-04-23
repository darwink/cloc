(: http://exist-db.org/exist/apps/demo/examples/basic/mondial.html :)
 (: This script accesses the mondial database, which can be found at http://dbis.informatik.uni-goettingen.de/Mondial/ :) for $country in /mondial/country let $cities := (for $city in $country//city[population] order by xs:integer($city/population[1]) descending return $city) order by $country/name return <country name="{$country/name}"> { subsequence($cities, 1, 3) } </country>