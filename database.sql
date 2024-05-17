CREATE DATABASE IF NOT EXISTS snowtricks;

USE snowtricks;

INSERT INTO users (id, username, roles, email, password, is_verified, avatar) VALUES 
    (1, 'Admin', '["ROLE_USER", "ROLE_ADMIN"]', 'admin@mailinator.com', 'admin1234', 0, 'default-profil1.jpg'),
    (2, 'emily_grld', '["ROLE_USER"]', 'emily_grld@mailinator.com', 'emily_grld', 0, 'default-profil2.jpg'),
    (3, 'john_prorider', '["ROLE_USER"]', 'john_prorider@mailinator.com', 'john_prorider', 0, 'default-profil3.jpg'),
    (4, 'michel_richardson', '["ROLE_USER"]', 'michel_richardson@mailinator.com', 'michel_richardson', 0, 'default-profil4.jpg'),
    (5, 'smithy', '["ROLE_USER"]', 'smithy@mailinator.com', 'smithy', 0, 'default-profil5.jpg'),
    (6, 'lisa_vncnt', '["ROLE_USER"]', 'lisa_vncnt@mailinator.com', 'lisa_vncnt', 0, 'default-profil6.jpg'),
    (7, 'mr_snow', '["ROLE_USER"]', 'mr_snow@mailinator.com', 'mr_snow', 0, 'default-profil7.jpg'),
    (8, 'alicia_stn', '["ROLE_USER"]', 'alicia_stn@mailinator.com', 'alicia_stn', 0, 'default-profil8.jpg'),
    (9, 'miranda_carls', '["ROLE_USER"]', 'miranda_carls@mailinator.com', 'miranda_carls', 0, 'default-profil9.jpeg'),
    (10, 'patrick', '["ROLE_USER"]', 'patrick@mailinator.com', 'patrick', 0, 'default-profil10.jpeg')
;

INSERT INTO trick (id, author_id, name, slug, content, category, created_at,updated_at) VALUES 
    (1, 1, 'stalefish', 'grab-stalefish', 'Saisie de la carre frontside de la planche entre les deux pieds avec la main avant.', 'grab', '2024-03-02', '2024-03-02'),
    (2, 2, 'frontside boardslide', 'slide-frontside-boardslide', "Le Frontside boardslide est une figure de slide où le rider fait glisser sa planche avec la partie avant de son corps face au rail ou à la barre. C'est un mouvement technique qui nécessite un bon équilibre et une bonne coordination.", "slide", '2024-03-03', '2024-03-03'),
    (3, 3, 'tripod', 'slide-tripod', "Le tripode est une figure intermédiaire amusante à apprendre. Pour l'exécuter, vous devez soulever une extrémité de votre planche de la neige et tendre les deux mains vers le sol. Lorsque vous le faites correctement, vous faites une connexion en trois points avec le sol, tout comme un trépied !", 'slide', '2024-03-04', '2024-03-04'),
    (4, 4, '50-50 to frontside lipslide', 'slide-50-50-to-frontside-lipslide', 'Le 50-50 to frontside lipslide est une combinaison de figures où le rider commence par faire un 50-50 (planche à plat sur le rail) puis effectue une rotation de 90 degrés pour faire face au rail avec la partie avant de son corps.', 'slide', '2024-03-05', '2024-03-05'),
    (5, 5, 'backflip', 'flip-backflip', "Soyez prudent lorsque vous essayez de faire un saut périlleux arrière. Vous aurez besoin de beaucoup de temps et d'espace pour terminer le saut avant d'atterrir.", 'flip', '2024-03-06', '2024-03-06'),
    (6, 6, '360', 'rotation-360', "Un backside 360 ​​sur un snowboard est une astuce de snowboard freestyle dans laquelle le rider tourne à 360 degrés dans le sens des aiguilles d'une montre (si vous avez le pied normal) ou dans le sens inverse des aiguilles d'une montre (si vous avez le pied maladroit) pendant qu'il est dans les airs. C'est une figure fondamentale qui implique une rotation complète tout en gardant le dos du cavalier dans le sens de rotation.", 'rotation', '2024-03-07', '2024-03-07'),
    (7, 7, 'method grab', 'grab-method-grab', 'Le Method grab est un grab emblématique en snowboard où le rider saisit la planche entre les pieds avec sa main arrière et tire la planche vers le haut, souvent en étendant sa jambe avant.', 'grab', '2024-03-08', '2024-03-08'),
    (8, 8, 'melon', 'grab-melon', "Lorsque vous prenez de l'air en snowboard, tendez le bras et attrapez le talon de la planche entre vos pieds. Félicitations, vous avez fait votre premier Melon !", 'grab', '2024-03-09', '2024-03-09'),
    (9, 9, 'indy', 'grab-indy', "Vous pouvez effectuer un Indy en faisant un Ollie à partir d'un saut et en tendant la main vers le bas pour attraper la carre de votre planche. Lâchez prise et repositionnez-vous pour un atterrissage en douceur.", 'grab', '2024-03-10', '2024-03-10'),
    (10, 10, '360 tailgrab', 'grab-360-tailgrab', 'La rotation de 360 degrés avec un tailgrab est une figure classique de snowboard où le rider effectue une rotation horizontale complète tout en saisissant le tail (extrémité arrière) de sa planche avec sa main.', 'grab', '2024-03-11', '2024-03-11')
