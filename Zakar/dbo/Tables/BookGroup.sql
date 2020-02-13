CREATE TABLE [dbo].[BookGroup] (
    [ID]           INT            NOT NULL,
    [Descr]        NVARCHAR (50)  NOT NULL,
    [Notes]        NVARCHAR (255) NULL,
    [OldTestament] BIT            NOT NULL,
    CONSTRAINT [PK_BookGroup] PRIMARY KEY CLUSTERED ([ID] ASC)
);

