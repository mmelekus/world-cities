CREATE TABLE [dbo].[Countries] (
    [Id]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (450) NOT NULL,
    [ISO2] NVARCHAR (450) NOT NULL,
    [ISO3] NVARCHAR (450) NOT NULL,
    CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED ([Id] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_Countries_Name]
    ON [dbo].[Countries]([Name] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Countries_ISO3]
    ON [dbo].[Countries]([ISO3] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Countries_ISO2]
    ON [dbo].[Countries]([ISO2] ASC);

