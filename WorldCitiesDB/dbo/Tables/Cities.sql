CREATE TABLE [dbo].[Cities] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (450) NOT NULL,
    [Lat]       DECIMAL (7, 4) NOT NULL,
    [Lon]       DECIMAL (7, 4) NOT NULL,
    [CountryId] INT            NOT NULL,
    CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Cities_Countries_CountryId] FOREIGN KEY ([CountryId]) REFERENCES [dbo].[Countries] ([Id]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_Cities_Name]
    ON [dbo].[Cities]([Name] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Cities_Lon]
    ON [dbo].[Cities]([Lon] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Cities_Lat]
    ON [dbo].[Cities]([Lat] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_Cities_CountryId]
    ON [dbo].[Cities]([CountryId] ASC);

