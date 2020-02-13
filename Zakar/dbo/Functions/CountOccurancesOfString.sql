

CREATE FUNCTION dbo.CountOccurancesOfString
(
    @searchString nvarchar(max),
    @searchTerm nvarchar(max)
)

/*

<summary>

</summary> 

<samples> 
  <sample>
     <description>List verses that have multiple entries for Torah (e.g. the moadim readings do)</description>
     <code>  

SELECT 
	ParashaOneYear_ID
,	DetailId
, VerseTorah
, dbo.CountOccurancesOfString(VerseTorah, ';') AS VerseTorahs
,	Book
,	FirstColon
,	SecondColon
,	Hyphen
,	VerseNonTorah
, dbo.CountOccurancesOfString(VerseNonTorah, ';') AS VerseNonTorahs
, ScrID2
FROM Bible.dbo.vwParashaOneYearExplode_2
WHERE dbo.CountOccurancesOfString(VerseTorah, ';') > 0

    </code> 
  </sample>
</samples> 


*/
RETURNS INT
AS
BEGIN
    return (LEN(@searchString)-LEN(REPLACE(@searchString,@searchTerm,'')))/LEN(@searchTerm)
END
