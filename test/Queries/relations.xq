import module namespace ex = 'http://www.zorba-xquery.com/modules/info-extraction';

let $result := ex:relations("President Obama called Wednesday on Congress to extend a tax break for students included in last year's economic stimulus package, arguing that the policy provides more generous assistance.")
return if(count($result) >= 1)
    then 'Relations Found'
    else ()
    
(: Possible Result
<?xml version="1.0" encoding="UTF-8"?>
<ex:relation xmlns:ex="http://www.zorba-xquery.com/modules/info-extraction">
  <ex:entity start="0" end="14">President Obama</ex:entity>
  <ex:wikipedia_url>http://en.wikipedia.com/wiki/Gabrielle_Giffords</ex:wikipedia_url>
  <ex:wikipedia_url>http://en.wikipedia.com/wiki/2011_Tucson_shooting</ex:wikipedia_url>
  <ex:wikipedia_url>http://en.wikipedia.com/wiki/Fray</ex:wikipedia_url>
  <ex:wikipedia_url>http://en.wikipedia.com/wiki/White_House</ex:wikipedia_url>
  <ex:wikipedia_url>http://en.wikipedia.com/wiki/Recall_%28memory%29</ex:wikipedia_url>
</ex:relation>
<ex:relation xmlns:ex="http://www.zorba-xquery.com/modules/info-extraction">
  <ex:entity start="36" end="43">
    <ex:type>organization</ex:type>Congress</ex:entity>
  <ex:wikipedia_url>http://en.wikipedia.com/wiki/Republican_Party_%28United_States%29</ex:wikipedia_url>
  <ex:wikipedia_url>http://en.wikipedia.com/wiki/Barack_Obama</ex:wikipedia_url>
  <ex:wikipedia_url>http://en.wikipedia.com/wiki/Roger_Clemens</ex:wikipedia_url>
  <ex:wikipedia_url>http://en.wikipedia.com/wiki/Democratic_Party_%28United_States%29</ex:wikipedia_url>
  <ex:wikipedia_url>http://en.wikipedia.com/wiki/Growth_hormone</ex:wikipedia_url>
</ex:relation>
:)