;

INSERT INTO comment (id, trick_id, author_id, content, created_at) VALUES 
    (1, 1, 2, "C'est une de mes figures préférées !!", '2024-04-01'),
    (2, 1, 4, "Ce tutoriel m'a vraiment aidé à améliorer ma technique. Un grand merci !", '2024-04-02'),
    (3, 1, 5, 'Super vidéo. Merci pour le partage !', '2024-04-03'),
    (4, 1, 7, "Je vais essayer d'ajouter un Stalefish à ma prochaine session.", '2024-04-04'),
    (5, 1, 8, "Magnifique photo ! J'adore le style.", '2024-04-05'),
    (6, 2, 1, "J'ai encore du mal à trouver le bon timing pour le frontside boardslide.", '2024-04-02'),
    (7, 2, 3, "Ce tutoriel m'a vraiment aidé à améliorer ma technique. Un grand merci !", '2024-04-04'),
    (8, 2, 4, "Merci pour le partage, je vais l'essayer lors de ma prochaine session", '2024-04-06'),
    (9, 2, 6, 'Super vidéo. Merci pour le partage !', '2024-04-08'),
    (10, 2, 9, "C'est une de mes figures favorites", '2024-04-11'),
    (11, 3, 1, "Très bon article, c'est un trick que j'ai toujours voulu faire. Je vais essayer ça !", '2024-04-01'),
    (12, 3, 2, "C'est une de mes figures préférées !!", '2024-04-02'),
    (13, 3, 10, "Merci pour le partage, je vais l'essayer lors de ma prochaine session", '2024-04-05'),
    (14, 3, 7, "Un trick compliqué mais tellement satisfaisant à faire.", '2024-04-08'),
    (15, 3, 8, "Magnifique photo ! J'adore le style.", '2024-04-10'),
    (16, 4, 1, "Ce tutoriel m'a vraiment aidé à améliorer ma technique. Un grand merci !", '2024-04-01'),
    (17, 4, 2, 'Super vidéo. Merci pour le partage !', '2024-04-02'),
    (18, 4, 2, 'Un trick compliqué mais tellement satisfaisant à faire.', '2024-04-03'),
    (19, 4, 8, "C'est une de mes figures favorites", '2024-04-04'),
    (20, 4, 10, 'Super vidéo. Merci pour le partage !', '2024-04-06'),
    (21, 5, 1, "C'est une de mes figures préférées !!", '2024-04-01'),
    (22, 5, 10, "Merci pour le partage, je vais l'essayer lors de ma prochaine session", '2024-04-02'),
    (23, 5, 6, "Très bon article, c'est un trick que j'ai toujours voulu faire. Je vais essayer ça !", '2024-04-03'),
    (24, 5, 3, "Je valide ! C'est une figure super à faire.", '2024-04-04'),
    (25, 5, 4, 'Un trick compliqué mais tellement satisfaisant à faire.', '2024-04-08'),
    (26, 6, 1, "Ce tutoriel m'a vraiment aidé à améliorer ma technique. Un grand merci !", '2024-04-01'),
    (27, 6, 4, 'Super vidéo. Merci pour le partage !', '2024-04-02'),
    (28, 6, 8, "C'est une de mes figures préférées !!", '2024-04-03'),
    (29, 6, 9, "Très bon article, c'est un trick que j'ai toujours voulu faire. Je vais essayer ça !", '2024-04-04'),
    (30, 6, 7, 'Un trick compliqué mais tellement satisfaisant à faire.', '2024-04-09'),
    (31, 7, 10, 'Super vidéo. Merci pour le partage !', '2024-04-01'),
    (32, 7, 2, "Merci pour le partage, je vais l'essayer lors de ma prochaine session", '2024-04-02'),
    (33, 7, 3, 'Le Method grab est tellement stylé !', '2024-04-03'),
    (34, 7, 4, "Ce tutoriel m'a vraiment aidé à améliorer ma technique. Un grand merci !", '2024-04-10'),
    (35, 7, 5, 'Un trick compliqué mais tellement satisfaisant à faire.', '2024-04-15'),
    (36, 8, 6, 'Un trick compliqué mais tellement satisfaisant à faire.', '2024-04-01'),
    (37, 8, 4, "C'est une de mes figures préférées !!", '2024-04-02'),
    (38, 8, 2, "Merci pour le partage, je vais l'essayer lors de ma prochaine session", '2024-04-03'),
    (39, 8, 9, 'Super vidéo. Merci pour le partage !', '2024-04-05'),
    (40, 8, 10, "C'est une de mes figures favorites", '2024-04-11'),
    (41, 9, 3, "Un conseil pour s'améliorer sur cette technique ? J'ai toujours un peu de mal à attraper la board", '2024-04-01'),
    (42, 9, 4, 'Super vidéo. Merci pour le partage !', '2024-04-02'),
    (43, 9, 7, 'Un trick compliqué mais tellement satisfaisant à faire.', '2024-04-03'),
    (44, 9, 2, "Magnifique photo ! J'adore le style.", '2024-04-12'),
    (45, 9, 6, "Ce tutoriel m'a vraiment aidé à améliorer ma technique. Un grand merci !", '2024-04-07'),
    (46, 10, 5, 'Super vidéo. Merci pour le partage !', '2024-04-01'),
    (47, 10, 3, "Merci pour le partage, je vais l'essayer lors de ma prochaine session", '2024-04-02'),
    (48, 10, 4, "C'est une de mes figures favorites", '2024-04-03'),
    (49, 10, 1, "Magnifique photo ! J'adore le style.", '2024-04-13'),
    (50, 10, 8, "Un conseil pour s'améliorer sur cette technique ? J'ai toujours un peu de mal à attraper la board", '2024-04-12')
