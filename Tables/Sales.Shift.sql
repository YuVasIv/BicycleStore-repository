CREATE TABLE [Sales].[Shift] (
  [ShiftID] [tinyint] IDENTITY,
  [StartTime] [time](0) NOT NULL,
  [EndTime] [time](0) NOT NULL,
  CONSTRAINT [PK_Shift_ShiftID] PRIMARY KEY CLUSTERED ([ShiftID])
)
ON [PRIMARY]
GO