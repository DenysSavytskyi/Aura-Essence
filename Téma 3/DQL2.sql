/*
1. Marketéri pripravujú newsletter pre produkty, ktoré máme reálne na sklade.
 Chcú pekný zoznam: najprv značka veľkými písmenami, potom dvojbodka a názov parfumu.
 Taktiež treba ukázať novú cenu po 15% zľave, zaokrúhlenú na centy (dve desatinné miesta).
 Zoraď to všetko od najdrahšieho po najlacnejší podľa tejto novej ceny.
*/

SELECT CONCAT(UPPER(brand), ': ', product) AS "Brand product", 
       ROUND(price * 0.85, 2) AS discounted_price
FROM perfume
WHERE availability = TRUE
ORDER BY discounted_price DESC;

/*
2. Zákazník hľadá na webe parfumy s vanilkou. Vytiahni mu názvy, značky a popisy všetkých vôní,
 kde sa v popise spomína slovo "vanilla". Ošetri to tak, aby nezáležalo na tom,
 či je to napísané s veľkým alebo malým písmenom (preveď text popisu pred hľadaním na malé písmená),
 nech nič nevynecháme. Zákazník chce vidieť najprv najnovšie kúsky, takže to zoraď podľa roku vydania zostupne.
*/

SELECT product,
    brand,
    description
FROM perfume
WHERE LOWER(description) LIKE LOWER('%VAnilla%')
ORDER BY release_year DESC;

/*
3. Veľkoobchodník chce vidieť, čo sa u nás najviac oplatí kúpiť z hľadiska objemu.
 Vypíš názov, objem a štandardnú cenu, a hneď vedľa vypočítaj, koľko vychádza jeden mililiter.
 Tento zoznam zoraď práve podľa ceny za mililiter, od tých najlacnejších a najvýhodnejších.
*/

SELECT product,
    volume,
    price,
    ROUND(price / volume, 2) AS "Price per ml"
FROM perfume
ORDER BY "Price per ml" ASC;

/*
4. Pripravujeme špeciálnu poličku pre "vintage" vône. Vytiahni názov, značku a rok vydania všetkých parfumov,
 ktoré majú 8 a viac rokov. Vek parfumu však počítaj dynamicky voči aktuálnemu roku, aby tento dopyt správne fungoval aj o rok.
*/

SELECT product,
    brand,
    release_year
FROM perfume
WHERE EXTRACT(YEAR FROM CURRENT_DATE) - release_year >= 8
ORDER BY release_year ASC;

/*
5. Pre emailovú kampaň potrebujeme vygenerovať zľavové kódy na dostupné pánske vône.
 Kód sa má skladať z prvých troch písmen značky (povinne samé veľké!) a roku vydania za sebou.
 Daj mi zoznam s názvom parfumu a týmto kódom. Aby sa grafikovi dobre robil dizajn e-mailu,
 zoraď to podľa dĺžky názvu parfumu, od najkratšieho po najdlhší.
*/

SELECT product,
    CONCAT(UPPER(SUBSTRING(brand, 1, 3)), release_year) AS "Discount code"
FROM perfume
WHERE gender = 'men' AND availability = TRUE
ORDER BY LENGTH(product) ASC;

/*
6. Kategóriový manažér robí revíziu luxusného segmentu z toho tovaru, ktorý máme reálne na sklade.
 Potrebuje report podľa značiek: názov značky, koľko rôznych parfumov od nej máme a aká je ich priemerná cena.
 Do reportu však zaraď iba tie značky, u ktorých táto priemerná cena prevyšuje 200.
*/

SELECT brand,
    COUNT(DISTINCT product) AS "Number of perfumes",
    ROUND(AVG(price), 2) AS "Average price"
FROM perfume
WHERE availability = TRUE
GROUP BY brand
HAVING AVG(price) > 200
ORDER BY "Average price" DESC;