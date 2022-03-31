-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Creato il: Mar 31, 2022 alle 08:27
-- Versione del server: 5.7.24
-- Versione PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_model_controller`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `original_title` varchar(100) DEFAULT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `vote` float(2,1) DEFAULT NULL,
  `thumb` text,
  `overview` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `movies`
--

INSERT INTO `movies` (`id`, `title`, `original_title`, `nationality`, `date`, `vote`, `thumb`, `overview`) VALUES
(1, 'Il Padrino', 'The Godfather', 'american', '1972-03-24', 9.2, 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/r4gnMXoY1efvaolNDjn3nj4046S.jpg', 'Anni Quaranta. Come è consuetudine, durante il rinfresco per festeggiare le nozze della figlia Conny con Carlo, il \"padrino\" don Vito Corleone promette assistenza e protezione a familiari e amici. Invia il figliastro Tom Hagen in California per convincere in ogni modo il produttore Jack Woltz a scritturare il cantante Johnny nel suo prossimo film. Woltz non acconsente. Tom allora lo costringe ad accettare con un \"avvertimento\": l\'uccisione del suo cavallo di razza preferito. Sollozzo, a nome della potente \"famiglia\" Tartaglia, chiede a Corleone finanziamenti e appoggi per il traffico di droga. Il rifiuto scatena una lotta cruenta tra le due cosche: lo stesso don Vito viene ferito gravemente; il figlio minore Michael lo salva da un secondo attentato. Michael, poi, scavalcando l\'irruento fratello Sonny e Tom, temporeggiatore, organizza un incontro con Sollozzo e con il corrotto capitano di polizia McCluskey uccidendoli entrambi.'),
(2, 'Via Col Vento', 'Gone With The Wind', 'american', '1939-12-15', 7.6, 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/xRyW60TXvX7Q2HSbpz8nZxKaTkL.jpg', 'La storia di Rossella O\'Hara, bellezza del sud che si ritrova a fare i conti con la guerra civile, il crollo del mondo in cui è cresciuta e varie disavventure amorose - il tutto con tenacia proverbiale.'),
(3, 'Psycho', 'Psycho', 'american', '1960-06-16', 9.4, 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/tdqX0MWaFHuGwUygYn7j6eluOdP.jpg', 'Marion Crane, impiegata in una società immobiliare, scappa con 40.000$ rubati dalle casse della ditta. Durante la fuga verso casa del fidanzato però, decide di fermarsi nel Motel gestito dal giovane Norman Bates e dalla madre, che però vive rintanata nella casa attigua al Motel stesso.\r\n\r\nIl capolavoro di Alfred Hitchcock.'),
(4, 'Gravity', 'Gravity', 'american/british', '2013-08-28', 7.8, 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/4pRXqT7wQmoH5sH6Z4WYmbAFG4t.jpg', 'Gli astronauti Ryan Stone e Matt Kowalsky lavorano ad alcune riparazioni di una stazione orbitante nello spazio quando un\'imprevedibile catena di eventi gli scaraventa contro una tempesta di detriti. L\'impatto è devastante, distrugge la loro stazione e li lascia a vagare nello spazio nel disperato tentativo di sopravvivere e trovare una maniera per tornare sulla Terra.'),
(5, 'Toy Story - Il Mondo Dei Giocattoli', 'Toy Story', 'american/british', '1995-11-19', 9.2, 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/mGnOtBmpkQ5CndwxeIKDUqkUkre.jpg', 'Nell\'universo confinato che è la stanza di Andy i suoi giocattoli si autogestiscono facendo riferimento a Woody il cowboy, da sempre il preferito del bambino. Quando però una festa di compleanno porta in casa lo space ranger Buzz Lightyear, giocattolo nuovo e moderno, gli equilibri e le preferenze cominciano a cambiare. Buzz ha un carattere diverso da Woody, pensa di essere un vero space ranger e piace a tutti. Questo proprio a pochi giorni dal temutissimo grande trasloco in cui tutti i giocattoli temono di essere persi...'),
(6, 'Pulp Fiction', 'Pulp Fiction', 'american', '1994-10-14', 9.7, 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/9p10J9Xp7MuaVac56g8BwAuXEsA.jpg', 'Le vite di due gangster, di un pugile e della moglie di un potente boss della malavita finiscono per intrecciarsi in una paradossale storia di violenza, vendetta e redenzione.'),
(7, 'Forrest Gump', 'Forrest Gump', 'american/british', '1994-06-23', 8.8, 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/pGZqc9jQ6F8klQZKm37NAAMH70o.jpg', 'Forrest Gump - un ragazzo non proprio idiota, ma dal basso coefficiente d\'intelligenza - racconta la sua storia a coloro che, uno dopo l\'altro, si siedono vicino a lui in attesa dell\'autobus. È stato in Vietnam, ha stretto la mano a tre presidenti, ha incontrato Elvis, ha assistito ai movimenti studenteschi, ha casualmente fatto esplodere il Watergate, ha suggerito le parole di \"Imagine\" a John Lennon e per tutta la vita è stato innamorato di una ragazza conosciuta fin da bambino.'),
(8, 'Guerre Stellari', 'Star Wars', 'american', '1977-05-25', 9.0, 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/fVqKwpvobwWy0P1UImZWIDuw4RI.jpg', 'In un lontano Impero Galattico è in atto una rivolta contro i suoi dispotici capi, tra i quali il più cattivo è Lord Darth Vader. Prima di cadere nelle sue mani, la principessa Leila Organa, rappresentante dei ribelli, riesce ad affidare a due robot i piani della \"Morte Nera\" - la potentissima base spaziale di Darth Vader, capace di disintegrare un intero pianeta - e un appello al vecchio generale Obi-Wan Kenobi, che abita sul pianeta Tatooine, perché accorra in aiuto dei rivoltosi. Il messaggio viene raccolto dal giovane Luke Skywalker che, rintracciato Obi Wan Kenobi, parte con lui in soccorso della principessa a bordo di un\'astronave guidata dal mercenario Han Solo e dal suo secondo Chewbacca.'),
(9, 'E.T. - L\'extra-terrestre', 'E.T. The Extra-Terrestrial', 'american', '1982-05-26', 8.5, 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/qKMqJCldp5fPsuv6Vb0RbKY9K8U.jpg', 'Durante un sopralluogo sulla Terra per raccogliere vegetali, un gruppo di alieni viene sorpreso e uno di loro viene lasciato erroneamente al suolo per l\'affrettato decollo. L\'alieno, solo e smarrito, viene trovato ed ospitato da Elliott, con la complicità della sorellina Gertie e il fratello maggiore Michael. Tra i due si instaura un profondo rapporto di amicizia che li lega anche a livello emotivo. Desideroso di tornare a casa, l\'alieno costruisce un rudimentale dispositivo di comunicazione per chiedere aiuto ai suoi. Gradualmente, la salute di ET peggiora, e la situazione è aggravata dall\'irruzione nell\'universo dei ragazzi da parte del mondo degli adulti, che vuole impossessarsi dell\'alieno.'),
(10, 'Il silenzio degli innocenti', 'The Silence of the Lambs', 'american', '1991-01-30', 9.1, 'https://www.themoviedb.org/t/p/w300_and_h450_bestv2/ztjr7Oly7wMGWR3AjG2Lugbx246.jpg', 'Dal romanzo omonimo di Thomas Harris. Una giovane recluta dell\'FBI è incaricata di far visita in carcere a Hannibal Lecter, psichiatra pluriomicida, per ottenere informazioni su un assassino psicopatico che ha ucciso e scuoiato cinque donne.');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
