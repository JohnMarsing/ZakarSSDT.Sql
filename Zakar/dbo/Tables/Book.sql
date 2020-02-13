CREATE TABLE [dbo].[Book] (
    [ID]              TINYINT       NOT NULL,
    [Title]           NVARCHAR (15) NOT NULL,
    [Abrv]            NVARCHAR (5)  NOT NULL,
    [ScriptureID_Beg] INT           NOT NULL,
    [ScriptureID_End] INT           NOT NULL,
    [BookGroupID]     INT           NOT NULL,
    [HebrewTitle]     NVARCHAR (20) NULL,
    [HebrewName]      NVARCHAR (25) NULL,
    [LastChapter]     TINYINT       NOT NULL,
    CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Book_BookGroup] FOREIGN KEY ([BookGroupID]) REFERENCES [dbo].[BookGroup] ([ID])
);

