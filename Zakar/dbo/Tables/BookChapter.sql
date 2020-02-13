CREATE TABLE [dbo].[BookChapter] (
    [ID]              INT           NOT NULL,
    [BookID]          TINYINT       NOT NULL,
    [Chapter]         TINYINT       NOT NULL,
    [ScriptureID_Beg] INT           NOT NULL,
    [ScriptureID_End] INT           NOT NULL,
    [DescH]           VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_BookChapter] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_BookChapter_Book] FOREIGN KEY ([BookID]) REFERENCES [dbo].[Book] ([ID])
);

