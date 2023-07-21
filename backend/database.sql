DROP TABLE IF EXISTS disponibilite;
DROP TABLE IF EXISTS sejour;
DROP TABLE IF EXISTS user;
DROP DATABASE IF EXISTS checkpoint4;

CREATE DATABASE checkpoint4;
USE checkpoint4;

CREATE TABLE sejour (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    lieu VARCHAR(100) NOT NULL,
    photo VARCHAR(500) NOT NULL,
    duree VARCHAR(10) NOT NULL,
    prix INTEGER NOT NULL,
    description VARCHAR(1500) NOT NULL,
    lien VARCHAR(500) NOT NULL
);

CREATE TABLE disponibilite (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sejour_id INT,
    date_debut DATE NOT NULL,
    date_fin DATE NOT NULL,
    FOREIGN KEY (sejour_id) REFERENCES sejour(id)
);

CREATE TABLE user (
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name VARCHAR (50),
    email VARCHAR (255),
    password VARCHAR (255)
);

INSERT INTO sejour(
  lieu,
  photo,
  duree,
  prix,
  description,
  lien
)
VALUES(
  "Sardaigne",
  "https://kitesurf.voyages-adekua.fr/sites/default/files/kitesurf/produit/croisiere-kite-sardaigne-sur-beau-catamaran/images/sejour-kite-trip-adekua-05.jpg",
  "7 jours",
  1600,
  "Je vous propose de passer vos vacances kitesurf en Sardaigne sur un confortable catamaran de 12 mètres. Au fil de la croisière, vous découvrez des spots plus beaux les uns que les autres. Vous kitez selon vos envies sur des eaux translucides, avec l’assistance sécurité ou avec des cours à la carte (possibilité de wing foil). Je peux aussi vous proposer le matériel à la location si vous préférez voyager léger jusqu’en Sardaigne et bénéficier de matériel haut de gamme. Philippe est votre skipper, il y a une hôtesse qui prépare d’excellents repas et je suis là pour vous encadrer au niveau du kite. Les journées s’organisent autour des sessions, des visites, du farniente, des baignades ou snorkeling…Les soirées sont paisibles, dans des criques abritées et magnifiques. Ce trip est idéal pour une famille ou un groupe d’amis de 6 à 8 personnes. Je peux vous proposer de privatiser le bateau pour votre groupe de 4, de 6, ou même de 10 personnes. Niveau : débutant à expert",
  "https://kitesurf.voyages-adekua.fr/Sardaigne-kitesurf/croisiere-kite-sardaigne-catamaran-skipper"
),(
  "Dakhla",
  "https://kitesurf.voyages-adekua.fr/sites/default/files/kitesurf/produit/semaine-kite-a-lhotel-dakhla-club-avec-piscine-mini-club-sur-la-lagune/images/sejour-kitesurf-dakhla-club-trip-adekua-7.jpg",
  "10 jours",
  817,
  "Je vous propose un séjour kitesurf de rêve au Dakhla Club. Vous séjournez dans notre hôtel niché dans un écrin au cœur de la lagune. Nos bungalows tout confort et leurs terrasses privatives à deux pas du spot de kite sont parfaits pour vous reposer après une session. Notre formule en pension complète vous permet de savourer une délicieuse cuisine de produits frais aux saveurs authentiques. La piscine à débordement offre un espace de détente unique avant un soin au spa ou un petit verre au bar sous la douceur du soleil couchant. Les moniteurs diplômés de l’hôtel vous proposent en option des cours et la location de matériel F-One dernière génération. Ils vous guident tout au long de vos sessions de kite. Des vacances kite d’exception sur la sublime lagune de Dakhla.

Niveaux : Tous niveaux, du débutant à l’expert
Infos : Possibilité de location de matériel, de cours privés ou en groupe",
  "https://kitesurf.voyages-adekua.fr/Dakhla-kitesurf/sejour-kitesurf-spot-lagune-dakhla-hotel-bungalow-piscine-tout-confort"
),(
  "Rhodes",
  "https://kitesurf.voyages-adekua.fr/sites/default/files/kitesurf/produit/sejour-kite-grece-sur-spot-theologos-avec-matos-kite-camp-pieds-dans-leau/images/sejour-kitesurf-rhodes-trip-adekua-128.jpg",
  "10 jours",
  1700,
  "Je vous propose des super vacances kite sur le spot de Theologos à Rhodes. Vous bénéficiez d’une semaine de location d’équipement de kite, avec kite camp (studio de plage individuel, pour 2 personnes) en bord de mer et les petits déjeuners. Tout est à proximité, le kite camp, le spot, le centre de kite, le village ! Vous kitez un peu, beaucoup, passionnément, à la folie (on oublie le « pas du tout » !). Vous prenez du temps pour vous, pour visiter Rhodes, pour flâner dans le village de Theologos, pour compléter votre séjour avec d’autres activités, des découvertes, des dégustations. Vous optez pour des vacances relaxes sur fond de kite, ou intenses de jour comme de nuit. Et je peux aussi vous proposer des cours à la carte ou un stage.

Niveau : intermédiaire à expert",
  "https://kitesurf.voyages-adekua.fr/Rhodes-kitesurf/vacances-kite-theologos-grece-hebergement-materiel"
),(
  "Las Terrenas",
  "https://kitesurf.voyages-adekua.fr/sites/default/files/kitesurf/produit/sejour-kite-republique-dominicaine-avec-cours-kite-ou-loc-matos-hebergement-partage/images/kitesurf-republique-dominicaine-trip-adekua.jpg",
  "15 jours",
  2700,
  "Je vous propose un séjour kite en solo à Las Terrenas en République Dominicaine, avec au choix des cours de kite privés ou de la location de matériel, et un hébergement partagé sur la plage paradisiaque. Si vous êtes un apprenti kitesurfeur, alors les 3 jours de cours de kite privés vont vous permettre d’acquérir les bonnes bases de la navigation. Si vous êtes un rider autonome, choisissez les 7 jours de location de matériel. Logé dans un bungalow partagé au sein d’un hôtel équipé avec piscine, restaurant, bar de plage, bar de nuit, vos vacances risquent d’être intensives entre kite, excursion nature et soirées latines « caliente » ! Vous êtes seul(e) et mordu d’aventure, de kite et de nouvelles rencontres au budget serré ? Ce séjour « solo » est ce qu’il vous faut !",
  "https://kitesurf.voyages-adekua.fr/Republique-Dominicaine-kitesurf/sejour-kite-las-terrenas-stage-location-matos-bungalow"
),(
  "Jericoacoara ",
  "https://kitesurf.voyages-adekua.fr/sites/default/files/kitesurf/produit/stage-kitesurf-avec-hebergement-charme-a-jeri-bresil/images/sejour-kite-jeri-trip-adekua-3.jpg ",
  "20 jours",
  3500,
  "Immergez-vous au cœur de Jericoacoara, pour un stage de kite sur le spot de Guriu ! Vous logez dans une charmante pousada avec piscine proche du centre-ville de Jeri, au calme et tout près des commodités. Vous vous reposez avec un cocktail au bord de la piscine avant de ressortir profiter des festivités de Jeri. Les conditions de kite sont excellentes, le vent monte crescendo du matin à l’après-midi, de quoi satisfaire tous les niveaux. Vous bénéficiez de 3 jours de cours privés sur votre semaine et des activités découverte. Vos vacances au Brésil sont donc bien remplies, avec au programme : kite dans un delta aux paysages à couper le souffle, lever de soleil en canoë ou découverte des dunes en quad… Emotions garanties !",
  "https://kitesurf.voyages-adekua.fr/Bresil-kitesurf/sejour-jericoacoara-nordeste-bresil-pousada-cours-kite-decouverte"
),(
  "Zanzibar, Tanzanie",
  "https://kitesurf.voyages-adekua.fr/sites/default/files/kitesurf/produit/semaine-kitesurf-a-zanzibar-avec-safari-deux-jours-a-ngorongoro/images/kitesurf-trip-adekua-zanzibar-1-2.jpg",
  "21 jours",
  3700,
  "Zanzibar est une destination idéale pour s’initier au kitesurf ou perfectionner sa technique mais Zanzibar fait aussi partie de la Tanzanie un pays où les animaux sont rois. Situé sur la côte Sud-Est, votre hôtel de luxe est situé sur une interminable plage blanche immaculée. Cet hôtel de luxe charmera les couples. Décoré avec finesse, il dispose d’une splendide piscine entourée de palmiers. Kitesurf, safari, repos et soleil vous attendent. Après quelques jours, vous vous envolez à bord d’un Cessna ou d’un Caravan pour le cratère du Ngorongoro. Vous séjournerez alors deux nuits dans un des rares lodges implantés sur le rebord du cratère. Théâtre de toutes les scènes de la vie sauvage, vous garderez un souvenir impérissable de votre safari. Après ses deux jours inoubliables, il sera temps de revenir à Zanzibar pour profiter du soleil de l’équateur et de dernières sessions de kitesurf à Zanzibar avant de quitter ce paradis au bord de l’Océan Indien.

Niveau : du débutant à l'expert",
  "https://kitesurf.voyages-adekua.fr/Zanzibar-kitesurf/semaine-kitesurf-couple-a-zanzibar-avec-safari-deux-jours-ngorongoro"
),(
  "Atins, Brésil",
  "https://kitesurf.voyages-adekua.fr/sites/default/files/kitesurf/produit/sejour-kitesurf-bresil-portes-parc-national-lencois-maranhenses-avec-cours-hotel/images/sejour-bresil-atins-trip-adekua-04.jpg",
  "21 jours",
  3700,
  "Je vous propose un séjour kitesurf à Atins, dans le Nordeste du Brésil, où vous apprenez ou progressez avec des cours de kite quotidiens. Le spot de Atins est magnifique et vous logez juste à côté, dans un chalet privatif situé au cœur d’une résidence hôtelière et d’un jardin tropical. Atins, petit village de pêcheurs, est aux portes du parc national des Lençois Maranhenses. Ce séjour 100% kite, à travers dunes et lagons d’eaux cristallines, est une expérience inoubliable.

Niveau : débutant à confirmé",
  "https://kitesurf.voyages-adekua.fr/Bresil-kitesurf/vacances-kite-bresil-nordeste-atins-hotel-cours-materiel"
);

