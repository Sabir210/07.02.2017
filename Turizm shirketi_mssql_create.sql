CREATE TABLE [isciler] (
	id  int NOT NULL,
	ad varchar NOT NULL,
	soyad varchar NOT NULL,
	ishcinin_tecrubesi int NOT NULL,
	maashi money NOT NULL,
	ev telefonu int NOT NULL,
	mobil telefonu int NOT NULL,
	ishi varchar NOT NULL,
  CONSTRAINT [PK_ISCILER] PRIMARY KEY CLUSTERED
  (
  [id ] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Mushteriler] (
	İd int NOT NULL,
	ad varchar NOT NULL,
	soyad varchar NOT NULL,
	email varchar NOT NULL,
	mobil telefon varchar NOT NULL,
	ev telefonu varchar NOT NULL,
	adres varchar NOT NULL,
	aldigi tur varchar NOT NULL,
	aldigi tur varchar NOT NULL,
  CONSTRAINT [PK_MUSHTERILER] PRIMARY KEY CLUSTERED
  (
  [İd] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [Turlar] (
	İd int NOT NULL,
	olke varchar NOT NULL,
	turun qiymeti money NOT NULL,
	tarix date NOT NULL,
  CONSTRAINT [PK_TURLAR] PRIMARY KEY CLUSTERED
  (
  [İd] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [olkeler] (
	İd bigint NOT NULL,
	olkeler varchar NOT NULL,
  CONSTRAINT [PK_OLKELER] PRIMARY KEY CLUSTERED
  (
  [İd] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [vezifeler] (
	id int NOT NULL,
	ish varchar NOT NULL,
  CONSTRAINT [PK_VEZIFELER] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO

ALTER TABLE [Mushteriler] WITH CHECK ADD CONSTRAINT [Mushteriler_fk0] FOREIGN KEY ([aldigi tur]) REFERENCES [Turlar]([İd])
ON UPDATE CASCADE
GO
ALTER TABLE [Mushteriler] CHECK CONSTRAINT [Mushteriler_fk0]
GO


ALTER TABLE [olkeler] WITH CHECK ADD CONSTRAINT [olkeler_fk0] FOREIGN KEY ([İd]) REFERENCES [Turlar]([olke])
ON UPDATE CASCADE
GO
ALTER TABLE [olkeler] CHECK CONSTRAINT [olkeler_fk0]
GO

ALTER TABLE [vezifeler] WITH CHECK ADD CONSTRAINT [vezifeler_fk0] FOREIGN KEY ([id]) REFERENCES [isciler]([ishi])
ON UPDATE CASCADE
GO
ALTER TABLE [vezifeler] CHECK CONSTRAINT [vezifeler_fk0]
GO

