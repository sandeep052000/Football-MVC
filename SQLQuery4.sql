go
use master
go
CREATE DATABASE [FootBallLeague]
go
use [FootBallLeague]
go
CHECKPOINT

create table FootBallLeague
(
MatchId int primary key not null,
TeamName1 varchar(20) not null,
TeamName2 varchar(20) not null,
Status varchar(10) not null,
WinningTeam varchar(20) null,
Points int not null,
)  

INSERT INTO [dbo].[FootBallLeague] ([MatchId], [TeamName1], [TeamName2], [Status],[WinningTeam],[Points]) VALUES (1001,N'Italy', N'France', N'Win', N'France',4)
INSERT INTO [dbo].[FootBallLeague] ([MatchId], [TeamName1], [TeamName2], [Status],[WinningTeam],[Points]) VALUES (1002,N'Brazil', N'Portugal', N'Draw', null,2)
INSERT INTO [dbo].[FootBallLeague] ([MatchId], [TeamName1], [TeamName2], [Status],[WinningTeam],[Points]) VALUES (1003,N'England', N'Japan', N'Win', N'England',4)
INSERT INTO [dbo].[FootBallLeague] ([MatchId], [TeamName1], [TeamName2], [Status],[WinningTeam],[Points]) VALUES (1004,N'USA', N'Russia', N'Win', N'Russia',4)
INSERT INTO [dbo].[FootBallLeague] ([MatchId], [TeamName1], [TeamName2], [Status],[WinningTeam],[Points]) VALUES (1005,N'Portugal', N'Italy', N'Draw', null,2)
INSERT INTO [dbo].[FootBallLeague] ([MatchId], [TeamName1], [TeamName2], [Status],[WinningTeam],[Points]) VALUES (1006,N'Brazil', N'France', N'Win', N'Brazil',4)
INSERT INTO [dbo].[FootBallLeague] ([MatchId], [TeamName1], [TeamName2], [Status],[WinningTeam],[Points]) VALUES (1007,N'England', N'Russia', N'Win', N'Russia',4)
INSERT INTO [dbo].[FootBallLeague] ([MatchId], [TeamName1], [TeamName2], [Status],[WinningTeam],[Points]) VALUES (1008,N'Japan', N'USA', N'Draw', null,2)




CREATE PROCEDURE [dbo].[FBLeague]
(
@MatchId int,
@TeamName1 varchar(20),
@TeamName2 varchar(20),
@Status varchar(10),
@WinningTeam varchar(20)=null,
@Points int 
)

AS
BEGIN

 SET NOCOUNT ON ;

 INSERT INTO FootBallLeague
 (
 MatchId,
 TeamName1,
 TeamName2,
 Status,
 WinningTeam,
 Points
 )
 VALUES
 (
 @MatchId,
@TeamName1,
@TeamName2,
@Status,
@WinningTeam,
@Points
 
 )
 END 
 GO

 EXEC [dbo].[FBLeague]
 1009,
 Italy,
 France,
 Win,
 France,
 4







 select WinningTeam from FootBallLeague
 WHERE WinningTeam IS NOT NULL


 CREATE VIEW Match_View AS
 SELECT TeamName1,TeamName2
 FROM FootBallLeague
  WHERE Status ='Draw';
 
 SELECT * FROM Match_View



 SELECT * FROM FootBallLeague
 WHERE TeamName1='Japan' OR TeamName2='Japan'