

CREATE VIEW [dbo].[vwSiteMap]
AS

/*

SELECT * FROM vwSiteMap

*/

SELECT TOP 5000
  BookChapter.ID AS BookChapterID
, BookGroup.ID AS BookGroupID
, Book.ID AS BookID
, BookChapter.Chapter
, BookGroup.Descr AS BookGroup
, Book.Abrv
, BookChapter.ScriptureID_Beg
, BookChapter.ScriptureID_End
FROM         
  Book 
  INNER JOIN
    BookChapter ON Book.ID = BookChapter.BookID 
  INNER JOIN
    BookGroup ON Book.BookGroupID = BookGroup.ID
ORDER BY BookChapter.ID