;

INSERT INTO media (id, trick_id, name, url, type, created_at, updated_at) VALUES 
    (1, 1, 'stalefish.jpg', '/assets/medias/tricks/stalefish.jpg', 'image', '2024-03-02', '2024-03-02'),
    (2, 1, 'stalefish-2.webp', '/assets/medias/tricks/stalefish-2.webp', 'image', '2024-03-02','2024-03-02'),
    (3, 1, 'stalefish-3.jpg', '/assets/medias/tricks/stalefish-3.jpg', 'image', '2024-03-02', '2024-03-02'),
    (4, 2, 'frontside_boardslide.webp', '/assets/medias/tricks/frontside_boardslide.webp', 'image', '2024-03-03', '2024-03-03'),
    (5, 2, 'frontside_boardslide_2.jpg', '/assets/medias/tricks/frontside_boardslide_2.jpg', 'image', '2024-03-03', '2024-03-03'),
    (6, 3, 'tripod.jpg', '/assets/medias/tricks/tripod.jpg', 'image', '2024-03-04', '2024-03-04'),
    (7, 3, 'tripod_2.avif', '/assets/medias/tricks/tripod_2.avif', 'image', '2024-03-04', '2024-03-04'),
    (8, 3, 'tripod_3.jpg', '/assets/medias/tricks/tripod_3.jpg', 'image', '2024-03-04', '2024-03-04'),
    (9, 4, '5050.jpg', '/assets/medias/tricks/5050.jpg', 'image', '2024-03-05', '2024-03-05'),
    (10, 4, '5050_2.webp', '/assets/medias/tricks/5050_2.webp', 'image', '2024-03-05', '2024-03-05'),
    (11, 4, '5050_3.jpg', '/assets/medias/tricks/5050_3.jpg', 'image', '2024-03-05', '2024-03-05'),
    (12, 4, '5050_4.jpg', '/assets/medias/tricks/5050_4.jpg', 'image', '2024-03-05', '2024-03-05'),
    (13, 4, 'frontside_lipslide.webp', '/assets/medias/tricks/frontside_lipslide.webp', 'image', '2024-03-05', '2024-03-05'),
    (14, 4, 'frontside_lipslide_2.jpg', '/assets/medias/tricks/frontside_lipslide_2.jpg', 'image', '2024-03-05', '2024-03-05'),
    (15, 5, 'backflip.webp', '/assets/medias/tricks/backflip.webp', 'image', '2024-03-06', '2024-03-06'),
    (16, 6, 'backside-360.jpg', '/assets/medias/tricks/backside-360.jpg', 'image', '2024-03-07', '2024-03-07'),
    (17, 6, 'backside-360-2.jpg', '/assets/medias/tricks/backside-360.jpg-2', 'image', '2024-03-07', '2024-03-07'),
    (18, 6, 'backside-360-3.jpg', '/assets/medias/tricks/backside-360-3.jpg', 'image', '2024-03-07', '2024-03-07'),
    (19, 7, 'method_grab.jpg', '/assets/medias/tricks/method_grab.jpg', 'image', '2024-03-08', '2024-03-08'),
    (20, 7, 'method_grab_2.jpg', '/assets/medias/tricks/method_grab_2.jpg', 'image', '2024-03-08', '2024-03-08'),
    (21, 7, 'method_grab_3.jpg', '/assets/medias/tricks/method_grab_3.jpg', 'image', '2024-03-08', '2024-03-08'),
    (22, 8, 'melon_grab.jpg', '/assets/medias/tricks/melon_grab.jpg', 'image', '2024-03-09', '2024-03-09'),
    (23, 8, 'melon_grab_2.jpg', '/assets/medias/tricks/melon_grab_2.jpg', 'image', '2024-03-09', '2024-03-09'),
    (24, 8, 'melon_grab_3.jpg', '/assets/medias/tricks/melon_grab_3.jpg', 'image', '2024-03-09', '2024-03-09'),
    (25, 9, 'indy_grab.jpg', '/assets/medias/tricks/indy_grab.jpg', 'image', '2024-03-10', '2024-03-10'),
    (26, 9, 'indy_grab_2.jpg', '/assets/medias/tricks/indy_grab2_.jpg', 'image', '2024-03-10', '2024-03-10'),
    (27, 9, 'indy_grab_3.jpg', '/assets/medias/tricks/indy_grab_3.jpg', 'image', '2024-03-10', '2024-03-10'),
    (28, 10, '360_tail_grab.webp', '/assets/medias/tricks/360_tail_grab.webp', 'image', '2024-03-11', '2024-03-11'),
    (29, 10, '360_tail_grab_2.jpg', '/assets/medias/tricks/360_tail_grab_2.jpg', 'image', '2024-03-11', '2024-03-11')
;