-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-03-2022 a las 21:07:37
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `listadomg`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colecciones`
--

CREATE TABLE `colecciones` (
  `ColID` int(11) NOT NULL,
  `titulo_coleccion` char(255) NOT NULL,
  `titulo_original` char(255) NOT NULL,
  `editorial` int(25) NOT NULL,
  `volumenes_japon` smallint(6) NOT NULL,
  `volumenes_es` smallint(6) NOT NULL,
  `autor` char(255) NOT NULL,
  `artista` char(255) NOT NULL,
  `sinopsis` text NOT NULL,
  `idioma` char(255) NOT NULL,
  `demografia` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colecciones`
--

INSERT INTO `colecciones` (`ColID`, `titulo_coleccion`, `titulo_original`, `editorial`, `volumenes_japon`, `volumenes_es`, `autor`, `artista`, `sinopsis`, `idioma`, `demografia`) VALUES
(1, 'The Promised Neverland', 'Yakusoku no Neverland', 3, 20, 20, 'Kaiu Shirai', 'Posuka Demizu', 'Emma, Norman y Ray son tres huérfanos que viven felices en el idílico orfanato Grace Field House, esperando el momento en el que se les asignará una familia adoptiva. Todo cambia cuando descubren accidentalmente la horrorosa realidad de su existencia, así que deciden rebelarse y luchar hasta las últimas consecuencias en una oscura y aterradora aventura. Pero su tiempo se acaba…', 'Español', 1),
(3, 'Classroom of the Elite', 'Yōkoso Jitsuryoku Shijō Shugi no Kyōshitsu e', 1, 18, 10, 'Syohgo Kinugasa', 'Shunsaku Tomose', 'Students of the prestigious Tokyo Metropolitan Advanced Nurturing High School are given remarkable freedom—if they can win, barter, or save enough points to work their way up the ranks! Ayanokouji Kiyotaka has landed at the bottom in the scorned Class D, where he meets Horikita Suzune, who’s determined to rise up the ladder to Class A. Can they beat the system in a school where cutthroat competition is the name of the game?', 'Inglés', 3),
(8, 'Sword Art Online Progressive (Novela)', 'Sword Art Online Progressive', 4, 7, 3, 'Reki Kawahara', 'abec', 'Después de llegar al segundo piso de Aincrad, Asuna decide que un herrero controlado por un jugador mejore su espada, una rara Wind Fleuret, pero en el proceso sucede lo inimaginable, la espada se hace añicos ante sus ojos. Kirito sospecha que hay juego sucio y que el herrero le ha dado el cambiazo. ¿El herrero realmente acaba de destruir un artículo tan increíblemente valioso? Y si no, ¿hay alguna forma de recuperarlo? Y, si realmente hay una conspiración de ladrones, ¿cómo se le puede detener?', 'Español', 1),
(9, 'Yuna de la posada Yuragi', 'Yuragi-sō no Yūna-san', 5, 24, 10, 'Tadahiro Miura', 'Tadahiro Miura', 'Una historia desarrollada por Tadahiro Miura, llena de sensualidad y dulzura que tiene lugar en unas aguas termales encantadas de una antigua posada, habitadas por el fantasma de una atractiva joven.', 'Español', 1),
(10, 'Asa, El Ejecutor', 'Kubikiri Asa', 4, 10, 10, 'Kazuo Koike', 'Goseki Kojima', 'Antes de que Koike y Kojima crearan a Itto Ogami, habían creado a Kubikiri Asa, más conocido entre los lectores de ', 'Español', 3),
(11, 'Adolf (Nueva edición)', 'Adolf ni Tsugu', 4, 5, 3, 'Osamu Tezuka', 'Osamu Tezuka', 'Adolf es la historia de tres personas llamadas así: un niño judío que viven en Japón, un niño medio japonés medio alemán, y el líder de la Alemania nazi. Se trata de un punto de vista maravillosamente fresco de los acontecimientos de la Segunda Guerra Mundial. Un título imprescindible.', 'Español', 3),
(12, 'El Puño de la Estrella del Norte (Ultimate edition)', 'Hokuto no Ken', 4, 10, 18, 'Buronson / Shō Fumimura', 'Tetsuo Hara', 'Después de la Tercera Guerra Mundial, el mundo es un lugar desolado y hostil. El agua se ha convertido en el recurso más preciado y la fuerza, en la habilidad más necesaria, por eso los más fuertes dominan el mundo. Esto cambiará cuando el hombre conocido como «el puño de la Estrella Del Norte», heredero del arte marcial más poderosa jamás conocida, ayude a los indefensos pobladores a conseguir una vida más digna.', 'Español', 3),
(13, 'Vinland Saga', 'Vinland Saga', 4, 24, 23, 'Makoto Yukimura', 'Makoto Yukimura', 'Thors, es un gran guerrero vikingo que escapa de la brutal vida que llevaba para estar con su familia. Al ser descubierto, será perseguido por un mercenario y caerá junto a su tripulación en una trampa. A pesar de vencer a sus captores, Thors se sacrificará para que el resto de la expedición, incluido su hijo Thorfi nn, vivan. Entonces Thorfinn, hijo de Thors, jura vengarse. Askeladd le atrapa y lo une a su tripulación. Thorfinn, para ganarse el derecho de retar en duelo a Askeladd, debe ejecutar difíciles trabajos, como asesinar a generales enemigos.', 'Español', 3),
(14, 'Detective Conan: Detective en el mar lejano', 'Gekijō-ban Meitantei Conan Zekkai no Private Eye', 4, 1, 1, 'Takeharu Sakurai', 'TMS Entertainment, Ltd.', 'Conan, Ran, Sonoko, Kogoro y los niños embarcan en un destructor Aegis de la Fuerza Marina de Autodefensa como parte de unas maniobras abiertas al público. Durante un simulacro de combate aparece una embarcación sospechosa y encuentran un brazo humano de origen desconocido dentro del destructor. Cuando Conan avanza con la investigación, descubre la existencia de ', 'Español', 1),
(15, 'Detective Conan (Nueva edición)', 'Maitantei Conan', 4, 99, 64, 'Gosho Aoyama', 'Gosho Aoyama', 'Un día, mientras espera a su novia, Shinichi ve a unos hombres vestidos de negro. Su instinto le dice que traman algo y decide seguirles. Sus sospechas se confirman cuando es testigo de un crimen. Descubierto, es noqueado y forzado a beber una pócima. Cuando despierta descubre que se ha convertido en un niño y que para volver a su condición normal tiene que descubrir los ingredientes de la pócima.', 'Español', 1),
(16, 'Dragon Ball (Ultimate edition)', 'Dragon Ball', 4, 34, 34, 'Akira Toriyama', 'Akira Toriyama', 'Son Goku es un chico muy especial que, tras la muerte de su abuelo, vive solo en el bosque. Posee una fuerza prodigiosa y parece bastante satisfecho con su vida al aire libre hasta que conoce a Bulma, una niña pija que está buscando las Bolas de Dragón, siete esferas mágicas que, una vez reunidas, pueden conceder cualquier deseo. Casualmente, Goku posee una de ellas, la de cuatro estrellas, por lo que a Bulma le cuesta un poco convencerle de que se una a ella en su búsqueda... ¡Así empieza el manga más popular de todos los tiempos!', 'Español', 1),
(17, 'Dragon Ball Super', 'Dragon Ball Super', 4, 15, 10, 'Akira Toriyama', 'Toyotarō', 'Han pasado varios meses desde la formidable batalla entre Goku y el monstruo Bû... El mundo ha recuperado la paz, pero ¡¡una nueva amenaza se cierne ahora sobre él!!¿¡Esta vez, el enemigo llega desde el “sexto universo”!? ¡¡Empieza una nueva obra de Dragon Ball que, bajo las directrices originales de Akira Toriyama, retoma el hilo de la historia original!!', 'Español', 1),
(18, 'Insect Cage', 'Mishikago no Cagaster', 4, 7, 1, 'Kachō Hashimoto', 'Kachō Hashimoto', 'La historia habla de una Enfermedad llamada Cagaster,que convierte a la persona que la contrae en un insecto gigante, un exterminador llamado Kidow se encuentra un sobreviviente mal herido por un insecto,osea que ya estaba contagiado,este le pide a Kidow que lleve a su Hija Illie con su madre Tania,este acepta,la lleva a una taberna y luego empiezan las misiones de Kidow como exterminador y Illie como Camarera.', 'Español', 1),
(19, 'My Hero Academia', 'Boku no Hero Academia', 4, 30, 27, 'Kohei Horikoshi', 'Kohei Horikoshi', 'Estamos en un mundo donde abundan los superhéroes (y los supervillanos). Los mejores humanos son entrenados en la Academia de Héroes para optimizar sus poderes. Entre la minoría normal, sin poder alguno, aparece Izuku Midoriya, dispuesto a ser una excepción y formarse en la Academia para convertirse en un héroe.', 'Español', 1),
(21, 'Rin-ne', 'Kyoukai no Rinne', 4, 40, 35, 'Rumiko Takahashi', 'Rumiko Takahashi', 'Un buen día, Sakura Mamiya, una joven con el don de ver espíritus desde pequeña, conoce a Rin-ne Rokudô, un enigmático chico que hace de shinigami (dios de la muerte). ¡Este es el punto de partida de las increíbles vivencias de estos dos protagonistas que, al salir de clase, intentarán guiar hacia la rueda de la reencarnación a las almas perdidas de quienes han muerto con cuentas pendientes en este mundo! La historia, con el genial trazo de Takahashi, gira entorno a Sakura, una chica que puede ver a los espíritus. Su vida aún se vuelve más extraña cuando conoce a un misterioso y mágico compañero de clase que sólo ella puede ver.', 'Español', 1),
(22, 'Sword Art Online: Progressive (Manga)', 'Sword Art Online: Progressive (Manga)', 4, 7, 3, 'Reki Kawahara', 'Kiseki Himura', 'Al igual que otros diez mil jugadores, Yûki Asuna queda atrapada en la Fortaleza de Aincrad en el corazón del mundo virtual de Sword Art Online. Completamente inexperta, lucha por adaptarse a este nuevo mundo, pero pronto su voluntad de sobrevivir la empuja a luchar en primera línea. Ella se encuentra con Kirito, un misterioso y solitario jugador que está decidido a completar el juego. Asuna sigue a Kirito en su conquista de Aincrad, piso por piso.', 'Español', 1),
(23, 'Yakohama Station Fable', 'Yakohama Eki SF', 4, 1, 1, 'Yuba Isukari', 'Tatsuyuki Tanaka', 'En un futuro donde la estación de Yokohama cubra la mayor parte de la isla de Honshu, hay dos formas de vida: dentro y fuera de la estación. La vida dentro de la estación está estrictamente controlada, y aquellos que no siguen las reglas son expulsados ​​al mundo exterior más duro. Cuando uno de estos exiliados recibe un boleto temporal para ingresar a la estación, también se le encomienda la misión de encontrar al líder de un grupo decidido a liberar a la humanidad.', 'Español', 3),
(24, 'CardCaptor Sakura (Nueva edición)', 'Nakayoshi 60 Shuunen Kinen-ban CardCaptor Sakura', 3, 9, 6, 'CLAMP', 'CLAMP', 'Sakura Kinomoto es una alumna de primaria aparentemente normal que tras abrir un libro mágico se convierte en el cazadora de cartas, la única capaz de capturar y dominar a las cartas de Clow. Para ello cuenta con la ayuda de Kero-chan, el guardián de las cartas, así como de su amiga Tomoyo, que le prepara los modelitos más extremados y graba sus hazañas en vídeo. ¡Por fin en España la edición definitiva de este clásico moderno del manga!', 'Español', 2),
(25, 'Crimen Perfecto', 'Funouhan', 3, 12, 7, 'Arata Miyatsuki', 'Yuya Kanzaki', 'Un hombre muy misterioso, Tadashi Usobuki, ha sido visto en los escenarios de varios casos de muertes extrañas, pero nadie ha podido demostrar su implicación. Por esta razón, la gente lo conoce como el «criminal perfecto»... Se vale del rencor, la envidia, los deseos e incluso del amor de los depravados corazones de los que piden sus servicios para acabar con sus víctimas...', 'Español', 3),
(26, 'Héroes', 'Yūsha-tachi', 3, 1, 1, 'Inio Asano', 'Inio Asano', 'La historia nos narra las aventuras de unos héroes de lo más variopintos: una niña, una cucaracha parlante, un gato montado en una nave nodriza, un panda en bikini… ¡y muchos más! Su deber es derrotar a Tenebroso y emprender el camino de vuelta a casa, pero… ¡parece que por más que lo derroten, la historia vuelve a repetirse! Una comedia épica al más puro estilo Asano en la que se mofa del estereotipo manga de aventuras y toca varios temas como la discriminación, la hipocresía y el odio con una clara intención satírica.', 'Español', 3),
(27, 'Hinowa ga Crush!', 'Hinowa ga Crush!', 3, 6, 4, 'Takahiro', 'Strelka', 'Tras derrocar al imperio y embarcarse en un viaje en solitario, Akame alcanza las lejanas islas del país de Wakoku donde conoce a Hinowa, una chica que anhela la unificación de su país. Akame decide luchar a su lado al conocer sus anhelos y aprovechar para buscar una cura a su maldición...', 'Español', 1),
(28, 'Metamorfosis BL', 'Metamorphose no Engawa', 3, 5, 3, 'Kaori Tsurutani', 'Kaori Tsurutani', 'A sus 75 años, Ichinoi disfruta de una vida tranquila y placentera, aunque algo solitaria tras el fallecimiento de su esposo. Una tarde, entra en una librería y compra por impulso un manga debido a su bonita portada. ¡Lo que no imaginaba era que se trataba de un boys’ love, una historia de relaciones homosexuales masculinas! Pero lejos de escandalizarse, se emociona tanto que vuelve a por el segundo tomo...', 'Español', 2),
(29, 'Under Ninja', 'Under Ninja', 3, 5, 4, 'Kengo Hanazawa', 'Kengo Hanazawa', 'Incluso a día de hoy los ninja se camuflan entre la gente llevando a cabo misiones en secreto. A algunos les va mejor que a otros y Kurô Kumogakure, un ninja nini, se pasa los días bebiendo y haciendo el vago. Sin embargo, un día recibe una misión de un superior y su vida empieza a tomar un rumbo inesperado...', 'Español', 3),
(30, 'Black Clover', 'Black Clover', 3, 28, 19, 'Yuuki Tabata', 'Yuuki Tabata', 'En un mundo en el que la magia lo es todo, un pueblerino huérfano incapaz de usar ningún tipo de poder mágico pretende convertirse nada más y nada menos que en el rey de los magos. Y aunque todo el mundo lo toma por un loco frustrado con ideas de bombero, quizás acabe encontrando su oportunidad.', 'Español', 1),
(31, 'Chainsaw Man', 'Chainsaw Man', 3, 11, 5, 'Tatsuki Fujimoto', 'Tatsuki Fujimoto', 'Denji es un chico sin un duro que se deja la piel trabajando como Devil Hunter junto a su perro demoníaco Pochita para resarcir una deuda astronómica, pero entonces... ¡¡una sangrienta traición da un giro radical a su miserable vida!! Otra de las novedades de la Shônen Jump de Shueisha de manos de un viejo conocido de Norma, Tatsuki Fujimoto (Fire Punch), que estrena este nuevo trabajo con espectaculares combates repletos de violencia a borbotones. Este manga oscuro y muy particular es protagonizado por un tipo que es tan pobre que se ve en la situación de vender partes de su cuerpo para sobrevivir. Sin embargo, un día encuentra trabajo matando demonios con la ayuda de su perro-sierra mecánica.', 'Español', 1),
(32, 'Fairy Tail: 100 Years Quest', 'Fairy Tail: 100-Nen Quest', 3, 8, 5, 'Hiro Mashima', 'Atsuo Ueda', 'Natsu, Lucy, Happy y sus amigos han aceptado el desafío de la misión de los 100 años, un encargo legendario que nadie ha logrado realizar desde hace más de un siglo que se fundó el primer gremio de magos. Se adentrarán en una emocionante aventura en un nuevo continente en el que habitan un dios enigmático y un enemigo de lo más inquietante... ¡Empieza otra gran aventura de Fairy Tail que retoma el hilo desde el capítulo 545, donde se suponía que todo había concluido!', 'Español', 1),
(33, 'Final Fantasy: Lost Stranger', 'Final Fantasy: Lost Stranger', 3, 7, 4, 'Hazuki Minase', 'Itsuki Kameya', 'Shôgo Sasaki, un fanático seguidor de la saga Final Fantasy, dio el primer paso para conseguir su sueño cuando entró en Square Enix como diseñador de videojuegos. Su hermana Yûko siguió sus pasos y también trabaja en la misma empresa, y ambos se esfuerzan día a día para intentar ingresar en los equipos que desarrollan ese universo. Pero un viaje interdimensional pondrá a prueba sus conocimientos sobre ese mundo...', 'Español', 1),
(34, 'Guardianes de la Noche', 'Kimetsu no Yaiba', 3, 23, 21, 'Koyoharu Gotouge', 'Koyoharu Gotouge', 'Tanjirou Kamado es un chico alegre y trabajador que vive felizmente junto a su familia, hasta que un fatídico día un demonio llamado Muzan irrumpe en su vida matando a sus padres y maldice a su hermana pequeña convirtiéndola en demonio. Tras este incidente, y con el propósito de vengar a sus padres y devolver a su hermana Nezuko a la normalidad, decide convertirse en un asesino de demonios. Para ello, acude en ayuda de Sakonji Urokodaki, uno de los asesinos de demonios más fuertes del mundo... Entre samuráis, afiladas katanas, demonios y otros seres mitológicos del folclore japonés, este manga es una apuesta segura para los amantes del género.', 'Español', 1),
(35, 'Horimiya', 'Horimiya', 3, 16, 14, 'HERO', 'Daisuke Hagiwara', 'Kyôko es una alumna modélica y popular que al llegar a casa se convierte en una chica hogareña muy discreta. Miyamura, su compañero de clase, es un tipo del montón con cierto aire de friki que en sus ratos libres se transforma en un chico muy atractivo con piercings y mucho estilo. ¿Qué ocurriría si Izumi y Kyôko descubrieran la cara oculta el uno del otro?', 'Español', 1),
(36, 'Jujutsu Kaisen (Guerra de hechiceros)', 'Jujutsu Kaisen', 3, 17, 8, 'Gege Akutami', 'Gege Akutami', 'Yûji Itadori es un estudiante con unas habilidades físicas excepcionales. Todos los días, como rutina, va al hospital a visitar a su abuelo enfermo y decide apuntarse al club de ocultismo del instituto para no dar un palo al agua... Sin embargo, un buen día el sello del talismán que se hallaba escondido en su instituto se rompe, y comienzan a aparecer unos monstruos. Ante este giro de los acontecimientos, Itadori decide adentrarse en el instituto para salvar a sus compañeros. ¿Qué le deparará el destino?', 'Español', 1),
(37, 'La Heroica Leyenda de Arslan', 'Arslan Senki', 3, 14, 11, 'Hiromu Arakawa', 'Hiromu Arakawa', 'Arslan, el joven heredero del reino de Pars, se esfuerza en sus entrenamientos para ser un digno sucesor de su padre. Pero los enemigos de su reino atacan a traición y el joven príncipe deberá descubrir si tiene madera de líder...', 'Español', 1),
(38, 'Las Quintillizas', 'Go-tōbun no Hanayome', 3, 14, 7, 'Negi Haruba', 'Negi Haruba', 'Fûtarô Uesugi, un estudiante de bachillerato, lleva una vida de penurias económicas con su padre y su hermana pequeña… hasta que un día recibe la oportunidad de ser profesor particular, ¡y el sueldo no está nada mal! No obstante, resulta que sus alumnas son unas chicas de su mismo instituto y, por si fuera poco, ¡son quintillizas! Todas son muy guapas, pero detestan estudiar y están al borde del fracaso escolar… ¡¿Conseguirá Fûtarô guiarlas a todas en su arduo camino hasta la graduación?!', 'Español', 1),
(39, 'Mashle', 'Mashle', 3, 6, 1, 'Hajime Koumoto', 'Hajime Koumoto', 'Ambientada en un mundo mágico, que puede que os recuerde a cierto libro de J. K. Rowling, el estatus de los magos depende exclusivamente del poder que tengan. Mash Burnedead entrena día sí y día también, por lo que posee una fuerza sobrehumana… pero ni gota de magia. Pero cuando lo descubren solo tiene una salida: entrar en la Escuela de magia y convertirse en el mejor de entre todos los alumnos. Si lo que buscas es un soplo de aire fresco y echarte unas risas, ¡Mashle es el manga ideal para ti!', 'Español', 1),
(40, 'Platinum End', 'Platinum End', 3, 14, 12, 'Tsugumi Ohba', 'Takeshi Obata', 'La vida de Mirai Kakehashi es tan mísera que este, presa del desánimo por haber perdido a su familia y por ser acosado por sus tíos y sus compañeros de clase, decide suicidarse. Sin embargo, lo que debería ser su final se convertirá en un nuevo principio en el que tendrá la oportunidad de convertirse en el nuevo Dios... si consigue sobrevivir.', 'Español', 3),
(41, 'The Legend of Zelda: Twilight Princess', 'Zelda no Densetsu Twilight Princess', 3, 9, 8, 'Akira Himekawa', 'Akira Himekawa', 'Tras año y medio, Link ha conseguido ganarse el corazón de la aldea donde reside, pero vive con el miedo de que, algún día, sus nuevos amigos descubran su oscuro pasado. Las pesadillas le atormentan, ¿pero y si esos sueños no son simples pesadillas, sino que profetizan el retorno de los seres malignos?', 'Español', 1),
(42, 'The Seven Deadly Sins', 'Nanatsu no Taizai', 3, 41, 39, 'Nakaba Suzuki', 'Nakaba Suzuki', 'Todos saben que los Siete Pecados Capitales fueron unos rebeldes legendarios que conspiraron contra el reino, y por ello los Caballeros Sagrados aún los buscan tenazmente. Sin embargo hay una joven que intenta encontrarlos para que salven su reino...', 'Español', 1),
(45, 'Qué difícil es el amor para un otaku', 'Wotaku ni Koi wa Muzukashii', 7, 10, 8, 'Fujita', 'Fujita', 'Él, un gamer empedernido. Ella, una fujoshi. Ambos guardan sus secretos bajo su apariencia profesional. ¿Podrán mantener una relación sin revelarlos o sin que sus pasatiempos se interpongan entre ellos?', 'Español', 4),
(46, 'Doraemon (Edición a color)', 'Doraemon Color Sakuhinshuu', 4, 6, 6, 'Fujiko•F•Fujio', 'Fujiko•F•Fujio', 'Manga a color de Doraemon, centrado en las aventuras de un gato cósmico y su joven amigo humano. Juntos protagonizan mil peripecias llenas de humor y fantasía.', 'Español', 5),
(47, 'Rent a girlfriend', 'Kanojo, Okarishimasu', 2, 20, 3, 'Reiji Miyajima', 'Reiji Miyajima', 'Kazuya Kinoshita es un veinteañero universitario que es feliz con su novia, ¡a la que incluso ha llegado a besar! (¡Kyaaah, hentaiiii!) Pero cuando su chica lo deja de la noche a la mañana, le entra un gran bajón y encuentra su único consuelo en una app que te permite alquilar una novia. Y así llega a su vida Chizuru Mizuhara, una morena increíblemente preciosa, tanto que parece demasiado buena para ser real. Aunque las sospechas de que: “aquí hay gato encerrado” llevan al chico a no querer seguir con el jueguecito, su abuela acaba ingresada justo a tiempo para salvar la trama.', 'Español', 1),
(48, 'Shuumatsu no Valkyrie', 'Shuumatsu no Valkyrie', 2, 10, 5, 'Shinya Umemura, Takumi Fukui', 'Ajichika', '¡La humanidad está condenada! Los dioses de todas las religiones se reúnen cada 1.000 años en el Valhalla para decidir el destino de la raza humana. Esta vez la humanidad ha llegado demasiado lejos: guerras, contaminación, destrucción de la naturaleza… La decisión de los dioses está tomada, los humanos se extinguirán… Pero hay una última esperanza: las valkirias proponen que se active una antigua ley que permite el enfrentamiento de los dioses con los humanos más poderosos, el Ragnarök. Cada facción elegirá a sus 13 contendientes y tendrán que enfrentarse en un desigual combate que sólo puede tener un ganador y que se decidirá al mejor de siete. Mientras que los dioses contarán en sus filas con seres de la talla de Zeus, Anubis, Shiva o Thor, los humanos tendrán entre sus defensores a Rasputin, Leónidas, Kojiro Sasaki o Jack el Destripador, entre otros. Aunque los dioses se burlen de sus débiles contrincantes, la astucia humana y la ayuda de las valkirias permitirá unos combates de lo más brutales y sorprendentes.', 'Español', 1),
(49, 'The Promised Neverland: La carta de Norma', 'Yakusoku no Neverland: Norman kara no Tegami', 3, 1, 1, 'Nanao', 'Posuka Demizu', 'Ya tenemos aquí la primera novela ligera del aclamado manga creado por Kaiu Shirai y Posuka Demizu. La historia que nos narra transcurre la tarde antes del duodécimo cumpleaños de Norman, mientras este escribe su plan de fuga del orfanato Grace Field en la carta que luego entregará a Ray y Emma. Sentado junto a la joven e inocente Yvette y ante su inminente marcha del orfanato, Norman no puede evitar recordar algunos de los momentos más emotivos que ha vivido en la casa junto a sus hermanos, cuando todavía desconocían la fatídica “verdad”.', 'Español', 1),
(50, 'The Promised Neverland: La balada de los recuerdos de las madres', 'Mama-tachi no Tsuisōkyoku', 3, 1, 1, 'Nanao', 'Posuka Demizu', 'Llega la segunda novela ligera del exitoso manga The Promised Neverland, de la mano de Posuka Demizu y Kaiu Shirai. En esta ocasión, la historia se divide en dos partes. La primera se narra desde la perspectiva de Izabella y transcurre a partir de los acontecimientos que se suceden tras la huida de Emma, Ray y los demás niños de Grace Field House. La segunda nos presenta a Krone, y gracias a ella saldrán a la luz algunos de los secretos más oscuros sobre las madres… ¡Una novela indispensable para los fans d e la saga!', 'Español', 1),
(51, 'Haikyū!!', 'Haikyuu!!', 4, 45, 2, 'Harauchi Furudate', 'Harauchi Furudate', '¡¡Puedo saltar!! A Shôyô Hinata le fascina el vóleibol, así que, en la escuela media, participa su primer y último partido oficial de la temporada. Sin embargo, sufre una derrota aplastante a manos de la joven promesa Tobio Kageyama, apodado el “Rey de la cancha”. Así pues, ¡Hinata jura vengarse y solicita plaza para entrar en el Club de vóleibol de la escuela superior Karasuno!', 'Español', 1),
(52, 'Komi-san no puede comunicarse', 'Komi-san wa Komyushou Desu', 2, 20, 10, 'Tomohito Oda', 'Tomohito Oda', 'Hitohito Tadano acaba de empezar bachillerato anhelando que sea un período de paz y tranquilidad, pero sus planes se truncan cuando acaba sentado al lado de la perfecta Shoko Komi. Ella es guapa, inteligente, educada y hasta huele bien. Pero tiene 0 dotes sociales y no sabe cómo narices comunicarse con los demás. Es ahí cuando Tadano decide tomar cartas en el asunto y se propone ayudar a su compañera hasta que consiga cien amigos, y con suerte algo más.', 'Español', 1),
(86, 'Edens Zero', 'Edens Zero (エデンズゼロ)', 3, 16, 16, 'Hiro Mashima', 'Hiro Mashima', '¡LO NUEVO DEL AUTOR DE FAIRY TAIL EN UNA OFERTA IRREPETIBLE!\n\nShiki es un joven humano que vive rodeado de máquinas en Granbell, el reino de los sueños. Su existencia era de lo más feliz hasta que Rebecca y Happy, una chica y su gato parlante de color azul, llegan a su planeta en uno de sus viajes grabando vídeos para las plataformas de streaming.\n\nPronto se hacen amigos... ¡y ese encuentro cambiará sus vidas para siempre!', 'Español', 1),
(107, 'The Seven Deadly Sins (Especial)', 'Nanatsu no Taizai (七つの大罪) / The Seven Deadly Sins', 3, 41, 1, 'Nakaba Suzuki', 'Nakaba Suzuki', '¡EL MANGA MÁS ESPERADO! FANTASÍA HEROICA, AVENTURAS Y HUMOR EN ESTADO PURO\n\nTodos saben que los Siete Pecados Capitales fueron unos rebeldes legendarios que conspiraron contra el reino, y por ello los Caballeros Sagrados aún los buscan tenazmente. Sin embargo hay una joven que intenta encontrarlos para que salven su reino...', 'Español', 1),
(108, 'Keroro (Comic-books)', 'Keroro Gunsō (ケロロ軍曹)', 3, 31, 6, 'Mine Yoshizaki', 'Mine Yoshizaki', 'NUESTRO PLANETA ESTÁ A PUNTO DE SER INVADIDO... ¡POR UN EJÉRCITO DE RANAS!\n\nLlega la serie de humor que está arrasando actualmente en Japón y se ha convertido en un fenómeno de masas como DORAEMON y SHIN CHAN. El sargento Keroro es un temible alienígena de color verde con aspecto de rana que comanda todo un ejército dispuesto a invadir la Tierra... ¡La serie de manga más divertida que encontrarás!\n\nKERORO viene avalada también por el éxito de versión animada. La serie de TV, de la que se han producido 126 episodios hasta la fecha, es uno de los mayores éxitos actuales de la TV japonesa, por lo que se ha creado un sinfín de productos derivados, dos largometrajes y toda una legión de seguidores incondicionales.', 'Español', 1),
(113, 'La Balada del Viento y los Árboles', 'Kaze to Ki no Uta (風と木の詩)', 6, 10, 10, 'Keiko Takemiya', 'Keiko Takemiya', 'Arlés, finales del siglo XIX.\n\nSerge Battour es el hijo de un rico vizconde y una hermosa gitana y, pese a su talento académico y carácter bondadoso y gentil, sufre el desprecio de sus iguales debido al color de su piel.\n\nMientras estudia en la prestigiosa Academia Lacombrade, se siente fascinado a la par que atraído por su compañero de habitación Gilbert Cocteau, un muchacho de gran belleza y aspecto angelical pero de naturaleza promiscua, convertido en el juguete de su manipulador tío Auguste.\n\nAlrededor de Serge y Gilbert se manifiestan los vicios y pecados de la sociedad clasista, racista y homófoba en la que les ha tocado vivir.', 'Español', 1),
(114, '21st Century Boys', '21 Seiki Shōnen (21世紀少年) / Nijyu Isseiki Shōnen', 4, 2, 2, 'Naoki Urasawa', 'Naoki Urasawa', 'La historia de Amigo y todos sus compañeros emprende la recta final en esta serie limitada de dos volúmenes, en la que todas las dudas y enigmas que han rodeado a los 20th Century Boys se resolverán. Naoki Urusawa nos ofrece la conclusión de su opera magna, una serie de culto que ha cosechado éxitos de crítica y público por igual.', 'Español', 1),
(115, 'Karin', 'Karin (かりん)', 4, 14, 14, 'Yuna Kasegaki', 'Yuna Kasegaki', '¿Conoces a Karin? Es una pequeña vampiro, pero no una vampiro como los que conoces, ya que ella en lugar de tener que beber sangre la produce... ¡y tiene que sacársela de encima como sea antes de que empiece a brotarle de la nariz! Pero cuando Karin, que quiere llevar la vida normal de cualquier vampiro adolescente, se enamora, deseará dejar de ser un vampiro para siempre. Una nueva forma de mirar el mundo de la noche, de los monstruos, y de las criaturas de la oscuridad, lleno de diversión, amor y aventura.', 'Español', 1),
(116, 'Team Medical Dragon', 'Iryū -Team Medical Dragon- (医龍-Team Medical Dragon-)', 4, 25, 4, 'Akira Nagai', 'Taro Nogizaka', '¡La línea Pachinco presenta Team Medical Dragon, uno de los mangas de médicos más elogiados de los últimos tiempos! Este nuevo Seinen presenta a Asada Ryurato, uno de los mejores cirujanos del país, en sus intervenciones diarias, mostrando así los problemas de un hospital y los tejemanejes políticos y burocráticos que hacen funcionar un hospital en Japón con una crudeza y realismo pocas veces visto. Team Medical Dragon es creación de Akira Nagai, supervisor del OVA de Black Jack (de Osamu Tezuka) y ha ganado el premio Shogakukan de 2005 al mejor manga.', 'Español', 1),
(117, 'Kamikaze Kaito Jeanne (Ultimate Edition)', 'Kamikaze Kaito Jeanne (神風怪盗ジャンヌ)', 4, 6, 6, 'Arina Tanemura', 'Arina Tanemura', 'Maron es una chica normal en apariencia, si no fuera porque convive con un ángel y porque es capaz de transformarse en Kamikaze Kaito Jeanne, una ladrona de guante blanco buscadísima por la policía. Con este punto de partida, Arina Tanemura nos presenta este shojo de magical girls repleto de misterios, romances y aventuras.', 'Español', 1),
(118, 'Hana-Kimi, For you in Full Blossom', 'Hanazakari no Kimitachi E (花ざかりの君たちへ)', 4, 23, 3, 'Hisaya Nakajo', 'Hisaya Nakajo', 'Hana-Kimi, uno de los shojos más esperados del momento, se convierte en uno de los lanzamientos más esperados de este año en el catálogo de Planeta DeAgostini Cómics. En él, la protagonista Mizuki Ashiya parte en busca de su ídolo, Sano Izumi. El problema es que para ello mentirá sobre su identidad y hasta se hará pasar por un chico con tal de ingresar en el colegio (solo para chicos) donde estudia Izumi. ¡Los malentendidos no se harán esperar!', 'Español', 1),
(119, 'I\'\'s (Tomos)', 'I\'\'s (アイズ)', 4, 15, 15, 'Masakazu Katsura', 'Masakazu Katsura', 'Seto Ichitaka es un estudiante de segundo año de instituto. Es elegido miembro del comité durante una fiesta de bienvenida a la que va con su compañera Yoshizuki Iori, a quien ama en secreto. Empiezan a intimar e Ichitaka invita a Iori a su habitación. De pronto, aparece una chica vestida solo con lencería y...', 'Español', 1),
(140, 'One Piece (Tomos)', 'One Piece (ワンピース)', 4, 101, 101, 'Eiichiro Oda', 'Eiichiro Oda', 'Cuando tenía 7 años, Monkey D. Luffy se comió accidentalmente una mítica Fruta del Diablo, lo que le convirtió en un hombre elástico. Pero tuvo que pagar un precio muy alto: es incapaz de nadar, ya que al entrar en contacto con el agua Monkey se solidifica. Una década después, con 17 años, Luffy pretende seguir la estela de su admirado pirata Shanks Akagami y sale al mar para encontrar el legendario tesoro One Piece. Si lo consigue, llegará a ser el Rey de los Piratas.\n\nRegresa por fin a España One Piece, ahora en formato tomo, con sobrecubiertas y en su sentido de lectura original.\n\nSigue las aventuras de Monkey D. Luffy, un chico que sueña con ser el rey de los piratas y que se hace a la mar en un bote para buscar la tripulación que le pueda ayudar en ello.\n\nLa serie más entretenida de televisión, ahora también en manga.', 'Español', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `comentario` text NOT NULL,
  `usuario` int(11) NOT NULL,
  `colID` int(11) NOT NULL,
  `volnum` varchar(50) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `editado` tinyint(1) NOT NULL,
  `replyID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `comentario`, `usuario`, `colID`, `volnum`, `username`, `fecha`, `editado`, `replyID`) VALUES
(22, 'En fin... ¡Ya funciona todo, bieeeeeeeeeeneeeee!', 1, 3, '0', 'Keph', '2021-05-05 10:17:35', 1, 0),
(25, 'A ver qué nos depara... ¡De momento buenísima pinta! La seguiré comprando.', 2, 3, '0', 'Carlos', '2021-05-06 10:17:35', 1, 0),
(26, 'Muy chula, ¡la recomiendo ^^!', 2, 3, '0', 'Carlos', '2021-05-06 10:17:35', 0, 0),
(31, '¡Muy chula la novela, por fin se centran en el arco de Aincrad!', 2, 8, '0', 'Carlos', '2021-05-06 10:17:35', 0, 0),
(32, 'Quintis for the win!', 2, 38, '0', 'Carlos', '2021-05-06 10:17:35', 1, 0),
(33, 'Una mezcla del Hombre del único puñetazo con Harry Potter única y muy divertida.', 1, 39, '0', 'Keph', '2021-05-06 10:17:35', 1, 0),
(42, 'Ji, ji...', 1, 3, '0', 'Keph', '2021-05-06 10:17:35', 0, 0),
(43, 'Retruécanos.', 1, 3, '0', 'Keph', '2021-05-06 10:17:35', 0, 0),
(64, 'Rayos y centellas.', 1, 3, '0', 'Keph', '2021-06-26 13:04:34', 1, 43),
(67, '+1', 1, 3, '0', 'Keph', '2021-06-26 13:05:12', 1, 26),
(68, '¿Qué os ha parecido?', 1, 3, '0', 'Keph', '2021-06-26 13:05:43', 1, 0),
(69, 'Un poco meh, pero pinta interesante.', 1, 3, '0', 'Keph', '2021-06-26 13:07:32', 1, 68),
(70, 'A mí me ha molado, aunque un poco peepoClown el Ryuen ese.', 1, 3, '0', 'Keph', '2021-06-26 13:31:21', 1, 68),
(71, 'No le digas eso, hombreeee.', 1, 3, '0', 'Keph', '2021-06-26 13:33:04', 1, 70),
(73, 'Por tu tatis.', 1, 3, '0', 'Keph', '2021-06-26 13:42:28', 0, 64),
(74, 'De acuerdo con el de abajo.', 1, 3, '0', 'Keph', '2021-06-26 13:45:55', 0, 0),
(75, 'De acuerdo con el de arriba.', 1, 3, '0', 'Keph', '2021-06-26 13:46:09', 0, 74),
(76, 'Primero.', 1, 9, '0', 'Keph', '2021-06-26 13:50:36', 0, 0),
(78, 'Y yo con el del medio, KEKW.', 3, 3, '0', 'Juan', '2021-06-26 13:58:55', 0, 75),
(104, '¡A ver si sale ya!', 1, 3, '8', 'Keph', '2021-06-26 16:33:57', 0, 0),
(107, 'De locos, la verdad...', 1, 3, '7', 'Keph', '2021-06-26 19:47:41', 0, 0),
(108, 'Muy buen comienzo.', 1, 3, '1', 'Keph', '2021-06-26 19:49:31', 1, 0),
(109, 'Un inútil el prota, pero para eso están las waifus.', 1, 47, '', 'Keph', '2021-06-26 19:50:43', 0, 0),
(110, 'Pues eso, las quintis :D. Grande Norma por traerla.', 1, 38, '1', 'Keph', '2021-06-26 19:51:27', 1, 0),
(111, '¡Ha costado, pero al final ha llegado!', 1, 51, '', 'Keph', '2021-06-29 11:11:44', 1, 0),
(112, 'Cómo va a caer, es que no veas...', 1, 51, '1', 'Keph', '2021-06-29 11:11:59', 1, 0),
(113, '¿Holaa?', 1, 3, '', 'Keph', '2021-07-02 17:49:17', 1, 0),
(114, 'Ufff...', 1, 3, '1', 'Keph', '2021-06-02 17:54:41', 1, 0),
(115, 'Cagaste, bro.', 1, 51, '', 'Keph', '2021-07-18 17:51:59', 0, 111),
(116, 'Volviste a cagar, bro.', 1, 51, '', 'Keph', '2021-07-18 17:52:16', 0, 111);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `demografias`
--

CREATE TABLE `demografias` (
  `demoID` int(11) NOT NULL,
  `demografia` char(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `demografias`
--

INSERT INTO `demografias` (`demoID`, `demografia`) VALUES
(1, 'Shonen'),
(2, 'Shojo'),
(3, 'Seinen'),
(4, 'Josei'),
(5, 'Kodomo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editoriales`
--

CREATE TABLE `editoriales` (
  `ID` int(11) NOT NULL,
  `editorial` char(100) NOT NULL,
  `logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `editoriales`
--

INSERT INTO `editoriales` (`ID`, `editorial`, `logo`) VALUES
(1, 'Seven Seas', 'logo_seven.jpg'),
(2, 'Editorial Ivrea', 'logo_ivrea.png'),
(3, 'NORMA Editorial', 'logo_norma.svg'),
(4, 'Planeta Cómic', 'logo_planeta.png'),
(5, 'Panini Cómics', 'logo_panini.png'),
(6, 'Milky Way Ediciones', 'logo_milky.png'),
(7, 'ECC', 'logo_ecc.png'),
(8, 'Tomodomo Ediciones', ''),
(9, 'Fandogamia', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mangas`
--

CREATE TABLE `mangas` (
  `ID` int(11) NOT NULL,
  `coleccion` smallint(6) NOT NULL,
  `volumen` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `fecha` date NOT NULL,
  `paginas` int(11) NOT NULL,
  `portada` text NOT NULL,
  `ed_especial` tinyint(1) NOT NULL,
  `esnovela` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `mangas`
--

INSERT INTO `mangas` (`ID`, `coleccion`, `volumen`, `precio`, `fecha`, `paginas`, `portada`, `ed_especial`, `esnovela`) VALUES
(1, 1, '1', 8, '2018-04-12', 192, 'b26645589256623e90c02dae064861e63234fb85.jpeg', 0, 0),
(75, 3, '1', 13.99, '2019-02-07', 320, 'Classroom-of-the-Elite-1-coverFRONT.jpg', 0, 1),
(76, 1, '2', 8, '2018-06-22', 192, '26851c22a53e9aee94534a364e25a36f214f33c0 (1).jpeg', 0, 0),
(77, 1, '3', 8, '2018-08-24', 200, 'ea87a7838821656f6aeba9aa453c733b392c27b6.jpeg', 0, 0),
(78, 1, '4', 8, '2018-10-31', 192, '114e20fef879e93a96e804420e5a2c4cd9a8afff.jpeg', 0, 0),
(79, 1, '5', 8, '2019-01-25', 200, '97ccb09b7eaf1e3cbd003b2cf6b2c5f26952aaac.jpeg', 0, 0),
(80, 1, '6', 8, '2019-03-22', 196, 'a0eaf713c81281ddb77b4c7d2dcaedff02d08f10.jpeg', 0, 0),
(81, 1, '7', 8, '2019-05-24', 192, 'd16ef9b4f443e15d4196004f408a1dc8d725ee91.jpeg', 0, 0),
(82, 1, '8', 8, '2019-07-26', 192, '684fb7de20f13ca939a21218cef5db93c33a30e0.jpeg', 0, 0),
(83, 1, '9', 8, '2019-09-27', 192, '0754de7b5f7c17724600097f937a97a9443452ab.jpeg', 0, 0),
(84, 1, '10', 8, '2020-02-07', 192, '90866e594a726da0c04fa5488cbbd0472b564eb8.jpeg', 0, 0),
(85, 1, '11', 8, '2020-05-15', 200, '31be96947b74802381003f82fffcb4b86f14a109.jpeg', 0, 0),
(86, 1, '12', 8, '2020-07-17', 188, '6fa3dec7c9b38bc1ee8d86b0b9490e103ebf978a.jpeg', 0, 0),
(87, 1, '13', 8, '2020-09-04', 192, '255b4ec9a76644869261192008bd7f4855d43ea7.jpeg', 0, 0),
(88, 1, '13', 12.95, '2020-09-04', 192, '4a75649d90ec56faa6808ae87c51bf6e24980ddc.jpeg', 1, 0),
(89, 1, '14', 8, '2020-10-09', 192, '70f7058db82060ee349815c0a3be444b2a0c9798.jpeg', 0, 0),
(90, 1, '15', 8, '2020-11-13', 188, '895cbf7ef942bf45b3853ca3797298c5ca230426.jpeg', 0, 0),
(91, 1, '16', 8, '2020-12-11', 204, '0b9f9bb937b6e05b4a28455daf40d0628d576d2c.jpeg', 0, 0),
(92, 1, '17', 8, '2021-03-05', 188, 'f4f01bb723cd34b4ad0d6e88c1579ee0af549982.jpeg', 0, 0),
(93, 1, '18', 8, '2021-04-09', 200, '087828c5cc6e44bd4fd28310339e766f2eed1385.jpeg', 0, 0),
(94, 1, '19', 8, '2021-05-14', 212, '40f2262d9e1909eeeef7f6e6c87f1bc05b93b0a9.jpeg', 0, 0),
(95, 7, '7', 12, '2021-05-06', 300, 'jojo-s-bizarre-adventure-parte-06-stone-ocean-7-20210501010034.jpg', 0, 0),
(96, 8, '1', 20, '2020-11-17', 512, 'portada_sword-art-online-progressive-novela-n-0106_reki-kawahara_202003041204.jpg', 0, 1),
(97, 9, '10', 8, '2021-06-23', 200, 'sghos010_0_1 (1).jpg', 0, 0),
(98, 12, '11', 13.99, '2021-07-07', 304, 'portada_el-puno-de-la-estrella-del-norte-hokuto-no-ken-n-1118_tetsuo-hara_202103251523.jpeg', 0, 0),
(117, 3, '2', 13.99, '2019-05-16', 320, 'Classroom-of-the-Elite-2-coverFRONT.jpg', 0, 1),
(118, 3, '3', 13.99, '2019-07-18', 320, 'Classroom-of-the-Elite-3-cover-FRONT.jpg', 0, 1),
(119, 3, '4', 13.99, '2019-11-21', 320, 'Classroom-of-the-Elite-4-coverFRONT.jpg', 0, 1),
(120, 3, '4.5', 13.99, '2020-02-06', 320, 'Classroom-of-the-Elite-4p5-coverFRONT.jpg', 0, 1),
(125, 3, '7.5', 13.99, '2021-02-04', 320, 'Classroom-of-the-Elite-7p5-coverFRONT.jpg', 0, 1),
(126, 3, '8', 13.99, '2021-05-27', 320, 'Classroom-of-the-Elite-8-coverFRONT.jpg', 0, 1),
(127, 3, '6', 13.99, '2020-07-23', 320, 'Classroom-of-the-Elite-6-coverFRONT (1).jpg', 0, 1),
(128, 3, '5', 13.99, '2020-05-14', 320, 'classroomoftheelite5-coverFRONT (1).jpg', 0, 1),
(129, 3, '7', 13.99, '2020-10-29', 320, 'Classroom-of-the-Elite-7-coverFRONT (1).jpg', 0, 1),
(130, 22, '1', 8.95, '2020-06-23', 184, 'portada_sword-art-online-progressive-manga-n-0107__202001091216.jpg', 0, 0),
(131, 22, '2', 8.95, '2021-01-27', 184, 'portada_sword-art-online-progressive-manga-n-0207__202009291101.jpg', 0, 0),
(132, 22, '3', 8.95, '2021-05-19', 184, 'portada_sword-art-online-progressive-n-0307__202101211059 (1).jpg', 0, 0),
(133, 8, '3', 20, '2021-06-16', 392, 'portada_sword-art-online-progressive-n-0306-novela__202102241327.jpg', 0, 1),
(134, 8, '2', 20, '2021-04-14', 512, 'portada_sword-art-online-progressiven-0206-novela_reki-kawahara_202012161536.jpg', 0, 1),
(135, 9, '2', 7.95, '2019-12-19', 192, 'SGHOS002_0.jpg', 0, 0),
(136, 9, '3', 7.95, '2020-02-27', 192, 'SGHOS003_0.jpg', 0, 0),
(137, 9, '4', 7.95, '2020-06-25', 192, 'SGHOS004_0.jpg', 0, 0),
(138, 9, '7', 7.95, '2020-12-17', 192, 'sghos007.jpg', 0, 0),
(139, 9, '8', 7.95, '2021-02-25', 192, 'sghos008_1.jpg', 0, 0),
(140, 9, '9', 7.95, '2021-04-22', 192, 'sghos009_1.jpg', 0, 0),
(141, 9, '1', 7.95, '2019-10-24', 192, 'sghos001_0_1.jpg', 0, 0),
(142, 9, '5', 7.95, '2020-08-27', 192, 'sghos005_0_1.jpg', 0, 0),
(143, 9, '6', 7.95, '2020-10-22', 192, 'sghos006_0_1.jpg', 0, 0),
(144, 10, '1', 11.95, '2021-01-27', 350, 'portada_asa-el-ejecutor-n-0110-nueva-edicion_goseki-kojima_202010071211.jpg', 0, 0),
(145, 10, '2', 11.95, '2021-01-27', 350, 'portada_asa-el-ejecutor-n-0210-nueva-edicion_goseki-kojima_202010071214.jpg', 0, 0),
(146, 10, '3', 11.95, '2021-02-24', 350, 'portada_asa-el-ejecutor-n-0310_goseki-kojima_202011110922.jpg', 0, 0),
(147, 10, '4', 11.95, '2021-02-24', 350, 'portada_asa-el-ejecutor-n-0410_goseki-kojima_202011110925.jpg', 0, 0),
(148, 10, '5', 11.95, '2021-03-24', 336, 'portada_asa-el-ejecutor-n-0510_goseki-kojima_202011271149.jpg', 0, 0),
(149, 10, '6', 11.95, '2021-03-24', 336, 'portada_asa-el-ejecutor-n-0610_goseki-kojima_202011271153.jpg', 0, 0),
(150, 10, '7', 11.95, '2021-04-14', 336, 'portada_asa-el-ejecutor-n-0710_goseki-kojima_202101071312.jpg', 0, 0),
(151, 10, '8', 11.95, '2021-04-14', 336, 'portada_asa-el-ejecutor-n-0810_goseki-kojima_202101071314.jpg', 0, 0),
(152, 10, '10', 11.95, '2021-05-19', 320, 'portada_asa-el-ejecutor-n-1010_goseki-kojima_202102051140.jpg', 0, 0),
(153, 10, '9', 11.95, '2021-05-19', 320, 'portada_asa-el-ejecutor-n-0910_goseki-kojima_202102051137.jpg', 0, 0),
(154, 11, '1', 8.95, '2020-10-20', 232, 'portada_adolf-edicion-tankobon-n-0105_osamu-tezuka_202007101200.jpg', 0, 0),
(155, 11, '4', 8.95, '2021-07-07', 240, 'portada_adolf-tankobon-n-0405_osamu-tezuka_202104061225.jpg', 0, 0),
(156, 11, '3', 8.95, '2021-05-19', 272, 'portada_adolf-tankobon-n-0305_osamu-tezuka_202101211210.jpg', 0, 0),
(157, 11, '2', 8.95, '2021-02-24', 248, 'portada_adolf-tankobon-n-0205_osamu-tezuka_202010281040.jpg', 0, 0),
(158, 12, '2', 12.95, '2019-07-02', 304, 'portada_el-puno-de-la-estrella-del-norte-n-0218_aa-vv_201904101117.jpg', 0, 0),
(159, 12, '3', 12.95, '2019-10-15', 304, 'portada_el-puno-de-la-estrella-del-norte-hokuto-no-ken-n-0318__201906041141.jpg', 0, 0),
(160, 12, '1', 12.95, '2019-04-20', 304, 'portada_el-puno-de-la-estrella-del-norte-n-0118__201901161318.jpg', 0, 0),
(161, 12, '6', 12.95, '2020-07-14', 290, 'portada_el-puno-de-la-estrella-del-norte-hokuto-no-ken-n-0618_tetsuo-hara_202004271132.jpg', 0, 0),
(162, 12, '4', 12.95, '2020-02-18', 298, 'portada_el-puno-de-la-estrella-del-norte-hokuto-no-ken-n-0418__201911081314.jpg', 0, 0),
(163, 12, '8', 12.95, '2020-11-10', 312, 'portada_el-puno-de-la-estrella-del-norte-hokuto-no-ken-n-0818_tetsuo-hara_202007201258.jpg', 0, 0),
(164, 12, '9', 12.95, '2021-02-24', 312, 'portada_el-puno-de-la-estrella-del-norte-hokuto-no-ken-n-0918_tetsuo-hara_202011041533.jpg', 0, 0),
(165, 12, '10', 12.95, '2021-05-19', 312, 'portada_el-puno-de-la-estrella-del-norte-hokuto-no-ken-n-1018_tetsuo-hara_202101271122.jpg', 0, 0),
(168, 12, '7', 12.95, '2020-09-22', 306, 'portada_el-puno-de-la-estrella-del-norte-hokuto-no-ken-n-0718_tetsuo-hara_202006051058.jpg', 0, 0),
(169, 12, '5', 12.95, '2020-06-23', 282, 'portada_el-puno-de-la-estrella-del-norte-hokuto-no-ken-n-0518_tetsuo-hara_202002101222.jpg', 0, 0),
(170, 13, '3', 12.95, '2015-02-01', 220, 'portada_vinland-saga-n03_daruma_201412190957.jpg', 0, 0),
(171, 13, '1', 12.95, '2014-10-01', 220, 'vinland-saga-n01_9788416051816.jpg', 0, 0),
(172, 13, '2', 12.95, '2014-12-01', 232, 'vinland-saga-n02_9788416090266.jpg', 0, 0),
(173, 13, '5', 12.95, '2015-06-01', 192, 'portada_vinland-saga-n-05_daruma_201504241328.jpg', 0, 0),
(174, 13, '6', 12.95, '2015-10-01', 228, 'portada_vinland-saga-n-06_makoto-yukimura_201508311605.jpg', 0, 0),
(175, 13, '4', 12.95, '2015-04-01', 216, 'portada_vinland-saga-n-04_daruma_201502231730.jpg', 0, 0),
(176, 13, '7', 12.95, '2016-01-12', 208, 'portada_vinland-saga-n-07_makoto-yukimura_201512101554.jpg', 0, 0),
(177, 13, '8', 12.95, '2016-03-01', 212, 'portada_vinland-saga-n-08_makoto-yukimura_201601181546.jpg', 0, 0),
(178, 13, '9', 12.95, '2016-04-28', 208, 'portada_vinland-saga-n-09_makoto-yukimura_201604051642.jpg', 0, 0),
(179, 13, '11', 12.95, '2016-10-04', 224, 'portada___201606131254.jpg', 0, 0),
(180, 13, '13', 12.95, '2017-04-11', 192, 'portada_vinland-saga-n-13_makoto-yukimura_201701161354.jpg', 0, 0),
(181, 13, '14', 12.95, '2017-07-24', 200, 'portada___201703201511.jpg', 0, 0),
(182, 13, '15', 12.95, '2017-10-03', 192, 'portada___201705301535.jpg', 0, 0),
(183, 13, '17', 12.95, '2018-01-23', 208, 'portada___201710091038.jpg', 0, 0),
(184, 13, '20', 12.95, '2019-10-08', 192, 'portada_vinland-saga-n-20_makoto-yukimura_201906060959.jpg', 0, 0),
(185, 13, '18', 12.95, '2018-05-24', 192, 'portada_vinland-saga-n-18_makoto-yukimura_201804251345.jpg', 0, 0),
(186, 13, '12', 12.95, '2017-01-24', 224, 'portada_vinland-saga-n-12_makoto-yukimura_201611291804.jpg', 0, 0),
(187, 13, '16', 12.95, '2017-11-28', 192, 'portada_vinland-saga-n-16_makoto-yukimura_201710271358.jpg', 0, 0),
(188, 13, '10', 12.95, '2016-07-05', 224, 'portada_vinland-saga-n-10_makoto-yukimura_201605251706.jpg', 0, 0),
(189, 13, '22', 12.95, '2020-11-17', 192, 'portada_vinland-saga-n-22_makoto-yukimura_202007201234.jpg', 0, 0),
(190, 13, '23', 12.95, '2021-05-19', 192, 'portada_vinland-saga-n-23_makoto-yukimura_202102021557.jpg', 0, 0),
(191, 13, '21', 12.95, '2020-01-23', 192, 'portada_vinland-saga-n-20_makoto-yukimura_201906060959.jpg', 0, 0),
(192, 13, '19', 12.95, '2019-01-22', 208, 'portada_vinland-saga-n-19_makoto-yukimura_201810031252.jpg', 0, 0),
(193, 14, '1', 16.95, '2021-05-19', 408, 'portada_detective-conan-anime-comic-n-03_gosho-aoyama_202101271521.jpg', 0, 0),
(194, 15, '2', 11.95, '2011-11-01', 360, 'detective-conan-nueva-edicion-n2_9788468475691.jpg', 0, 0),
(195, 15, '1', 11.95, '2011-10-01', 360, 'detective-conan-nueva-edicion-n1_9788468475684.jpg', 0, 0),
(196, 15, '3', 11.95, '2012-02-01', 360, 'detective-conan-n3-nueva-edicion_9788468477015.jpg', 0, 0),
(197, 15, '4', 11.95, '2012-04-01', 360, 'portada_detective-conan-n-04-nueva-edicion_gosho-aoyama_201706021320.jpg', 0, 0),
(198, 15, '5', 11.95, '2012-06-01', 360, 'detective-conan-n5-nueva-edicion_9788468477039.jpg', 0, 0),
(199, 15, '6', 11.95, '2013-08-01', 360, 'portada_detective-conan-n-06-nueva-edicion_gosho-aoyama_201705231147.jpg', 0, 0),
(200, 15, '7', 11.95, '2012-10-01', 360, 'detective-conan-new-edition-n-07_9788468477053.jpg', 0, 0),
(201, 15, '8', 11.95, '2014-06-01', 360, 'portada_detective-conan-n-08_gosho-aoyama_202012041324.jpg', 0, 0),
(202, 15, '9', 11.95, '2014-12-01', 360, 'portada_detective-conan-nueva-edicion-n-09_daruma_201502201003.jpg', 0, 0),
(203, 15, '10', 11.95, '2015-05-01', 360, 'portada_detective-conan-nueva-edicion-n-10_gosho-aoyama_201502161318.jpg', 0, 0),
(204, 15, '13', 11.95, '2015-12-01', 360, 'portada_detective-conan-nueva-edicion-n-13_gosho-aoyama_201510271156.jpg', 0, 0),
(205, 15, '11', 11.95, '2015-07-01', 360, 'portada_detective-conan-nueva-edicion-n-11_gosho-aoyama_201504091030.jpg', 0, 0),
(206, 15, '14', 11.95, '2016-02-02', 360, 'portada_detective-conan-nueva-edicion-n-14_gosho-aoyama_201511091312.jpg', 0, 0),
(207, 15, '17', 11.95, '2016-11-08', 360, 'portada_detective-conan-n-17-nueva-edicion_gosho-aoyama_201607111606.jpg', 0, 0),
(208, 15, '16', 11.95, '2016-07-05', 360, 'portada_detective-conan-n-16-nueva-edicion_gosho-aoyama_201604181616.jpg', 0, 0),
(209, 15, '12', 11.95, '2015-10-01', 360, 'portada_detective-conan-new-edition-n-12_gosho-aoyama_201505271601.jpg', 0, 0),
(210, 15, '15', 11.95, '2016-04-05', 360, 'portada_detective-conan-nueva-edicion-n-15_gosho-aoyama_201601051259.jpg', 0, 0),
(211, 15, '18', 11.95, '2017-02-21', 360, 'portada___201611081559.jpg', 0, 0),
(212, 15, '20', 11.95, '2017-07-04', 360, 'portada_detective-conan-n-20-nueva-edicion_gosho-aoyama_201704181254.jpg', 0, 0),
(213, 15, '19', 11.95, '2017-04-11', 360, 'portada___201701041600.jpg', 0, 0),
(214, 15, '22', 11.95, '2018-02-20', 360, 'portada_detective-conan-n-22-nueva-edicion_gosho-aoyama_201711141337.jpg', 0, 0),
(215, 15, '23', 11.95, '2018-05-24', 384, 'portada___201801291658.jpg', 0, 0),
(216, 15, '24', 11.95, '2018-07-03', 372, 'portada_detective-conan-n-24-nueva-edicion_gosho-aoyama_201804171311.jpg', 0, 0),
(217, 15, '25', 11.95, '2018-11-13', 372, 'portada_detective-conan-n-25-nueva-edicion_gosho-aoyama_201810301133.jpg', 0, 0),
(218, 15, '26', 11.95, '2019-03-19', 360, 'portada_detective-conan-n-26-nueva-edicion__201812031607.jpg', 0, 0),
(219, 15, '27', 11.95, '2019-07-02', 376, 'portada_detective-conan-n-27-nueva-edicion_gosho-aoyama_201904041136.jpg', 0, 0),
(220, 15, '21', 11.95, '2017-11-14', 360, 'portada___201707031157.jpg', 0, 0),
(221, 15, '28', 11.95, '2019-11-12', 352, 'portada_detective-conan-n-28-nueva-edicion_gosho-aoyama_201907111527.jpg', 0, 0),
(222, 15, '29', 11.95, '2020-05-26', 360, 'portada_detective-conan-n-29-nueva-edicion_gosho-aoyama_201912111251.jpg', 0, 0),
(223, 15, '31', 11.95, '2021-02-24', 360, 'portada_detective-conan-n-31_gosho-aoyama_202010301227.jpg', 0, 0),
(224, 15, '33', 11.95, '2021-07-07', 360, 'portada_detective-conan-n-33-nueva-edicion_gosho-aoyama_202103251520.jpg', 0, 0),
(225, 15, '32', 11.95, '2021-05-19', 360, 'portada_detective-conan-n-32_gosho-aoyama_202101271524.jpg', 0, 0),
(226, 15, '30', 11.95, '2020-07-14', 360, 'portada_detective-conan-n-30-nueva-edicion_gosho-aoyama_202004241244.jpg', 0, 0),
(227, 16, '1', 8.95, '2021-01-27', 240, 'portada_dragon-ball-n-0134__202010081153.jpg', 0, 0),
(228, 16, '2', 8.95, '2021-01-27', 240, 'portada_dragon-ball-n-0234__202010081157.jpg', 0, 0),
(229, 16, '3', 8.95, '2021-01-27', 240, 'portada_dragon-ball-n-0334__202010081157.jpg', 0, 0),
(230, 16, '5', 8.95, '2021-02-24', 240, 'portada_dragon-ball-n-0534_akira-toriyama_202011111506.jpg', 0, 0),
(231, 16, '4', 8.95, '2021-02-24', 240, 'portada_dragon-ball-n-0434_akira-toriyama_202011111505.jpg', 0, 0),
(232, 16, '7', 8.95, '2021-03-24', 240, 'portada_dragon-ball-n-0734__202011300957.jpg', 0, 0),
(233, 16, '8', 8.95, '2021-03-24', 240, 'portada_dragon-ball-n-0834__202011301001.jpg', 0, 0),
(234, 16, '9', 8.95, '2021-03-24', 240, 'portada_dragon-ball-n-0934__202011300955.jpg', 0, 0),
(235, 16, '10', 8.95, '2021-04-14', 228, 'portada_dragon-ball-ultimate-n-1034__202101071325.jpg', 0, 0),
(236, 16, '11', 8.95, '2021-04-14', 228, 'portada_dragon-ball-ultimate-n-1134__202101071326.jpg', 0, 0),
(237, 16, '12', 8.95, '2021-04-14', 228, 'portada_dragon-ball-ultimate-n-1234__202101071326.jpg', 0, 0),
(238, 16, '13', 8.95, '2021-05-19', 228, 'portada_dragon-ball-ultimate-n-1334_akira-toriyama_202102051200.jpg', 0, 0),
(239, 16, '14', 8.95, '2021-05-19', 228, 'portada_dragon-ball-ultimate-n-1434_akira-toriyama_202102051156.jpg', 0, 0),
(240, 16, '15', 8.95, '2021-05-19', 228, 'portada_dragon-ball-ultimate-n-1534_akira-toriyama_202102051157.jpg', 0, 0),
(241, 16, '6', 8.95, '2021-02-24', 240, 'portada_dragon-ball-n-0634_akira-toriyama_202011111506.jpg', 0, 0),
(242, 16, '17', 8.95, '2021-06-16', 236, 'portada_dragon-ball-n-1734_akira-toriyama_201412051222.jpg', 0, 0),
(243, 16, '18', 8.95, '2021-06-16', 236, 'portada_dragon-ball-n-1834_akira-toriyama_201412051223.jpg', 0, 0),
(244, 16, '19', 8.95, '2021-07-07', 236, 'portada_dragon-ball-n-1934_akira-toriyama_201412051225.jpg', 0, 0),
(245, 16, '20', 8.95, '2021-07-07', 236, 'portada_dragon-ball-n-2034_akira-toriyama_201412051226.jpg', 0, 0),
(246, 16, '21', 8.95, '2021-07-14', 236, 'portada_dragon-ball-n-2134_akira-toriyama_201412051235.jpg', 0, 0),
(247, 16, '22', 8.95, '2012-07-14', 236, 'portada_dragon-ball-n-2234_akira-toriyama_201412051237.jpg', 0, 0),
(248, 16, '16', 8.95, '2021-06-16', 236, 'portada_dragon-ball-n-1634_akira-toriyama_201412051218.jpg', 0, 0),
(249, 17, '1', 7.95, '2017-10-17', 192, 'portada_dragon-ball-super-n-01_akira-toriyama_201709291229.jpg', 0, 0),
(250, 17, '2', 7.95, '2018-10-16', 192, 'portada_dragon-ball-super-n-02_akira-toriyama_201807051021.jpg', 0, 0),
(251, 17, '3', 7.95, '2019-04-09', 192, 'portada_dragon-ball-super-n-03_eiichiro-oda_201901161506.jpg', 0, 0),
(252, 17, '4', 7.95, '2019-10-08', 192, 'portada_dragon-ball-super-n-04_akira-toriyama_201906060936.jpg', 0, 0),
(253, 17, '6', 7.95, '2020-07-14', 192, 'portada_dragon-ball-super-n-06_akira-toriyama_202003061218.jpg', 0, 0),
(254, 17, '5', 7.95, '2020-06-23', 192, 'portada_dragon-ball-super-n-05_akira-toriyama_201912111120.jpg', 0, 0),
(255, 17, '8', 7.95, '2021-01-27', 192, 'portada_dragon-ball-super-n-08_akira-toriyama_202009301114.jpg', 0, 0),
(256, 17, '9', 7.95, '2021-03-24', 192, 'portada_dragon-ball-super-n-09_akira-toriyama_202011241053.jpg', 0, 0),
(257, 17, '7', 7.95, '2020-10-20', 192, 'portada_dragon-ball-super-n-07__202006181258.jpg', 0, 0),
(258, 17, '10', 7.95, '2021-05-19', 192, 'portada_dragon-ball-super-n-10_akira-toriyama_202101271507.jpg', 0, 0),
(259, 17, '11', 7.95, '2021-07-07', 192, 'portada_dragon-ball-super-n-11_akira-toriyama_202103251438.jpg', 0, 0),
(260, 18, '1', 8.95, '2021-05-19', 200, 'portada_insect-cage-n-01__202101271106.jpg', 0, 0),
(261, 18, '2', 8.95, '2021-07-07', 224, 'portada_insect-cage-n-02_kachou-hashimoto_202104121124.jpg', 0, 0),
(262, 19, '2', 6.95, '2016-11-29', 192, 'portada___201607081116.jpg', 0, 0),
(263, 19, '1', 2.95, '2016-10-18', 192, 'portada_my-hero-academia-n-01_kohei-horikoshi_201607081116.jpg', 0, 0),
(264, 19, '3', 6.95, '2017-02-21', 192, 'portada_my-hero-academia-n-03_kohei-horikoshi_201701031038.jpg', 0, 0),
(265, 19, '4', 6.95, '2017-04-11', 192, 'portada___201701031040.jpg', 0, 0),
(266, 19, '7', 6.95, '2017-10-17', 192, 'portada___201706011638.jpg', 0, 0),
(267, 19, '5', 6.95, '2017-06-20', 192, 'portada_my-hero-academia-n-05_kohei-horikoshi_201705151219.jpg', 0, 0),
(268, 19, '6', 6.95, '2017-09-19', 192, 'portada_my-hero-academia-n-06_kohei-horikoshi_201707191638.jpg', 0, 0),
(269, 19, '8', 6.95, '2017-11-28', 192, 'portada_my-hero-academia-n-08_kohei-horikoshi_201710271400.jpg', 0, 0),
(270, 19, '9', 6.95, '2018-02-20', 192, 'portada_my-hero-academia-n-09_kohei-horikoshi_201801181304.jpg', 0, 0),
(271, 19, '10', 6.95, '2018-05-24', 192, 'portada___201801261415.jpg', 0, 0),
(272, 19, '11', 6.95, '2018-07-03', 192, 'portada_my-hero-academia-n-11_kohei-horikoshi_201804161751.jpg', 0, 0),
(273, 19, '13', 6.95, '2018-10-16', 184, 'portada_my-hero-academia-n-13_kohei-horikoshi_201807051139.jpg', 0, 0),
(274, 19, '14', 6.95, '2018-11-27', 192, 'portada_my-hero-academia-n-14_kohei-horikoshi_201807241705.jpg', 0, 0),
(275, 19, '12', 6.95, '2018-09-18', 192, 'portada_my-hero-academia-n-12_kohei-horikoshi_201805221623.jpg', 0, 0),
(276, 19, '17', 6.95, '2019-07-02', 192, 'portada_my-hero-academia-n-17_kohei-horikoshi_201906071304.jpg', 0, 0),
(277, 19, '15', 6.95, '2019-02-19', 192, 'portada___201810191326.jpg', 0, 0),
(278, 19, '18', 6.95, '2019-09-17', 192, 'portada_my-hero-academia-n-18_kohei-horikoshi_201905101049.jpg', 0, 0),
(279, 19, '16', 6.95, '2019-07-21', 192, 'portada_my-hero-academia-n-16_kohei-horikoshi_201904251020.jpg', 0, 0),
(280, 19, '19', 6.95, '2019-11-12', 192, 'portada_my-hero-academia-n-19_kohei-horikoshi_201907111539.jpg', 0, 0),
(281, 19, '22', 6.95, '2020-09-22', 192, 'portada_my-hero-academia-n-22_kohei-horikoshi_202006101157.jpg', 0, 0),
(282, 19, '20', 6.95, '2020-01-23', 192, 'portada_my-hero-academia-n-20_kohei-horikoshi_201910151115.jpg', 0, 0),
(283, 19, '21', 6.95, '2020-07-14', 192, 'portada_my-hero-academia-n-21_kohei-horikoshi_202002071356.jpg', 0, 0),
(284, 19, '23', 6.95, '2020-10-20', 192, 'portada_my-hero-academia-n-23__202006181245.jpg', 0, 0),
(285, 19, '24', 6.95, '2020-11-17', 192, 'portada_my-hero-academia-n-24_kohei-horikoshi_202007101352.jpg', 0, 0),
(286, 19, '25', 6.95, '2021-01-27', 192, 'portada_my-hero-academia-n-25_kohei-horikoshi_202009291053.jpg', 0, 0),
(287, 19, '26', 6.95, '2021-03-24', 200, 'portada_my-hero-academia-n-26_kohei-horikoshi_202012211249.jpg', 0, 0),
(288, 19, '27', 6.95, '2021-05-19', 184, 'portada_my-hero-academia-n-27_kohei-horikoshi_202101211056.jpg', 0, 0),
(289, 23, '1', 20, '2021-05-19', 280, 'portada_yokohama-station-novela_aa-vv_202102021548.jpg', 0, 1),
(290, 24, '1', 9.95, '2019-09-27', 252, 'b129c883e6bafaf260224a9eda36e15a2044babc.jpeg', 0, 0),
(291, 24, '2', 9.95, '2020-09-04', 256, '096033de1288ed9f4a91b7e7568a14ce3b4729ae.jpeg', 0, 0),
(292, 24, '3', 9.95, '2020-11-13', 228, '7d5459594ccbc4802ca887d395f75e487ebc53b8.jpeg', 0, 0),
(293, 24, '6', 9.95, '2021-05-14', 224, '0e30ca8ab0829b009ca02befa7bb5dcc1750d3d9.jpeg', 0, 0),
(294, 24, '4', 9.95, '2021-01-15', 228, '29090e0d47350ffa0716307d6e4bd19c55026a31.jpeg', 0, 0),
(295, 24, '5', 9.95, '2021-03-05', 232, 'ab392001f8c2c074b5048b9cc5965e109f31597a.jpeg', 0, 0),
(297, 27, '1', 8, '2019-07-26', 200, '0d790de7d4a67c062e6fd4f40b6c13031df265d8.jpeg', 0, 0),
(298, 27, '3', 9, '2020-02-07', 206, 'abba0d3af892fb88001d3599e9fb906edc58dc5e.jpeg', 0, 0),
(299, 27, '4', 9, '2021-05-14', 240, '0e4b10f9534d44674b26ad09a1463584c57145eb.jpeg', 0, 0),
(300, 27, '2', 8, '2019-09-27', 192, 'f20fb6166ff33b4acd03bab8bd39c7426eec5595.jpeg', 0, 0),
(301, 26, '1', 9.95, '2021-05-14', 176, '01279b54d763005060494dd70d464cde897608b1.jpeg', 0, 0),
(302, 49, '1', 19, '2019-05-24', 184, '33de8e04ac9a87ee6a4d1b73292053d9b2ccaca4 (1).jpeg', 0, 1),
(303, 50, '1', 19, '2020-07-03', 136, '99fada8ba5deb5f3fc8279323cad85fceaa67d08 (1).jpeg', 0, 1),
(304, 45, '1', 9.95, '2018-10-30', 128, 'sobrecubierta_que_dificil_amor_otaku_num1_WEB.jpg', 0, 0),
(305, 45, '2', 9.95, '2018-12-28', 128, 'sobrecubierta_que_dificil_es_el_amor_para_un_otaku_num2_web.jpg', 0, 0),
(306, 45, '7', 9.95, '2020-08-11', 128, 'web_sobrecubierta_que_dificil_es_el_amor_para_un_otaku_num7.jpg', 0, 0),
(307, 45, '9', 9.95, '2021-06-08', 128, 'sobrecubierta_que_dificil_es_el_amor_para_un_otaku_num9_WEB.jpg', 0, 0),
(308, 45, '5', 9.95, '2020-02-18', 128, 'sobrecubierta_que_dificil_es_el_amor_para_un_otaku_num5_web.jpg', 0, 0),
(309, 45, '6', 9.95, '2020-06-09', 128, 'sobrecubierta_que_dificil_es_el_amor_para_un_otaku_num6_web.jpg', 0, 0),
(310, 45, '3', 9.95, '2019-02-26', 128, 'sobrecubierta_que_dificil_es_el_amor_para_un_otaku_num3_web.jpg', 0, 0),
(311, 45, '4', 9.95, '2019-05-14', 128, 'sobrecubierta_que_dificil_es_el_amor_para_un_otaku_num4_web.jpg', 0, 0),
(312, 45, '8', 9.95, '2020-12-01', 128, 'sobrecubierta_que_dificil_es_el_amor_para_un_otaku_num8_web.jpg', 0, 0),
(313, 46, '2', 9.95, '2016-05-31', 160, 'portada_doraemon-color-n-0206_fujiko-ffujio_201602260922.jpg', 0, 0),
(314, 46, '3', 9.95, '2016-09-08', 160, 'portada_doraemon-color-n-0306_fujiko-ffujio_201605111231.jpg', 0, 0),
(315, 46, '4', 9.95, '2016-11-08', 160, 'portada_doraemon-color-n-0406_fujiko-ffujio_201606301301.jpg', 0, 0),
(316, 46, '1', 9.95, '2016-04-05', 160, 'portada_doraemon-color-n-1_fujiko-ffujio_201412171528.jpg', 0, 0),
(317, 46, '5', 9.95, '2017-01-24', 160, 'portada_doraemon-color-n-0506_fujiko-ffujio_201609271111.jpg', 0, 0),
(318, 46, '6', 9.95, '2017-02-21', 160, 'portada_doraemon-color-n-0606_fujiko-ffujio_201701051251.jpg', 0, 0),
(319, 39, '1', 4, '2021-05-14', 216, 'f940d083112430f19d7a257c8897d48f06060e1f.jpeg', 0, 0),
(320, 36, '1', 8, '2020-03-06', 192, '9b1d37c0c634d9c3b88121e3ac6e7e9921128d0c.jpeg', 0, 0),
(321, 36, '0', 8, '2020-10-09', 200, 'e1f29dde0442f79cde755181c84cc885026059fc.jpeg', 0, 0),
(322, 36, '3', 8, '2020-08-07', 192, '634e5362f56d105a562a89f56914c420f5c03c2f.jpeg', 0, 0),
(323, 36, '4', 8, '2020-11-13', 200, '15bb917dd73b8961b8ec1551b071f636dccb3cd6.jpeg', 0, 0),
(324, 36, '2', 8, '2020-05-15', 192, '46e1a4ac2edaecc959cd823d33242ae80bf9c949.jpeg', 0, 0),
(325, 36, '5', 8, '2021-01-15', 192, 'b2dea4b97fb1cbfd6da009dae3509f17aaf2d908.jpeg', 0, 0),
(326, 36, '6', 8, '2021-04-09', 192, '92f9dcfb30dd858b93bfa2da5622f571b0be4b17.jpeg', 0, 0),
(327, 36, '7', 8, '2021-05-14', 192, '282612ef600decd3eff1dea1075ee4ddce9f16bd.jpeg', 0, 0),
(328, 47, '2', 8, '2021-04-08', 192, '9788418751028.jpeg', 0, 0),
(329, 47, '3', 8, '2021-05-13', 192, '9788418751479.jpeg', 0, 0),
(330, 47, '1', 8, '2021-03-11', 192, 'rentagirlfriend01.jpg', 0, 0),
(331, 48, '2', 8.5, '2020-11-05', 200, '9788418450938.jpg', 0, 0),
(332, 48, '3', 8.5, '2021-01-28', 200, '9788418562846.jpg', 0, 0),
(333, 48, '4', 8.5, '2021-03-18', 200, '9788418645570.jpg', 0, 0),
(334, 48, '5', 8.5, '2021-05-06', 200, '9788418751448.jpeg', 0, 0),
(335, 48, '1', 8.5, '2020-10-01', 200, 'poridentidad.jpg', 0, 0),
(336, 38, '2', 9, '2020-07-17', 192, '1a3b4814d10dd6fc3be1cf0ed3f06681779f56f8.jpeg', 0, 0),
(337, 38, '3', 9, '2020-09-04', 192, 'df528745a1a341ca86f716e33b6dad1d660cd99f.jpeg', 0, 0),
(338, 38, '4', 9, '2020-10-29', 192, '9c46e6472332668cbfa9ab51d1cc74eba00cb653.jpeg', 0, 0),
(339, 38, '5', 9, '2021-01-15', 192, '1c3a6a1e8798628979fd180cd4aa16abd84e107f.jpeg', 0, 0),
(340, 38, '6', 9, '2021-03-05', 192, '0c1854c2e6d7faf37d06cf5ff1ea1cbadbd8841e.jpeg', 0, 0),
(341, 38, '1', 9, '2020-05-15', 192, '55e0f3a21e88164e5590ededd30994acf195d2bd.jpeg', 0, 0),
(342, 38, '7', 9, '2021-05-14', 192, 'e607fcd070d994e1c396568d71b410942cb2c67b.jpeg', 0, 0),
(343, 52, '1', 14, '2021-06-10', 400, '9788418751080.jpeg', 0, 0),
(344, 51, '1', 2.95, '2021-10-20', 192, 'E5Dazs6X0AcdTF2.jpg', 0, 0),
(345, 51, '2', 7.95, '2021-11-01', 192, '71UGho264VL.jpg', 0, 0),
(346, 1, '20', 8, '2021-07-09', 236, '07e65cc1107a382dc68d6cd80c9426fd580dfe60.jpeg', 0, 0),
(456, 86, '1', 4, '2018-10-31', 192, 'nodisponible.jpg', 0, 0),
(457, 86, '2', 8, '2019-03-08', 208, 'nodisponible.jpg', 0, 0),
(458, 86, '3', 8, '2019-08-23', 192, 'nodisponible.jpg', 0, 0),
(459, 86, '4', 8, '2020-02-07', 192, 'nodisponible.jpg', 0, 0),
(460, 86, '5', 8, '2020-11-13', 168, 'nodisponible.jpg', 0, 0),
(461, 86, '6', 8, '2021-02-05', 192, 'nodisponible.jpg', 0, 0),
(462, 86, '7', 8, '2021-04-09', 188, 'nodisponible.jpg', 0, 0),
(463, 86, '8', 8, '2021-06-11', 192, 'nodisponible.jpg', 0, 0),
(464, 86, '9', 8, '2021-08-06', 208, 'nodisponible.jpg', 0, 0),
(509, 107, '1', 0, '2014-09-26', 24, 'nodisponible.jpg', 0, 0),
(510, 108, '1', 3, '2008-10-01', 90, 'nodisponible.jpg', 0, 0),
(511, 108, '2', 3, '2008-11-01', 90, 'nodisponible.jpg', 0, 0),
(512, 108, '3', 3, '2008-11-01', 90, 'nodisponible.jpg', 0, 0),
(513, 108, '4', 3, '2008-11-01', 90, 'nodisponible.jpg', 0, 0),
(514, 108, '5', 3, '2008-12-01', 90, 'nodisponible.jpg', 0, 0),
(515, 108, '6', 3, '2008-12-01', 90, 'nodisponible.jpg', 0, 0),
(516, 113, '1', 9, '2018-08-29', 340, 'nodisponible.jpg', 0, 0),
(517, 113, '2', 9, '2018-10-25', 340, 'nodisponible.jpg', 0, 0),
(518, 113, '3', 9, '2019-01-31', 340, 'nodisponible.jpg', 0, 0),
(519, 113, '4', 9, '2019-02-28', 340, 'nodisponible.jpg', 0, 0),
(520, 113, '5', 9, '2019-04-29', 340, 'nodisponible.jpg', 0, 0),
(521, 113, '6', 9, '2019-06-27', 340, 'nodisponible.jpg', 0, 0),
(522, 113, '7', 9, '2019-08-29', 340, 'nodisponible.jpg', 0, 0),
(523, 113, '8', 9, '2019-11-29', 340, 'nodisponible.jpg', 0, 0),
(524, 113, '9', 9, '2020-01-30', 344, 'nodisponible.jpg', 0, 0),
(525, 113, '10', 9, '2020-05-19', 340, 'nodisponible.jpg', 0, 0),
(526, 114, '1', 8, '2008-06-01', 208, 'nodisponible.jpg', 0, 0),
(527, 114, '2', 8, '2008-07-01', 208, 'nodisponible.jpg', 0, 0),
(528, 115, '1', 5, '2008-04-01', 164, 'nodisponible.jpg', 0, 0),
(529, 115, '2', 5, '2008-05-01', 164, 'nodisponible.jpg', 0, 0),
(530, 115, '3', 5, '2008-06-01', 164, 'nodisponible.jpg', 0, 0),
(531, 115, '4', 5, '2008-07-01', 164, 'nodisponible.jpg', 0, 0),
(532, 115, '5', 5, '2008-08-01', 164, 'nodisponible.jpg', 0, 0),
(533, 115, '6', 5, '2008-09-01', 164, 'nodisponible.jpg', 0, 0),
(534, 115, '7', 5, '2008-11-01', 164, 'nodisponible.jpg', 0, 0),
(535, 115, '8', 5, '2009-01-01', 164, 'nodisponible.jpg', 0, 0),
(536, 115, '9', 5, '2009-02-01', 164, 'nodisponible.jpg', 0, 0),
(537, 115, '10', 5, '2009-05-01', 164, 'nodisponible.jpg', 0, 0),
(538, 115, '11', 5, '2009-08-01', 164, 'nodisponible.jpg', 0, 0),
(539, 115, '12', 5, '2009-11-01', 164, 'nodisponible.jpg', 0, 0),
(540, 115, '13', 6, '2011-07-01', 164, 'nodisponible.jpg', 0, 0),
(541, 115, '14', 6, '2011-08-01', 164, 'nodisponible.jpg', 0, 0),
(542, 116, '1', 7, '2009-05-01', 216, 'nodisponible.jpg', 0, 0),
(543, 116, '2', 7, '2009-07-01', 216, 'nodisponible.jpg', 0, 0),
(544, 116, '3', 7, '2009-09-01', 224, 'nodisponible.jpg', 0, 0),
(545, 116, '4', 7, '2009-11-01', 224, 'nodisponible.jpg', 0, 0),
(546, 117, '1', 9, '2009-11-01', 232, 'nodisponible.jpg', 0, 0),
(547, 117, '2', 9, '2010-01-01', 232, 'nodisponible.jpg', 0, 0),
(548, 117, '3', 9, '2010-04-01', 232, 'nodisponible.jpg', 0, 0),
(549, 117, '4', 9, '2010-07-01', 232, 'nodisponible.jpg', 0, 0),
(550, 117, '5', 9, '2010-10-01', 232, 'nodisponible.jpg', 0, 0),
(551, 117, '6', 10, '2011-01-01', 224, 'nodisponible.jpg', 0, 0),
(558, 118, '1', 5, '2009-05-01', 192, 'nodisponible.jpg', 0, 0),
(559, 118, '2', 5, '2009-08-01', 192, 'nodisponible.jpg', 0, 0),
(560, 118, '3', 5, '2009-11-01', 192, 'nodisponible.jpg', 0, 0),
(561, 119, '1', 8, '2009-08-01', 192, 'nodisponible.jpg', 0, 0),
(562, 119, '2', 8, '2009-10-01', 192, 'nodisponible.jpg', 0, 0),
(563, 119, '3', 8, '2009-11-01', 192, 'nodisponible.jpg', 0, 0),
(564, 119, '4', 8, '2009-12-01', 192, 'nodisponible.jpg', 0, 0),
(565, 119, '5', 8, '2010-03-01', 192, 'nodisponible.jpg', 0, 0),
(566, 119, '6', 8, '2010-05-01', 192, 'nodisponible.jpg', 0, 0),
(567, 119, '7', 8, '2010-07-01', 192, 'nodisponible.jpg', 0, 0),
(568, 140, '1', 6, '2004-11-01', 208, 'nodisponible.jpg', 0, 0),
(569, 140, '2', 6, '2004-11-01', 192, 'nodisponible.jpg', 0, 0),
(570, 140, '3', 6, '2004-12-01', 208, 'nodisponible.jpg', 0, 0),
(571, 140, '4', 6, '2004-12-01', 208, 'nodisponible.jpg', 0, 0),
(572, 140, '5', 6, '2005-01-01', 192, 'nodisponible.jpg', 0, 0),
(573, 140, '6', 6, '2005-01-01', 202, 'nodisponible.jpg', 0, 0),
(574, 140, '7', 6, '2005-02-01', 192, 'nodisponible.jpg', 0, 0),
(575, 140, '8', 6, '2005-02-01', 192, 'nodisponible.jpg', 0, 0),
(576, 140, '9', 6, '2005-03-01', 208, 'nodisponible.jpg', 0, 0),
(577, 140, '10', 6, '2005-03-01', 192, 'nodisponible.jpg', 0, 0),
(578, 140, '11', 6, '2005-04-01', 192, 'nodisponible.jpg', 0, 0),
(579, 140, '12', 6, '2005-04-01', 192, 'nodisponible.jpg', 0, 0),
(580, 140, '13', 6, '2005-05-01', 192, 'nodisponible.jpg', 0, 0),
(581, 140, '14', 6, '2005-05-01', 192, 'nodisponible.jpg', 0, 0),
(582, 140, '15', 6, '2005-06-01', 192, 'nodisponible.jpg', 0, 0),
(583, 140, '16', 6, '2005-06-01', 192, 'nodisponible.jpg', 0, 0),
(584, 140, '17', 6, '2005-07-01', 208, 'nodisponible.jpg', 0, 0),
(585, 140, '18', 6, '2005-07-01', 224, 'nodisponible.jpg', 0, 0),
(586, 140, '19', 6, '2005-08-01', 208, 'nodisponible.jpg', 0, 0),
(587, 140, '20', 6, '2005-08-01', 208, 'nodisponible.jpg', 0, 0),
(588, 140, '21', 6, '2005-09-01', 208, 'nodisponible.jpg', 0, 0),
(589, 140, '22', 6, '2005-09-01', 208, 'nodisponible.jpg', 0, 0),
(590, 140, '23', 6, '2005-10-01', 240, 'nodisponible.jpg', 0, 0),
(591, 140, '24', 6, '2005-10-01', 208, 'nodisponible.jpg', 0, 0),
(592, 140, '25', 6, '2005-10-01', 208, 'nodisponible.jpg', 0, 0),
(593, 140, '26', 6, '2005-11-01', 208, 'nodisponible.jpg', 0, 0),
(594, 140, '27', 6, '2005-11-01', 208, 'nodisponible.jpg', 0, 0),
(595, 140, '28', 6, '2005-12-01', 192, 'nodisponible.jpg', 0, 0),
(596, 140, '29', 6, '2006-01-01', 192, 'nodisponible.jpg', 0, 0),
(597, 140, '30', 6, '2006-02-01', 192, 'nodisponible.jpg', 0, 0),
(598, 140, '31', 6, '2006-02-01', 208, 'nodisponible.jpg', 0, 0),
(599, 140, '32', 6, '2006-03-01', 208, 'nodisponible.jpg', 0, 0),
(600, 140, '33', 6, '2006-04-01', 240, 'nodisponible.jpg', 0, 0),
(601, 140, '34', 6, '2006-05-01', 240, 'nodisponible.jpg', 0, 0),
(602, 140, '35', 6, '2006-06-01', 192, 'nodisponible.jpg', 0, 0),
(603, 140, '36', 6, '2006-07-01', 208, 'nodisponible.jpg', 0, 0),
(604, 140, '37', 6, '2006-10-01', 208, 'nodisponible.jpg', 0, 0),
(605, 140, '38', 6, '2006-12-01', 204, 'nodisponible.jpg', 0, 0),
(606, 140, '39', 6, '2007-04-01', 204, 'nodisponible.jpg', 0, 0),
(607, 140, '40', 6, '2007-07-01', 224, 'nodisponible.jpg', 0, 0),
(608, 140, '41', 6, '2007-11-01', 232, 'nodisponible.jpg', 0, 0),
(609, 140, '42', 6, '2008-03-01', 208, 'nodisponible.jpg', 0, 0),
(610, 140, '43', 6, '2008-10-01', 208, 'nodisponible.jpg', 0, 0),
(611, 140, '44', 6, '2008-11-01', 232, 'nodisponible.jpg', 0, 0),
(612, 140, '45', 6, '2009-01-01', 208, 'nodisponible.jpg', 0, 0),
(613, 140, '46', 6, '2009-04-01', 192, 'nodisponible.jpg', 0, 0),
(614, 140, '47', 6, '2009-06-01', 192, 'nodisponible.jpg', 0, 0),
(615, 140, '48', 6, '2009-10-01', 232, 'nodisponible.jpg', 0, 0),
(616, 140, '49', 6, '2010-01-01', 192, 'nodisponible.jpg', 0, 0),
(617, 140, '50', 6, '2010-03-01', 192, 'nodisponible.jpg', 0, 0),
(618, 140, '51', 6, '2010-05-01', 232, 'nodisponible.jpg', 0, 0),
(619, 140, '52', 6, '2010-07-01', 208, 'nodisponible.jpg', 0, 0),
(620, 140, '53', 6, '2010-09-01', 184, 'nodisponible.jpg', 0, 0),
(621, 140, '54', 6, '2010-11-01', 192, 'nodisponible.jpg', 0, 0),
(622, 140, '55', 6, '2011-01-01', 204, 'nodisponible.jpg', 0, 0),
(623, 140, '56', 6, '2011-03-01', 192, 'nodisponible.jpg', 0, 0),
(624, 140, '57', 6, '2011-06-01', 208, 'nodisponible.jpg', 0, 0),
(625, 140, '58', 6, '2011-08-01', 208, 'nodisponible.jpg', 0, 0),
(626, 140, '59', 6, '2011-10-01', 208, 'nodisponible.jpg', 0, 0),
(627, 140, '60', 6, '2011-12-01', 208, 'nodisponible.jpg', 0, 0),
(628, 140, '61', 6, '2012-01-01', 208, 'nodisponible.jpg', 0, 0),
(629, 140, '62', 6, '2012-03-01', 192, 'nodisponible.jpg', 0, 0),
(630, 140, '63', 6, '2012-05-01', 192, 'nodisponible.jpg', 0, 0),
(631, 140, '64', 6, '2012-07-01', 192, 'nodisponible.jpg', 0, 0),
(632, 140, '65', 6, '2012-09-01', 192, 'nodisponible.jpg', 0, 0),
(633, 140, '66', 6, '2012-11-01', 208, 'nodisponible.jpg', 0, 0),
(634, 140, '67', 6, '2013-04-01', 192, 'nodisponible.jpg', 0, 0),
(635, 140, '68', 6, '2013-10-01', 192, 'nodisponible.jpg', 0, 0),
(636, 140, '69', 6, '2014-04-01', 248, 'nodisponible.jpg', 0, 0),
(637, 140, '70', 6, '2014-10-01', 208, 'nodisponible.jpg', 0, 0),
(638, 140, '71', 6, '2014-11-01', 216, 'nodisponible.jpg', 0, 0),
(639, 140, '72', 6, '2015-06-01', 192, 'nodisponible.jpg', 0, 0),
(640, 140, '73', 6, '2015-09-01', 208, 'nodisponible.jpg', 0, 0),
(641, 140, '74', 6, '2015-12-01', 192, 'nodisponible.jpg', 0, 0),
(642, 140, '75', 6, '2016-01-12', 200, 'nodisponible.jpg', 0, 0),
(643, 140, '76', 6, '2016-03-01', 200, 'nodisponible.jpg', 0, 0),
(644, 140, '77', 6, '2016-07-05', 232, 'nodisponible.jpg', 0, 0),
(645, 140, '78', 6, '2016-09-08', 200, 'nodisponible.jpg', 0, 0),
(646, 140, '79', 6, '2016-11-08', 192, 'nodisponible.jpg', 0, 0),
(647, 140, '80', 6, '2017-05-23', 208, 'nodisponible.jpg', 0, 0),
(648, 140, '81', 6, '2017-09-19', 192, 'nodisponible.jpg', 0, 0),
(649, 140, '82', 6, '2017-11-14', 192, 'nodisponible.jpg', 0, 0),
(650, 140, '83', 6, '2018-03-20', 208, 'nodisponible.jpg', 0, 0),
(651, 140, '84', 6, '2018-06-19', 200, 'nodisponible.jpg', 0, 0),
(652, 140, '85', 6, '2018-11-13', 192, 'nodisponible.jpg', 0, 0),
(653, 140, '86', 6, '2019-03-19', 192, 'nodisponible.jpg', 0, 0),
(654, 140, '87', 6, '2019-06-18', 192, 'nodisponible.jpg', 0, 0),
(655, 140, '88', 6, '2019-10-08', 192, 'nodisponible.jpg', 0, 0),
(656, 140, '89', 6, '2019-11-12', 192, 'nodisponible.jpg', 0, 0),
(657, 140, '90', 6, '2020-06-23', 192, 'nodisponible.jpg', 0, 0),
(658, 140, '91', 6, '2020-07-14', 192, 'nodisponible.jpg', 0, 0),
(659, 140, '92', 6, '2020-10-06', 192, 'nodisponible.jpg', 0, 0),
(660, 140, '93', 6, '2020-11-10', 200, 'nodisponible.jpg', 0, 0),
(661, 140, '94', 6, '2021-02-24', 208, 'nodisponible.jpg', 0, 0),
(662, 140, '95', 6, '2021-05-19', 200, 'nodisponible.jpg', 0, 0),
(663, 140, '96', 6, '2021-09-15', 192, 'nodisponible.jpg', 0, 0),
(664, 140, '97', 6, '2021-12-01', 192, 'nodisponible.jpg', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `series`
--

CREATE TABLE `series` (
  `ID` int(11) NOT NULL,
  `colID` int(11) NOT NULL,
  `userID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `series`
--

INSERT INTO `series` (`ID`, `colID`, `userID`) VALUES
(14, 47, 1),
(56, 39, 1),
(71, 8, 2),
(75, 3, 3),
(93, 51, 1),
(94, 3, 1),
(95, 38, 1),
(96, 1, 1),
(97, 19, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuariosID` int(11) NOT NULL,
  `usuario` varchar(128) NOT NULL,
  `usuario_contra` varchar(128) NOT NULL,
  `rango` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuariosID`, `usuario`, `usuario_contra`, `rango`) VALUES
(1, 'Keph', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(2, 'Carlos', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(3, 'Juan', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(4, 'Paco', '$2b$10$E9UBq/k26IFCvvSJ3HyNjeiAXSjy5r1DwqENhJAjgT4g4n728WkNG', 0),
(5, 'Jose', '$2b$10$S5ZM6yQgAbV7lE96KCM2MevbUbH2/PeO2RwGyrAxlyShCf303R642', 0),
(6, 'Loles', '$2b$10$5bj3ybPYRKIDde6mhJfvWexXIyoxTVeVVpNEDnZVe6jMizy.1zqRC', 0),
(7, 'asdas', '$2b$10$Uqcc8gMDq24XfcPFRst10.1OrsXk2HyiIxgrD7A9tVJTih8t8BPZi', 0),
(10, '', '$2b$10$n3GnvfpLqIeqcftw2eYRP.mLVzrUDCfO9TJAMA0y7brDcuNCRuk0O', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vols_comprados`
--

CREATE TABLE `vols_comprados` (
  `ID` int(11) NOT NULL,
  `volID` int(11) NOT NULL,
  `vol_num` varchar(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `colID` int(11) NOT NULL,
  `leido` tinyint(1) NOT NULL,
  `comprado` tinyint(1) NOT NULL,
  `edespecial` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `vols_comprados`
--

INSERT INTO `vols_comprados` (`ID`, `volID`, `vol_num`, `userID`, `colID`, `leido`, `comprado`, `edespecial`) VALUES
(333, 75, '1', 1, 3, 1, 1, 0),
(334, 117, '2', 1, 3, 1, 1, 0),
(335, 118, '3', 1, 3, 1, 1, 0),
(336, 119, '4', 1, 3, 1, 1, 0),
(337, 120, '4.5', 1, 3, 1, 1, 0),
(338, 128, '5', 1, 3, 1, 1, 0),
(339, 127, '6', 1, 3, 1, 1, 0),
(340, 129, '7', 1, 3, 1, 1, 0),
(341, 125, '7.5', 1, 3, 1, 1, 0),
(342, 126, '8', 1, 3, 1, 1, 0),
(344, 319, '1', 1, 39, 1, 1, 0),
(345, 330, '1', 1, 47, 1, 1, 0),
(346, 328, '2', 1, 47, 1, 1, 0),
(347, 329, '3', 1, 47, 1, 1, 0),
(348, 341, '1', 1, 38, 1, 1, 0),
(349, 336, '2', 1, 38, 1, 1, 0),
(350, 337, '3', 1, 38, 1, 1, 0),
(351, 338, '4', 1, 38, 1, 1, 0),
(352, 339, '5', 1, 38, 1, 1, 0),
(353, 340, '6', 1, 38, 1, 1, 0),
(354, 342, '7', 1, 38, 1, 1, 0),
(384, 1, '1', 1, 1, 1, 1, 0),
(385, 76, '2', 1, 1, 1, 1, 0),
(386, 77, '3', 1, 1, 1, 1, 0),
(387, 78, '4', 1, 1, 1, 1, 0),
(388, 79, '5', 1, 1, 1, 1, 0),
(389, 80, '6', 1, 1, 1, 1, 0),
(390, 81, '7', 1, 1, 1, 1, 0),
(391, 82, '8', 1, 1, 1, 1, 0),
(392, 83, '9', 1, 1, 1, 1, 0),
(393, 84, '10', 1, 1, 1, 1, 0),
(394, 85, '11', 1, 1, 1, 1, 0),
(395, 86, '12', 1, 1, 1, 1, 0),
(398, 89, '14', 1, 1, 1, 1, 0),
(399, 90, '15', 1, 1, 1, 1, 0),
(400, 91, '16', 1, 1, 1, 1, 0),
(401, 92, '17', 1, 1, 1, 1, 0),
(402, 93, '18', 1, 1, 1, 1, 0),
(403, 94, '19', 1, 1, 1, 1, 0),
(434, 88, '13', 1, 1, 1, 1, 1),
(436, 344, '1', 1, 51, 0, 1, 0),
(437, 345, '2', 1, 51, 0, 1, 0),
(438, 263, '1', 1, 19, 1, 1, 0),
(439, 262, '2', 1, 19, 1, 1, 0),
(440, 264, '3', 1, 19, 1, 1, 0),
(441, 265, '4', 1, 19, 1, 1, 0),
(442, 267, '5', 1, 19, 1, 1, 0),
(443, 268, '6', 1, 19, 1, 1, 0),
(444, 266, '7', 1, 19, 1, 1, 0),
(445, 269, '8', 1, 19, 1, 1, 0),
(446, 270, '9', 1, 19, 1, 1, 0),
(447, 271, '10', 1, 19, 1, 1, 0),
(448, 272, '11', 1, 19, 1, 1, 0),
(449, 275, '12', 1, 19, 1, 1, 0),
(450, 273, '13', 1, 19, 1, 1, 0),
(451, 274, '14', 1, 19, 1, 1, 0),
(452, 277, '15', 1, 19, 0, 1, 0),
(453, 279, '16', 1, 19, 0, 1, 0),
(454, 346, '20', 1, 1, 0, 1, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colecciones`
--
ALTER TABLE `colecciones`
  ADD PRIMARY KEY (`ColID`),
  ADD UNIQUE KEY `titulo_coleccion` (`titulo_coleccion`),
  ADD UNIQUE KEY `titulo_original` (`titulo_original`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `demografias`
--
ALTER TABLE `demografias`
  ADD PRIMARY KEY (`demoID`);

--
-- Indices de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `mangas`
--
ALTER TABLE `mangas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuariosID`),
  ADD UNIQUE KEY `usuarios_usuario_uindex` (`usuario`);

--
-- Indices de la tabla `vols_comprados`
--
ALTER TABLE `vols_comprados`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `colecciones`
--
ALTER TABLE `colecciones`
  MODIFY `ColID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT de la tabla `demografias`
--
ALTER TABLE `demografias`
  MODIFY `demoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `editoriales`
--
ALTER TABLE `editoriales`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `mangas`
--
ALTER TABLE `mangas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=665;

--
-- AUTO_INCREMENT de la tabla `series`
--
ALTER TABLE `series`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuariosID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `vols_comprados`
--
ALTER TABLE `vols_comprados`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=455;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
