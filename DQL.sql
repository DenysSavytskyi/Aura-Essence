-- Úlohy
/*
1.Zákaznik hľadá moderný parfum. Vypíšte názvy (product) a značky (brand) všetkých panskych parfumov (gender = male), 
ktoré boli vydané po roku 2020 a sú momentálne dostupné na objednanie (availability = TRUE)
*/

SELECT product, brand 
FROM perfume
WHERE gender = 'men' AND release_year > 2020 AND availability = TRUE
ORDER BY product ASC;


/*
2.Študent hľadá darček s obmedzeným rozpočtom. Nájdite 3 najlacnejšie pánske parfumy (gender = male) s objemom 100 ml (volume = 100). 
Zoraďte ich vzostupne podľa ceny (od najlacnejšieho)
*/

SELECT product, brand, price FROM perfume
WHERE gender = 'men' AND volume = 100 
ORDER BY price ASC 
LIMIT 3;


/*
3. Zákazníčka hľadá univerzálny parfum ako darček. Vypíšte názov (product), značku (brand) a cenu (price) 
všetkých unisex parfumov (gender = 'unisex'), ktoré sú momentálne dostupné na sklade (availability = TRUE). 
Výsledky zoraďte zostupne podľa ceny (od najdrahšieho).
*/

SELECT product, brand, price 
FROM perfume
WHERE gender = 'unisex' AND availability = TRUE
ORDER BY price DESC;


/*
4. Zberateľ hľadá klasické parfumy z minulosti. Nájdite názvy (product), značku (brand) a rok vydania (release_year) 
všetkých parfumov, ktoré boli vydané pred rokom 2018 a ich cena je nižšia ako 200 eur. 
Zoraďte ich podľa roku vydania od najstaršieho.
*/

SELECT product, brand, release_year 
FROM perfume
WHERE release_year < 2018 AND price < 200
ORDER BY release_year ASC;


/*
5. Zákazník hľadá kompaktný parfum na cestovanie. Vypíšte názov (product), objem (volume) a cenu (price) 
všetkých parfumov s objemom 50 ml alebo menej (volume <= 50). 
Zoraďte ich vzostupne podľa ceny.
*/

SELECT product, volume, price 
FROM perfume
WHERE volume <= 50
ORDER BY price ASC;


/*
Úloha ostatným
    Zákazník hľadá parfum s vôňou vanilky. Nájdite názvy (product) a značky (brand) všetkých parfumov, 
    ktoré majú v zložení tónov (description) slovo "vanilla".
*/