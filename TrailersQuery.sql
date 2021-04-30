USE [Trailers]
GO
/****** Object:  Table [dbo].[Peliculas]    Script Date: 30/4/2021 10:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peliculas](
	[IdPelicula] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NULL,
	[Director] [varchar](50) NULL,
	[Descripcion] [varchar](300) NULL,
	[poster] [varchar](100) NULL,
	[video] [varchar](100) NULL,
	[puntuacion] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdPelicula] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 30/4/2021 10:50:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](60) NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Peliculas] ON 
GO
INSERT [dbo].[Peliculas] ([IdPelicula], [Titulo], [Director], [Descripcion], [poster], [video], [puntuacion]) VALUES (1, N'In Time', N'Andrew Niccol', N'Ambientada en una sociedad futura. El hallazgo de una fórmula contra el envejecimiento trae consigo no sólo superpoblación, sino también la transformación del tiempo en moneda de cambio que permite sufragar tanto lujos como necesidades.', N'https://www.cine-calidad.com/wp-content/uploads/2021/04/2cX5gY6FFsJW6ZXi6PLB3zm0vHr.jpg', N'YRSBiTF3wNw', 7)
GO
INSERT [dbo].[Peliculas] ([IdPelicula], [Titulo], [Director], [Descripcion], [poster], [video], [puntuacion]) VALUES (2, N'A descubierto', N'Mikael Håfström', N'Un piloto de drones se une a un oficial androide para localizar un dispositivo que amenaza con acabar con la vida sobre el planeta. El dispositivo en cuestión se encuentra oculto en una zona altamente militarizada.', N'https://www.cine-calidad.com/wp-content/uploads/2021/04/bQ2aNqcIGopI2AsTREc8sQlz6CN.jpg', N'dZfDLbbpvZs', 8)
GO
INSERT [dbo].[Peliculas] ([IdPelicula], [Titulo], [Director], [Descripcion], [poster], [video], [puntuacion]) VALUES (3, N'Spider-Man: Lejos de casa', N'Jon Watts', N'Peter Parker decide irse junto a Michelle Jones, Ned y el resto de sus amigos a pasar unas vacaciones a Europa después de los eventos ocurridos en Vengadores: EndGame.', N'https://www.cine-calidad.com/wp-content/uploads/2021/04/o59zDVJDIehGcWZsMUGU5SN0V0D.jpg', N'U0D3AOldjMU', 8)
GO
INSERT [dbo].[Peliculas] ([IdPelicula], [Titulo], [Director], [Descripcion], [poster], [video], [puntuacion]) VALUES (4, N'The Devil All the Time', N'Antonio Campos', N'Varios personajes siniestros convergen en torno a un joven dedicado a proteger a sus seres queridos en una ciudad repleta de corrupción y brutalidad.', N'https://www.cine-calidad.com/wp-content/uploads/2021/04/bVL7LGq528h3KzeNI90HOVbV5uW.jpg', N'KtN6fpjRSHs', 9)
GO
INSERT [dbo].[Peliculas] ([IdPelicula], [Titulo], [Director], [Descripcion], [poster], [video], [puntuacion]) VALUES (5, N'Asylum: Twisted Horror & Fantasy Tales', N'Alejandro Damiani', N'Brandon se prepara para dar su último show de stand-up. A medida que transcurren sus historias y chistes, el público comienza a animarse. Pero en ese preciso momento, él se dará cuenta de que esas historias tienen una fuerte relación con su pasado. Más de lo que él se imagina…', N'https://www.cine-calidad.com/wp-content/uploads/2021/04/3rxKic2PDrheSXMCG82vm9LAm8e.jpg', N'VT88TzyQJxE', 6)
GO
INSERT [dbo].[Peliculas] ([IdPelicula], [Titulo], [Director], [Descripcion], [poster], [video], [puntuacion]) VALUES (6, N'Nunca cierres los ojos', N'Anthony Scott Burns', N'Sarah es una estudiante adolescente que toca fondo anímicamente tras huir de casa. Una vez sola, no tiene a nadie que le ayude a superar sus recurrentes pesadillas.', N'https://www.cine-calidad.com/wp-content/uploads/2021/04/hGPGRRz6FTIRed1zestdWrV2Iwd.jpg', N'8FhlBc6qcNc', 9)
GO
INSERT [dbo].[Peliculas] ([IdPelicula], [Titulo], [Director], [Descripcion], [poster], [video], [puntuacion]) VALUES (7, N'Kimetsu no Yaiba: Mugen Ressha-hen', N'Haruo Sotozaki', N'Tanjiro y sus compañeros se unen al Pilar de las Llamas Kyojuro Rengoku para investigar una misteriosa serie de desapariciones que han ocurrido dentro del “Tren Infinito”.', N'https://www.cine-calidad.com/wp-content/uploads/2021/04/3f4ETSwknZs74lmUYC7ENIMRBMP.jpg', N'VQGCKyvzIM4', 10)
GO
INSERT [dbo].[Peliculas] ([IdPelicula], [Titulo], [Director], [Descripcion], [poster], [video], [puntuacion]) VALUES (8, N'Godzilla vs Kong', N'Adam Wingard', N'En un momento en que los monstruos caminan por la Tierra, la lucha de la humanidad por su futuro coloca a Godzilla y Kong en un curso de colisión que verá a las dos fuerzas más poderosas de la naturaleza en el planeta enfrentarse en una batalla espectacular para las edades.', N'https://www.cine-calidad.com/wp-content/uploads/2021/04/kong-vs-godzilla-cinecalidad.jpg', N'odM92ap8_c0', 9)
GO
SET IDENTITY_INSERT [dbo].[Peliculas] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Email], [Password]) VALUES (1, N'Dereck', N'Admin@gmail.com', N'b0236163f86629cd4f6834d2b7b094fe')
GO
INSERT [dbo].[Usuarios] ([IdUsuario], [Nombre], [Email], [Password]) VALUES (2, N'Admin', N'admin06@gmail.com', N'e3afed0047b08059d0fada10f400c1e5')
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
